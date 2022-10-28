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

schedule 1,0   ,1,110,1
schedule 1,0.02,1,330,0
schedule 1,0.05,1,770,1
schedule 1,0.07,1,990,0

iw ftgen 1, 0, 1024, 7, 0, 512, 1, 0, -1, 512, 0

instr 1
ks linseg 0,0.01,0.3,0.6,0
as oscili ks,p4,1
out as*p5,as*(1-p5)
schedule 1,0.1,1,(p4*1.09051)%9055,1-p5
endin

</CsInstruments>
<CsScore>,
</CsScore>
</CsoundSynthesizer>