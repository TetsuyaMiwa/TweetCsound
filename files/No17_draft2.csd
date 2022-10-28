<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
ksmps = 1
nchnls = 2
0dbfs  = 1
    
instr 1	
a1 oscili 0.1, p4,1
kenv linsegr 0,0.01,1,p3-0.01,0.5,0.8,0
a2=a1*kenv
aleft,aright hrtfstat a2, p5,p6, "hrtf-44100-left.dat","hrtf-44100-right.dat"
outs aleft, aright
endin

instr 2
kdur =0.4
kAz   random 0,360
kElev random -40,90

kfreq line 80,p3,800

kfreq2 = kfreq*(1+rnd:k(0.5))
kt=dust(1,linseg(0,p3/2,20,p3/2,0))

schedkwhen kt,0,0,1,0,kdur,kfreq2,kAz,kElev
endin


</CsInstruments>
<CsScore>
f1 0 64 7 1 32 1 0 -1 32 -1
i2 0 30
</CsScore>
</CsoundSynthesizer>