<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
ksmps=10 
nchnls=2
0dbfs=1
instr 1
kc line 1,p3,10 
kt metro kc/2, 0.0001
if kt==1 then 
tableshuffle 1
endif
kf=400+oscil:k(200,kc,1)
ax phasor kf
as table ax, 1, 1
outall as*0.6
endin
</CsInstruments>
<CsScore>
f1 0 4 2 -1 -0.5 0 0.5
i1 0 30
</CsScore>
</CsoundSynthesizer>