wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/t107360216/Desktop/2022_summer/Lab2b/rca16.fsdb}
wvSetCursor -win $_nWave1 18.994516
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/rca16_test"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/rca16_test/a\[15:0\]} \
{/rca16_test/b\[15:0\]} \
{/rca16_test/c_in} \
{/rca16_test/c_out} \
{/rca16_test/clk} \
{/rca16_test/err_cnt\[31:0\]} \
{/rca16_test/sum\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
wvExit
