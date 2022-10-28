<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1

kenv linseg 0,0.01,1,p3*0.7,1,0.01,0
asig oscili 0.5*kenv, 800, 1
asig2 fold asig, p4

;out asig2,asig2
ga1=asig2

ires =int(random(1,4))
;print ires
print p4
schedule 1, p3 ,0.2*ires/2, int:i(random(1,5)*10)
endin

instr 2
ares delay ga1, 0.1
kpan =0.5 +oscili(0.5,0.2)

a1,a2 pan2 ga1, kpan
a3,a4 pan2 ares, 1-kpan

out a1+a3, a2+a4
endin

</CsInstruments>
<CsScore>
f0 60
f1 0 256 7 -1 256 1
i1 0 0.2 1
i2 0 100
</CsScore>
</CsoundSynthesizer>