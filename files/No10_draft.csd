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
adel init 0
kenv linseg 1,0.01,1,p3-0.01,1
kgate linseg 1,0.2,1,0,0,p3-0.2,0
anoise rand 1
anoise2 = anoise*kgate

asig    tone    anoise2 + adel,sr/2

;kline expon 100,p3,800
kline linseg 100,2,1000,0.1,2000,p3-2.1,2000
klfo oscil 50,8
adel vdelay  asig ,1000/(kline+klfo), 1000

aout = asig *kenv/5
out aout, aout

endin


</CsInstruments>
<CsScore>
i1 0 3

</CsScore>
</CsoundSynthesizer>