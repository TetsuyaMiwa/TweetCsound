<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
ksmps=32
nchnls=2
0dbfs=1
instr 1
kamp =oscili:k(0.3,0.2) +0.5 
asig gausstrig 1, 1000, 0.1
kAz	= linseg:k(0, p3, 1080) + jitter:k(10, 5,10)
aL, aR hrtfmove2 asig*kamp, kAz, 0, "hrtf-44100-left.dat","hrtf-44100-right.dat"
outs aL,aR
endin
</CsInstruments>
<CsScore>
i1 0 30

f0 z
</CsScore>
</CsoundSynthesizer>