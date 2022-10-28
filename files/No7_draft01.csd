<CsoundSynthesizer>
<CsOptions>
-odac
;-W -o No7.wav
</CsOptions>
<CsInstruments>
sr     = 44100
kr     = 4410
ksmps = 10 
nchnls = 2
0dbfs  = 1

instr 1

asig1 oscil 1, cpspch(p4)
asig2 oscil 1,cpspch(p5),1

asig3 = asig1*asig2

aout = asig3*0.6
out aout, aout
endin
</CsInstruments>
<CsScore>
f1 0 64 7 1 32 1 0 0 32 0 

;8.00=MiddleC
i1 0 0.1 6.00 8.00 
i1 + .   6.00 8.02
i1 + .   6.00 8.04
i1 + .   6.00 8.05
i1 + .   6.00 8.07
i1 + .   6.00 8.09
i1 + .   6.00 8.11
i1 + .   6.00 8.12

i1 + .   10.00 8.00 
i1 + .   10.00 8.02
i1 + .   10.00 8.04
i1 + .   10.00 8.05
i1 + .   10.00 8.07
i1 + .   10.00 8.09
i1 + .   10.00 8.11
i1 + .   10.00 8.12
</CsScore>
</CsoundSynthesizer>