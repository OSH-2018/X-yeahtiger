# 热部署项目

## 小组成员

隆晋威

吴昊

伊昕宇

魏天心

## 目录

/doc  文档目录，包括调研报告和可信性报告

/demo 演示程序目录，演示项目各部分实现原理的最小范例

## Kpatch调查
### 功能
kpatch是RedHat主导开发的“内核在线升级”工具，可在不重启系统、不中断业务的情况下实现内核在线升级。实现函数级别的执行流程替换。
其基本原理为：基于ftrace，类似于ftrace的动态探测点，利用mcount机制，在内核编译时，在每个函数入口保留数个字节，然后在打补丁时，将“被替换函数”入口保留的字节替换为跳转指令，跳转到kpatch的相关流程中，然后进入“新函数”的执行流程，实现函数级别的执行流程在线替换，最终实现“内核在线升级”的功能。
包含以下四部分：


    kpatch-build: 用来将 source diff patch 转换成 hot patch module；

    hot patch module: 包含替代函数及原始函数元数据的内核模块；

    kpatch core module: 为 hot patch 注册新的函数以用于替换提供接口的内核模块；

    kpatch utility: 允许用户管理 hot patch 模块的命令行工具；


### kpatch运行机制
kpatch 主要有两个组件 katch build 和 katch.ko

katch build — 主要用来建立一个二进制的 patch 模块

katch.ko — katch产生的内核模块
kpatch 使用Ftrace 进行打补丁的操作

Ftrace是Linux进行代码级实践分析最有效的工具之一，比如我们进行一个系统调用，出来的时间过长，我们想知道时间花哪里去了，利用Ftrace就可以追踪到一级级的时间分布。

	使用hook 链接到目标函数寄存器
	修改 regs->ip 指针，将其指向新函数
kaptch 在运行过程中会确保旧函数不被执行，以防新旧程序或打补丁的程序发生冲突

![](https://img-blog.csdn.net/20150724094156283?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQv/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

大致流程为：

1. 补丁进程 增加一个ftrace 跟踪项（eg：foo() 函数），追踪哪些进程使用旧foo()函数；
2. 调用 stop_machine 停止所有正在运行的进程和中断，并且遍历 stop_machine 的返回值，用来确保旧的foo() 函数确实已经被停止。检查旧的 foo() 函数在栈中的位置。
3. 更新hash 表，使函数调用栈中的指针指向新的 foo()函数，但是旧的foo()函数的指针地址保留方便还原。
![](https://img-blog.csdn.net/20150724104606699?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQv/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)
### 缺陷与不足

1. 某些函数不支持hot patch，如（schedule(), sys_poll(), sys_select(), sys_read(), sys_nanosleep()）
2. 初始化函数不支持hot patch,如__init
3. 不支持修改静态分配的数据
4. 不支持vdso中的函数进行patch
5. kpatch和ftrace以及kprobes存在不兼容
6. 改变函数与动态分配数据间的交互的patch可能存在安全性问题。
### 附录
needs gcc >= 4.8 and Linux >= 3.9.

now available Fedora20，RHEL7，Ubuntu14.04，Debian8.0，Debian7.* ......

[Github主页](https://github.com/dynup/kpatch)

[视频演示](https://www.youtube.com/watch?v=juyQ5TsJRTA)
