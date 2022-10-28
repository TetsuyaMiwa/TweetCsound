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
instr 1

asig1      rand      0.8                  
fsig1      pvsanal   asig1, 512, 64, 512, 0  ; get a vector of magnitudes

kmod linseg 1,2,80,5,1,10,0.2
ktemp oscil 10,kmod

;ktemp dust 2, 20
;ktemp = 1-ktemp


kfreeza = ktemp
kfreezf = ktemp
fmorph1 pvsfreeze fsig1, kfreeza, kfreezf
fmorph2 pvsfreeze fsig1, -1*kfreeza, -1*kfreezf
;fmorph pvsmooth fsig1, 0.01, 0.01
aout1		pvsynth	 fmorph1
aout2		pvsynth	 fmorph2
            out       aout1*0.5, aout2*0.5
endin
</CsInstruments>
<CsScore>

i1 0 17
</CsScore>
</CsoundSynthesizer>