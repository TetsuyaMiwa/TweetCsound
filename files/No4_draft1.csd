<CsoundSynthesizer>
<CsOptions>
-odac
;-A -o "KS.aiff"
</CsOptions>
<CsInstruments>
sr     = 44100
ksmps = 1
nchnls = 1
0dbfs  = 1


instr 1
afb init 0
kf oscili 1,0.1,-1,0.25
kf3 = 10*kf+10.1

asig rand 1
asig2 = (0.2*asig + 0.8*afb)
out asig2

adel vdelay asig2,kf3,100  
;adel is msec. (1000/adel)Hz:10=100Hz, 1=1000Hz
afb=adel
endin
</CsInstruments>
<CsScore>
i1 0 10

</CsScore>
</CsoundSynthesizer>