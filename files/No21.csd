<CsoundSynthesizer>
<CsOptions>
-o dac
</CsOptions>
<CsInstruments>
sr=44100
ksmps=1
nchnls=2
instr 1
at init 0
at2=(at*(cpspch(p4)/sr*256)%256)&int(random:i(139,255))
outall (at2-127)*150
at+=1
endin
</CsInstruments>
<CsScore>
{12 C
i1 [0+.5*$C.] .1 [7.10+$C.%3]
i1 + . [8.01+$C.%3]
i1 + . [8.03+$C.%3]
i1 + . [8.06+$C.%3]
i1 + . [8.08+$C.%3]
}
</CsScore>

</CsoundSynthesizer>