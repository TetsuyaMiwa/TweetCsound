<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls=2
0dbfs=1
schedule 1,0,1,110,1
schedule 1,.02,1,330,0
schedule 1,0.05,1,770,1
iw ftgen 1,0,64,7,0,32,1,0,-1,32,0
instr 1
ke linseg 0,.01,.2,.6,0
as oscil ke,p4,1
out as*p5,as*(1-p5)
schedule 1,.1,1,(p4*1.09)%4053,1-p5
endin
</CsInstruments>
<CsScore>,
</CsScore>
</CsoundSynthesizer>