<CsoundSynthesizer>
<CsOptions>
-odac8
;-W -o test.wav
</CsOptions>
<CsInstruments>
sr     = 44100
kr     = 4410
ksmps = 10 
nchnls = 2
0dbfs  = 1

instr 1
kS[] fillarray 0,1,5,7,8,12
kres randomh 0,5, 6
;kres line 0,p3,6
;printk 0.1, kS[int(kres)]
kfreq = cpspch(6+(kS[int(kres)]/100))
;kfreq line 50,p3,150

ax oscili 0.5,kfreq,-1,0.25 ;cos
ay oscili 0.5,kfreq ;sin

kx linseg 0,p3/4,15,p3*3/4,0

ax = ((ax+0.5)*kx)*sqrt(2)*3.14
ay = ((ay+0.5)*kx)*sqrt(2)*3.14

az = sin(sqrt((ax)^2+(ay)^2))
outall az

endin

</CsInstruments>
<CsScore>
i1 0 20 1
</CsScore>
</CsoundSynthesizer>