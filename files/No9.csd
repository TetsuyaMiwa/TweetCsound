<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
ksmps=10 
nchnls=2
0dbfs=1
instr 1
kenv linseg 0,2,1,p3-27,1,7,0.2,8,0.05,5,0.01,5,0   
kden linseg sr,2,sr,p3-22,p5*3,20,p5*3
ag dust 1, kden
ao oscili p4*kenv,p5
as samphold ao,ag
out ao,as
endin
</CsInstruments>
<CsScore>
i1 0 30 0.7 1000
</CsScore>
</CsoundSynthesizer>