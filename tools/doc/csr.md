## 设计M state的CSR

+ 列出所需要的csr寄存器
+ 用编号标识每一个csr寄存器
+ 先实现对csr寄存器的读写
  + 有些csr只能修改某一些位
  + 如果csr的op是set 或者 clear 且 rs1为0则是只读 修改op为read
  + 有的csr寄存器是只读的`csr(11,10) == b‘11`，如果对只读寄存器进行非读操作则应该raise 一个 异常
  + 如果要访问没有实现的csr寄存器则应该raise 一个异常
  + 对于读出来的内容，要根据csr的编号给出具体的内容
+ 再实现ecall ebreak mret(不实现uret) 和时钟中断
  + 设置一组异常原因，并且设置一个异常的优先级
  + 设置一组中断原因，设置一个中断的优先级(中断优先级高于异常)
  + 区分出来指令是什么异常
  + 只要有异常或者中断中一个发生便要陷入，设置陷入地址在mtvec中(是否启用mode？)，如果只是一个返回则设置返回地址
