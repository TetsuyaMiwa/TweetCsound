## **My csd for つぶやきCsound/TweetCsound**  
Brief description on my tweeted csd  
| No | Opcodes used| Description(J) | Csound Web-IDE |  
| --- | --- | --- | --- |  
| 30 | fold,delay,schedule,random | 800Hzのsaw波形をfoldで変形。Delayしたasigを片chに出力し音に広がりを持たせる。音長は0.2の1/2,2/2,3/2倍からランダムに設定、foldのfoldoverの量もインスタンス毎に10,20,..40からランダムに設定 |  [No30](https://ide.csound.com/editor/V0X6W6FGKltfo1S8gfab) |
| 29 | tableshuffle,metro,phasor,table | 1つのtableで波形と周波数をコントロール。Tableの内容は周期的にshuffle |  [No29](https://ide.csound.com/editor/U6dQXG07aolcWEMgmGyc) |
| 28 | fillarray,metro,random,pow | lidian scaleをarrayに格納し、周波数は計算して求める。2つのインスタンスでarrayのindexに位相差をつけて2つのメロディーを同時作成 |  [No28](https://ide.csound.com/editor/yT4jT5E4ZXrRWT1qYC13) |
| 27 | gausstrig,jitter,hrtfmove2 | gausstrigで蚊の羽音（バイノーラル）。Jitterでバイノーラルの動きに揺らぎ |  [No27](https://ide.csound.com/editor/qCz7o6EW12aa1EmbUHg8) |
| 26 | fmbell,schedule | fmbell(﻿tublar bell FM sound)を使った、ガラスビンにビー玉が入るような音 |  [No26](https://ide.csound.com/editor/vbIshnWLkdFfqd2zZybT) |
| 25 | pow,cos | Japanese attractorのsonification |  [No25](https://ide.csound.com/editor/TUQlPkoNIVC8mv47dHHT) |
| 24 | fillarray,cpspch,randomh,sin,sqrt | 波面z=sin(sqrt(x^2+y^2))をスキャンする、wave terrain synthesis的な方法 |  [No24](https://ide.csound.com/editor/ViUGXwbWjPWlXHXPgy6B) |
| 23 | linseg | ロジスティック写像のsonification(可聴化)。変数xを周波数に割り当て |  [No23](https://ide.csound.com/editor/q3TAkPC0KfTiJ8SWFvnO) |
| 22 | madsr, schedule | Lothar Collatz数列でピッチ決定。2つの時間差のあるインスタンスを作成 |  [No22](https://ide.csound.com/editor/jVmGcMl7beDTFLorjU6A) |
| 21 | cpspch,random | oscillator opcodeを使わずノコギリ波/矩形波/三角波を生成する方法から発展した複雑な波形。Multitapでdelay効果 |  [No21](https://ide.csound.com/editor/gJFAkQM6OSbPlezTYUlg) |
| 20 | ftgenonce, poscil,cpsmidinn | ﻿GENpadsynthでメロトロン風の音 |  [No20](https://ide.csound.com/editor/oGbKrwwQw5dTTyIQ2YE5) |
| 19 | randoh,multitap | oscillator opcodeを使わずノコギリ波生成。Multitapでdelay効果 |  [No19](https://ide.csound.com/editor/1emIWjdZ5J3NEljiX0je) |
| 18 | vosim,ampdbfs,dcblock2 | vosimで「おーい」 |  [No18](https://ide.csound.com/editor/AEdZGldPGxmQGoCfrWH4) |
| 17 | linsegr,hrtfstat,schedkwhen,dust,random | バイノーラル。Instr2でinstr1のインスタンスをランダムなタイミングで作成。周波数とアジマスもインスタンスごとにランダム |  [No17](https://ide.csound.com/editor/LawHyTVOTC1UH1lAEg7P) |
| 16 | hilbert,rnd,schedule |  hilbertを使ってUpper Side Band(USB)を出力 |  [No16](https://ide.csound.com/editor/jDDfMahVD1AqDfvJCr2A) |
| 15 | metro,expon,schedkwhen | instance発生タイミングをmetroでexponentialにコントロール(100->1Hz) |  [No15](https://ide.csound.com/editor/VOsliwX4ucpz6wJPYQIw) |
| 14 | pvsfreeze,pvsblur,pvsynth,pvsanal | ノイズをpvsanal |  [No14](https://ide.csound.com/editor/sWLq2gBuPsaF5fcFwKRa) |
| 13 | grain2,linenr | サイレン音 |  [No13](https://ide.csound.com/editor/3makb4MLcueDyTvt807M) |
| 12 | fillarray,schedule,cpsmidinn,rnd | 沖縄スケールで跳ねたリズムのランダム演奏 |  [No12](https://ide.csound.com/editor/zpHWxl8A7PICulTZBJ15) |
| 11 | adsr,portk,samphold,metro,random,schedule,randomh | 3つのサイン波の周波数変化をランダム-S&Hに。変化のタイミングはrandomhとmetroでコントロール |  [No11](https://ide.csound.com/editor/rWTYP6LZlxyBRuVMfRVp) |
| 10 | tone,vdelay | Karplus–Strong algorithmを使ったおどけた音 |  [No10](https://ide.csound.com/editor/WDkKI2cy0QVeAo3jRBgN) |
| 9 | dust,samphold | だんだん崩れていくsin波 |  [No9](https://ide.csound.com/editor/LgwuAAsTxcNaURwXmx8n) |
| 8 | reverbsc | 風-人魂 |  [No8](https://ide.csound.com/editor/F4abk5Q1wbURZvQNYZ8k) |
| 7 | fillarray | instanceごとにarrayのindex+1してピッチ変化 |  [No7](https://ide.csound.com/editor/SljsyiA5P01wkAoE8plc) |
| 6 | betarand | ランダムにDTMF |  [No6](https://ide.csound.com/editor/DNre2spdLVg8sWukf7wa) |
| 5 | schedule | 時間をずらして3 instanceをscheduleすることで音を重ねる |  [No5](https://ide.csound.com/editor/WW0SLpvpmHDbCzhnckYH) |
| 4 | schedule,vdelay | ノイズをvdelayに入れてフランジャー的な音 |  [No4](https://ide.csound.com/editor/po7HRJNt07uZrhGo6SLQ) |
| 3 | randi,fof | 固定したフォルマント「あ」でランダムな音高 |  [No3](https://ide.csound.com/editor/0ntMLk0DQi4v15Pxb01s) |
| 2 | schedule | バネのような音 |  [No2](https://ide.csound.com/editor/hHC4uBs6IWCREkQqXmcF) |
| 1 | schedule,schedkwhen,dust,expon,oscili,linenr | UFOのような音：LFOでピッチを上下させたサイン波のinstrを、dustで密度をコントロールしてscheduleする |  [No1](https://ide.csound.com/editor/GcTYfW4JChZ6tgWhmtuk) |  
