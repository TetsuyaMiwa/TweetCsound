<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
0dbfs=1
schedule 1,0,20
instr 1
af init 0
as=(0.2*rand(1)+0.8*af)
out as
ad vdelay as,oscil(12,0.1,-1,0.25)+12.1,50  
af=ad
endin
</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>