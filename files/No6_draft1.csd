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

schedule 1,0,0.2,1

instr 1
ka[] fillarray 697,770,852
kb[] fillarray 1209,1336,1477

is = p4 -1
printk 0.2,ka[is / 3]
printk 0.2,kb[is % 3]

kenv linseg 0, 0.01, 1,p3-0.02,1,0.01,0

alow   oscil 0.4, ka[is / 3]
ahigh  oscil 0.4, kb[is % 3]

out alow*kenv, ahigh*kenv

;out oscil(0.4, ka[is / 3]) ,oscil(0.4, kb[is % 3]) 

schedule 1,betarand(0.7,1,3),0.1, random(1,9)
endin


</CsInstruments>
<CsScore>

</CsScore>
</CsoundSynthesizer>