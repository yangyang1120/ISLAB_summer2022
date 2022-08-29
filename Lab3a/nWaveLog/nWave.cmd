wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/t107360216/Desktop/2022_summer/Lab3a/alu.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/alu_test"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/alu_test/abs_accum\[7:0\]} \
{/alu_test/accum\[7:0\]} \
{/alu_test/alu_out\[7:0\]} \
{/alu_test/cal_accum_data\[7:0\]} \
{/alu_test/clk} \
{/alu_test/cnd_accum\[7:0\]} \
{/alu_test/data\[7:0\]} \
{/alu_test/err_cnt\[31:0\]} \
{/alu_test/i\[31:0\]} \
{/alu_test/k\[31:0\]} \
{/alu_test/opcode\[2:0\]} \
{/alu_test/reset} \
{/alu_test/twocomp_accum\[7:0\]} \
{/alu_test/zero} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1024 641
wvResizeWindow -win $_nWave1 0 23 1024 641
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/alu_test"
wvGetSignalSetScope -win $_nWave1 "/alu_test"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/alu_test/clk} \
{/alu_test/reset} \
{/alu_test/zero} \
{/alu_test/clk} \
{/alu_test/opcode\[2:0\]} \
{/alu_test/alu_out\[7:0\]} \
{/alu_test/accum\[7:0\]} \
{/alu_test/data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/alu_test/clk} \
{/alu_test/reset} \
{/alu_test/zero} \
{/alu_test/clk} \
{/alu_test/opcode\[2:0\]} \
{/alu_test/alu_out\[7:0\]} \
{/alu_test/accum\[7:0\]} \
{/alu_test/data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 30.234750 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetCursor -win $_nWave1 50.118865 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 68.368669 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 89.614710 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGoToTime -win $_nWave1 115
wvSetCursor -win $_nWave1 110.914223 -snap {("G1" 1)}
wvExit
