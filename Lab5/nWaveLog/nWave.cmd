wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/t107360216/Desktop/2022_summer/Lab5/LBPv2.fsdb}
wvSetCursor -win $_nWave1 14049.577267
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/LBP"
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/LBP/clk} \
{/testfixture/LBP/reset} \
{/testfixture/LBP/cur_state\[2:0\]} \
{/testfixture/LBP/nx_state\[2:0\]} \
{/testfixture/LBP/counter\[3:0\]} \
{/testfixture/LBP/counter_reverse\[3:0\]} \
{/testfixture/LBP/lbp_addr\[5:0\]} \
{/testfixture/LBP/lbp_data\[7:0\]} \
{/testfixture/LBP/lbp_write} \
{/testfixture/LBP/gray_req} \
{/testfixture/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/LBP/clk} \
{/testfixture/LBP/reset} \
{/testfixture/LBP/cur_state\[2:0\]} \
{/testfixture/LBP/nx_state\[2:0\]} \
{/testfixture/LBP/counter\[3:0\]} \
{/testfixture/LBP/counter_reverse\[3:0\]} \
{/testfixture/LBP/lbp_addr\[5:0\]} \
{/testfixture/LBP/lbp_data\[7:0\]} \
{/testfixture/LBP/lbp_write} \
{/testfixture/LBP/gray_req} \
{/testfixture/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 2168.726692 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4384.599617 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 172430.273212 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 12352.312899 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSiwvSetCursor -win $_nWave1 21747.338054 -snap {("G3" 7)}
wvSetCursor -win $_nWave1 22435.182881 -snap {("G3" 7)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 21007.904864
wvSetCursor -win $_nWave1 20090.778427 -snap {("G3" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 353575.169540 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 354584.008621 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 353116.606322 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 353460.528736 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 354446.439655 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 352933.181034 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetCursor -win $_nWave1 635.796935 -snap {("G3" 7)}
wvResizeWindow -win $_nWave1 0 791 1024 689
wvSetCursor -win $_nWave1 1147.633461 -snap {("G3" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1024 641
wvSetCursor -win $_nWave1 569.818008 -snap {("G3" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1503.519796 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 3678.825032 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 5854.130268 -snap {("G4" 0)}
wvExit
 \
{/testfixture/LBP/nx_state\[2:0\]} \
{/testfixture/LBP/counter\[3:0\]} \
{/testfixture/LBP/counter_reverse\[3:0\]} \
{/testfixture/LBP/lbp_addr\[5:0\]} \
{/testfixture/LBP/lbp_data\[7:0\]} \
{/testfixture/LBP/lbp_write} \
{/testfixture/LBP/gray_req} \
{/testfixture/gray_data\[7:0\]} \
{/testfixture/LBP/gc_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 23360.958174 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 22441.606641 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 21569.401341 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 15095.044971 -snap {("G2" 0)}
wvExit
