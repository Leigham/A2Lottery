//Init for Loading Functions.
_nil = execVM "custom\Lottery\Lotteryconfig.sqf";
FNC_Lottery_Vehicle = compile preprocessfile "custom\Lottery\functions\LotteryVic.sqf";
FNC_Lottery_Weapon =  compile preprocessfile "custom\lottery\functions\Lotterywep.sqf";
FNC_Lottery_Cash = compile preprocessfile "custom\Lottery\functions\LotteryCash.sqf";
FNC_Lottery_Item = compile preprocessfile "custom\lottery\functions\LotteryItems.sqf";

FNC_Spawn_Chosen_Vehicle = compile preprocessfile "custom\lottery\functions\SpawnVic.sqf";
FNC_Add_Chosen_Weapon = compile preprocessfile "custom\lottery\functions\addwep.sqf";
FNC_Add_Cash = compile preprocessfile "custom\lottery\functions\addcash.sqf";
