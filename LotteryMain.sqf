//LotteryMain.sqf By Leigham
_itemsplayer = Items Player;
_hasMoney = Lega_Cost in _itemsPlayer;
_random = round(random(6));
if (Lega_SingleCurrency)then{
  _random = round(random(6));
is (!_hasmoney) exitwith {cutText [format["You need Evidence Money to play the Lottery."], "PLAIN DOWN"];};
if (dayz_combat == 1) then {
    cutText [format["You are in Combat and cannot play the lottery, Get somewhere safe then try again."], "PLAIN DOWN"];
}else{
  Player RemoveAction s_player_lottery
  Player playActionnow "Medic";
  r_intterupt = false;
  player removeweapon Lega_Cost;
  switch (_random) do {
          case 0 :{
              WinWeapon = True;
          };
          case 1 :{
              WinVehicle = True;
          };
          case 2 :{
              WinCash = true;
          };
          case 3 :{
              Wingold = true;
          };
          case 4 :{
              winrare = true;
          };
          case 5 :{
              winbad = true;
          };
      };
	cutText [format["Lottery Entered, Wait for the Draw."], "PLAIN DOWN"]
};
}else{
  _random = round(random(5));
is (!_hasmoney) exitwith {cutText [format["You need Evidence Money to play the Lottery."], "PLAIN DOWN"];};
if (dayz_combat == 1) then {
    cutText [format["You are in Combat and cannot play the lottery, Get somewhere safe then try again."], "PLAIN DOWN"];
}else{
wincash = false,
  Player RemoveAction s_player_lottery
  Player playActionnow "Medic";
  r_intterupt = false;
  player removeweapon Lega_Cost;
  switch (_random) do {
          case 0 :{
              WinWeapon = True;
          };
          case 1 :{
              WinVehicle = True;
          };
          case 2 :{
              Winbad = true;
          };
          case 3 :{
              Wingold = true;
          };
          case 4 :{
              winrare = true;
          };
      };
	  cutText [format["Lottery Entered, Wait for the Draw."], "PLAIN DOWN"]

};

