<CsoundSynthesizer>
<CsOptions>
-odac
;-W -o No7.wav
</CsOptions>
<CsInstruments>
nchnls = 2
0dbfs  = 1

gis ftgen 1,0, 64, 7, 1, 32, 1, 0, 0, 32, 0 
schedule 1,0,.1,0
instr 1
idx init 0
ka[] fillarray 0,.02,.04,.05,.07,.09,.11,.12

ic = int(random(10,12))

;idx = random(0,8)
;ikey = int(random(8,9))

idx = p4 % 8
ikey = 8

asig1 oscil 1,cpspch(ic)
asig2 oscil 1,cpspch(ka[idx]+ikey),1

asig3 = asig1*asig2

aout = asig3*0.6
out aout, aout
schedule 1,0.12,.1,idx+1
endin

</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>