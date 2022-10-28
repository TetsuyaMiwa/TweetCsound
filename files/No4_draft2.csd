<CsoundSynthesizer>
<CsOptions>
-odac
;-A -o "KS.aiff"
</CsOptions>
<CsInstruments>
nchnls = 1
0dbfs  = 1
instr 1
af init 0
kf oscili 10,0.1,-1,0.25
kf3 = kf+10.1

asig = (0.2*rand(1) + 0.8*af)
out asig

ad vdelay asig,kf3,100  
af=ad
endin
</CsInstruments>
<CsScore>
i1 0 10

</CsScore>
</CsoundSynthesizer>