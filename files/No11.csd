<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
;sr     = 44100
;kr     = 4410
;ksmps = 10 
nchnls = 2
0dbfs  = 1
instr 1
ke adsr .5,0,.7,.5
kx=portk(samphold:k(random:k(300,1000),metro(randomh:k(1,7,3))),.01)
ao=ke*(oscili(.2,kx*p4)+oscili(.2,kx*p5)+oscili(.2,kx*p6))
out ao,ao
schedule 1,4,5,random(1,2),random(2,3),random(3,4)
endin
</CsInstruments>
<CsScore>
i1 0 5 1 1.37 1.59
</CsScore>
</CsoundSynthesizer>