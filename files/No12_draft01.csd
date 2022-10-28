<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr=44100
ksmps=441
nchnls=1
0dbfs=1
schedule 1,0,0.1,135
instr 1
out oscili(0.6,p4)
  i0 = p4&1
  ifg = (int(rnd(1)*2) == 1 ? 1 : 0)
  inewbit7 = i0 # ifg 
   ival = (p4>>1)  + inewbit7*128    ;bit shift
schedule 1,p3,p3,ival
endin
</CsInstruments>
</CsoundSynthesizer>