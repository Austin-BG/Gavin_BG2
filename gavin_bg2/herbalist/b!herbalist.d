
// b!herbalist.d - SoA herbalist dialogues 

// Herbalist locations in SoA: 
// b!herb01 - Waukeen's Promenade - Goody Nell (empty table up by Galoomp) [.] - grandmotherly sort, dispenses advice (good selection of wares, medicine bag) 
// b!herb02 - Slums - Goody Clara (roof of the Copper Coronet) [2005.2117],7 - taciturn, just trying to get by (poor selection of wares) 
// b!herb03 - Docks - Goody Vera (between the Sea's Bounty and Guildhall) [2859.2456],0 - down-to-earth and unflappable (modest selection of wares, medicine bag) 
// b!herb04 - Bridge District - Master Siman (near Rose Bouquet) [2733.1990],0 - calm, professional, and snobbish (extensive selection, medicine bag) 
// b!herb05 - Trademeet - Goody Marli (road near the Temple of Waukeen [494.2288],0 - eccentric (good selection of wares, medicine bag) 
// b!herb06 - Imnesvale - Master Uric (near the other merchants) [3472.3028],12 - gossip (modest selection of wares, medicine bag) 
// b!herb07 - Brynnlaw - Goody Alma (outside the store)[1190.1149],12 - hard-bitten and vulgar (extensive selection)

BEGIN ~B!HERB01~ 
BEGIN ~B!HERB02~ 
BEGIN ~B!HERB03~ 
BEGIN ~B!HERB04~ 
BEGIN ~B!HERB05~ 
BEGIN ~B!HERB06~ 
BEGIN ~B!HERB07~ 

APPEND ~B!HERB01~ 

IF ~True()~ THEN BEGIN h1.0 
SAY @0 
  + ~NumTimesTalkedTo(0)~ + @1 + h1.1 
  + ~!NumTimesTalkedTo(0)~ + @2 + h1.2 
  ++ @3 + h1.3 
  ++ @4 + h1.4 
  ++ @5 + h1.8 
  ++ @6 + h1.5 
END 

IF ~~ h1.1 
SAY @7 
  ++ @8 + h1.6 
  ++ @9 + h1.2 
  ++ @10 + h1.7 
END 

IF ~~ h1.2 
SAY @11 
IF ~~ THEN DO ~StartStore("b!herb01",LastTalkedToBy())~ EXIT 
END 

IF ~~ h1.3 
SAY @12 
  + ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_3%)~ + @13 + h1.9 
  ++ @14 + h1.10 
  + ~Global("Chapter","GLOBAL",%bg2_chapter_2%) Class(Player1,BARD_ALL)~ + @15 + h1.11bard 
  + ~Global("Chapter","GLOBAL",%bg2_chapter_2%) Class(Player1,CLERIC_ALL)~ + @15 + h1.11cleric 
  + ~Global("Chapter","GLOBAL",%bg2_chapter_2%) Class(Player1,DRUID_ALL)~ + @15 + h1.11druid 
  + ~Global("Chapter","GLOBAL",%bg2_chapter_2%) Class(Player1,FIGHTER_ALL)~ + @15 + h1.11fighter 
  + ~Global("Chapter","GLOBAL",%bg2_chapter_2%) Class(Player1,MAGE_ALL)~ + @15 + h1.11mage 
  + ~Global("Chapter","GLOBAL",%bg2_chapter_2%) Class(Player1,PALADIN_ALL)~ + @15 + h1.11paladin 
  + ~Global("Chapter","GLOBAL",%bg2_chapter_2%) Class(Player1,RANGER_ALL)~ + @15 + h1.11ranger 
  + ~Global("Chapter","GLOBAL",%bg2_chapter_2%) Class(Player1,THIEF_ALL)~ + @15 + h1.11thief 
  ++ @16 + h1.12 
  ++ @17 + h1.29 
  + ~OR(5) 
        PartyHasItem("miscbl")
        PartyHasItem("miscbm")
        PartyHasItem("miscbn")
        PartyHasItem("miscbo") 
        PartyHasItem("b!gavbod")~ + @18 + h1.13 
  ++ @19 + h1.14 
  ++ @20 + h1.28 
  ++ @21 + h1.15 
  ++ @22 + h1.16 
  ++ @23 + h1.15 
  ++ @24 + h1.17 
END 

IF ~~ h1.4 
SAY @25 
  + ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_3%)~ + @26 + h1.18 
  ++ @27 + h1.19 
  ++ @28 + h1.20 
  ++ @29 + h1.21 
  + ~InParty("B!Gavin2")~ + @30 + h1.22 
  ++ @31 + h1.23 
END 

IF ~~ h1.5 
SAY @32 
IF ~~ THEN EXIT 
END 

IF ~~ h1.6 
SAY @33 
IF ~~ THEN + h1.2 
END 

IF ~~ h1.7 
SAY @34 
IF ~~ THEN + h1.24  
END 

IF ~~ h1.8 
SAY @35 
  = @36 
  = @37 
  = @38 
  ++ @39 + h1.2 
  ++ @10 + h1.7 
END 

IF ~~ h1.9 
SAY @40 
  = @41 
  = @42 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.10 
SAY @43 
  = @44 
  = @45 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.11bard 
SAY @46 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.11cleric 
SAY @47 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.11druid 
SAY @48 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.11fighter 
SAY @49 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.11mage 
SAY @50 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.11paladin 
SAY @51 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.11ranger 
SAY @52 
= @53 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.11thief 
SAY @54 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.12 
SAY @55 
= @56 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.13 
SAY @57 
  = @58 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.14 
SAY @59 
  ++ @60 + h1.24 
  ++ @61 + h1.25 
  ++ @62 + h1.26 
  ++ @63 + h1.27 
END 

IF ~~ h1.15 
SAY @64 
  = @65 
  = @66 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.16 
SAY @67 
IF ~Gender(Player1,MALE) 
      OR(5) 
          Gender(Player2,FEMALE) 
          Gender(Player3,FEMALE) 
          Gender(Player4,FEMALE) 
          Gender(Player5,FEMALE) 
          Gender(Player6,FEMALE)~ THEN + h1.16a 
IF ~Gender(Player1,FEMALE) 
      OR(5) 
          Gender(Player2,MALE) 
          Gender(Player3,MALE) 
          Gender(Player4,MALE) 
          Gender(Player5,MALE) 
          Gender(Player6,MALE)~ THEN + h1.16b 
END 

IF ~~ h1.16a 
SAY @68 
IF ~~ THEN + h1.16c 
END 

IF ~~ h1.16b 
SAY @69 
IF ~~ THEN + h1.16c 
END 

IF ~~ h1.16c 
SAY @70 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.17 
SAY @71 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.18 
SAY @72 
  = @73 
  = @74 
  = @75 
  ++ @76 + h1.18a 
  ++ @77 + h1.18b 
  ++ @78 + h1.18c 
  ++ @79 + h1.2 
  ++ @80 + h1.18d 
END 

IF ~~ h1.18a 
SAY @81 
IF ~~ THEN + h1.18d 
END 

IF ~~ h1.18b 
SAY @82 
IF ~~ THEN + h1.18d 
END 

IF ~~ h1.18c 
SAY @83 
IF ~~ THEN + h1.18d 
END 

IF ~~ h1.18d 
SAY @84 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.19 
SAY @85 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.20 
SAY @86 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.21 
SAY @87 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.22 
SAY @88 
  = @89 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.23 
SAY @90 
  = @91 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.24 
SAY @92 
  ++ @2 + h1.2 
  ++ @3 + h1.3 
  ++ @4 + h1.4 
  ++ @5 + h1.8 
  ++ @93 + h1.5 
END 

IF ~~ h1.25 
SAY @94 
IF ~~ THEN + h1.26 
END 

IF ~~ h1.26 
SAY @95 
IF ~~ THEN + h1.24 
END  

IF ~~ h1.27 
SAY @96 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.28 
SAY @97 
IF ~~ THEN + h1.24 
END 

IF ~~ h1.29 
SAY @98 
IF ~~ THEN + h1.24 
END 
END 
 
APPEND ~B!HERB02~ 

IF ~True()~ THEN BEGIN h2.0 
SAY @99 
  + ~NumTimesTalkedTo(0)~ + @1 + h2.1 
  + ~!NumTimesTalkedTo(0)~ + @2 + h2.2 
  ++ @4 + h2.3 
  ++ @5 + h2.4 
  ++ @6 + h2.5 
END 

IF ~~ h2.1 
SAY @100 
IF ~~ THEN + h2.6 
END 

IF ~~ h2.2 
SAY @101 
IF ~~ THEN DO ~StartStore("b!herb02",LastTalkedToBy())~ EXIT 
END 

IF ~~ h2.3 
SAY @102 
IF ~~ THEN + h2.6 
END 

IF ~~ h2.4 
SAY @103 
IF ~~ THEN + h2.6 
END 

IF ~~ h2.5 
SAY @104 
IF ~~ THEN EXIT 
END 

IF ~~ h2.6 
SAY @105 
  ++ @2 + h2.2 
  ++ @4 + h2.3 
  ++ @5 + h2.4 
  ++ @6 + h2.5 
END 
END 
 
APPEND ~B!HERB03~ 

IF ~True()~ THEN BEGIN h3.0 
SAY @106 
  + ~NumTimesTalkedTo(0)~ + @1 + h3.1 
  + ~!NumTimesTalkedTo(0)~ + @2 + h3.2 
  ++ @4 + h3.3 
  ++ @5 + h3.4 
  ++ @6 + h3.5 
END 

IF ~~ h3.1 
SAY @107 
IF ~~ THEN + h3.6 
END 

IF ~~ h3.2 
SAY @108 
IF ~~ THEN DO ~StartStore("b!herb03",LastTalkedToBy())~ EXIT 
END 

IF ~~ h3.3 
SAY @109 
++ @110 + h3.7 
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_3%)~ + @111 + h3.8 
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_3%)~ + @112 + h3.9 
++ @113 + h3.10 
++ @114 + h3.11 
END 

IF ~~ h3.4 
SAY @115 
IF ~~ THEN + h3.6 
END 

IF ~~ h3.5 
SAY @116 
IF ~~ THEN EXIT 
END 

IF ~~ h3.6 
SAY @117 
  ++ @2 + h3.2 
  ++ @4 + h3.3 
  ++ @5 + h3.4 
  ++ @6 + h3.5 
END 

IF ~~ h3.7 
SAY @118 
IF ~~ THEN + h3.6 
END 

IF ~~ h3.8 
SAY @119 
IF ~~ THEN + h3.6 
END 

IF ~~ h3.9 
SAY @120 
IF ~~ THEN + h3.6 
END 

IF ~~ h3.10 
SAY @121 
IF ~~ THEN + h3.6 
END 

IF ~~ h3.11 
SAY @122 
IF ~~ THEN + h3.6 
END 
END 
 
APPEND ~B!HERB04~ 

IF ~True()~ THEN BEGIN h4.0 
SAY @123 
  + ~NumTimesTalkedTo(0)~ + @1 + h4.1 
  + ~!NumTimesTalkedTo(0)~ + @2 + h4.2 
  ++ @4 + h4.3 
  ++ @5 + h4.4 
  ++ @6 + h4.5 
END 

IF ~~ h4.1 
SAY @124 
IF ~~ THEN + h4.6 
END 

IF ~~ h4.2 
SAY @125 
IF ~~ THEN DO ~StartStore("b!herb04",LastTalkedToBy())~ EXIT 
END 

IF ~~ h4.3 
SAY @109 
++ @110 + h4.7 
++ @126 + h4.8 
++ @114 + h4.9 
END 

IF ~~ h4.4 
SAY @127 
IF ~~ THEN + h4.6 
END 

IF ~~ h4.5 
SAY @128 
IF ~~ THEN EXIT 
END 

IF ~~ h4.6 
SAY @129 
  ++ @2 + h4.2 
  ++ @4 + h4.3 
  ++ @5 + h4.4 
  ++ @6 + h4.5 
END 

IF ~~ h4.7 
SAY @130 
IF ~~ THEN + h4.6 
END 

IF ~~ h4.8 
SAY @131 
IF ~~ THEN + h4.6 
END 

IF ~~ h4.9 
SAY @132 
IF ~~ THEN + h4.6 
END 
END 

APPEND ~B!HERB05~ 

IF ~True()~ THEN BEGIN h5.0 
SAY @133 
  + ~NumTimesTalkedTo(0)~ + @1 + h5.1 
  + ~!NumTimesTalkedTo(0)~ + @2 + h5.2 
  ++ @4 + h5.3 
  ++ @5 + h5.4 
  ++ @6 + h5.5 
END 

IF ~~ h5.1 
SAY @134 
IF ~~ THEN + h5.6 
END 

IF ~~ h5.2 
SAY @135 
IF ~~ THEN DO ~StartStore("b!herb05",LastTalkedToBy())~ EXIT 
END 

IF ~~ h5.3 
SAY @136 
IF ~~ THEN + h5.6 
END 

IF ~~ h5.4 
SAY @137 
IF ~~ THEN + h5.6 
END 

IF ~~ h5.5 
SAY @138 
IF ~~ THEN EXIT 
END 

IF ~~ h5.6 
SAY @139 
  ++ @2 + h5.2 
  ++ @4 + h5.3 
  ++ @5 + h5.4 
  ++ @6 + h5.5 
END 
END 

APPEND ~B!HERB06~ 

IF ~True()~ THEN BEGIN h6.0 
SAY @140 
  + ~NumTimesTalkedTo(0)~ + @1 + h6.1 
  + ~!NumTimesTalkedTo(0)~ + @2 + h6.2 
  ++ @4 + h6.3 
  ++ @5 + h6.4 
  ++ @6 + h6.5 
END 

IF ~~ h6.1 
SAY @141 
IF ~~ THEN + h6.6 
END 

IF ~~ h6.2 
SAY @142 
IF ~~ THEN DO ~StartStore("b!herb06",LastTalkedToBy())~ EXIT 
END 

IF ~~ h6.3 
SAY @143 
IF ~~ THEN + h6.6 
END 

IF ~~ h6.4 
SAY @144 
IF ~~ THEN + h6.6 
END 

IF ~~ h6.5 
SAY @145 
IF ~~ THEN EXIT 
END 

IF ~~ h6.6 
SAY @146 
  ++ @2 + h6.2 
  ++ @4 + h6.3 
  ++ @5 + h6.4 
  ++ @6 + h6.5 
END 
END 

APPEND ~B!HERB07~ 

IF ~True()~ THEN BEGIN h7.0 
SAY @147 
  + ~NumTimesTalkedTo(0)~ + @1 + h7.1 
  + ~!NumTimesTalkedTo(0)~ + @2 + h7.2 
  ++ @4 + h7.3 
  ++ @5 + h7.4 
  ++ @6 + h7.5 
END 

IF ~~ h7.1 
SAY @148 
IF ~~ THEN + h7.6 
END 

IF ~~ h7.2 
SAY @149 
IF ~~ THEN DO ~StartStore("b!herb07",LastTalkedToBy())~ EXIT 
END 

IF ~~ h7.3 
SAY @150 
IF ~~ THEN + h7.6 
END 

IF ~~ h7.4 
SAY @151 
IF ~~ THEN + h7.6 
END 

IF ~~ h7.5 
SAY @152 
IF ~~ THEN EXIT 
END 

IF ~~ h7.6 
SAY @153 
  ++ @2 + h7.2 
  ++ @4 + h7.3 
  ++ @5 + h7.4 
  ++ @6 + h7.5 
END 
END 

