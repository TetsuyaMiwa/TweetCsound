<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
ksmps=1
nchnls=2
0dbfs=1

instr 1
kcps linseg 70,4,400
kenv linenr 1, 0.1, 10, .01

asig grain2 kcps, 1, 0.5, 10, 1, 2

outall asig*kenv/6
endin
</CsInstruments>
<CsScore>
f1 0 512 10 1 1 1
f2 0 1024 7 0 100 1 300 0.3 624 0
i1 0 15
i1 4 15
i1 9 15
</CsScore>
</CsoundSynthesizer>