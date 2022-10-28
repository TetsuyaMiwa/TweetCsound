<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
ksmps = 1
nchnls = 2
0dbfs  = 32767;The default is 32767
ga1 init 0

instr 1

k0 init 0
kc linseg 10,p3-1,100,1,10
krand   randomh kc*10,kc*50,10
k0=(k0>20000 ? -20000 : (k0+krand)) 

asig = a(k0)
outall asig
   
ga1  = ga1+asig
endin

instr 2
;ares multitap asig [, itime1, igain1] [, itime2, igain2] [...]
asig multitap ga1, 0.2, .5, 0.4, .2
     outs     asig, asig
	
ga1  = 0
endin
</CsInstruments>
<CsScore>
i 1 0 10	; short sound
i 2 0 15; echoes
e
</CsScore>
</CsoundSynthesizer>