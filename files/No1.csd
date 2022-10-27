<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls=2
0dbfs=1
schedule 1,0,10
instr 1
schedkwhen(dust(1,expon(1,p3,9)),0,30,2,0,3)
endin
instr 2
a1=oscili(linenr(.08,.01,2.9,.01),1000+oscili(200,1))
outs a1,-a1
endin
</CsInstruments>
</CsoundSynthesizer>