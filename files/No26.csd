<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls = 2
0dbfs  = 1
instr 2
kenv linseg 1,0.2,0.1, 0.2,0
asig fmbell kenv, 2500, 10,5, 0.1,0.5
outall asig*0.1
if p5<15 then
schedule 2, p4 ,0.5, p4^1.14, p5+1
endif   
endin
</CsInstruments>
<CsScore>
i 2 0 0.5 0.5 1
f0 3
</CsScore>
</CsoundSynthesizer>