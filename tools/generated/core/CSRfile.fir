;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit CSRfile : 
  module CSRfile : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip instruction : UInt<32>, flip csr_op : UInt<3>, flip data_in : UInt<64>, flip hasException : UInt<1>, flip hasStall : UInt<1>, flip in_pc : UInt<64>, redir_target : UInt<64>, csr_info : UInt<64>, isredir : UInt<1>}
    
    io.isredir is invalid @[csr.scala 66:8]
    io.csr_info is invalid @[csr.scala 66:8]
    io.redir_target is invalid @[csr.scala 66:8]
    io.in_pc is invalid @[csr.scala 66:8]
    io.hasStall is invalid @[csr.scala 66:8]
    io.hasException is invalid @[csr.scala 66:8]
    io.data_in is invalid @[csr.scala 66:8]
    io.csr_op is invalid @[csr.scala 66:8]
    io.instruction is invalid @[csr.scala 66:8]
    node _T = eq(io.csr_op, UInt<3>("h02")) @[csr.scala 69:35]
    node _T_1 = eq(io.csr_op, UInt<3>("h04")) @[csr.scala 69:58]
    node _T_2 = or(_T, _T_1) @[csr.scala 69:45]
    node _T_3 = eq(io.csr_op, UInt<3>("h03")) @[csr.scala 69:81]
    node _T_4 = or(_T_2, _T_3) @[csr.scala 69:68]
    node _T_5 = eq(io.hasException, UInt<1>("h00")) @[csr.scala 69:95]
    node _T_6 = and(_T_4, _T_5) @[csr.scala 69:92]
    node _T_7 = eq(io.hasStall, UInt<1>("h00")) @[csr.scala 69:115]
    node _T_8 = and(_T_6, _T_7) @[csr.scala 69:112]
    wire wen : UInt<1>
    wen <= _T_8
    reg mtvec : UInt<64>, clock with : (reset => (reset, UInt<1>("h00"))) @[csr.scala 71:24]
    reg mepc : UInt<64>, clock with : (reset => (reset, UInt<1>("h00"))) @[csr.scala 72:23]
    reg mcause : UInt<64>, clock with : (reset => (reset, UInt<1>("h00"))) @[csr.scala 73:25]
    wire _T_9 : {zero : UInt<1>, ssi : UInt<1>, msi : UInt<1>, sti : UInt<1>, mti : UInt<1>, sei : UInt<1>, mei : UInt<1>} @[csr.scala 74:35]
    _T_9.mei <= UInt<1>("h00") @[csr.scala 74:35]
    _T_9.sei <= UInt<1>("h00") @[csr.scala 74:35]
    _T_9.mti <= UInt<1>("h00") @[csr.scala 74:35]
    _T_9.sti <= UInt<1>("h00") @[csr.scala 74:35]
    _T_9.msi <= UInt<1>("h00") @[csr.scala 74:35]
    _T_9.ssi <= UInt<1>("h00") @[csr.scala 74:35]
    _T_9.zero <= UInt<1>("h00") @[csr.scala 74:35]
    reg mie : {zero : UInt<1>, ssi : UInt<1>, msi : UInt<1>, sti : UInt<1>, mti : UInt<1>, sei : UInt<1>, mei : UInt<1>}, clock with : (reset => (reset, _T_9)) @[csr.scala 74:22]
    wire _T_10 : {zero : UInt<1>, ssi : UInt<1>, msi : UInt<1>, sti : UInt<1>, mti : UInt<1>, sei : UInt<1>, mei : UInt<1>} @[csr.scala 75:35]
    _T_10.mei <= UInt<1>("h00") @[csr.scala 75:35]
    _T_10.sei <= UInt<1>("h00") @[csr.scala 75:35]
    _T_10.mti <= UInt<1>("h00") @[csr.scala 75:35]
    _T_10.sti <= UInt<1>("h00") @[csr.scala 75:35]
    _T_10.msi <= UInt<1>("h00") @[csr.scala 75:35]
    _T_10.ssi <= UInt<1>("h00") @[csr.scala 75:35]
    _T_10.zero <= UInt<1>("h00") @[csr.scala 75:35]
    reg mip : {zero : UInt<1>, ssi : UInt<1>, msi : UInt<1>, sti : UInt<1>, mti : UInt<1>, sei : UInt<1>, mei : UInt<1>}, clock with : (reset => (reset, _T_10)) @[csr.scala 75:22]
    reg mtval : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[csr.scala 76:24]
    reg mscratch : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[csr.scala 77:27]
    wire _T_11 : {sd : UInt<1>, zero1 : UInt<40>, tsr : UInt<1>, tw : UInt<1>, tvm : UInt<1>, mxr : UInt<1>, sum : UInt<1>, mprv : UInt<1>, xs : UInt<2>, fs : UInt<2>, mpp : UInt<2>, zero2 : UInt<2>, spp : UInt<1>, mpie : UInt<1>, zero3 : UInt<1>, spie : UInt<1>, upie : UInt<1>, mie : UInt<1>, zero4 : UInt<1>, sie : UInt<1>, uie : UInt<1>} @[csr.scala 78:39]
    _T_11.uie <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.sie <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.zero4 <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.mie <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.upie <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.spie <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.zero3 <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.mpie <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.spp <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.zero2 <= UInt<2>("h00") @[csr.scala 78:39]
    _T_11.mpp <= UInt<2>("h00") @[csr.scala 78:39]
    _T_11.fs <= UInt<2>("h00") @[csr.scala 78:39]
    _T_11.xs <= UInt<2>("h00") @[csr.scala 78:39]
    _T_11.mprv <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.sum <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.mxr <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.tvm <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.tw <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.tsr <= UInt<1>("h00") @[csr.scala 78:39]
    _T_11.zero1 <= UInt<40>("h00") @[csr.scala 78:39]
    _T_11.sd <= UInt<1>("h00") @[csr.scala 78:39]
    reg mstatus : {sd : UInt<1>, zero1 : UInt<40>, tsr : UInt<1>, tw : UInt<1>, tvm : UInt<1>, mxr : UInt<1>, sum : UInt<1>, mprv : UInt<1>, xs : UInt<2>, fs : UInt<2>, mpp : UInt<2>, zero2 : UInt<2>, spp : UInt<1>, mpie : UInt<1>, zero3 : UInt<1>, spie : UInt<1>, upie : UInt<1>, mie : UInt<1>, zero4 : UInt<1>, sie : UInt<1>, uie : UInt<1>}, clock with : (reset => (reset, _T_11)) @[csr.scala 78:26]
    reg mtimecmp : UInt<64>, clock with : (reset => (reset, UInt<1>("h00"))) @[csr.scala 79:27]
    reg mtime : UInt<64>, clock with : (reset => (reset, UInt<1>("h00"))) @[csr.scala 80:24]
    wire prv_now : UInt<2>
    prv_now <= UInt<2>("h03")
    
