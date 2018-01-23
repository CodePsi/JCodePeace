type
  ArrayOfFour = array[1..5, 1..5] of real;
var 
  i, j, index, amountPositiveNumber, indexm, return: Integer;
  sumNumberPos, sumNumberZeroPointFive, maximum, minimum, sumLowerDiag, average: real;
  arr: ArrayOfFour;
function NewLine(): String;
begin
  writeln();
end;
function indexOf(element: real): Integer;
var i, j: Integer;
begin
for i := 1 to 5 do
  for j:= 1 to 5 do
    if (arr[i, j] = element) then
      return := i * 10 + j;
indexOf := return;
end;
procedure writeArray(arrayOf : ArrayOfFour);
var i, j: Integer;
begin
NewLine();
for i := 1 to 5 do
  begin
  for j := 1 to 5 do
    begin
    write(arrayOf[i, j]:6:2);
    end;
    NewLine();
  end;
end;
procedure sumPos(arrayOf: ArrayOfFour);
var i, j: Integer;
begin
for i := 1 to 5 do
  for j := 1 to 5 do
    if (arrayOf[i, j] > 0.0) then
      sumNumberPos += arr[i, j];
write(NewLine(), 'The sum of positive integers: ', sumNumberPos: 0: 2, NewLine());
end;
procedure sumGreatForZeroPointFive(arrayOf: ArrayOfFour);
var i, j: Integer;
begin
for i := 1 to 5 do
  for j := 1 to 5 do
  // ß íå çíàþ, ÷è á³ëüøå 0.5, ÷è ìåíüøå 0.5, ñàì³ âèð³ø³òü.
    if (arrayOf[i, j] >= 0.5) then
      sumNumberZeroPointFive += arrayOf[i, j];
write(NewLine(), 'The sum of the numbers for the big zero point five: ', sumNumberZeroPointFive: 0: 2, NewLine());
end;
procedure maximumNumberOfArray(arrayOf: ArrayOfFour);
var i, j: Integer;
begin
maximum := arrayOf[1, 1];
for i := 1 to 5 do

  for j := 1 to 5 do

    if (arrayOf[i, j] > maximum) then
      begin
        maximum := arrayOf[i, j];
        index := i * 10 + j;
      end;

write(NewLine(), 'Maximum: ', maximum:0 :2, ', the index of the maximum element: ', index div 10, ' ', index mod 10, NewLine());
end;
procedure replaceZeros();
var i, j: Integer;
begin
for i := 1 to 5 do
  begin
  for j:= 1 to 5 do
    begin
      if (arr[i, j] <= 0.0) then
        arr[i, j] := sin(0)
      else if (arr[i, j] > 0) then
        amountPositiveNumber += 1;
    end;
  end;
write(NewLine(), 'The amount of the positive number: ', amountPositiveNumber, NewLine());
end;
procedure swapFirstAndSecondLine();
var i, j: Integer;
    temp: real;
begin
i := 1;
j := 1;
while (i <> 5) do
  begin
    temp := arr[i, j];
    arr[i, j] := arr[i, j + 4];
    arr[i, j + 4] := temp;
    i += 1;
  end;
end;
procedure sumTheLowerDiagonal(arrayOf: ArrayOfFour);
var i, j: Integer;
begin
for i := 1 to 5 do
  for j := 1 to i do
    if (arrayOf[i, j] <> arrayOf[i, i]) then
      sumLowerDiag += arrayOf[i, j];
write(NewLine(), 'Sum of the element the lower diagonal: ', sumLowerDiag:0 :2, NewLine());
NewLine();
end;
procedure theArithmeticMean(arrayOf: ArrayOfFour);
var i, j: Integer;
begin
for i := 1 to 5 do
  begin
    for j := 1 to 5 do
      begin
        average += arrayOf[i, j];         
      end;
    write(NewLine(), 'The arithmetic mean of the ', i, ' row: ', average);
    average := 0;
  end;
end;
procedure swapMaximumWithMinimumElement();
var i, j, ix, jx, im, jm: Integer;
    temp: real;
begin
maximum := arr[1, 1];
minimum := 100;
for i := 1 to 5 do
  begin
    for j := 1 to 5 do
      begin
        if (arr[i, j] > maximum) then
          maximum := arr[i, j];
        if ((arr[i, j] < minimum) and (arr[i, j] <> 0)) then
          minimum := arr[i, j];
      end;
  end;
  //writeln(NewLine(), maximum, ' ', minimum, NewLine(), ' ', indexOf(minimum) div 10,' ', indexOf(minimum) mod 10);
  ix := indexOf(maximum) div 10;
  jx := indexOf(maximum) mod 10;
  im := indexOf(minimum) div 10;
  jm := indexOf(minimum) mod 10;
  temp := arr[ix, jx];
  arr[ix, jx] := arr[im, jm];
  arr[im, jm] := temp;
      {  temp := arr[indexOf(maximum) div 10, indexOf(maximum) mod 10];
      arr[indexOf(maximum) div 10, indexOf(maximum) mod 10] := arr[indexOf(minimum) div 10, indexOf(minimum) mod 10];
      arr[indexOf(minimum) div 10, indexOf(minimum) mod 10] := temp; }
end;
begin
for i := 1 to 5 do
  for j := 1 to 5 do 
    arr[i, j] := sin(i + j);
writeArray(arr);
sumPos(arr);
sumGreatForZeroPointFive(arr);
maximumNumberOfArray(arr);
replaceZeros();
swapFirstAndSecondLine();
sumTheLowerDiagonal(arr);
theArithmeticMean(arr);
swapMaximumWithMinimumElement();
writeArray(arr);
end.
