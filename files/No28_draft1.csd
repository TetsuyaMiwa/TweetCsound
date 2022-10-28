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
kArr1[] fillarray 0,1,2,3,4,5,6,7,8,9,10,11 ;nornal scale
kArr2[] fillarray 0,  2,  4,  6,7,  9,  11; lidian scale
kArr3[] fillarray 0,  2,3,  5,  7,  9,10; drian scale
kArr4[] fillarray 0,  2,3,  5,  7,8,     11; harmonic minor scale


kIndx init 0
ibase init 220
koct init 0

kTrig metro 5
if kTrig == 1 then ;do the following once a second
kIndx += 1
if kIndx == lenarray(kArr2) then
    kIndx = 0
    koct +=1
    if koct == 3 then
    koct=0
    endif
endif

kIndx=int:k(random:k(0,lenarray(kArr2)))

endif


asig1 = oscili:a(0.7, ibase*pow:k(2,koct+kArr2[kIndx]/12),4)
asig2 = oscili:a(0.7, ibase*pow:k(2,koct+kArr2[(kIndx+5)%7]/12),4)

out asig1,asig2

endin

</CsInstruments>
<CsScore>
i1 0 20
f 4 0 16384 10 1 1 1 1 0.7 0.5 0.3 0.1
</CsScore>
</CsoundSynthesizer>