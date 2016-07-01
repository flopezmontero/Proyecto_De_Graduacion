#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 8cfbd71f8c2244a4802a4668ad038820 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L secureip --snapshot Testbench_FPU_Add_Subt_func_impl xil_defaultlib.Testbench_FPU_Add_Subt xil_defaultlib.glbl -log elaborate.log
