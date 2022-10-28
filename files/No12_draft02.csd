<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
ksmps=1
nchnls=1
0dbfs=1
schedule 1,0,0.1,255
instr 1
;MIDI note num:21-108
;C4:60, C5:72
out oscili(linen(0.6,0.01,p3,0.01),cpsmidinn(12*p4/255+60))
schedule 1,p3,p3,(p4>>1)+(p4&1)#(rnd(1)<0.05?1:0)*128
endin
</CsInstruments>
</CsoundSynthesizer>