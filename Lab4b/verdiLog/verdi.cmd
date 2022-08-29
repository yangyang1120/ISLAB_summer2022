debImport "-f" "run.f" -autoalias
debLoadSimResult /home/t107360216/Desktop/2022_summer/Lab4b/SDAM.fsdb
wvCreateWindow
verdiWindowBeWindow -win $_nWave2
wvResizeWindow -win $_nWave2 0 23 1024 641
wvResizeWindow -win $_nWave2 8 31 1024 641
wvSetCursor -win $_nWave2 6236245.731672
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/testfixture"
wvGetSignalSetScope -win $_nWave2 "/testfixture/u_SDAM"
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SDAM/scl} \
{/testfixture/u_SDAM/reset_n} \
{/testfixture/u_SDAM/sda} \
{/testfixture/u_SDAM/cs\[2:0\]} \
{/testfixture/u_SDAM/ns\[2:0\]} \
{/testfixture/u_SDAM/cnt\[4:0\]} \
{/testfixture/u_SDAM/avalid} \
{/testfixture/u_SDAM/aout\[7:0\]} \
{/testfixture/u_SDAM/dvalid} \
{/testfixture/u_SDAM/dout\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SDAM/scl} \
{/testfixture/u_SDAM/reset_n} \
{/testfixture/u_SDAM/sda} \
{/testfixture/u_SDAM/cs\[2:0\]} \
{/testfixture/u_SDAM/ns\[2:0\]} \
{/testfixture/u_SDAM/cnt\[4:0\]} \
{/testfixture/u_SDAM/avalid} \
{/testfixture/u_SDAM/aout\[7:0\]} \
{/testfixture/u_SDAM/dvalid} \
{/testfixture/u_SDAM/dout\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvGetSignalClose -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 540695.773544 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 643527.485077 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 766262.108519 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 845873.756158 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 935436.859751 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1044902.875254 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1141100.282817 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1247249.146334 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1340129.401912 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1446278.265430 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1539158.521008 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1638673.080556 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1738187.640104 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1850970.807592 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1947168.215155 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2053317.078673 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2142880.182266 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2232443.285859 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2355177.909302 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2461326.772819 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2547572.724428 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2643272.559192 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2752738.574695 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2848935.982258 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2945133.389821 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 3038013.645399 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 3164065.420827 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 447815.517966 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 553964.381484 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 553964.381484 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 660113.245001 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 759627.804549 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 839239.452188 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 955339.771660 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1048220.027238 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1151051.738771 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1240614.842365 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1343446.553897 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1439643.961460 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1343446.553897 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 1446278.265430 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 1549109.976963 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1635355.928571 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1426375.353521 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1552427.128948 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1651941.688496 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1744821.944074 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1844336.503622 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1950485.367140 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2066585.686613 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2142880.182266 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2242394.741814 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2345226.453347 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2448058.164880 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2547572.724428 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2653721.587946 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2753733.720291 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2843296.823884 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2952762.839387 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 3042325.942980 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetRadix -win $_nWave2 -1Com
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -Unsigned
wvSetCursor -win $_nWave2 3141840.502528 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 3055594.550919 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 3125254.742603 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 719821.980730 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 739724.892640 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 663430.396986 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 653478.941032 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 1452912.569400 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 1632038.776586 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 8764614.372158 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 8761297.220173 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 8860811.779721 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 8950374.883314 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 8830957.411857 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 5146041.362045 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 5444585.040689 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 5431316.432749 -snap {("G1" 6)}
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
debExit
