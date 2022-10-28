<CsoundSynthesizer>
<CsOptions>
-o dac
;-W -o temp.wav
</CsOptions>
<CsInstruments>
sr     = 44100
ksmps = 1
nchnls = 2
;32767,

instr 1
at init 0

ival = int(random:i(139,255))
prints  "AND %i\n", ival

at2=(at*(cpspch(p4)/44100*256)%256)&ival
outall (at2-127)*150
at+=1
endin

</CsInstruments>
<CsScore>
{ 10 CNT
i1 [0 +0.7*$CNT.] 0.1 [7.10 +$CNT.%3]
i1 + .   [8.01 +$CNT.%3]
i1 + .   [8.03 +$CNT.%3]
i1 + .   [8.06 +$CNT.%3]
i1 + .   [8.08 +$CNT.%3]
i1 + .   [8.10 +$CNT.%3]
i1 + .   [9.01 +$CNT.%3]
}
</CsScore>

</CsoundSynthesizer>