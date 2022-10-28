<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac     ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o oscil.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32
nchnls = 2
0dbfs  = 1

instr 1

kamp oscili 0.3, 0.2
kamp += 0.5
aimp gausstrig 0.5, 1000, 0.1
aa = aimp*0.6
kAz	linseg 0, p3, 1080
kElev=0

aleft, aright hrtfmove2 aa*kamp, kAz, kElev, "hrtf-44100-left.dat","hrtf-44100-right.dat"

outs aleft, aright

endin
</CsInstruments>
<CsScore>
i1 0 30
e
</CsScore>
</CsoundSynthesizer>