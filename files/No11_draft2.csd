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
kenv adsr 0.1,0,1,0.1
kx=portk(samphold:k(random:k(300,1000),metro(randomh:k(1,7,3))),0.01)
aout = kenv*(oscili(0.2,kx*p4)+oscili(0.2,kx*p5)+oscili(0.2,kx*p6))

printf  "p4:%f p5:%f p6:%f \n", metro(5), p4,p5,p6

out aout,aout
schedule 1,4.5,5,random(1,2),random(1,2),random(1,2)
endin
</CsInstruments>
<CsScore>
i1 0 5 1 1.37 1.59
</CsScore>
</CsoundSynthesizer>