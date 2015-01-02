%Dongyu "Gary" Zheng
%J4


var nPeople, nRounds, remove, ctr : int := 0

get nPeople
get nRounds

var newsize : int := nPeople

var list : array 1 .. nPeople of int

for i : 1 .. nPeople
    list (i) := i
end for


for x : 1 .. nRounds
    ctr := 0
    get remove

    for i : 1 .. nPeople
	if list (i) not= 0 then
	    ctr += 1
	end if
	if ctr mod remove = 0 then
	    list (i) := 0
	end if
    end for

end for

for i : 1 .. nPeople
    if list (i) not= 0 then
	put list (i)
    end if
end for
