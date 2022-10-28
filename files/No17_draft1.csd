<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs  = 1
    
gasrc init 0

;p4 freq
;p5 iAz   0-360
;p6 iElev -40 - 90?
instr 1	

iAz   random 0,360
iElev random -40,90

iamp = 0.1

;icps random 400,1000
icps=p4
a1 oscili iamp, icps,1
kenv linsegr 0,0.01,1,p3-0.01,0.5,0.8,0
a2=a1*kenv
aleft,aright hrtfstat a2, iAz,iElev, "hrtf-44100-left.dat","hrtf-44100-right.dat"
outs aleft, aright
endin

instr 2
kdur =0.4

;schedule 1,iwhen,idur, 400
;kt=metro(linseg(0,p3/2,10,p3/2,0))
kfreq line 80,p3,800

kfreq2 = kfreq*(1+rnd:k(0.5))
;kfreq2 = kfreq*(random:k(0.5,1.5))
kt=dust(1,linseg(0,p3/2,20,p3/2,0))
;kt metro 1
printk 0.1,kfreq2
schedkwhen kt,0,0,1,0,kdur,kfreq2
endin


</CsInstruments>
<CsScore>
f1 0 64 7 1 32 1 0 -1 32 -1
i2 0 30
</CsScore>
</CsoundSynthesizer>