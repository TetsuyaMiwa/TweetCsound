<CsoundSynthesizer>
<CsOptions>
-o dac
</CsOptions>
<CsInstruments>
sr=96000
ksmps=1
nchnls=2
0dbfs=1
instr 1
ax,ay,at init 3.0,1.0,0
ik,iB,idt init 0.1,12.0,2*3.14159/800
out ax/5,ay/10
ax0=ax
ay0=ay
at+=idt
at=at%(2*3.14159)
ax+=idt*ay0
ay+=idt*(-1*ik*ay0 - pow:a(ax0,3) +iB*cos(at))
endin
</CsInstruments>
<CsScore>
i1 0 30
</CsScore>
</CsoundSynthesizer>