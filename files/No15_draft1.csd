<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr     = 44100
kr     = 44100
ksmps = 1
nchnls = 2
0dbfs  = 1

instr 1
knum lfsr 4, 100; 0-15
kfreq expon 100,p3,1
kmtr metro kfreq
schedkwhen kmtr,0,0, 2, 0, 0.2, knum,1
schedkwhen kmtr,0,0, 2, 0.3, 0.2, knum,0.3
endin

instr 2
print p4
asig oscili p5, (p4+1)*100
aenv	    linenr    1, .01, .5, .01 
outall asig*0.2*aenv
endin

</CsInstruments>
<CsScore>
i1 0 30
</CsScore>
</CsoundSynthesizer>