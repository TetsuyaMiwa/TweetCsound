<CsoundSynthesizer>
<CsOptions>
-odac
;-W -o No16.wav 
</CsOptions>
<CsInstruments>
nchnls=2
0dbfs=1
instr 1
as oscili 0.7,800,1
am=oscili(0.7,rnd(500))
ar,ai hilbert as
amr,ami hilbert am
aU=ar*amr-ai*ami
ke linseg 0,.01,.8,p3-.06,.8,.01,0
out as*ke,aU*ke
id=.1*(rnd(1)>.5?1:3)
schedule 1,p4,id,id
endin
</CsInstruments>
<CsScore>
i1 0 .1 .1
f0 60
f1 0 16 7 1 8 1 0 -1 8 -1
</CsScore>
</CsoundSynthesizer>