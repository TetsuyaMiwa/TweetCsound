<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
kr=1500
nchnls=2
0dbfs=1
instr 1
kx init 0.65
kenv linseg 0,0.1,1,p3-0.2,1,0.1,0
ka line 3,p3,4
printks "a = %f\n",0.5,ka
outall kenv*(a(kx)-0.65)
kx=ka*kx*(1-kx)
endin
</CsInstruments>
<CsScore>
i1 0 30
</CsScore>
</CsoundSynthesizer>