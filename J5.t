%Dongyu "Gary" Zheng
%J5

fcn RemoveAndReturnFirst (var sentence : string) : string
    var LastWord : boolean := true
    for i : 1 .. length (sentence)
	if sentence (i) = " " then
	    LastWord := false
	end if
    end for
    if LastWord = true then
	result sentence
    end if

    var ctr : int := 1
    var answer : string := ""
    loop
	if sentence (ctr) = " " then
	    exit
	else
	    ctr += 1
	end if
    end loop
    answer := sentence (1 .. ctr - 1)
    sentence := sentence (ctr + 1 .. *)
    result answer
end RemoveAndReturnFirst


fcn Check (Array1, Array2 : array 1 .. * of string) : boolean
    if upper (Array1) mod 2 not= 0 then
	result false
    end if

    for i : 1 .. upper (Array1)
	if Array1 (i) = Array2 (i) then
	    result false
	end if
    end for

    var List1, List2 : array 1 .. upper (Array1) of string
    var isPresent : boolean := false
    for i : 1 .. upper (Array1)
	List1 (i) := Array1 (i) + Array2 (i)
	List2 (i) := Array2 (i) + Array1 (i)
    end for

    for i : 1 .. upper (List1)
	isPresent := false
	for x : 1 .. upper (List2)
	    if List1 (i) = List2 (x) then
		isPresent := true
	    end if
	end for
	if isPresent = false then
	    result false
	end if
    end for

    result true
end Check

%%%main%%%
var nStudents : int := 0
get nStudents

var Array1, Array2 : array 1 .. nStudents of string
for i : 1 .. nStudents
    Array1 (i) := ""
    Array2 (i) := ""
end for

var List1, List2 : string := ""
get List1 : *
get List2 : *
for i : 1 .. nStudents
    Array1 (i) := RemoveAndReturnFirst (List1)
    Array2 (i) := RemoveAndReturnFirst (List2)
end for

if Check (Array1, Array2) = true then
    put "good"
else
    put "bad"
end if
