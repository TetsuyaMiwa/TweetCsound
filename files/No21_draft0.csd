<CsoundSynthesizer>
<CsOptions>
-o dac
;-W -o temp.wav
</CsOptions>
<CsInstruments>
sr     = 44100
kr     = 44100
ksmps = 1
nchnls = 2
0dbfs  = 1

instr 1
;krand   randomh 0,16,10
;krand2 = int(krand)
krand2 init 0

ktemp metro 1600

if ktemp==1 then
k1 = krand2 &1
k2 = (krand2 & 2) /2
k3 = (krand2 & 4) /4
k4 = (krand2 & 8) /8

if (krand2==15) then 
krand2=0
else krand2+=1
endif
endif

/*
printk 0.01,krand2
printk 0.01,k1
printk 0.01,k2
printk 0.01,k3
printk 0.01,k4
*/
outall a(k1)*0.1 +a(k2)*0.1 +a(k3)*0.1 +a(k4)*0.1
endin

instr 2
at init 0
at+=1
at=at%256  ;44100/256=172Hz
outall at*0.5/256

endin

instr 3
at init 0
at2=at*(440/44100*256)%256;440Hz saw 
outall at2*0.5/256
at+=1
;at=at%256
endin

instr 4
at init 0
at2=(at*(440/44100*256)%256)&128;440Hz square
outall at2*0.5/256
at+=1
;at=at%256
endin


instr 5
at init 0
at2=abs(at*(440/44100*256)%255-127)*2;440Hz tri
outall at2*0.5/256
at+=1
;at=at%256
endin

instr 6
at init 0
at2=(at*(cpspch(p4)/44100*256)%256)&int(random:i(139,255));440Hz complex saw/square
outall at2*0.5/256
at+=1
;at=at%256
endin

</CsInstruments>
<CsScore>
{ 50 CNT
i6 [0 +0.4*$CNT.] 0.1 8.00 185
i6 + .   8.04 239
i6 + .   9.00 179
i6 + .   8.07 155
}
</CsScore>

</CsoundSynthesizer>