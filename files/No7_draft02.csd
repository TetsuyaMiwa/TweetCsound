<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr     = 44100
kr     = 4410
ksmps = 10 
nchnls = 2
0dbfs  = 1


instr 1
ka[] fillarray 0,.02,.04,.05,.07,.09,.11,.12

kidx = random(0,9)
kkey = int(random(2,11))

kc = random(2,11)

asig1 oscil 1,cpspch(kc)
asig2 oscil 1,cpspch(ka[kidx]+kkey),1

asig3 = asig1*asig2

aout = asig3*0.6
out aout, aout
endin

</CsInstruments>
<CsScore>
f1 0 64 7 1 32 1 0 0 32 0 
i1 0 0.1
i1 + .
i1 + .
i1 + .
i1 + .
i1 + .
i1 + .
</CsScore>
</CsoundSynthesizer>