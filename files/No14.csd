<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls = 2
0dbfs  = 1
instr 1
as rand 0.8                  
fs pvsanal as,512,64,512,0
km linseg 1,2,1,2,80,1,1,10,.2
kf oscil 10,km
fm1 pvsfreeze fs,kf,kf
fm2 pvsblur fs,.04, 1
ao1 pvsynth	fm1
ao2 pvsynth	fm2
ke linenr .3,1,5,.01
out ao1*ke,ao2*ke
endin
</CsInstruments>
<CsScore>
i1 0 20
</CsScore>
</CsoundSynthesizer>