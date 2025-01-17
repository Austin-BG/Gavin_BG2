
// b!mortar.d - mortar dialogue 

BEGIN ~B!MORTAR~ 

IF ~True()~ THEN BEGIN m1 
SAY @0 
+ ~PartyHasItem("b!apple") 
      PartyHasItem("b!nutmeg") 
      PartyHasItem("b!ginger") 
      PartyHasItem("b!honey") 
      PartyHasItem("b!spirit") 
      PartyHasItem("b!bottle")~ + @1 DO ~TakePartyItemNum("b!apple",1) DestroyItem("b!apple") 
            TakePartyItemNum("b!nutmeg",1) DestroyItem("b!nutmeg") 
            TakePartyItemNum("b!ginger",1) DestroyItem("b!ginger") 
            TakePartyItemNum("b!honey",1)  DestroyItem("b!honey") 
            TakePartyItemNum("b!spirit",1) DestroyItem("b!spirit") 
            TakePartyItemNum("b!bottle",1) DestroyItem("b!bottle") 
            GiveItemCreate("b!potn1",Player1,1,0,0) 
            SetGlobal("B!Crafting","GLOBAL",4)~ EXIT 
+ ~PartyHasItem("b!felsul") 
      PartyHasItem("b!spirit") 
      PartyHasItem("b!bottle")~ + @2 DO ~TakePartyItemNum("b!felsul",1) DestroyItem("b!felsul") 
            TakePartyItemNum("b!spirit",1) DestroyItem("b!spirit") 
            TakePartyItemNum("b!bottle",1) DestroyItem("b!bottle") 
            GiveItemCreate("b!ffoil",Player1,1,0,0) 
            SetGlobal("B!Crafting","GLOBAL",4)~ EXIT 
+ ~PartyHasItem("b!brmold") 
      PartyHasItem("b!algae") 
      PartyHasItem("b!lime") 
      PartyHasItem("b!bottle")~ + @3 DO ~TakePartyItemNum("b!brmold",1) DestroyItem("b!brmold")
	    TakePartyItemNum("b!algae",1) DestroyItem("b!algae") 
            TakePartyItemNum("b!lime",1)   DestroyItem("b!lime") 
            TakePartyItemNum("b!bottle",1) DestroyItem("b!bottle") 
            GiveItemCreate("b!potn2",Player1,1,0,0) 
            SetGlobal("B!Crafting","GLOBAL",4)~ EXIT 
+ ~PartyHasItem("b!cotblm") 
      PartyHasItem("b!honey") 
      PartyHasItem("b!spirit") 
      PartyHasItem("b!bottle")~ + @4 DO ~TakePartyItemNum("b!cotblm",1) DestroyItem("b!cotblm") 
            TakePartyItemNum("b!honey",1)  DestroyItem("b!honey") 
            TakePartyItemNum("b!spirit",1) DestroyItem("b!spirit") 
            TakePartyItemNum("b!bottle",1) DestroyItem("b!bottle") 
            GiveItemCreate("b!potn3",Player1,1,0,0) 
            SetGlobal("B!Crafting","GLOBAL",4)~ EXIT 
+ ~PartyHasItem("b!prkly") 
      PartyHasItem("b!honey") 
      PartyHasItem("b!spirit") 
      PartyHasItem("b!bottle")~ + @5 DO ~TakePartyItemNum("b!prkly",1) DestroyItem("b!prkly") 
            TakePartyItemNum("b!honey",1)  DestroyItem("b!honey") 
            TakePartyItemNum("b!spirit",1) DestroyItem("b!spirit") 
            TakePartyItemNum("b!bottle",1) DestroyItem("b!bottle") 
            GiveItemCreate("b!sens",Player1,1,0,0) 
            SetGlobal("B!Crafting","GLOBAL",4)~ EXIT 
++ @6 DO ~SetGlobal("B!Crafting","GLOBAL",4)~ EXIT 
END 
