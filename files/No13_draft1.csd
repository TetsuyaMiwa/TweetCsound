<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
ksmps=1
nchnls=1
0dbfs = 1

instr 1
kcps init 800
kcps linseg 70,4,400
kenv linenr 1, 0.1, 10, .01
kfmd init 1

kgdur init 0.5
;kgdur line 0.1,p3,1/100

iovrlp init 10
kfn init 1
iwfn init 2
;irpow init 

asig grain2 kcps, kfmd, kgdur, iovrlp, kfn, iwfn ;[, irpow] \ [, iseed] [, imode]

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