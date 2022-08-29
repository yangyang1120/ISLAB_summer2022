wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/t107360216/Desktop/2022_summer/Lab3b/FIR.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/FIR_test"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/FIR_test/Din\[7:0\]} \
{/FIR_test/Dout\[17:0\]} \
{/FIR_test/clk} \
{/FIR_test/cycle} -color ID_RED5 \
{/FIR_test/k\[31:0\]} \
{/FIR_test/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/FIR_test/Din\[7:0\]} \
{/FIR_test/Dout\[17:0\]} \
{/FIR_test/clk} \
{/FIR_test/cycle} -color ID_RED5 \
{/FIR_test/k\[31:0\]} \
{/FIR_test/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 6471.481481 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 6471.481481 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 6471.481481 -snap {("G1" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/FIR_test"
wvGetSignalSetScope -win $_nWave1 "/FIR_test"
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/FIR_test"
wvGetSignalSetScope -win $_nWave1 "/FIR_test"
wvGetSignalSetScope -win $_nWave1 "/FIR_test/dut"
wvGetSignalSetScope -win $_nWave1 "/FIR_test"
wvGetSignalSetScope -win $_nWave1 "/FIR_test/dut"
wvGetSignalSetOptions -win $_nWave1 -signalnavigation on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -signalnavigation off
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetScope -win $_nWave1 "/FIR_test"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/FIR_test/Din\[7:0\]} \
{/FIR_test/Dout\[17:0\]} \
{/FIR_test/clk} \
{/FIR_test/k\[31:0\]} \
{/FIR_test/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetCursor -win $_nWave1 12107.933094 -snap {("G2" 0)}
wvExit
