<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
ksmps=10 
nchnls=2
0dbfs=1

instr 1
;If ktrigger = 0, no new event is triggered.

;schedkwhen ktrigger, kmintim, kmaxnum, kinsnum, kwhen, kdur

;schedkwhen(metro(10), 0, 50, 2, 0, 0.05)
;schedkwhen((unirand:k(1000) > line:k(999, p3, 990) ? 1 : 0), 0, 50, 2, 0, 2)

schedkwhen(dust:k(1,line:k(1,p3,25)), 0, 50, 2, 0, 2)


endin

instr 2
a1=oscili(linenr:k(0.2,0.01,p3-0.01,0.08),1000+oscili(200,2))
outs a1, -1*a1
endin

</CsInstruments>
<CsScore>
;f1 0 1024 10 1
i1 0 10
</CsScore>

</CsoundSynthesizer>