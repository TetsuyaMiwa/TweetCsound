<CsoundSynthesizer>
<CsOptions>
-o dac
</CsOptions>
<CsInstruments>
nchnls = 2
0dbfs  = 1
instr 1
outall 0.8*vosim(ampdbfs(p4),linseg(400,p3*3/4, 400, p3/4,300), line(p5, p3, p6), 0, 8, 1, 17, 0)
endin

</CsInstruments>
<CsScore>

f1       0  32768    9  1    1  0   ; sine wave
;f17  0  32768    9  0.5  1  0   ; half sine wave
;f17  0 32768 8 0 8192 0.2 8192 1 8192 0.2 8192 0
;f17  0 8192 8 0 2048 0.2 2048 1 2048 0.2 2048 0
;f17  0 1024 8 0 256 0.2 256 1 256 0.2 256 0
f17  0 512 8 0 128 0.2 128 1 128 0.2 128 0

;      p4=amp    form      
; soprano o -> i
i1 0   1     0  450  270  
i1 .   .   -11  800  2140 
i1 .   .   -22  2830 2950 
i1 .   .   -22  3800 3900
e

</CsScore>
</CsoundSynthesizer>