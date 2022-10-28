<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
gis ftgen 2,0,64,19,.5,.5,270,.5
schedule 1,0,10
#define S #.003,.02,.007,100,-1,2,p3#
instr 1
kf randi 100,2,.5,0,130
a1 fof 5,kf,600,0,60,$S
a2 fof 2,kf,1040,0,70,$S
a3 fof 2,kf,2250,0,110,$S
out (a1+a2+a3)*3000
endin
</CsInstruments>
</CsoundSynthesizer>