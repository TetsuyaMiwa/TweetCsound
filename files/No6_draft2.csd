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

schedule 1,0,0.1,1

instr 1
ka[] fillarray 697,770,852,1209,1336,1477

is = p4 -1
prints "Number=%i\n", p4

kenv linseg 0, 0.01, 0.4,p3-0.02,0.4,0.01,0

out oscil(kenv, ka[is / 3]) ,oscil(kenv, ka[is % 3+3]) 

schedule 1,betarand(0.7,1,3),0.1, random(1,9)
endin


</CsInstruments>
<CsScore>

</CsScore>
</CsoundSynthesizer>