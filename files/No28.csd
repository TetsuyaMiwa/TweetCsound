<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls=2
0dbfs=1
#define S # oscili.6,220*(2^(kO+kA[#
instr 1
kA[] fillarray 0,2,4,6,7,9,11
kC init 0
kT metro 5
if kT==1 then
kI=int(random:k(0,7))
kO=int(kC/7)
kC=(kC+1)%14
endif
a1$S kI]/12)),1
a2$S (kI+5)%7]/12)),1
out a1,a2
endin
</CsInstruments>
<CsScore>
f1 0 64 10 1 1 1 1 .7
i1 0 60
</CsScore>
</CsoundSynthesizer>