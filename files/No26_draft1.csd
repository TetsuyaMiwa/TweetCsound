<CsoundSynthesizer>
;original csd from Csound manual - fmbell

<CsOptions>
; Select audio/midi flags here according to platform
-odac     ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o fmbell.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32  
nchnls = 2
0dbfs  = 1

instr 1

kamp = p4
kfreq = 2500;400
kc1 = p5
kc2 = p6
kvdepth = 0.1;0.005
kvrate = 0.5

asig fmbell kamp, kfreq, kc1, kc2, kvdepth, kvrate

     outs asig,asig
endin

instr 2

kamp = p4
kfreq = 2500
kc1 = p5
kc2 = p6
kvdepth = 0.1;0.005
kvrate = 0.5

kenv linseg 1,0.2,0.1, 0.2,0
asig fmbell kamp*kenv, kfreq, kc1, kc2, kvdepth, kvrate
     
     
print p2
print p7
print p8
     outs asig, asig
     if p8<15 then
schedule 2, p7, 0.5,.2,10,5, p7^1.14, p8+1
endif
;schedule iPar[]     
endin

</CsInstruments>
<CsScore>
; sine wave.
f 1 0 32768 10 1

;i 1 0 10 .2  10 5

i 2 0 0.5 .2  10 5 0.5 1
f0 2

e
</CsScore>
</CsoundSynthesizer>