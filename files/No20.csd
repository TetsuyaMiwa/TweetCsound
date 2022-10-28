<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
ksmps=1
nchnls=2
0dbfs=1
gil init 2^18
instr 1
ib = 261.6
gip ftgenonce 0,0,gil,"padsynth",ib,p6,1,1,1,.64,.32,.21,.16,.13,.11,.09,.08,.07,.06  
asig poscil linsegr(0,0.2,1,10,0),cpsmidinn(p4)*(sr/gil/ib),gip
outall asig
endin
</CsInstruments>

<CsScore>
i1 0 1 45 1.0 35
i1 0 1 57 .1 35
e
</CsScore>
</CsoundSynthesizer>