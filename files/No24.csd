<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls = 2
0dbfs  = 1
instr 1
kS[] fillarray 0,.01,.05,.07,.08,1
kf=cpspch(6+kS[randomh:k(0,5,6)])
ax oscili .5,kf,-1,.25
ay oscili .5,kf
kx linseg 0,p3/4,15,p3*3/4,0
ax=(ax+.5)*kx*1.41*3.14
ay=(ay+.5)*kx*1.41*3.14
az=sin(sqrt(ax^2+ay^2))
outall az
endin
</CsInstruments>
<CsScore>
i1 0 20
</CsScore>
</CsoundSynthesizer>