```ada
function Check_Range(Num : Integer) return Boolean is
begin
  if Num >= 10 and Num <= 20 then  -- Replaced "and then" with "and"
    return True;
  else
    return False;
  end if;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
  Num : Integer := 25;
begin
  if Check_Range(Num) then
    Put_Line("Number is within range");
else
    Put_Line("Number is out of range");
  end if;
end Main;
```