<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
ksmps=1
nchnls=2
0dbfs=1

instr 1
kn lfsr 4,100
kt=metro(expon(100,p3,1))
schedkwhen kt,0,0,2,0,.2,kn,1
schedkwhen kt,0,0,2,.3,.2,kn,.3
endin

instr 2
as = oscili(linenr(p5*.083,.01,.5,.01),(p4+1)*100)
outall as
endin
</CsInstruments>
<CsScore>
i1 0 30
</CsScore>
</CsoundSynthesizer>