<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls=2
0dbfs=1
instr 1
ar = oscili(0.5,p4,1)*madsr(.01,.3,.2,.3)
out ar*p5, ar*(1-p5)
iv=((p4%2)==0?p4/2:p4*3+1)
if (iv<=100)||(iv>=5000) then
iv=int(random(200,500))
endif
schedule 1,.1,.05,iv,p5
endin
</CsInstruments>
<CsScore>
i1 0 .05 871 .8
i1 .1 .05 871 .2
f1 0 256 10 1 .5 .3 .25
</CsScore>
</CsoundSynthesizer>