<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32  
nchnls = 2

instr 1
kfund randi 100,2,0.5,0,130
printk 0.1, kfund

/*
  ; First formant.
  k1amp = ampdb(0)
  k1form line 400, p3, 400
  k1band line 40, p3, 40

  ; Second formant.
  k2amp = ampdb(-11)
  k2form line 750, p3, 750
  k2band line 80, p3, 80
*/

  k1amp = ampdb(0);=1

  k2amp = ampdb(-7);0.44668
  

  k3amp = ampdb(-9);0.35481

  k1form = 600
  k2form = 1040
  k3form = 2250  

  k1band=60
  k2band=70
  k3band=110


  a1 fof k1amp, kfund, k1form, 0, k1band, 0.003,  0.02, 0.007, 100, 1, 2, p3
  a2 fof k2amp, kfund, k2form, 0, k2band, 0.003,  0.02, 0.007, 100, 1, 2, p3
  a3 fof k3amp, kfund, k3form, 0, k3band, 0.003,  0.02, 0.007, 100, 1, 2, p3


  ; Combine all of the formants together
asig sum (a1+a2+a3) * 13000
     outs asig, asig

endin
</CsInstruments>
<CsScore>
; sine wave
f 1 0 4096 10 1
; sigmoid wave
f 2 0 1024 19 0.5 0.5 270 0.5

i 1 0 36000 
e
</CsScore>
</CsoundSynthesizer>