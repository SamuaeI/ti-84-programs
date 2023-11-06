ClrHome

randInt(1,12)→M
randInt(1601,2100)→Y

If remainder(Y,4)=0
Then
­1→O
[[31,29,31,30,31,30,31,31,30,31,30,31]]→[A]

If M=1
0→S
If M=2
3→S
If M=3
4→S
If M=4
0→S
If M=5
2→S
If M=6
5→S
If M=7
0→S
If M=8
3→S
If M=9
6→S
If M=10
1→S
If M=11
4→S
If M=12
6→S

Else
0→O
[[31,28,31,30,31,30,31,31,30,31,30,31]]→[A]

If M=1
0→S
If M=2
3→S
If M=3
3→S
If M=4
6→S
If M=5
1→S
If M=6
4→S
If M=7
6→S
If M=8
2→S
If M=9
5→S
If M=10
0→S
If M=11
3→S
If M=12
5→S
End

If (Y≥2001)
1→K
If (Y<2001) and (Y≥1901)
2→K
If (Y<1901) and (Y≥1801)
4→K
If (Y<1801) and (Y≥1701)
6→K
If (Y<1701) and (Y≥1601)
1→K

If (fPart(Y/100)*100)=0
Then
(­1)+O→Q
Else
(remainder((int((fPart(Y/100)*100)/4)+((fPart(Y/100)*100)-1)),7))+O→Q
End

If M=1
"January"→Str0
If M=2
"February"→Str0
If M=3
"March"→Str0
If M=4
"April"→Str0
If M=5
"May"→Str0
If M=6
"June"→Str0
If M=7
"July"→Str0
If M=8
"August"→Str0
If M=9
"September"→Str0
If M=10
"October"→Str0
If M=11
"November"→Str0
If M=12
"December"→Str0

randInt(1,[A](1,M))→D
Disp Str0+" "+toString(D)+", "+toString(Y)

remainder(((remainder((D-1),7)+remainder((Q+K),7))+S),7)→P

Menu((Str0+" "+toString(D)+", "+toString(Y)),"Monday",M,"Tuesday",T,"Wednesday",W,"Thursday",TH,"Friday",FR,"Saturday",ST,"Sunday",LL)
Lbl M
1→G
Goto EE

Lbl T
2→G
Goto EE

Lbl W
3→G
Goto EE

Lbl TH
4→G
Goto EE

Lbl FR
5→G
Goto EE

Lbl ST
6→G
Goto EE

Lbl LL
0→G
Goto EE

Lbl EE
If G=P
Then
Disp "CORRECT!!!"
Else
Disp "WRONG"
End
