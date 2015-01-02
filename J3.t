%Dongyu "Gary" Zheng
%J3

var Antonia, David : int := 100
var totalgames : int := 0
var scores : string := ""

get totalgames

for i : 1 .. totalgames
    get scores : *

    if scores (1) > scores (3) then
	David -= strint (scores (1))
    elsif scores (1) < scores (3) then
	Antonia -= strint (scores (3))
    end if
end for

put Antonia
put David
