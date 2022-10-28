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
galfo init 0

asig oscili 0.7, 800
amod oscili 0.7, galfo


asigr, asigi hilbert asig
amodr, amodi hilbert amod

aUSB = asigr*amodr - asigi*amodi

kenv linseg 0,0.01,1,p3-0.06,1,0.01,0
out asig*kenv, aUSB*kenv

idur = (rnd(1) > 0.7 ? 1 : 3)

schedule 1,p4,0.1*idur, 0.1*idur
endin

instr 2
;galfo oscili 1000, 0.1
galfo randi 800, 1
endin


</CsInstruments>
<CsScore>
i1 0 0.1 0.1
i2 0 10
</CsScore>
</CsoundSynthesizer>