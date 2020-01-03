#IfWinActive ahk_exe scarface.exe
SetKeyDelay, 45

A := 1 
B := 2 
C := 3 
D := 4 
E := 5 
F := 6 
G := 7 
H := 8 
I := 9 
J := 10 
K := 11 
L := 12 
M := 13  
N := 14 
O := 15  
P := 16 
Q := 17  
R := 18  
S := 19  
T := 20   
U := 21  
V := 22 
W := 23  
X := 24  
Y := 25  
Z := 26 
0 := 27
1 := 28
2 := 29
3 := 30
4 := 31
5 := 32
6 := 33
7 := 34
8 := 35
9 := 36
 
 
;DONUT
;NOBALLS
;GOBALLS
;FPATCH
;AMMO
;MEDIK
;BLUESH
;WHITE


Cheat(amount)
{
	Loop %amount%
	{
		Send {Down down}{Down up}  ; Auto-repeat consists of consecutive down-events.
	}
	
	Send, {Right down}{Right up}
}

$^j::
	Cheat(B) Cheat(L) Cheat(A) Cheat(C) Cheat(K)
	Send, {r up}{r down}
	
	if (GetKeyState("p", "P"))
	{
		return
	}

	Send, {r up}{r down}
	Cheat(F) Cheat(L) Cheat(Y) Cheat(S) Cheat(T) Cheat(R) Cheat(T)
	Send, {r up}{r down}
	
	if (GetKeyState("p", "P"))
	{
		return
	}
/*	
	Send, {r up}{r down}
	Cheat(D) Cheat(O) Cheat(N) Cheat(U) Cheat(T)
	Send, {r up}{r down}
	
	if (GetKeyState("p", "P"))
	{
		return
	}

*/	
	Send, {r up}{r down}
	Cheat(N) Cheat(O) Cheat(B) Cheat(A) Cheat(L) Cheat(L) Cheat(S)
	Send, {r up}{r down}
	
	if (GetKeyState("p", "P"))
	{
		return
	}
/*
	Send, {r up}{r down}
	Cheat(G) Cheat(O) Cheat(B) Cheat(A) Cheat(L) Cheat(L) Cheat(S)
	Send, {r up}{r down}
	
	if (GetKeyState("p", "P"))
	{
		return
	}
*/	
	Send, {r up}{r down}
	Cheat(F) Cheat(P) Cheat(A) Cheat(T) Cheat(C) Cheat(H)
	Send, {r up}{r down}
	
	if (GetKeyState("p", "P"))
	{
		return
	}
	
	Send, {r up}{r down}
	Cheat(A) Cheat(M) Cheat(M) Cheat(O)
	Send, {r up}{r down}
	
	if (GetKeyState("p", "P"))
	{
		return
	}
	
	Send, {r up}{r down}
	Cheat(M) Cheat(E) Cheat(D) Cheat(I) Cheat(K)
	Send, {r up}{r down}
	
	if (GetKeyState("p", "P"))
	{
		return
	}
/*	
	Send, {r up}{r down}
	Cheat(B) Cheat(L) Cheat(U) Cheat(E) Cheat(S) Cheat(H)
	Send, {r up}{r down}
	
	if (GetKeyState("p", "P"))
	{
		return
	}
	
	Send, {r up}{r down}
	Cheat(W) Cheat(H) Cheat(I) Cheat(T) Cheat(E)
	Send, {r up}{r down}
*/