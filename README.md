# 热部署项目

## 小组成员

隆晋威

吴昊

伊昕宇

魏天心

## 目录

/doc  文档目录，包括调研报告和可信性报告

/demo 演示程序目录，演示项目各部分实现原理的最小范例

## FAQ
### visual studio可以完成热部署，那么为什么还要用tiger fix？

**visual studio 的热部署方案叫做visual studio edit and  continue，最大的缺点是不支持添加超过64k字节的新代码或数据，我们的方案会对此进行改进**

以下是edit and continue不支持修复的详细内容

**1.不支持的更改**

在调试会话期间，不能应用下列 C/C++ 更改：

对全局或静态数据的大多数更改。

对从其他计算机复制并且未在本地生成的可执行文件的更改。

对影响对象（如类的数据成员）的布局的数据类型的更改。

添加 64k 字节以上的新代码或数据。

添加要求在指令指针前存在构造函数的变量。

影响需要运行时初始化的代码的更改。

在某些实例中，添加异常处理程序。

对资源文件的更改。

对只读文件中的代码的更改。

对没有相应的 PDB 文件的代码的更改。

对没有对象文件的代码的更改。

不更新静态库，如果您更改了静态库，则会继续执行老版本

如果进行了上面某项更改，然后尝试应用代码更改，则“输出”窗口中会出现错误或警告消息。

**2.不支持的方案**

调试使用 /Zo（增强优化调试）编译的本机应用

在 Visual Studio 2015 Update 1 之前的 Visual Studio 版本中，调试 Windows 应用商店应用或组件。 从 Visual Studio 2015 Update 1 开始，便可在 Windows 应用商店 C++ 应用和 DirectX 应用中使用“编辑并继续”，因为它现在支持 /ZI 编译器开关与 /bigobj 开关。 你还可以使用具有二进制文件（使用 /FASTLINK 开关编译）的“编辑并继续”。

在 Windows 98 上进行调试。

混合模式（本机/托管）调试。

Javascript 调试。

SQL 调试。

调试转储文件。

在未选择“在未经处理的异常上展开调用堆栈”选项的情况下，在发生未经处理的异常之后编辑代码。

使用连接到来调试应用程序，而不是选择调试菜单上的开始来运行应用程序。

调试优化后的代码。

如果由于生成错误无法生成新版本的代码，则对旧版本的代码进行调试。

**3.链接限制**

设置 /OPT:REF、/OPT:ICF 或 /INCREMENTAL:NO 将禁用“编辑并继续”并发出以下警告：

LINK : warning LNK4075: ignoring /EDITANDCONTINUE due to /OPT

specification

设置 /ORDER、/RELEASE 或 /FORCE 将禁用“编辑并继续”并发出以下警告：

LINK : warning LNK4075: ignoring /INCREMENTAL due to /option

specification

设置任何禁止创建程序数据库 (.pdb) 文件的选项都会禁用“编辑并继续”，但不给出任何特定警告。

默认情况下，“编辑并继续”在调试会话结束时重新链接到程序，以创建最新的可执行文件，而且会在后台加载并处理预编译头，以加速对代码更改的处理，可手动禁用。

### tiger fix和kpatch相比又有什么改进?

**最主要的问题是kpatch在修改时会停止所有正在运行的进程和中断，并且会将一些修补认定为不安全，我们会着重对此进行修改**
  
以下是详细内容

kpatch是RedHat主导开发的“内核在线升级”工具，可在不重启系统、不中断业务的情况下实现内核在线升级。实现函数级别的执行流程替换。其基本原理为：基于ftrace，类似于ftrace的动态探测点，利用mcount机制，在内核编译时，在每个函数入口保留数个字节，然后在打补丁时，将“被替换函数”入口保留   的字节替换为跳转指令，跳转到kpatch的相关流程中，然后进入“新函数”的执行流程，实现函数级别的执行流程在线替换，最终实现“内核在线升级”的功能。
  
虽然较为完善但kpatch有一些不足之处：

1. 某些函数不支持hot patch，如（schedule(), sys_poll(), sys_select(), sys_read(), sys_nanosleep()).
  
2. 初始化函数不支持hot patch,如__init.
  
3. 不支持修改静态分配的数据.
  
4. 不支持vdso中的函数进行patch.
  
5. kpatch和ftrace以及kprobes存在不兼容.
  
6. 改变函数与动态分配数据间的交互的patch可能存在安全性问题.
  
7. 会停止所有正在运行的进程和中断.
  
8. 包含数据结构和数据语义变化的补丁被认为是不安全的.
  
我们实现的热部署方案会在这些缺点的基础上进行改进并实现：

1. 在kpatch中，执行热部署需要停止所有正在运行的进程和中断，这样做更容易维护，缺点就是在打补丁的过程中会带来更大的延迟，我们的热部署会在不停止原进程的条件下实现提高执行效率和性能，减少对原进程的影响，提高速度，减少更新时间.
  
2. kpatch中为尽可能保证安全性，不仅大幅增加了运行时间，牺牲了运行效率，还使得很多合理的补丁难以通过安全监测，我们会针对这一点进行修改，提高用户体验.
  
3. 支持对更多的函数进行热部署.
  
4. 通过课堂所演示的与之不同的手段实现热部署，尽量避免工具之间的不兼容性.



# Issues

* 确定 config 文件格式，并让 shell 从 config 里读取更新配置 (modify shell)，cli 传递 config 文件地址给 shell (参考pmain传参，[64位寄存器传参](http://abcdxyzk.github.io/blog/2012/11/23/assembly-args/ )) (modify shell cli; no-elf)
* x86 支持 (基于 milestone 0)
* 完善 tfix 命令行接口(parser)，写 help
* config 的生成和 patch 的生成 
* 给 tfix 写文档(先写中文，文档内容包括三部分：主程序需要哪些改动、patch和config怎么生成、tfix的cli怎么用)，写 help（英文） (readme,tfix)

这五个做好后，我们得到了一个勉强可以用的普适的工具 (milestone 1)

* 更友好的 patch 生成
* 安全的更新点的选择（研究堆栈，大量使用软中断）
* 主程序不用做修改，libtfix 通过注入的方式加进主程序
    * [elf感染](http://fangrn.iteye.com/blog/735222)
    * [LIEF](https://lief.quarkslab.com/doc/tutorials/05_elf_infect_plt_got.html)
* 二次 patch 问题

 
# Milestones
* milestone 0: basic framework (closed)
* milestone 1: available tool
* milestone 2: tigerfix 1.0 release