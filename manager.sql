/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : manager

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 25/04/2024 00:06:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1712770578876-物理.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for allquestion
-- ----------------------------
DROP TABLE IF EXISTS `allquestion`;
CREATE TABLE `allquestion`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NULL DEFAULT NULL COMMENT '题型',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '试题内容',
  `A` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'a',
  `B` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'b',
  `C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'c',
  `D` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'd',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '解析',
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '答案',
  `paper` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of allquestion
-- ----------------------------
INSERT INTO `allquestion` VALUES (27, 1, 'MAC 地址通常存储在计算机的（ ）', '网卡上', '内存中', '高速缓存中', '硬盘上', '第 4 章 网络层——4.5 互联网的路由选择协议——4.5.5 路由器的构成', 'D', 1);
INSERT INTO `allquestion` VALUES (28, 1, '下面关于以太网的描述正确的是（ ）', '数据包以广播方式发送', '所有结点可以同时发送和接收数据', '两个结点相互通信时，其它结点不检测总线上的信号', '网络中有一个控制中心，用于控制所有结点的发送和接收', '第 5 章 运输层——5.5 TCP 报文段的首部格式', 'C', 1);
INSERT INTO `allquestion` VALUES (29, 1, '如果子网掩码是 255.255.255.224，那么主机 218.22.50.40 所在的驻留子网是（ ）', '218.22.50.0 ', '218.22.50.224', '218.22.50.32', '218.22.50.40', '第 4 章 网络层——4.3 划分子网和构造超网——4.3.1 划分子网', 'B', 1);
INSERT INTO `allquestion` VALUES (30, 1, '某公司申请到一个 C 类网络，出于地理位置上的考虑，必须切割成 5 个子网，那么子网掩 码可以设置为（ ）', '255.255.0.0', '255.255.255.0', '255.255.255.192', '255.255.255.224', '第 4 章 网络层——4.2 网际协议 IP——4.2.2 分类的 IP 地址', 'A', 1);
INSERT INTO `allquestion` VALUES (31, 1, '浏览器与 Web 服务器之间使用的协议是（ ）。', 'DNS', 'SNMP', 'HTTP', 'SMTP', '第 1 章 应概述——1.7 计算机网络体系结构——1.7.4 实体、协议、服务和服务访 问点', 'C', 1);
INSERT INTO `allquestion` VALUES (32, 1, '一个 Web 站点，主机是 www.abc.com，端口是 8080，主页是 index.html，则客户端访问 该站点时，在浏览器的地址栏中的有效输入是（ ）', 'www.abc.com ', 'http://www.abc.com/index.html', 'www.abc.com//8080 ', 'www.abc.com:8080', '第 6 章 应用层——6.4 万维网 WWW——6.4.1 万维网概述', 'A', 1);
INSERT INTO `allquestion` VALUES (33, 1, '转发数据包时，网络层所使用的主要信息依据是（ ）', 'IP 路由表 ', 'MAC 地址表', 'ARP 缓存', '端口列表', '第 3 章 数据链路层——3.3 使用广播信道的数据链路层——3.3.2 CSMA/CD 协议', 'A', 1);
INSERT INTO `allquestion` VALUES (34, 1, '在一座大楼内的一个计算机网络系统属于（ ）。', 'PAN', 'LAN', 'MAN', 'WAN', '第 7 章 网络安全——7.3 数字签名', 'D', 1);
INSERT INTO `allquestion` VALUES (35, 1, '提供远程管理网络设备功能的网络管理标准是（ ）', 'SMTP', 'FTP', 'SNMP', 'HTTP', '第 5 章 运输层——5.6 TCP 可靠传输的实现', 'D', 1);
INSERT INTO `allquestion` VALUES (36, 1, '数据链路层传输的 PDU 是（ ）', '比特流', '字节 ', '数据帧', '分组', '第 4 章 网络层——4.5 互联网的路由选择协议——4.5.5 路由器的构成', 'C', 1);
INSERT INTO `allquestion` VALUES (45, 1, '下面四个选项中，合法的 Internet 主机 IP 地址是（ ）。', '228.132.809.33', '201.32.17.255', '211.202.59.13', '0.58.173.2', '第 4 章 网络层——4.2 网际协议 IP——4.2.2 分类的 IP 地址', 'C', 1);
INSERT INTO `allquestion` VALUES (46, 1, '如果子网掩码是 255.255.192.0，那么下面主机（ ）必须通过路由器或三层交换 机才能与主机 129.23.144.16 通信。', '129.23.191.21', '129.23.127.222', '129.23.130.33', '129.23.148.127', '第 4 章 网络层——4.3 划分子网和构造超网——4.3.2 使用子网时分组的转', 'B', 1);
INSERT INTO `allquestion` VALUES (47, 1, '下列（ ）的情况下需要启动 ARP 请求。', '主机需要接收信息，但 ARP 表中没有源 IP 地址与 MAC 地址的映射关系', '主机需要接收信息，但 ARP 表中只具有源 IP 地址与 MAC 地址的映射关系', '主机需要发送信息，但 ARP 表中没有目的 IP 地址与 MAC 地址的映射关系', '主机需要发送信息，但 ARP 表中只具有目的 IP 地址与 MAC 地址的映射关系', '第 4 章 网络层——4.2 网际协议 IP——4.2.4 地址解析协议 ARP', 'C', 1);
INSERT INTO `allquestion` VALUES (48, 1, '关于 OSPF 和 RIP，下列说法正确的是（ ）', 'OSPF 和 RIP 都是静态路由', 'OSPF 属于距离向量型路由协议，RIP 属于链路状态型路由协议', 'OSPF 适合在小型的、动态的互联网上使用，而 RIP 适合在大型的、动态的互联网上使 用', 'OSPF 适合在大型的、动态的互联网上使用，而 RIP 适合在小型的、动态的互联网上使 用', '第 4 章 网络层——4.5 互联网的路由选择协议', 'D', 1);
INSERT INTO `allquestion` VALUES (49, 1, '在 Internet 上，大学或教育机构类别的域名中一般包括（ ）', 'edu', 'com', 'gov', 'org', '第 6 章 应用层——6.1 域名系统 DNS——6.1.2 互联网的域名结构', 'A', 1);
INSERT INTO `allquestion` VALUES (50, 1, '某用户在域名为 126.com 的邮件服务器上申请了一个电子邮箱，邮箱名为 leedy168，该 用户的电子邮件地址是（ ）。', '126.com@leedy168', 'leedy168%126.com', '126.com%leedy168', 'leedy168@126.com', '第 6 章 应用层——6.5 电子邮件——6.5.1 电子邮件概述', 'D', 1);
INSERT INTO `allquestion` VALUES (51, 1, 'HTTP 在 TCP 中的默认端口号是（ ）。', '81', '80', '25', '8080', '第 5 章 运输层——5.1 运输层协议概述——5.1.3 运输层的端口', 'B', 1);
INSERT INTO `allquestion` VALUES (52, 1, 'IGP 的作用范围是（ ）', '主机', '子网 ', '区域', '自治系统', '第 4 章 网络层——4.5 互联网的路由选择协议——4.5.1 有关路由选择协议的几个 基本概念', 'D', 1);
INSERT INTO `allquestion` VALUES (53, 1, '对 IP 数据报分片的重组通常发生在（ ）上。', '源主机', '目的主机', 'IP 数据报经过的路由器', '目的主机或路由器', '第 4 章 网络层——4.2 网际协议 IP——4.2.5 IP 数据报的格式', 'B', 1);
INSERT INTO `allquestion` VALUES (54, 1, '如果主机地址部分的前 10 位用于子网，那么 184.231.138.239 的子网掩码是（ ）', '255.255.192.0', '255.255.224.0', '255.255.255.224', '255.255.255.192', '第 4 章 网络层——4.3 划分子网和构造超网——4.3.1 划分子网', 'D', 1);
INSERT INTO `allquestion` VALUES (55, 1, '常用的传输介质中，带宽最大、传输信号衰减最小、抗干扰能力最强的是（ ）。', '同轴电缆', '光纤', '双绞线', '无线电磁波', '第 2 章 物理层——2.3 物理层下面的传输媒体', 'B', 2);
INSERT INTO `allquestion` VALUES (56, 1, 'Web 上每一个页面都有一个标识符，这种标识符统称为（ ）。', 'IP 地址', 'URL', '域名', 'Web 地址', '第 6 章 应用层——6.4 万维网 WWW——6.4.2 统一资源定位符 URL', 'B', 2);
INSERT INTO `allquestion` VALUES (57, 1, '如果子网掩码是 255.255.255.224，那么主机 218.22.50.140 所在的驻留子网是（ ）', '218.22.50.224', '218.22.50.140', '218.22.50.128', '218.22.50.32', '第 4 章 网络层——4.3 划分子网和构造超网——4.3.1 划分子网', 'C', 2);
INSERT INTO `allquestion` VALUES (58, 1, 'IP 地址块 192.168.33.125/28 的子网掩码可写为（ ）。', '255.255.255.192', '255.255.255.224', '255.255.255.240', '255.255.255.248', '第 4 章 网络层——4.3 划分子网和构造超网——4.3.3 无分类编址 CIDR（构造超 网）', 'C', 2);
INSERT INTO `allquestion` VALUES (59, 1, '能够实现电子邮件服务器之间传输邮件的协议是（ ）', 'DNS', 'SNMP', 'HTTP', 'SMTP', '第 6 章 应用层——6.5 电子邮件——6.5.2 简单邮件传送协议 SMTP', 'D', 2);
INSERT INTO `allquestion` VALUES (60, 1, '二层交换机工作在 OSI/RM 的（ ）。', '物理层', '数据链路层', '网络层', '应用层', '第 3 章 数据链路层——3.4 扩展的以太网——3.4.2 在数据链路层扩展以太网', 'B', 2);
INSERT INTO `allquestion` VALUES (61, 1, '在脉冲编码调制中，若规定的量化级是 256，则需要使用（ ）位编码。', '5', '6', '7', '8', '第 2 章 物理层——2.5 数字传输系统', 'D', 2);
INSERT INTO `allquestion` VALUES (62, 1, '在 RIP 协议中，最佳路径的衡量标准是（ ）', '时延', '可靠性', '带宽', '路由跳数', '第 4 章 网络层——4.5 互联网的路由选择协议——4.5.2 内部网关协议 RIP', 'D', 2);
INSERT INTO `allquestion` VALUES (63, 1, 'IP 地址 192.168.1.255 代表（ ）。', '一个 C 类网络', '一个 C 类网络中的广播', '一个 C 类网络中的主机', '以上都不是', '第 4 章 网络层——4.2 网际协议 IP——4.2.2 分类的 IP 地址', 'B', 2);
INSERT INTO `allquestion` VALUES (64, 1, '物理层传输的是（ ）。', '比特流', '字节', '数据帧', '分组', '第 1 章 概述——1.7 计算机网络体系结构——1.7.3 具有五层协议的体系结构', 'A', 2);
INSERT INTO `allquestion` VALUES (65, 1, '可以检测网络的连通状况的命令是（ ）', 'ipconfig', 'tracert', 'nslookup', 'ping', '第 4 章 网络层——4.4 网际控制报文协议 ICMP——4.4.2 ICMP 的应用举例', 'D', 2);
INSERT INTO `allquestion` VALUES (66, 1, '如果子网掩码是 255.255.255.128，那么下面主机（ ）必须通过路由器或三层交 换机才能与主机 192.168.114.16 通信。', '192.168.114.21', '192.168.114.135', '192.168.114.33', '192.168.114.127', '第 4 章 网络层——4.3 划分子网和构造超网——4.3.2 使用子网时分组的转发', 'B', 2);
INSERT INTO `allquestion` VALUES (67, 1, '为了实现域名解析，客户机必须知道（ ）。', '根域名服务器的 IP 地址', '本地域名服务器的 IP 地址', '本地域名服务器和根域名服务器的 IP 地址', '互联网上任意一台域名服务器的 IP 地址', '第 6 章 应用层——6.1 域名系统 DNS——6.1.3 域名服务器', 'D', 2);
INSERT INTO `allquestion` VALUES (68, 1, '下列域名中，符合互联网域名规范的是（ ）', 'www-ahuie-edu-cn', 'www%ahuie_edu.cn', 'www.ahuie.edu.cn', 'www.ahui-edu%cn', '第 6 章 应用层——6.1 域名系统 DNS——6.1.2 互联网的域名结构', 'C', 2);
INSERT INTO `allquestion` VALUES (69, 1, '在 Internet 上，政府机构类别的域名中一般包括（ ）。', 'edu', 'com', 'gov', 'org', '第 6 章 应用层——6.1 域名系统 DNS——6.1.2 互联网的域名结构', 'C', 2);
INSERT INTO `allquestion` VALUES (70, 1, '一个 FTP 站点，IP 地址是 192.168.1.100，端口号是 2020，则客户端访问该站点时，在 浏览器的地址栏中的有效输入是（ ）', 'http://192.168.1.100', 'http://192.168.1.100:2020', 'ftp://192.168.1.100:2020', 'ftp://192.168.1.100', '第 6 章 应用层——6.4 万维网 WWW——6.4.2 统一资源定位符 URL', 'C', 2);
INSERT INTO `allquestion` VALUES (71, 1, '在广播或多播中，运输层通常使用的协议是（ ）。', 'DNS', 'UDP', 'TCP', 'FTP', '第 5 章 运输层——5.2 用户数据报协议——5.2.1 UDP 概述', 'B', 2);
INSERT INTO `allquestion` VALUES (72, 1, 'CIDR 技术的作用是（ ）。', '把小的网络汇聚成大的超网', '多个主机共享同一个网络地址', '把大的网络划分成小的子网', '将本地 IP 地址转换成全球 IP 地址', '第 4 章 网络层——4.3 划分子网和构造超网——4.3.3 无分类编址 CIDR（构造超 网）', 'A', 2);
INSERT INTO `allquestion` VALUES (73, 1, '在 TCP/IP 协议体系中，TCP 是一种（ ）协议。', '网络接口层', '网际层', '运输层', '应用层', '第 5 章 运输层——5.3 传输控制协议 TCP 概述', 'C', 2);
INSERT INTO `allquestion` VALUES (74, 1, 'IPv6 地址的长度是（ ）比特。', '16', '32', '64', '128', '第 4 章 网络层——4.6 IPv6——4.6.2 IPv6 的地址', 'D', 2);
INSERT INTO `allquestion` VALUES (75, 2, '通常情况下，远距离通信使用多模光纤，近距离通信使用单模光纤。（ ）', NULL, NULL, NULL, NULL, '第 2 章 物理层——2.3 物理层下面的传输媒体——2.3.1 导引型传输媒体', '否', 2);
INSERT INTO `allquestion` VALUES (76, 2, '使用 NAT 技术可以将私用的本地 IP 地址转换为合法的全球 IP 地址。（ ）', NULL, NULL, NULL, NULL, '第 4 章 网络层——4.8 虚拟专用网 VPN 和网络地址转换 NAT——4.8.2 网络地址转 换 NAT', '是', 2);
INSERT INTO `allquestion` VALUES (77, 2, 'OSI/RM 的最高层是网络层。（ ）', NULL, NULL, NULL, NULL, '第 1 章 概述——1.7 计算机网络体系结构——1.7.3 具有五层协议的体系结构', '否', 2);
INSERT INTO `allquestion` VALUES (78, 2, '默认路由是预先设定的最短路径。（ ）', NULL, NULL, NULL, NULL, '第 4 章 网络层——4.2 网际协议 IP——4.2.6 IP 层转发分组的流程', '否', 2);
INSERT INTO `allquestion` VALUES (79, 2, '高速缓存中的 ARP 表保存了主机 IP 地址与物理地址的映射关系。（ ）', NULL, NULL, NULL, NULL, '第 4 章 网络层——4.2 网际 IP——4.2.4 地址解析协议 ARP', '是', 2);
INSERT INTO `allquestion` VALUES (80, 2, '模拟信号不可以在无线媒体上传输。（ ）', NULL, NULL, NULL, NULL, '第 2 章 物理层——2.2 数据通信的基础知识——2.2.2 有关信道的几个基本概念', '否', 2);
INSERT INTO `allquestion` VALUES (81, 2, '数据链路层使用的信道主要有两种类型，即点对点信道和广播信道。（ ）', NULL, NULL, NULL, NULL, '第 3 章 数据链路层——3.1 使用点对点信道的数据链路层；第 3 章 数据链路层— —3.3 使用广播信道的数据链路层', '是', 2);
INSERT INTO `allquestion` VALUES (82, 2, '三层交换技术在网络模型中的数据链路层实现了分组的高速转发。（ ）', NULL, NULL, NULL, NULL, '第 3 章 数据链路层——3.4 扩展的以太网——3.4.3 虚拟局域网', '否', 2);
INSERT INTO `allquestion` VALUES (83, 1, '第一次对路由器进行配置，应该通过（ ）配置。', 'Web 浏览器', '远程拨号', 'Telnet 方式', 'console 端口', '第 4 章 网络层——4.5 互联网的路由选择协议——4.5.5 路由器的构成', 'D', 3);
INSERT INTO `allquestion` VALUES (84, 1, '当 TCP 客户进程与 TCP 服务器进程建立连接时，TCP 报文段首部中的（ ）字段置 1。', 'URG', 'ACK', 'SYN', 'FIN', '第 5 章 运输层——5.5 TCP 报文段的首部格式', 'C', 3);
INSERT INTO `allquestion` VALUES (85, 1, '如果子网掩码是 255.255.0.0，那么下列地址为子网 112.11.0.0 内的广播地址的是 （ ）。', '112.11.0.0', '112.11.255.255', '112.255.255.255', '112.1.1.1', '第 4 章 网络层——4.3 划分子网和构造超网——4.3.1 划分子网', 'B', 3);
INSERT INTO `allquestion` VALUES (86, 1, 'IP 地址 192.168.1.0 代表（ ）', '一个 C 类网络号 ', '一个 C 类网络中的广播', '一个 C 类网络中的主机 ', '以上都不是', '第 4 章 网络层——4.2 网际协议 IP——4.2.2 分类的 IP 地址', 'A', 3);
INSERT INTO `allquestion` VALUES (87, 1, '对等层之间的通信使用的是（ ）。', '接口', '服务', '协议', '以上三者都是', '第 1 章 应概述——1.7 计算机网络体系结构——1.7.4 实体、协议、服务和服务访 问点', 'C', 3);
INSERT INTO `allquestion` VALUES (88, 1, '访问 WWW 服务器所使用的客户端应用程序是（ ）', '浏览器', '搜索引擎', 'Outlook', 'URL', '第 6 章 应用层——6.4 万维网 WWW——6.4.1 万维网概述', 'A', 3);
INSERT INTO `allquestion` VALUES (89, 1, '无线局域网中为实现传输媒体共享而采用的协议是（ ）。', 'CSMA/CA', 'FTP', 'CSMA/CD', 'HTTP', '第 3 章 数据链路层——3.3 使用广播信道的数据链路层——3.3.2 CSMA/CD 协议', 'A', 3);
INSERT INTO `allquestion` VALUES (90, 1, '张三通过网络和李四签订合同，随后反悔。为了防止发生抵赖，应该在签订合同时采用 （ ）', '身份认证技术', '消息认证技术', '防火墙技术', '数字签名技术', '第 7 章 网络安全——7.3 数字签名', 'D', 3);
INSERT INTO `allquestion` VALUES (91, 1, '传输层提供可靠的传输协议中的“可靠”指的是（ ）', '使用滑动窗口来维持可靠性', '使用面向连接的会话', '使用“尽最大努力”的传输', '使用确认机制来维持可靠性', '第 5 章 运输层——5.6 TCP 可靠传输的实现', 'D', 3);
INSERT INTO `allquestion` VALUES (92, 1, '提供网络层的协议转换，并在不同网络之间存储和转发分组的网间连接器是（ ）。', '转发器', '网桥', '路由器', '网关', '第 4 章 网络层——4.5 互联网的路由选择协议——4.5.5 路由器的构成', 'C', 3);
INSERT INTO `allquestion` VALUES (93, 1, '下面的四个选项中，合法的 Internet 主机 IP 地址是（ ）', '208.132.309.33', '192.168.17.55', '211.202.59.103', '101.58.173.2.13', '第 4 章 网络层——4.2 网际协议 IP——4.2.2 分类的 IP 地址；第 4 章 网络层— —4.8 虚拟专用网 VPN 和网络地址转换 NAT——4.8.1 虚拟专用网 VPN', 'C', 3);
INSERT INTO `allquestion` VALUES (94, 1, '如果主机地址部分的前 10 位用于表示子网，那么 184.231.138.239 的网络地址是 （ ）', '184.231.138.0', '184.231.138.10', '184.231.138.192', '184.231.138.255', '第 4 章 网络层——4.3 划分子网和构造超网——4.3.3 无分类编址 CIDR（构造超 网）', 'C', 3);
INSERT INTO `allquestion` VALUES (95, 1, '下列说法错误的是（ ）', '通常情况下，高速缓存中的 ARP 是由人工建立的', '通常情况下，高速缓存中的 ARP 是由主机自动建立的', '通常情况下，高速缓存中的 ARP 表是动态的', '通常情况下，高速缓存中的 ARP 表保存了主机 IP 地址与物理地址的映射关系', '第 4 章 网络层——4.2 网际协议 IP——4.2.4 地址解析协议 ARP', 'A', 3);
INSERT INTO `allquestion` VALUES (96, 1, '在 OSI/RM 中，完成路径选择功能的是（ ）。', '物理层', '应用层', '会话层', '网络层', '第 1 章 概述——1.7 计算机网络体系结构——1.7.3 具有五层协议的体系结构', 'D', 3);
INSERT INTO `allquestion` VALUES (97, 1, 'IEEE 802.3 的物理层协议 10BASE-T 规定从网卡到集线器的最大传输距离为（ ）。', '100m', '500m', '200m', '1000m', '第 3 章 数据链路层——3.4 扩展的以太网——3.4.1 在物理层扩展以太网', 'A', 3);
INSERT INTO `allquestion` VALUES (98, 1, '交换机与双绞线进行连接的端口是（ ）。', 'RJ-45', 'RJ-11', 'USB', 'COM', '第 2 章 物理层——2.3 物理层下面的传输媒体——2.3.1 导引型传输媒体', 'A', 3);
INSERT INTO `allquestion` VALUES (99, 1, '规定 DTE 与 DCE 接口线的信号电平、发送器输出阻抗的物理层特性是（ ）。', '机械特性', '电气特性', '功能特性', '规程特性', '第 2 章 物理层——2.1 物理层的基本概念', 'B', 3);
INSERT INTO `allquestion` VALUES (100, 1, 'EGP 在（ ）之间传播路由。', '区域 ', '局域网', '自治系统', '自然子网范围', '第 4 章 网络层——4.5 互联网的路由选择协议——4.5.1 有关路由选择协议的几个', 'C', 3);
INSERT INTO `allquestion` VALUES (101, 1, '计算机网络各层次结构模型及其协议的集合称为（ ）。', '互联参考模型', '网络概念框架', '网络体系结构', '网络结构描述', '第 1 章 概述——1.7 计算机网络体系结构——1.7.1 计算机网络体系结构的形成', 'C', 3);
INSERT INTO `allquestion` VALUES (102, 1, '下面的四个选项中，可用于局域网的 IP 地址是（ ）。', '192.168.1.101', '201.32.17.11', '111.222.101.13', '108.253.179.1', '第 4 章 网络层——4.8 虚拟专用网 VPN 和网络地址转换 NAT——4.8.1 网络地址转 换 NAT', 'A', 3);
INSERT INTO `allquestion` VALUES (103, 2, '数字通信中，发送端和接收端必须以某种方式保持同步。（ ）', NULL, NULL, NULL, NULL, '第 2 章 物理层——2.2 数据通信的基础知识——2.2.2 有关信道的几个基本概念', '是', 3);
INSERT INTO `allquestion` VALUES (104, 2, '模拟信号不可以在无线媒体上传输。（ ）', NULL, NULL, NULL, NULL, '第 2 章 物理层——2.2 数据通信的基础知识——2.2.2 有关信道的几个基本概念', '否', 3);
INSERT INTO `allquestion` VALUES (105, 2, 'IPv6 地址仍然采用点分十进制记法。（ ）', NULL, NULL, NULL, NULL, '第 4 章 网络层——4.6 IPv6——4.6.2 IPv6 的地址', '否', 3);
INSERT INTO `allquestion` VALUES (106, 2, '分组过滤路由器可以根据 IP 地址、端口、协议类型等对数据分组进行过滤。（ ）', NULL, NULL, NULL, NULL, '第 7 章 网络安全——7.7 系统安全：防火墙与入侵检测——7.7.1 防火墙', '是', 3);
INSERT INTO `allquestion` VALUES (107, 2, '任何加密方法的安全性取决于密钥的长度和攻破密文所需的计算量。（ ）', NULL, NULL, NULL, NULL, '第 7 章 网络安全——7.1 网络安全问题概述——7.1.2 安全的计算机网络', '是', 3);
INSERT INTO `allquestion` VALUES (108, 2, 'OSPF 是一种基于距离向量的内部网关协议。（ ）', NULL, NULL, NULL, NULL, '第 4 章 网络层——4.5 互联网的路由选择协议——4.5.3 内部网关协议 OSPF', '否', 3);
INSERT INTO `allquestion` VALUES (109, 2, '由于前向纠错法是自动校正错误，所以大多数网络使用它。（ ）', NULL, NULL, NULL, NULL, '第 3 章 数据链路层——3.1 使用点对点信道的数据链路层——3.1.2 三个基本问题', '否', 3);
INSERT INTO `allquestion` VALUES (110, 2, '应用网关是在应用层实现网络互联的设备。（ ）', NULL, NULL, NULL, NULL, '第 7 章 网络安全——7.7 系统安全：防火墙与入侵检测——7.7.1 防火墙', '是', 3);
INSERT INTO `allquestion` VALUES (111, 2, '所有以太网交换机端口既支持 10BASE-T 标准，又支持 100BASE-T 标准。（ ）', NULL, NULL, NULL, NULL, '第 3 章 数据链路层——3.4 扩展的以太网——3.4.2 在数据链路层扩展以太网', '否', 3);
INSERT INTO `allquestion` VALUES (112, 2, '入侵检测系统能够检测网络映射、端口扫描、蠕虫和病毒等多种网络攻击。（ ）', NULL, NULL, NULL, NULL, '第 7 章 网络安全——7.7 系统安全：防火墙与入侵检测——7.7.2 入侵检测系统', '是', 3);
INSERT INTO `allquestion` VALUES (113, 2, '光缆的光纤通常是偶数个，一进一出。（ ）', NULL, NULL, NULL, NULL, '第 2 章 物理层——2.3 物理层下面的传输媒体——2.3.1 导引型传输媒体', '是', 1);
INSERT INTO `allquestion` VALUES (114, 2, '三层 交换机在转发数据时，可以根据数据报的 MAC 地址表进行路由的选择和转发。（ ）', NULL, NULL, NULL, NULL, '第 3 章 数据链路层——3.4 扩展的以太网——3.4.3 虚拟局域网', '否', 1);
INSERT INTO `allquestion` VALUES (115, 2, '网络层处于运输层和应用层之间。（ ）', NULL, NULL, NULL, NULL, '第 1 章 概述——1.7 计算机网络体系结构——1.7.3 具有五层协议的体系结构', '否', 1);
INSERT INTO `allquestion` VALUES (116, 2, '默认路由是在路由表中没有找到明确的目的网络时所选择的路由。（ ）', NULL, NULL, NULL, NULL, '第 4 章 网络层——4.2 网际协议 IP——4.2.6 IP 层转发分组的流程', '是', 1);
INSERT INTO `allquestion` VALUES (117, 2, '使用 ping 命令可以检测网络的连通性。（ ）', NULL, NULL, NULL, NULL, '第 4 章 网络层——4.4 网际控制报文协议 ICMP——4.4.2 ICMP 的应用举例', '是', 1);
INSERT INTO `allquestion` VALUES (118, 2, '解决无线局域网媒体访问冲突的协议是 CSMA/CD。（ ）', NULL, NULL, NULL, NULL, '第 9 章 无线网络和移动网络——9.1 无线局域网 WLAN——9.1.3 802.11 局域网的 MAC 层协议', '否', 1);
INSERT INTO `allquestion` VALUES (119, 2, '公钥密码体制中，加密和解密使用相同的密钥。（ ）', NULL, NULL, NULL, NULL, '第 7 章 网络安全——7.2 两类密码体制——7.2.2 公钥密码体制', '否', 1);
INSERT INTO `allquestion` VALUES (120, 2, 'UDP 是面向连接的运输层协议。（ ）', NULL, NULL, NULL, NULL, '第 5 章 运输层——5.2 用户数据报协议 UDP——5.2.1 UDP 概述', '否', 1);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (47, 2, 112);
INSERT INTO `collect` VALUES (48, 2, 111);
INSERT INTO `collect` VALUES (49, 2, 110);
INSERT INTO `collect` VALUES (50, 2, 109);
INSERT INTO `collect` VALUES (52, 18, 111);
INSERT INTO `collect` VALUES (53, 18, 110);
INSERT INTO `collect` VALUES (54, 18, 109);
INSERT INTO `collect` VALUES (55, 18, 108);
INSERT INTO `collect` VALUES (56, 18, 107);
INSERT INTO `collect` VALUES (57, 19, 108);
INSERT INTO `collect` VALUES (58, 19, 107);
INSERT INTO `collect` VALUES (59, 19, 106);
INSERT INTO `collect` VALUES (60, 2, 92);
INSERT INTO `collect` VALUES (61, 2, 99);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (19, 2, 92, '不错', '2024-04-13 23:14:29');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程封面',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '课程介绍',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程类型',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '课程价格',
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程视频',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料链接',
  `discount` double(10, 2) NULL DEFAULT NULL COMMENT '课程折扣',
  `recommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否推荐',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '课程信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (92, 'http://localhost:9090/files/1712588566579-1.png', '第一章', '', 'VIDEO', 0.00, 'http://localhost:9090/files/1712589599568-1-计算机网络概述.mp4', NULL, NULL, '是', '2024-04-08', 2);
INSERT INTO `course` VALUES (93, 'http://localhost:9090/files/1712590575388-2.png', '第二章', '', 'VIDEO', 10.00, 'http://localhost:9090/files/1712590570495-2-物理层.mp4', NULL, 0.10, '否', '2024-04-08', 2);
INSERT INTO `course` VALUES (94, 'http://localhost:9090/files/1712590590857-3.png', '第三章', '', 'VIDEO', 0.00, 'http://localhost:9090/files/1712590608721-3-数据链路层.mp4', NULL, NULL, '否', '2024-04-08', 2);
INSERT INTO `course` VALUES (95, 'http://localhost:9090/files/1712590626350-4.png', '第四章', '', 'VIDEO', 0.00, 'http://localhost:9090/files/1712590684646-4-IP地址.mp4', NULL, NULL, '否', '2024-04-08', 2);
INSERT INTO `course` VALUES (96, 'http://localhost:9090/files/1712590640445-5.png', '第五章', '', 'VIDEO', 0.00, 'http://localhost:9090/files/1712590657661-5-网络层.mp4', NULL, NULL, '否', '2024-04-08', 2);
INSERT INTO `course` VALUES (97, 'http://localhost:9090/files/1712590692444-6.png', '第六章', '', 'VIDEO', 0.00, 'http://localhost:9090/files/1712590707461-6-运输层.mp4', NULL, NULL, '否', '2024-04-08', 2);
INSERT INTO `course` VALUES (98, 'http://localhost:9090/files/1712590717365-7.png', '第七章', '', 'VIDEO', 0.00, 'http://localhost:9090/files/1712590731277-7-应用层.mp4', NULL, NULL, '否', '2024-04-08', 2);
INSERT INTO `course` VALUES (99, 'http://localhost:9090/files/1712590742075-8.png', '第八章', '', 'VIDEO', 0.00, 'http://localhost:9090/files/1712590752889-8-网络安全.mp4', NULL, NULL, '否', '2024-04-08', 2);
INSERT INTO `course` VALUES (100, 'http://localhost:9090/files/1712590776858-9.png', '第九章', '', 'VIDEO', 0.00, 'http://localhost:9090/files/1712590794151-9-无线网络.mp4', NULL, NULL, '否', '2024-04-08', 2);
INSERT INTO `course` VALUES (101, 'http://localhost:9090/files/1712769505776-1.jpg', '数据链路层', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (102, 'http://localhost:9090/files/1712769556425-2.jpg', '使用广播信道的数据链路层', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (103, 'http://localhost:9090/files/1712769572677-3.jpg', '以太网的 MAC 层', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (104, 'http://localhost:9090/files/1712769590632-4.jpg', 'CSMA/CD 协议', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (105, 'http://localhost:9090/files/1712769611294-5.jpg', '划分子网和构造超网', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (106, 'http://localhost:9090/files/1712769633304-6.jpg', '万维网 WWW', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (107, 'http://localhost:9090/files/1712769657288-7.jpg', '网际协议 IP', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (108, 'http://localhost:9090/files/1712769677365-8.jpg', 'IP 层转发分组的流程', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (109, 'http://localhost:9090/files/1712769692446-9.jpg', '计算机网络的类别', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (110, 'http://localhost:9090/files/1712769710824-10.jpg', '几种不同类别的计算机网络', '', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (111, 'http://localhost:9090/files/1712769727793-11.jpg', '物理层', '<p><span style=\"font-size: large;\">2.1 基本概念</span><br/></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n物理层主要任务是确定与传输媒体接口有关的一些特性, 即定义标准</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n信源：产生和发送数据的源头。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n信宿：接收数据的终点\n。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n信道：信号的传输媒介。</font></p>\n\n<p><font size=\"4\">三种通信方式:</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n单工通信: 只有一个方向的通信</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n半双工通信: 通信的双方都可以发送或接收信息，但任何一方都不能同时发送和接收</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n全双工通信: 通信双方可以同时发送和接受信息</font></p>\n\n<p><font size=\"4\">物理层接口特性:</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n机械特征:&nbsp; 规定物理连接时所采用的规格、接口形状、引线数目、引脚数量和排列情况。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n电气特征:&nbsp; 线路上信号的电压范围、阻抗匹配、传输速率和距离限制等。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n功能特征: 某条线上出现的某一电平表示何种意义&nbsp; </font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n规程特征: 定义各条物理线路的工作规程和时序关系</font></p>\n\n<p><font size=\"4\">数据传输方式:</font></p>\n\n<p><font size=\"4\">1) 串行传输: 速度慢，费用低，适合远距离</font></p>\n\n<p><font size=\"4\">2) 并行传输: 速度快，费用高，适合近距离</font></p>\n\n<p><font size=\"4\">模拟信号/连续信号图:</font></p>\n\n<p><img src=\"http://localhost:9090/files/1712769787475-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<p><font size=\"4\">数字信号/离散信号图:</font></p>\n\n<p><img src=\"http://localhost:9090/files/1712769791843-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n同步传输: 需先送出1个或多个同步字符，再送出整批的数据。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n异步传输: 加一个字符起始位和一个字符终止位。发送方可以在任何时刻\n发送这些比特组，而接收方不知道它们会在什么时候到达。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n码元: 用一个固定时长的数字脉冲, 代表不同离散数值的基本波形, 这个时长内的信号称为k进制码元，而该时长称为码元宽度。1码元可以携带多个比特的信息量</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n码元传输速率：别名波特率, 或调制速率, 波形速率, 符号速率。 表示单位时间内数字通信系统所传输的码元个数（也可称为脉冲个数或信号变化的次数）, 单位是波特（Baud）, 码元速率与进制数无关，只与码元长度有关。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n信息传输速率：别名信息速率、比特率等表示单位时间内数字通信系统传输的二进制码元个数, 单位是比特/秒（b/s）。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n波特率与比特率的关系：若一个码元携带n bit的信息量，则M Baud的码元传输速率所对应的信息传输速率为M×n bit/s。 </font></p>\n\n\n\n<p><font size=\"4\">2.1.1奈氏准则（奈奎斯特定理）</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n采样定理, 为了避免码间串扰的极限码元传输速率。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n码间串扰：接收端收到的信号波形失去了码元之间清晰界限的现象。\n</font></p>\n\n<p><font size=\"4\">公式: </font></p>\n\n<p><img src=\"http://localhost:9090/files/1712769799023-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n<p><font size=\"4\">说明: </font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n1) 在任何信道中，码元传输的速率是有上限的</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n2) 奈氏准则给出了码元传输速率的限制，但并没有对信息传输速率给出限制。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n3) 要提高数据的传输速率, 必须设法使每个码元能携带更多个比特的信息量</font></p>\n\n<p><font size=\"4\">2.1.2 香农定理</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n在带宽受限且有噪声的信道中，为了不产生误差，信息的数据传输速率有上限值。</font></p>\n\n\n\n<p><font size=\"4\">公式:&nbsp; </font></p>\n\n<p><img src=\"http://localhost:9090/files/1712769803947-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n信噪比: 信号的平均功率/噪声的平均功率, 用分贝（dB）作为度量单位为:</font></p>\n\n<p><img src=\"http://localhost:9090/files/1712769811237-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n<p><font size=\"4\">&nbsp;</font></p>\n\n<p><img src=\"http://localhost:9090/files/1712769814896-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n<p><font size=\"4\">如&nbsp;&nbsp; &nbsp;&nbsp;, </font></p>\n\n\n\n<p><font size=\"4\">则 说明:&nbsp; 信道的带宽或信道中的信噪比越大，则信息的极限传输速率就越高。</font></p>\n\n\n\n<p><font size=\"4\">2.2 编码&amp;调制 </font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n基带信号: 将数字信号1和0直接用两种不同的电压表示，再送到数字信道上去传输</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n宽带信号: 将基带信号进行调制后形成的频分复用模拟信号，再传送到模拟信道上去传输</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n备注: 传输距离较近时，计算机网络采用基带传输方式, 距离较远时，采用宽带传输方式</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n编码: 数据转化为数字信号</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n调制: 数据转化为模拟信号\n</font></p>\n\n<p><font size=\"4\">相关设备的作用:&nbsp; </font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n调制器: 数字数据转化为模拟信号</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nPCM编码器: 模拟数据转化为数字信号</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n数字发送器: 数字数据转化为数字信号</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n放大调制器: 模拟数据转化为模拟信号</font></p>\n\n<p><font size=\"4\">2.2.1 数字数据编码为数字信号<!--[endif]--></font></p><p><img src=\"http://localhost:9090/files/1712769822717-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n1) 非归零编码【NRZ】: 高1低0</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n2) 曼彻斯特编码: 看前半个, 高1低0, 占的频带宽度是原始基带宽度的两倍 (波特率:比特率=2:1), 以太网采用曼彻斯特编码</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n3) 差分曼彻斯特编码: 看前半个与其前面的关系, 相同为1, 不同为0。常用于局域网。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n4) 归零编码【RZ】:&nbsp; 高1低0</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n5) 反向不归零编码【NRZI】: 遇到0则翻转 (由高变低. 由低变高)</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n6) 4B/5B编码: 比特流中插入额外的比特以打破\n一连串的0或1，编码效率为80%</font></p>\n\n<p><font size=\"4\">2.2.2 数字数据调制为模拟信号<!--[endif]--></font></p><p><img src=\"http://localhost:9090/files/1712769847147-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n调幅+调相（QAM）: 数据传输速率为&nbsp; b/s</font></p>\n\n<p><font size=\"4\">2.2.3 模拟数据编码为数字信号</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n最典型的例子就是对音频信号进行编码的脉码调制（PCM）, 它主要包括三步：抽样(f采样频率 ≥ 2f信号最高频率), 量化, 编码</font></p>\n\n<p><font size=\"4\">示例图: </font></p>\n\n\n\n<p><img src=\"http://localhost:9090/files/1712769840056-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<p><font size=\"4\">2.3 传输介质及物理层设备</font></p>\n\n<p><font size=\"4\">2.3.1 传输介质</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n它就是数据传输系统中在发送设备和接收设备之间的物理通路。传输媒体/介质并不是物理层。</font></p>\n\n<p><font size=\"4\">1) 双绞线 (twisted pair cable): 由两根采用一定规则并排绞合的、相互绝缘的铜导线组成\n</font></p>\n\n<p><font size=\"4\">示例图:</font></p>\n\n<p><img src=\"http://localhost:9090/files/1712769853199-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n\n\n\n\n\n\n\n\n<p><font size=\"4\">特点: 价格便宜, 最常用的传输介质之一。\n</font></p>\n\n\n\n<p><font size=\"4\">2) 同轴电缆: 分为两类, 一类用于传送基带数字信号, 又称基带同轴电缆, 一类用于传送宽带信号，又称为宽带同轴电缆</font></p>\n\n<p><img src=\"http://localhost:9090/files/1712769857947-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n\n\n<p><font size=\"4\">特点: 抗干扰特性比双绞线好，传输距离更远，但价格较双绞线贵。</font></p>\n\n<p><font size=\"4\">3) 光纤: 光纤由纤芯(实心)和包层构成, 带宽远远大于其他传输媒体的带宽</font></p>\n\n<p><font size=\"4\">光纤分类图:</font></p>\n\n<p><img src=\"http://localhost:9090/files/1712769862889-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>\n\n<p><font size=\"4\">特点: 传输损耗小, 抗雷电和电磁干扰性能好, 不易被窃听或截取数据。体积小，重量轻。</font></p>\n\n<p><font size=\"4\">非导向性传输介质:</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n1) 无限电波: 信号向所有方向传播, 有较强穿透能力</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n2) 微波: 信号固定方向传播, 通信频率较高, 有地面微波接力通信和卫星通信两种方式\n</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n3) 红外线和激光: 信号固定方向传播。</font></p>\n\n<p><font size=\"4\">2.3.2 物理层设备\n</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n中继器(转发器): 对信号进行再生和还原，对衰减的信号进行放大, 中继器两端的网段一定要是同一个协议, 可以是不同传输媒体。</font></p>\n\n<p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n5-4-3规则：用4个中继器串联的5段通信介质只有3段可以挂计算机。</font></p>\n\n<p><font size=\"4\">&nbsp; &nbsp; &nbsp; &nbsp; 集线器: 实质上是一个多端口的中继器, 只起信号放大和转发作用。星形网络拓扑结构。</font><br/></p>', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);
INSERT INTO `course` VALUES (112, 'http://localhost:9090/files/1712769871724-12.jpg', '计算机网络概述', '<h1><span style=\"font-size: large;\">国际标准化组织(ISO): International Organization for Standardization, 制定OSI参考模型</span><br/></h1><p><font size=\"4\">OSI: 开放系统互连参考模型(Open Systems Interconnection Reference Model国际电气电子工程师: 世界上最大的专业技术团体\n</font></p><p><font size=\"4\">网络: 由若干结点(计算机、集线器、交换机、路由器等)和连接这些结点的链路组成。</font></p><p><font size=\"4\">互联网(internet): 网络的网络。通过路由器将网络互连起来,构成一个覆盖范围更大的网络。</font></p><p><font size=\"4\">因特网(Internet): 世界上最大的互联网。网络把许多计算机连接在一起, 互联网把许多网络连接在一起</font></p><p><font size=\"4\">客户机(Client) 与 服务器(Server)方式: 简称C/S方式, 是因特网应用最常使用方式。</font></p><p><font size=\"4\">对等方式(peer to peer): 简称p2p方式。</font></p><p><font size=\"4\">计算机网络的功能:数据通信 (最基本)</font></p><p><font size=\"4\">资源共享</font></p><p><font size=\"4\">分布式处理: 提高可靠性, 负载均衡</font></p><p><font size=\"4\">1.1 计算机网络的分类\n</font></p><p><font size=\"4\">按分布范围分类</font></p><p><font size=\"4\">广域网(WAN): 也称远程网, 使用点对点网络 </font></p><p><font size=\"4\">城域网</font></p><p><font size=\"4\">局域网: 使用广播技术, 广域网使用交换技术, 两者协议不同</font></p><p><font size=\"4\">个人区域网 </font></p><p><font size=\"4\">按网络的拓扑结构</font></p><p><font size=\"4\">总线型网络: 增减结点方便, 重负载时通信效率不高, 总线任意一处故障敏感</font></p><p><font size=\"4\">星形网络: 便于集中控制管理, 中央设备对故障敏感</font></p><p><font size=\"4\">环形网络: 如令牌缓局域网</font></p><p><font size=\"4\">网状网络: 可靠性高, 成本高, 多用在广域网中</font></p><p><img src=\"http://localhost:9090/files/1712769944969-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">1.2 因特网发展的三个阶段</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n第一阶段: 1969年,第一个分组交换网ARPANET。从单个网络向互联网发展。1983年,TCP/IP协议成为ARPANET的标准协议(因特网诞生时间)。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n第二阶段: 1985年 NSF围绕六个大型计算机中心建设NSFNET(主干网、地区网、校园网)，逐步建成三级结构的因特网。</font></p><p><font size=\"4\">&nbsp;ISP三层结构因特网:</font></p><p><img src=\"http://localhost:9090/files/1712769950937-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">1.3 因特网的组成</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n网络边缘: 用户直接使用的,由所有连接在因特网上的主机组成。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n网络核心: 为边缘部分提供服务的, 由大量网络和网络的路由器组成。</font></p><p><font size=\"4\">工作方式图:</font></p><p><img src=\"http://localhost:9090/files/1712769955301-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n通信子网: 实现数据通信</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n资源子网: 实现资源共享/数据处理</font></p><p><font size=\"4\">功能组成图:</font></p><p><img src=\"http://localhost:9090/files/1712769960193-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">1.4 三种交换方式</font></p><p><font size=\"4\">1.4.1 电路交换</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n建立连接--&gt;通话--&gt;释放连接, 在通话的全部时间内,建立了一条专用的物理通路, 通话的两个用户始终占用端到端的通信资源。</font></p><p><font size=\"4\">电话交换图:<!--[endif]--></font></p><p><img src=\"http://localhost:9090/files/1712769966538-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n特点: 通信时延小, 有序传输, 没有冲突, 控制简单, 但建立时间长, 独占线路。</font></p><p><font size=\"4\">1.4.2 报文交换</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n整个报文先传送到相邻结点, 全部存储下来后查找转发表,转发到下一个结点。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n存储转发: 先暂时存储下来, 检查首部, 按首部中的目的地址查找转发表, 找到合适的接口转发出去,交给下一个分组交换机。\n</font></p><p><font size=\"4\">1.4.3 分组交换</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n同报文交换一样, 采用了存储转发方式, 但解决了报文交换中大报文的传输问题, 可分为面向连接的虚电路方式和无连接的数据报方式, 这两者方式都由网络层提供。\n</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n分组交换: 将一个数据报文划分成一个个更小的等长数据段,每个数据段前加上必要的控制信息,构成分组, 通过路由器以存储转发方式,发送到目标主机。</font></p><p><font size=\"4\">数据报分组交换图:</font></p><p><img src=\"http://localhost:9090/files/1712769972255-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n数据报特点: 无建立时延, 线路利用率高, 动态分配线路, 相比报文交换, 减少了出错概率和重发数据量, 但存在存储转发时延。\n</font></p><p><font size=\"4\">三种交换比较图:</font></p><p><img src=\"http://localhost:9090/files/1712769977069-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">1.5 计算机网络主要性能指标</font></p><p><font size=\"4\">1.5.1 速率</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n速率就是数据的传送率,它也称为数据率或比特率, 单位是bit/s (bps)</font></p><p><font size=\"4\">速率:</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n千 1kb/s=b/s</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n兆 1Mb/s=kb/s</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n吉 1Gb/s=Mb/s</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n太 1Tb/s=Gb/s</font></p><p><font size=\"4\">存储容量:</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n1KB=B=1024B</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n1MB=KB</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n1GB=MB</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n1TB=GB</font></p><p><font size=\"4\">1.5.2 带宽</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n在计算机中,带宽用来表示网络的通信线路所能传送数据的能力, 即单位时间从网络中的某一点到另一点所能通过的\"最高数据率\",单位是bit/s。</font></p><p><font size=\"4\">1.5.3 吞吐量</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n也称吞吐率, 表示在单位时间内通过某个网络(或信道,接口)的数据量。吞吐量受网络的带宽或网络的额定速率的限制。</font></p><p><font size=\"4\">1.5.4 时延</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n时延是指数据从网络的一端传送到另一端所需的时间,也称延迟或迟延。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n传输时延: 主机或路由器将分组发送到通信线路上所需的时间,从发送分组的第一个比特算起,到该分组的最后一个比特发送到线路上所需的时间,也称传输时延。公式是:</font></p><p><font size=\"4\">发送时延=数据长度/发送速率 (信道带宽)</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n传播时延: 电磁波在信道中需要传播一定的距离而花费的时间, 公式是:</font></p><p><font size=\"4\">传播时延=信道长度/电磁波在信道上的传播速率</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n处理时延: 主机或路由器收到分组时要花费一定的时间进行处理(分析分组首部、提取数据、差错检验、查找路由等)</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n排队时延: 在网络传输时, 经过许多路由器的缓存队列中排队的时间。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n时延带宽积: 某段链路现在有多少比特 (容量)</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n往返RTT: 从发送数据开始, 到收到接收方确认的时间</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n备注: 所谓高速网络链路,提高的仅仅是数据的发送速率而不是比特在链路上的传播速率\n。提高发送速率只是减少了数据的传输时延。</font></p><p><font size=\"4\">示例图:</font></p><p><img src=\"http://localhost:9090/files/1712769985189-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">1.5.5 丢包率***</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n即分组丢失率, 指在一定时间范围内, 分组在传输过程总丢失的分组数量与总的分组数量的比率。丢包率高,用户感觉往往是网络时延变大, 而不是信息丢失。</font></p><p><font size=\"4\">分组丢失的两种情况:</font></p><p><font size=\"4\">在传输过程中出现了比特级差错, 被结点丢弃</font></p><p><font size=\"4\">分组交换机队列已满,被抛弃</font></p><p><font size=\"4\">1.5.6 利用率***</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n信道利用率: 信道利用率指出某信道有百分之几的时间是被利用的。根据排队理论, 信道利用率过高会产生非常大的时延。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n网络利用率: 全网络的信道利用率的加权平均值</font></p><p><font size=\"4\">1.6 计算机网络体系结构</font></p><p><font size=\"4\">1.6.1 网络协议</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n协议明确规定了所交换的数据的格式和时序, 以及在发送或接受数据时要采取的动作,为进行网络中的数据交换而建立的规则、标准或约定, 简称协议</font></p><p><font size=\"4\">协议三要素:</font></p><p><font size=\"4\">语法: 数据与控制信息的结构或格式</font></p><p><font size=\"4\">语义: 各个控制信息的具体含义, 完成何种动作及做出何种响应。</font></p><p><font size=\"4\">同步(时序): 数据应该在何时发送出去, 以什么速率发送。</font></p><p><font size=\"4\">1.6.2 OSI参考模型\n与 TCP/IP参考模型</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n表示层: 用于处理在两个通信系统中交换信息的表示方式, 如: 数据格式变换 （语法和语义）, 数据加密解密, 数据压缩和恢复</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n会话层: 向表示层实体/用户进程提供建立连接并在连接上有序地传输数据。</font></p><p><font size=\"4\">1.6.3 五层协议模型</font></p><p><font size=\"4\">应用层</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n任务: 通过进程间的交互来完成特定的网络应用</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n协议: 如HTTP协议, SMTP协议, FTP协议等</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n数据单元: 报文</font></p><p><font size=\"4\">传输层</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n任务: 向两台主机中进程(端到端)之间的通信提供的数据传输服务,</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n功能: 复用, 分用, 流量控制, 差错控制的功能。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n复用: 多个应用进程可同时使用传输层的服务</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n分用: 传输层把收到的信息分别交付给上面应用层的相应进程</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n协议: TCP协议、UDP协议</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nTCP: 提供面向连接的, 可靠的数据传输服务, 数据单元是报文段</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nUDP: 提供无连接的, 尽最大努力的传输服务, 数据单元是用户数据报</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n服务访问点(SAP): 端口号字段</font></p><p><font size=\"4\">网络层(网际层、IP层)</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n任务: 负责为分组交换网上不同主机提供通信服务, 选择合适的路由,存储转发,最后到达目标主机。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n功能: 路由选择, 流量控制, 差错控制, 拥塞控制</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n主要协议：IP、IPX、ICMP、 IGMP、ARP、RARP、OSPF</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n数据单元: IP数据报, 简称数据报</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n服务访问点(SAP): 协议字段</font></p><p><font size=\"4\">数据链路层</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n任务: 主要任务是把网络层传下来的数据报组装成帧,&nbsp; 有成帧, 差错控制, 流量控制, 控制对信道的访问的功能。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n数据单元: 帧</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n主要协议：SDLC、HDLC、PPP、 STP</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n帧: 包括数据和控制信息(一个帧从哪里开始,到哪里结束、差错检测)</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 服务访问点(SAP): 类型字段</font></p><p><font size=\"4\">物理层</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n任务: 主要任务是在物理媒体上实现比特流的透明传输。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n主要功能: 定义接口特性, 定义传输模式(单工、半双工、双工), 定义传输速率, 比特同步, 比特编码</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n数据单元: 比特</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n主要协议：Rj45、802.3</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n传输媒体: 双绞线、同轴电缆、光缆等。</font></p><p><font size=\"4\">备注:</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nPDU: OSI 模型把对等层之间传送的数据单元称为该层的协议数据单元(Protocol Data Unit) </font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nPCI: 协议控制信息, PDU一部分。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;SDU: 协议数据单元, PDU一部分。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n对等层: 如图1-19 通过水平虚线直接传递给对方</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n实体: 表示任何可发送或接受信息的硬件或软件进程</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n协议: 控制两个对等体(或多个实体)进行通信的规则。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n协议与服务: 在协议的控制下,两个对等实体间的通信使得本层能够向上一层提供服务。要实现本层协议, 还需要使用下面一层所提供的服务。协议是\"水平的\", 服务是\"垂直的\"。即服务是由下层向上层通过层间接口提供的。</font></p><p><font size=\"4\">示例图:</font></p><p><img src=\"http://localhost:9090/files/1712769997448-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">三者区别图: </font></p><p><img src=\"http://localhost:9090/files/1712770001830-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><font size=\"4\">1.7 两个重要的新兴网络技术***</font></p><p><font size=\"4\">1.7.1 云计算</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n定义: 云计算是一种运行在计算机网络上的分布式应用,通过网络以按需、易扩展的方式向用户提供安全、快捷、便捷、廉价的数据存储和网络计算服务。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nIaas: 基础设施即服务, 将硬件设备等基础资源(如处理能力、存储空间、网络组件)封装成服务通过网络提供给用户使用。</font></p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nPaas: 平台即服务,提供用户应用程序的开发和运行环境</font></p><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><p><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nSaas: 软件即服务 ,将某些特定应用软件功能封装成服务</font></p>', 'TEXT', 0.00, NULL, NULL, NULL, '否', '2024-04-11', 2);

-- ----------------------------
-- Table structure for fileorder
-- ----------------------------
DROP TABLE IF EXISTS `fileorder`;
CREATE TABLE `fileorder`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `file_id` int NULL DEFAULT NULL COMMENT '资料ID',
  `score` int NULL DEFAULT NULL COMMENT '所需积分',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '兑换时间',
  `user_id` int NULL DEFAULT NULL COMMENT '兑换用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资源订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fileorder
-- ----------------------------
INSERT INTO `fileorder` VALUES (1, 5, 10, '20240309211404', '2024-03-09 21:14:04', 5);
INSERT INTO `fileorder` VALUES (2, 14, 10, '20240403113447', '2024-04-03 11:34:47', 2);
INSERT INTO `fileorder` VALUES (3, 14, 10, '20240405020352', '2024-04-05 02:03:52', 2);
INSERT INTO `fileorder` VALUES (4, 14, 10, '20240405122313', '2024-04-05 12:23:13', 6);
INSERT INTO `fileorder` VALUES (5, 14, 10, '20240405234352', '2024-04-05 23:43:52', 2);
INSERT INTO `fileorder` VALUES (6, 14, 10, '20240408211700', '2024-04-08 21:17:00', 2);
INSERT INTO `fileorder` VALUES (7, 13, 10, '20240410225415', '2024-04-10 22:54:15', 2);
INSERT INTO `fileorder` VALUES (8, 13, 1, '20240411014158', '2024-04-11 01:41:58', 2);
INSERT INTO `fileorder` VALUES (9, 12, 3, '20240411014207', '2024-04-11 01:42:07', 2);
INSERT INTO `fileorder` VALUES (10, 15, 1, '20240411183931', '2024-04-11 18:39:31', 9);
INSERT INTO `fileorder` VALUES (11, 15, 1, '20240411203320', '2024-04-11 20:33:20', 7);
INSERT INTO `fileorder` VALUES (12, 15, 1, '20240411230753', '2024-04-11 23:07:53', 17);

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料主图',
  `score` int NULL DEFAULT 0 COMMENT '所需积分',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上传时间',
  `recommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否推荐',
  `user_id` int NULL DEFAULT NULL COMMENT '上传用户',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核说明',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '资料说明',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料链接',
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资源信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (6, ' 数字签名', 'http://localhost:9090/files/1712770868782-21.jpg', 0, '2024-04-02', '是', 2, '审核通过', NULL, '', NULL, 'http://localhost:9090/files/1712114700012-2.mp4');
INSERT INTO `information` VALUES (7, '两类密码体制', 'http://localhost:9090/files/1712770849692-18.jpg', 0, '2024-04-03', '否', 2, '审核通过', NULL, '', NULL, 'http://localhost:9090/files/1712114705167-1.mp4');
INSERT INTO `information` VALUES (8, 'IP 数据报的格式', 'http://localhost:9090/files/1712770830045-19.jpg', 0, '2024-04-03', '否', 2, '审核通过', NULL, '', NULL, 'http://localhost:9090/files/1712114989771-3.mp4');
INSERT INTO `information` VALUES (9, '互联网的路由选择协议', 'http://localhost:9090/files/1712770805436-17.jpg', 0, '2024-04-03', '否', 2, '审核通过', NULL, '', NULL, 'http://localhost:9090/files/1712115025112-4.mp4');
INSERT INTO `information` VALUES (10, '运输层的端口', 'http://localhost:9090/files/1712770783184-16.jpg', 0, '2024-04-03', '否', 2, '审核通过', NULL, '', NULL, 'http://localhost:9090/files/1712115031994-5.mp4');
INSERT INTO `information` VALUES (11, '运输层协议概述', 'http://localhost:9090/files/1712770754935-15.jpg', 0, '2024-04-03', '否', 2, '审核通过', NULL, '', NULL, 'http://localhost:9090/files/1712115056400-6.mp4');
INSERT INTO `information` VALUES (12, '电子邮件', 'http://localhost:9090/files/1712770732363-14.jpg', 3, '2024-04-03', '否', 2, '审核通过', NULL, '', NULL, 'http://localhost:9090/files/1712115065648-7.mp4');
INSERT INTO `information` VALUES (13, '简单网络管理协议 SNMP', 'http://localhost:9090/files/1712770715778-13.jpg', 1, '2024-04-03', '否', 2, '审核通过', NULL, '', NULL, 'http://localhost:9090/files/1712115104819-7.mp4');
INSERT INTO `information` VALUES (15, '公钥密码体制', 'http://localhost:9090/files/1712770956068-20.jpg', 1, '2024-04-11', '否', 2, '审核通过', NULL, '', NULL, NULL);
INSERT INTO `information` VALUES (16, '计算机网络', 'http://localhost:9090/files/1712772649834-1.jpg', 0, '2024-04-11', '否', 7, '审核通过', NULL, '<p>我的课程</p>', NULL, NULL);
INSERT INTO `information` VALUES (17, '计算机网络', 'http://localhost:9090/files/1712855107720-2.jpg', 0, '2024-04-12', '否', 18, '审核不通过', '内容过少', '<p>计算机网络</p>', NULL, NULL);

-- ----------------------------
-- Table structure for judge
-- ----------------------------
DROP TABLE IF EXISTS `judge`;
CREATE TABLE `judge`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '答案',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '判断题表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of judge
-- ----------------------------
INSERT INTO `judge` VALUES (1, '√', '<p>光缆的光纤通常是偶数个，一进一出。<br/></p>', '试题一');
INSERT INTO `judge` VALUES (2, '×', '<p>三层交换机在转发数据时，可以根据数据报的 MAC 地址表进行路由的选择和转发。<br/></p>', NULL);
INSERT INTO `judge` VALUES (3, '×', '<p>网络层处于运输层和应用层之间。<br/></p>', NULL);
INSERT INTO `judge` VALUES (4, '√', '<p>默认路由是在路由表中没有找到明确的目的网络时所选择的路由。<br/></p>', NULL);
INSERT INTO `judge` VALUES (5, '√', '<p>使用 ping 命令可以检测网络的连通性。<br/></p>', NULL);
INSERT INTO `judge` VALUES (6, '×', '<p>解决无线局域网媒体访问冲突的协议是 CSMA/CD。<br/></p>', NULL);
INSERT INTO `judge` VALUES (7, '×', '<p>公钥密码体制中，加密和解密使用相同的密钥。<br/></p>', NULL);
INSERT INTO `judge` VALUES (8, '×', '<p>UDP 是面向连接的运输层协议。<br/></p>', NULL);
INSERT INTO `judge` VALUES (9, '×', '<p>通常情况下，远距离通信使用多模光纤，近距离通信使用单模光纤。<br/></p>', NULL);
INSERT INTO `judge` VALUES (10, '√', '<p>使用 NAT 技术可以将私用的本地 IP 地址转换为合法的全球 IP 地址。<br/></p>', NULL);
INSERT INTO `judge` VALUES (11, '×', '<p>OSI/RM 的最高层是网络层。<br/></p>', NULL);
INSERT INTO `judge` VALUES (12, '×', '<p>默认路由是预先设定的最短路径。<br/></p>', NULL);
INSERT INTO `judge` VALUES (13, '√', '<p>高速缓存中的 ARP 表保存了主机 IP 地址与物理地址的映射关系。<br/></p>', NULL);
INSERT INTO `judge` VALUES (14, '×', '<p>模拟信号不可以在无线媒体上传输。<br/></p>', NULL);
INSERT INTO `judge` VALUES (15, '√', '<p>数据链路层使用的信道主要有两种类型，即点对点信道和广播信道。<br/></p>', NULL);
INSERT INTO `judge` VALUES (16, '×', '<p>三层交换技术在网络模型中的数据链路层实现了分组的高速转发。<br/></p>', NULL);
INSERT INTO `judge` VALUES (17, '√', '<p>数字通信中，发送端和接收端必须以某种方式保持同步。<br/></p>', NULL);
INSERT INTO `judge` VALUES (18, '×', '<p>模拟信号不可以在无线媒体上传输。<br/></p>', NULL);
INSERT INTO `judge` VALUES (19, '×', '<p>IPv6 地址仍然采用点分十进制记法。<br/></p>', NULL);
INSERT INTO `judge` VALUES (20, '√', '<p>分组过滤路由器可以根据 IP 地址、端口、协议类型等对数据分组进行过滤。<br/></p>', NULL);
INSERT INTO `judge` VALUES (21, '√', '<p>任何加密方法的安全性取决于密钥的长度和攻破密文所需的计算量。<br/></p>', NULL);
INSERT INTO `judge` VALUES (22, '×', '<p>OSPF 是一种基于距离向量的内部网关协议。<br/></p>', NULL);
INSERT INTO `judge` VALUES (23, '×', '<p>由于前向纠错法是自动校正错误，所以大多数网络使用它。<br/></p>', NULL);
INSERT INTO `judge` VALUES (24, '√', '<p>应用网关是在应用层实现网络互联的设备。<br/></p>', NULL);
INSERT INTO `judge` VALUES (25, '×', '<p>所有以太网交换机端口既支持 10BASE-T 标准，又支持 100BASE-T 标准。<br/></p>', NULL);
INSERT INTO `judge` VALUES (26, '√', '<p>入侵检测系统能够检测网络映射、端口扫描、蠕虫和病毒等多种网络攻击。<br/></p>', NULL);

-- ----------------------------
-- Table structure for like
-- ----------------------------
DROP TABLE IF EXISTS `like`;
CREATE TABLE `like`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '喜欢信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of like
-- ----------------------------
INSERT INTO `like` VALUES (48, 2, 112);
INSERT INTO `like` VALUES (49, 2, 111);
INSERT INTO `like` VALUES (50, 2, 110);
INSERT INTO `like` VALUES (51, 2, 109);
INSERT INTO `like` VALUES (52, 18, 111);
INSERT INTO `like` VALUES (53, 18, 110);
INSERT INTO `like` VALUES (54, 18, 109);
INSERT INTO `like` VALUES (55, 18, 108);
INSERT INTO `like` VALUES (56, 18, 107);
INSERT INTO `like` VALUES (57, 19, 108);
INSERT INTO `like` VALUES (58, 19, 107);
INSERT INTO `like` VALUES (59, 19, 106);
INSERT INTO `like` VALUES (60, 2, 92);
INSERT INTO `like` VALUES (61, 2, 99);

-- ----------------------------
-- Table structure for navigation
-- ----------------------------
DROP TABLE IF EXISTS `navigation`;
CREATE TABLE `navigation`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  `content1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '观看章节一视频' COMMENT '内容',
  `flag1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '标记',
  `content2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '观看章节二视频' COMMENT '内容',
  `flag2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标记',
  `exam1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '完成试题一' COMMENT '内容',
  `examFlag1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标记',
  `content3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '观看章节三视频' COMMENT '内容',
  `flag3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标记',
  `demo1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '完成随机选择题' COMMENT '内容',
  `demoFlag1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标记',
  `content4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '观看章节四视频' COMMENT '内容',
  `flag4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标记',
  `content5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '观看章节五视频' COMMENT '内容',
  `flag5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标记',
  `demo2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '完成随机判断题' COMMENT '内容',
  `demoFlag2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标记',
  `content6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '观看章节六视频' COMMENT '内容',
  `flag6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标记',
  `exam2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '完成试题二' COMMENT '内容',
  `examFlag2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '导航栏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of navigation
-- ----------------------------
INSERT INTO `navigation` VALUES (1, 2, '观看章节一视频', 'true', '观看章节二视频', 'true', '完成试题一', 'true', '观看章节三视频', 'true', '完成随机选择题', 'true', '观看章节四视频', 'true', '观看章节五视频', 'true', '完成随机判断题', NULL, '观看章节六视频', 'true', '完成试题二', NULL);
INSERT INTO `navigation` VALUES (2, 7, '观看章节一视频', 'true', '观看章节二视频', NULL, '完成试题一', '', '观看章节三视频', NULL, '完成随机选择题', '', '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', '', '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (3, 9, '观看章节一视频', '', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (4, 10, '观看章节一视频', '', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (5, 11, '观看章节一视频', '', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (6, 12, '观看章节一视频', '', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (7, 13, '观看章节一视频', 'true', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (8, 14, '观看章节一视频', 'true', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (9, 15, '观看章节一视频', '', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (10, 16, '观看章节一视频', '', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (11, 17, '观看章节一视频', '', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (12, 18, '观看章节一视频', 'true', '观看章节二视频', 'true', '完成试题一', 'true', '观看章节三视频', 'true', '完成随机选择题', 'true', '观看章节四视频', 'true', '观看章节五视频', 'true', '完成随机判断题', 'true', '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (13, 1, '观看章节一视频', '', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);
INSERT INTO `navigation` VALUES (14, 19, '观看章节一视频', '', '观看章节二视频', NULL, '完成试题一', NULL, '观看章节三视频', NULL, '完成随机选择题', NULL, '观看章节四视频', NULL, '观看章节五视频', NULL, '完成随机判断题', NULL, '观看章节六视频', NULL, '完成试题二', NULL);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线', '今天系统正式上线', '2024-04-05', 'admin');
INSERT INTO `notice` VALUES (4, '上线', '上线', '2024-04-11', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '订单价格',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下单时间',
  `user_id` int NULL DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '课程订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '题库封面',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '题库章节',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '题库内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '题库内容表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (9, 'http://localhost:9090/files/1710852706201-tiku8.png', '试卷八', '', '2024-03-19');
INSERT INTO `question` VALUES (10, 'http://localhost:9090/files/1710852951284-tiku7.png', '试题七', '', '2024-03-19');
INSERT INTO `question` VALUES (11, 'http://localhost:9090/files/1710853030063-tiku6.png', '试题六', '', '2024-03-19');
INSERT INTO `question` VALUES (12, 'http://localhost:9090/files/1710853044958-tiku5.png', '试题五', '', '2024-03-19');
INSERT INTO `question` VALUES (13, 'http://localhost:9090/files/1710853053912-tiku4.png', '试题四', '', '2024-03-19');
INSERT INTO `question` VALUES (14, 'http://localhost:9090/files/1710853062925-tiku3.png', '试题三', '', '2024-03-19');
INSERT INTO `question` VALUES (15, 'http://localhost:9090/files/1710853069581-tiku2.png', '试题二', '', '2024-03-19');
INSERT INTO `question` VALUES (16, 'http://localhost:9090/files/1710853076910-tiku1.png', '试题一', '<p style=\"line-height:2;\"><br/>一、单项选择题（26 分，每题 1 分）<br/>1．MAC 地址通常存储在计算机的（ ）。<br/>A.网卡上 B.内存中 C.高速缓存中 D.硬盘上</p><p style=\"line-height:2;\">2．下面关于以太网的描述正确的是（ ）。<br/>A.数据包以广播方式发送<br/>B.所有结点可以同时发送和接收数据<br/>C.两个结点相互通信时，其它结点不检测总线上的信号<br/>D.网络中有一个控制中心，用于控制所有结点的发送和接收<br/>3．如果子网掩码是 255.255.255.224，那么主机 218.22.50.40 所在的驻留子网是（ ）。<br/>A.218.22.50.0&nbsp; &nbsp; &nbsp;B.218.22.50.224<br/>C.218.22.50.32&nbsp; &nbsp;D.218.22.50.40<br/>4．某公司申请到一个 C 类网络，出于地理位置上的考虑，必须切割成 5 个子网，那么子网掩<br/>码可以设置为（ ）。<br/>A.255.255.0.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; B.255.255.255.0<br/>C.255.255.255.192&nbsp; D.255.255.255.224<br/>5．浏览器与 Web 服务器之间使用的协议是（ ）。<br/>A.DNS B.SNMP C.HTTP D.SMTP<br/>6．一个 Web 站点，主机是 www.abc.com，端口是 8080，主页是 index.html，则客户端访问<br/>', '2024-03-19');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程封面',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '课程介绍',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程类型',
  `price` int NULL DEFAULT 0 COMMENT '课程积分',
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程视频',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料链接',
  `recommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否推荐',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '积分专区表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (13, 'http://localhost:9090/files/1712760418833-jifen1.jpg', 'TCP-IP协议', '', 'VIDEO', 0, 'http://localhost:9090/files/1712760477972-2-物理层.mp4', NULL, '否', '2024-47-10');
INSERT INTO `score` VALUES (14, 'http://localhost:9090/files/1712760492732-jifen2.jpg', '计算机网络', '', 'VIDEO', 0, NULL, NULL, '否', '2024-48-10');
INSERT INTO `score` VALUES (15, 'http://localhost:9090/files/1712760516420-jifen3.jpg', '计算机网络概述', '', 'VIDEO', 2, NULL, NULL, '否', '2024-49-10');
INSERT INTO `score` VALUES (16, 'http://localhost:9090/files/1712760547968-jifen4.jpg', '子网规划', '', 'VIDEO', 0, NULL, NULL, '否', '2024-49-10');
INSERT INTO `score` VALUES (17, 'http://localhost:9090/files/1712760577438-jifen5.jpg', '域名系统 DNS', '', 'VIDEO', 6, NULL, NULL, '否', '2024-50-10');
INSERT INTO `score` VALUES (18, 'http://localhost:9090/files/1712760633147-jifen6.jpg', '互联网的域名结构', '', 'VIDEO', 5, NULL, NULL, '否', '2024-50-10');
INSERT INTO `score` VALUES (19, 'http://localhost:9090/files/1712760651042-jifen7.jpg', '运输层协议概述', '', 'VIDEO', 1, NULL, NULL, '否', '2024-51-10');
INSERT INTO `score` VALUES (20, 'http://localhost:9090/files/1712760670212-jifen8.jpg', '网络的起源', '', 'TEXT', 4, NULL, NULL, '否', '2024-51-10');
INSERT INTO `score` VALUES (21, 'http://localhost:9090/files/1712760684903-jifen9.jpg', '互联网的路由选择协议', '', 'TEXT', 0, NULL, NULL, '否', '2024-51-10');
INSERT INTO `score` VALUES (22, 'http://localhost:9090/files/1712760697743-jifen10.jpg', '两类密码体制', '', 'VIDEO', 3, NULL, NULL, '否', '2024-51-10');
INSERT INTO `score` VALUES (23, 'http://localhost:9090/files/1712760713252-jifen11.jpg', 'IPv6 的地址', '', 'VIDEO', 2, 'http://localhost:9090/files/1712855199587-1-计算机网络概述.mp4', NULL, '否', '2024-52-10');
INSERT INTO `score` VALUES (24, 'http://localhost:9090/files/1712760730246-jifen12.jpg', 'TCP/IP协议栈', '', 'VIDEO', 10, 'http://localhost:9090/files/1712855186121-1-计算机网络概述.mp4', NULL, '否', '2024-52-10');

-- ----------------------------
-- Table structure for scoreorder
-- ----------------------------
DROP TABLE IF EXISTS `scoreorder`;
CREATE TABLE `scoreorder`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `score_id` int NULL DEFAULT NULL COMMENT '积分课程ID',
  `score` int NULL DEFAULT NULL COMMENT '所需积分',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '兑换时间',
  `user_id` int NULL DEFAULT NULL COMMENT '兑换用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '积分专区表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scoreorder
-- ----------------------------
INSERT INTO `scoreorder` VALUES (8, 23, 2, '20240411223713', '2024-04-11 22:37:13', 7);
INSERT INTO `scoreorder` VALUES (10, 24, 10, '20240412010915', '2024-04-12 01:09:15', 18);
INSERT INTO `scoreorder` VALUES (11, 24, 10, '20240413180952', '2024-04-13 18:09:51', 2);
INSERT INTO `scoreorder` VALUES (12, 24, 10, '20240413225451', '2024-04-13 22:54:51', 2);
INSERT INTO `scoreorder` VALUES (13, 24, 10, '20240413225456', '2024-04-13 22:54:56', 2);

-- ----------------------------
-- Table structure for signin
-- ----------------------------
DROP TABLE IF EXISTS `signin`;
CREATE TABLE `signin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '签到时间',
  `day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '当天年月日',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '签到信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of signin
-- ----------------------------
INSERT INTO `signin` VALUES (2, 2, '2024-04-13 18:10:01', '2024-04-13');
INSERT INTO `signin` VALUES (3, 5, '2024-03-09 21:11:58', '2024-03-09');
INSERT INTO `signin` VALUES (4, 6, '2024-04-05 12:17:50', '2024-04-05');
INSERT INTO `signin` VALUES (5, 7, '2024-04-12 00:51:26', '2024-04-12');
INSERT INTO `signin` VALUES (6, 9, '2024-04-11 18:39:26', '2024-04-11');
INSERT INTO `signin` VALUES (7, 10, '2024-04-11 19:00:41', '2024-04-11');
INSERT INTO `signin` VALUES (8, 13, '2024-04-11 20:50:04', '2024-04-11');
INSERT INTO `signin` VALUES (9, 14, '2024-04-11 21:04:06', '2024-04-11');
INSERT INTO `signin` VALUES (10, 16, '2024-04-11 21:08:05', '2024-04-11');
INSERT INTO `signin` VALUES (11, 17, '2024-04-11 23:07:51', '2024-04-11');
INSERT INTO `signin` VALUES (12, 18, '2024-04-12 01:09:11', '2024-04-12');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '数学', 'http://localhost:9090/files/1712250447123-数学.png');
INSERT INTO `type` VALUES (2, '计算机', 'http://localhost:9090/files/1712250457030-计算机.png');
INSERT INTO `type` VALUES (3, '历史', 'http://localhost:9090/files/1712250464052-历史.png');
INSERT INTO `type` VALUES (4, '物理', 'http://localhost:9090/files/1712250471080-物理.png');
INSERT INTO `type` VALUES (5, '英语', 'http://localhost:9090/files/1712250477980-英语.png');
INSERT INTO `type` VALUES (6, '政治', 'http://localhost:9090/files/1712250487415-政治.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `member` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员',
  `score` int NULL DEFAULT 0 COMMENT '积分',
  `account` double(10, 2) NULL DEFAULT 0.00 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'zhangsan', '123', '张三', 'http://localhost:9090/files/1712593158690-person.jpg', 'USER', '371726', '3197151740@qq.com', '会员', 93, 3835.30);
INSERT INTO `user` VALUES (5, 'lisi', '123', 'lisi', NULL, 'USER', NULL, NULL, '非会员', 0, 0.00);
INSERT INTO `user` VALUES (18, 'user', 'user', 'user', 'http://localhost:9090/files/1712855098225-1.jpg', 'USER', NULL, NULL, '非会员', 0, 0.00);
INSERT INTO `user` VALUES (19, 'a', 'a', 'a', NULL, 'USER', NULL, NULL, '非会员', 0, 0.00);

SET FOREIGN_KEY_CHECKS = 1;
