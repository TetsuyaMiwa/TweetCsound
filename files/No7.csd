<CsoundSynthesizer>
<CsOptions>
-odac
;-W -o No7.wav
</CsOptions>
<CsInstruments>
nchnls=2
0dbfs=1
gis ftgen 1,0,64,7,1,32,1,0,0,32,0 
schedule 1,0,.1,0
instr 1
ka[] fillarray 0,.02,.04,.05,.07,.09,.11,.12
idx=p4%8
as=oscil(1,cpspch(int(random(10,12))))*oscil(.6,cpspch(ka[idx]+8),1)
out as,as
schedule 1,.12,.1,idx+1
endin
</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>