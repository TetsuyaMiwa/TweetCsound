# TweetCsound
Archive of my csd for TweetCsound(つぶやきCsound) project.   
The final version and draft (if any) are stored. The draft files are useful for investigating the detailed logic which is compressed and unreadable in the final version.   

## **About the project**  
Join the project!  

(English)  
https://note.com/tmnkj/n/nd204ada01d14  
(Japanese)  
https://note.com/tmnkj/n/n7116316ba6bf  

## **My csd for つぶやきCsound/TweetCsound**  
Brief description on my tweeted csd  
[Link to Japanese description](https://github.com/TetsuyaMiwa/TweetCsound/blob/main/README(J).md)
| No | Opcodes used| Description | Csound Web-IDE |  
| --- | --- | --- | --- |  
| 30 | fold,delay,schedule,random | 800Hz-saw wave is modified by 'fold'. Delayed asig is output to another channel to get wider stereo sound. The length of the sound is selected randomly from 0.2 multiplied by 1/2,2/2,3/2. The amount of foldover is selected randomly from 10,20,..40. |  [No30](https://ide.csound.com/editor/V0X6W6FGKltfo1S8gfab) |
| 29 | tableshuffle,metro,phasor,table | Wave shape and frequency are contrplled by 1 table. The table data is shuffled periodically. |  [No29](https://ide.csound.com/editor/U6dQXG07aolcWEMgmGyc) |
| 28 | fillarray,metro,random,pow | Lidian scale is stored in an array. Frequency is calculated. The phase of index for the array is different between two instances, resulting 2 melodies. |  [No28](https://ide.csound.com/editor/yT4jT5E4ZXrRWT1qYC13) |
| 27 | gausstrig,jitter,hrtfmove2 | Binaural noise of mosquito wings using 'gausstrig'. Fluctuated binaural movement is controlled by 'jitter'. |  [No27](https://ide.csound.com/editor/qCz7o6EW12aa1EmbUHg8) |
| 26 | fmbell,schedule | Sounds like a marble falling into a glass jar using 'fmbell'((﻿tublar bell FM sound)).  |  [No26](https://ide.csound.com/editor/vbIshnWLkdFfqd2zZybT) |
| 25 | pow,cos | Sonification of Japanese attractor. |  [No25](https://ide.csound.com/editor/TUQlPkoNIVC8mv47dHHT) |
| 24 | fillarray,cpspch,randomh,sin,sqrt | Wave terrain synthesis-like process where wave front (z=sin(sqrt(x^2+y^2))) is scanned. |  [No24](https://ide.csound.com/editor/ViUGXwbWjPWlXHXPgy6B) |
| 23 | linseg | Sonification of logistic map. Variable x is used for frequency control. |  [No23](https://ide.csound.com/editor/q3TAkPC0KfTiJ8SWFvnO) |
| 22 | madsr, schedule | Pitch is specified by Lothar Collatz sequence. 2 instances which are created at the different timing. |  [No22](https://ide.csound.com/editor/jVmGcMl7beDTFLorjU6A) |
| 21 | cpspch,random | Complex waveform besed on the technique to create saw/rectangle/trian wave without oscillator opcode. Delay effect with 'multitap'. |  [No21](https://ide.csound.com/editor/gJFAkQM6OSbPlezTYUlg) |
| 20 | ftgenonce, poscil,cpsmidinn | Sound like Mellotron using ﻿GENpadsynth. |  [No20](https://ide.csound.com/editor/oGbKrwwQw5dTTyIQ2YE5) |
| 19 | randoh,multitap | Creating saw wave without oscillator opcode. Delay effect with 'multitap'. |  [No19](https://ide.csound.com/editor/1emIWjdZ5J3NEljiX0je) |
| 18 | vosim,ampdbfs,dcblock2 | "o - i"('yoo-hoo' in Japanese) voice using 'vosim'. |  [No18](https://ide.csound.com/editor/AEdZGldPGxmQGoCfrWH4) |
| 17 | linsegr,hrtfstat,schedkwhen,dust,random | Binaural. The instance of instr1 is created at random timing by instr2. Frequency and azimuth are specified randomly in each instance. |  [No17](https://ide.csound.com/editor/LawHyTVOTC1UH1lAEg7P) |
| 16 | hilbert,rnd,schedule | Upper Side Band(USB) is created using 'hilbert', |  [No16](https://ide.csound.com/editor/jDDfMahVD1AqDfvJCr2A) |
| 15 | metro,expon,schedkwhen | The frequency of new instance generation is controlled exponentially by 'metro'(100->1 Hz). |  [No15](https://ide.csound.com/editor/VOsliwX4ucpz6wJPYQIw) |
| 14 | pvsfreeze,pvsblur,pvsynth,pvsanal | Noise through pvsanal |  [No14](https://ide.csound.com/editor/sWLq2gBuPsaF5fcFwKRa) |
| 13 | grain2,linenr | Siren sound |  [No13](https://ide.csound.com/editor/3makb4MLcueDyTvt807M) |
| 12 | fillarray,schedule,cpsmidinn,rnd | Random play of Okinawan scale with syncopated rhythm. |  [No12](https://ide.csound.com/editor/zpHWxl8A7PICulTZBJ15) |
| 11 | adsr,portk,samphold,metro,random,schedule,randomh | Frequeny of 3 sine waves is conrolled at random with sampling&hold. The timing of change is controlled by 'randomh' and 'metro'. |  [No11](https://ide.csound.com/editor/rWTYP6LZlxyBRuVMfRVp) |
| 10 | tone,vdelay | Humorous sound using Karplus–Strong algorithm |  [No10](https://ide.csound.com/editor/WDkKI2cy0QVeAo3jRBgN) |
| 9 | dust,samphold | Sine wave gradually collapsing. |  [No9](https://ide.csound.com/editor/LgwuAAsTxcNaURwXmx8n) |
| 8 | reverbsc | Wind - The spirit of a dead person. |  [No8](https://ide.csound.com/editor/F4abk5Q1wbURZvQNYZ8k) |
| 7 | fillarray | The pitch is changed by adding 1 to the index of array for each instance. |  [No7](https://ide.csound.com/editor/SljsyiA5P01wkAoE8plc) |
| 6 | betarand | Random DTMF |  [No6](https://ide.csound.com/editor/DNre2spdLVg8sWukf7wa) |
| 5 | schedule | The sounds are overlaid by scheduling 3 instances at the different timing. |  [No5](https://ide.csound.com/editor/WW0SLpvpmHDbCzhnckYH) |
| 4 | schedule,vdelay | Flanger sound by injecting noise into 'vdelay'. |  [No4](https://ide.csound.com/editor/po7HRJNt07uZrhGo6SLQ) |
| 3 | randi,fof | Fixed formants for 'a' voice and random pitch.  |  [No3](https://ide.csound.com/editor/0ntMLk0DQi4v15Pxb01s) |
| 2 | schedule | Sound like spring expanding and contracting. |  [No2](https://ide.csound.com/editor/hHC4uBs6IWCREkQqXmcF) |
| 1 | schedule,schedkwhen,dust,expon,oscili,linenr | Sound like UFO? : Sine wave whose pitch is modulated by LFO. The density of the events is controlled by 'dust'. |  [No1](https://ide.csound.com/editor/GcTYfW4JChZ6tgWhmtuk) |  
