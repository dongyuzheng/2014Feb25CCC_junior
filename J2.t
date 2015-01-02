%Dongyu "Gary" Zheng
%J2

var total, Acount, Bcount : int := 0
var votes : string := ""
get total
get votes

for i : 1 .. total
    if votes (i) = "A" then
	Acount += 1
    else
	Bcount += 1
    end if
end for

if Acount > Bcount then
    put "A"
elsif Acount < Bcount then
    put "B"
else
    put "Tie"
end if
