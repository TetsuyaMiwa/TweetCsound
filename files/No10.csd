<CsoundSynthesizer>
;(Broken) Karplus–Strong string algorithm
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
ksmps=10 
nchnls=2
0dbfs =1
instr 1
ad init 0
kg linseg 1,.02,1,0,0,p3-.02,0
an rand 1
ang=an*kg
as tone ang+ad,sr/2
klin linseg 100,2,1000,.1,2000,p3-2.1,2000
klfo oscil 50,8
ad vdelay as,1000/(klin+klfo),1000
ao=as*.8
out ao,ao
endin
</CsInstruments>
<CsScore>
i1 0 3
e
</CsScore>
</CsoundSynthesizer>