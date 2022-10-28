<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr     = 44100
kr     = 4410
ksmps = 10 
nchnls = 2
0dbfs  = 1
iw ftgen 1,0,64,7,1,32,1,0,-1,32,-1
schedule 1,0,8

instr 1



;kenv adsr 0.4,0.1,0.7,4
kenv linseg 0,0.4,1,0.4,0.7,p3-4.8,0.3,3,0,1,0
kfreq randi 200, 0.2,2
printk .1, kfreq
kfreq2 = kfreq+900
asig oscil 0.4, kfreq2,1
asig2=asig*kenv

aL, aR  reverbsc asig2, asig2, 0.9, 10000
out asig2+aL, asig2+aR
ires random 8,10
schedule 1,p3+0.5,ires
endin
</CsInstruments>
<CsScore>



</CsScore>
</CsoundSynthesizer>