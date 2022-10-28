<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
ksmps=1
nchnls=1
0dbfs=1
schedule 1,0,0.3,255
instr 1
;MIDI note num:21-108
;C4:60, C5:72
;kS[] fillarray 60,64,65,67,71,72;Ryukyu-onnkai,midinote
;kS[] fillarray 8,8.04,8.05,8.07,8.11,9;Ryukyu-onnkai,pch
;out oscili(line(0.6,p3,0),cpsmidinn(kS[6*p4/256]))
;ド・ミ・ファ・ソ・シ・ド：琉球音階

kS[] fillarray 60,64,65,67,71,72
out oscil(line(0.6,p3,0),cpsmidinn(kS[6*p4/256]))
schedule 1,p3,(p3==0.3?0.1:0.3),(p4>>1)+(p4&1)#(rnd(1)<0.2?1:0)*128

endin
</CsInstruments>
</CsoundSynthesizer>