Music_RuinsOfAlphRadio:
	musicheader 3, 1, Music_RuinsOfAlphRadio_Ch1
	musicheader 1, 2, Music_RuinsOfAlphRadio_Ch2
	musicheader 1, 3, Music_RuinsOfAlphRadio_Ch3

Music_RuinsOfAlphRadio_Ch1:
	tempo 160
	volume $77
	dutycycle $0
	tone $0118
	vibrato $0, $f0
	stereopanning $f0
.mainloop:
	notetype $6, $71
	callchannel .sub1
	notetype $c, $a1
	note __, 16
	note __, 16
	callchannel .sub2
	notetype $c, $a1
	note __, 16
	note __, 16
	callchannel .sub1
	notetype $c, $a1
	note __, 16
	loopchannel 0, .mainloop

.sub1:
	octave 4
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 8
	endchannel

.sub2:
	octave 4
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 4
	note G_, 1
	octave 5
	note C_, 8
	endchannel

Music_RuinsOfAlphRadio_Ch2:
	dutycycle $1
	vibrato $1, $e0
.mainloop:
	stereopanning $f
	notetype $6, $81
	callchannel Music_RuinsOfAlphRadio_Ch1.sub1
	notetype $c, $a1
	note __, 16
	note __, 16
	notetype $6, $81
	callchannel Music_RuinsOfAlphRadio_Ch1.sub2
	notetype $c, $a1
	note __, 16
	loopchannel 0, .mainloop

Music_RuinsOfAlphRadio_Ch3:
	notetype $6, $26
.mainloop:
	octave 2
	note C_, 1
	note C#, 1
	note C_, 1
	note __, 16
	loopchannel 0, .mainloop
