<CsoundSynthesizer>
<CsOptions>
-odac
;-W -o test.wav
</CsOptions>
<CsInstruments>
sr     = 44100
kr     = 4410
ksmps = 10 
nchnls = 2
0dbfs  = 1

instr 1
iamp = p4
ipitch = p5

kenv linseg 0, 2, 1, p3-15.1, 1,13,0.01,2,0 
kdensity linseg sr, 3, sr, p3-13, ipitch*3, 10 ,ipitch*3

agate dust 1, kdensity

asig oscili iamp*kenv, ipitch, 1 

ash samphold asig, agate


out asig, ash

endin

</CsInstruments>
<CsScore>
;sine wave.
f 1 0 16384 10 1

f 3 0 2048 20 2	;windowing function
i1 0 20 0.7 1000
</CsScore>
</CsoundSynthesizer>