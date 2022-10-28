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

kc line 1,p3,10 

kmetro metro kc/2, 0.0001

if kmetro == 1 then 
tableshuffle 1
endif

kfreq=400+oscil:k(200,kc,1)

andx phasor kfreq

asig table andx, 1, 1

outall asig*0.6

endin
</CsInstruments>
<CsScore>
f1 0 4 2 -1 -0.5 0 0.5
i1 0 30
</CsScore>
</CsoundSynthesizer>