%Dongyu "Gary" Zheng
%J1

var a1, a2, a3 : int := 0
get a1
get a2
get a3

if a1 + a2 + a3 = 180 then
    if a1 = 60 and a2 = 60 and a3 = 60 then
	put "Equilateral"
    elsif a1 = a2 or a2 = a3 or a1 = a3 then
	put "Isosceles"
    else
	put "Scalene"
    end if
else
    put "Error"
end if
