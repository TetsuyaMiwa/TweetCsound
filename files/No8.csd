<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls=2
0dbfs=1
iw ftgen 1,0,64,7,1,32,1,0,-1,32,-1
schedule 1,0,8
instr 1
ke linseg 0,.4,1,.4,.7,p3-4.8,.3,3,0,1,0
as =oscil(ke*.2,randi(200,.2,2)+900,1)
aL,aR reverbsc as,as,.9,10000
out as+aL,as+aR
schedule 1,p3+.5,random(6,10)
endin
</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>