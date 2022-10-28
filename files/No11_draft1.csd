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
kArr[] init 3


;kx line 200,p3,1000;should be 0--1
ksig  random 100, 1100
kmetrofreq randomh 2,8,3
ktrig	metro kmetrofreq
kx samphold ksig, ktrig

;kx randomh 100,1100, 5

kx portk kx, 0.01
kArr[] fillarray kx,kx*1.37,kx*1.59;should be 0--2


asig1 oscili 0.2,kArr[0]
asig2 oscili 0.2,kArr[1]
asig3 oscili 0.2,kArr[2]

aout = asig1+asig2+asig3
out aout,aout

endin
</CsInstruments>
<CsScore>
i1 0 20
</CsScore>
</CsoundSynthesizer>