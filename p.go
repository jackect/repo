package main

import (
	"bufio"
	"bytes"
	"fmt"
	"log"

	"net/http"

	"github.com/google/gopacket"
	"github.com/google/gopacket/layers"
	"github.com/google/gopacket/pcap"
)

func main() {
	// 打开PCAP文件
	handle, err := pcap.OpenOffline("/Users/jack/Documents/temp/cip.cc.pcap")
	if err != nil {
		log.Fatal(err)
	}
	defer handle.Close()

	packetSource := gopacket.NewPacketSource(handle, handle.LinkType())

	// 遍历每个数据包
	for packet := range packetSource.Packets() {
		// 过滤HTTP流量
		if packet.TransportLayer() != nil && packet.TransportLayer().LayerType() == layers.LayerTypeTCP {
			tcpLayer := packet.TransportLayer().(*layers.TCP)
			if tcpLayer.DstPort == 80 || tcpLayer.SrcPort == 80 {
				// 解析HTTP数据
				if appLayer := packet.ApplicationLayer(); appLayer != nil {
					httpData := appLayer.Payload()

					// 解析HTTP请求或响应
					req, err := http.ReadRequest(bufio.NewReader(bytes.NewReader(httpData)))
					if err != nil {
						// 处理错误
						log.Println("Failed to parse HTTP request:", err)
						continue
					}

					// 提取HTTP请求信息
					fmt.Println("Method:", req.Method)
					fmt.Println("URL:", req.URL.String())
					fmt.Println("Headers:", req.Header)

					// 解析HTTP响应
					resp, err := http.ReadResponse(bufio.NewReader(bytes.NewReader(httpData)), req)
					if err != nil {
						// 处理错误
						log.Println("Failed to parse HTTP response:", err)
						continue
					}

					// 提取HTTP响应信息
					fmt.Println("Status:", resp.Status)
					fmt.Println("Headers:", resp.Header)
				}
			}
		}
	}
}
