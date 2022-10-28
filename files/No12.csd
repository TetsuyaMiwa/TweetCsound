<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
0dbfs=1
schedule 1,0,0.3,0.1,256
instr 1
iS[] fillarray 60,64,65,67,71,72
out oscil(line(0.6,p3,0),cpsmidinn(iS[6*p5/257]))
schedule 1,p3,p4,p3,(p5>>1)+(p5&1)#(rnd(1)<0.2?1:0)*128
endin
</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>