

T = readtable("trialexcel.csv", 'Range', 'A1:B2');
columnA = 'X'; 
columnB = 'Y'; 

val1 = T.(columnA)(1);
val2 = T.(columnB)(1);

sumResult = addNumbers(val1, val2);
subResult = subNumbers(val1, val2);



function sumResult = addNumbers(a, b)
    % This function adds two numbers.
    sumResult = a + b;
    
end

function subResult = subNumbers(a,b)
    subResult = a-b;
end