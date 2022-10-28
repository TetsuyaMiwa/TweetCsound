<CsoundSynthesizer>
<CsOptions>
-odac
;-W -o test.wav
</CsOptions>
<CsInstruments>
ksmps = 10 
nchnls = 2
0dbfs  = 1
instr 1
kenv linseg 0, 2, 1, p3-19, 1, 13, 0.05, 4,0 
kden linseg sr, 2, sr, p3-12, p5*3, 10 ,p5*3
ag dust 1, kden
ao oscili p4*kenv, p5
as samphold ao, ag
out ao, as
endin
</CsInstruments>
<CsScore>
i1 0 20 0.7 1000
</CsScore>
</CsoundSynthesizer>