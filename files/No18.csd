<CsoundSynthesizer>
<CsOptions>
-o dac
</CsOptions>
<CsInstruments>
nchnls=2
0dbfs=1
instr 1
outall 0.8*dcblock2(vosim(ampdbfs(p4),linseg(400,p3*3/4,400,p3/4,300),line(p5,p3,p6),0,8,1,17,0))
endin
</CsInstruments>
<CsScore>
f17 0 512 8 0 128 .2 128 1 128 .2 128 0
i1 0 1 0 450 270  
i1 . . -11 800 2140 
i1 . . -22 2830 2950 
i1 . . -22 3800 3900
</CsScore>
</CsoundSynthesizer>