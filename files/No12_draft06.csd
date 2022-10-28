<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
;sr=44100  ;defaule=44100
;ksmps=1   ;defaule=1
;nchnls=1  ;defaule=1
0dbfs=1    ;The default is 32767,
schedule 1,0,0.3,0.1,256
instr 1
;MIDI note num:21-108
;C4:60, C5:72
;kS[] fillarray 60,64,65,67,71,72;Ryukyu-onnkai,midinote
;kS[] fillarray 8,8.04,8.05,8.07,8.11,9;Ryukyu-onnkai,pch
;out oscili(line(0.6,p3,0),cpsmidinn(kS[6*p4/256]))
;ド・ミ・ファ・ソ・シ・ド：琉球音階

iS[] fillarray 60,64,65,67,71,72
out oscil(line(0.6,p3,0),cpsmidinn(iS[6*p5/257]))
schedule 1,p3,p4,p3,(p5>>1)+(p5&1)#(rnd(1)<0.2?1:0)*128

endin
</CsInstruments>
</CsoundSynthesizer>