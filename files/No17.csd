<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
ksmps=1
nchnls=2
0dbfs=1
instr 1	
a2=vco2(.1,p4,2,.5)*linsegr(0,.01,1,p3-.01,.5,.5,0)
al,ar hrtfstat a2,p5,p6,"L.dat","R.dat"
outs al,ar
endin
instr 2
schedkwhen(dust(1,linseg(0,15,20,15,0)),0,0,1,0,.4,line(80,p3,900)*(1+rnd:k(.5)),random:k(0,360),0)
endin
</CsInstruments>
<CsScore>
i2 0 30
</CsScore>

</CsoundSynthesizer>