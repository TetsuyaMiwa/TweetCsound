<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls=2
0dbfs=1
schedule 1,0,.1,1
instr 1
ka[] fillarray 697,770,852,1209,1336,1477
id=p4-1
prints "Num=%d",p4
ke linen .3,.01,p3,.01
out oscil(ke,ka[id/3]),oscil(ke,ka[id%3+3]) 
schedule 1,betarand(.7,1,3),.1,int(random(1,10))
endin
</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>