
// b!mortrd.d - Mortar's item dialogue 

BEGIN ~B!MORTRD~ 

IF ~True()~ THEN BEGIN m0 
SAY @0 
++ @1 DO ~SetGlobal("B!Crafting","GLOBAL",1)~ EXIT 
++ @2 EXIT 
END 
