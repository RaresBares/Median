(*
 * Project: untitled19
 * User: Rares
 * Date: 11.10.2020
 *)
program Median;
type
  tFeld = array [1..MaxInt] of Integer;
var 
  zahlen : tFeld;
  i : Integer;
  v : Integer = 0;
  f : Integer;
  state : Integer = 0;
  text : string;
  sum : Integer = 0;
  mmedian : Real = 0;
begin
  WriteLn('Insert youre Numbers for the Median. To Stop enter "stop":');
  begin
    while true do
    begin
    ReadLn(text);
    if text = 'stop' then
      break
      else
    begin
      Val(text, i, v);
      zahlen[state] := i;
      state := state + 1 ;
    end; 
    end;
   for f := 0 to state-1 do
     sum := sum + zahlen[f];
    end;
    mmedian := sum/state;
    WriteLn('Your Median: ', mmedian);
end.