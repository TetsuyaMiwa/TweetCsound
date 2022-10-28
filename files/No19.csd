<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
ksmps = 1
nchnls = 2
ga init 0
instr 1
k0 init 0
kc linseg 10,p3-1,100,1,10
ki randomh kc*10,kc*50,10
k0=(k0>25000?-25000:k0+ki) 
asig=a(k0)*0.6
outall asig  
ga+=asig
endin

instr 2
outall multitap(ga,0.2,.5,0.4,.2)
ga=0
endin
</CsInstruments>
<CsScore>
i 1 0 10
i 2 0 12
</CsScore>
</CsoundSynthesizer>