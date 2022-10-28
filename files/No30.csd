<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
nchnls=2
0dbfs=1
instr 1
kenv linseg 0,0.01,1,p3*0.7,1,0.01,0
asigf=fold(oscili(0.5*kenv,800,1),p4)
asigd=delay(asigf,0.1)
out asigf,asigd
schedule 1,p3,0.2*int(random:i(1,4))/2,int(random:i(1,5)*10)
endin
</CsInstruments>
<CsScore>
f0 20
f1 0 256 7 -1 256 1
i1 0 0.2 10
</CsScore>
</CsoundSynthesizer>