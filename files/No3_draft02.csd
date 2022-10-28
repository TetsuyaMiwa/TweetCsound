<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
0dbfs=1
gis ftgen 2,0,1024,19,0.5,0.5,270,0.5
schedule 1,0,30
instr 1
kf randi 100,2,0.5,0,130
/*
a1 fof 0.5,kf,600,0,60,0.003,0.02,0.007,100,-1,2,p3
a2 fof 0.225,kf,1040,0,70,0.003,0.02,0.007,100,-1,2,p3
a3 fof 0.175,kf,2250,0,110,0.003,0.02,0.007,100,-1,2,p3
*/
a1 fof 0.5,kf,600,0,60,0.003,0.02,0.007,100,-1,2,p3
a2 fof 0.2,kf,1040,0,70,0.003,0.02,0.007,100,-1,2,p3
a3 fof 0.2,kf,2250,0,110,0.003,0.02,0.007,100,-1,2,p3
out a1+a2+a3
endin
</CsInstruments>
</CsoundSynthesizer>