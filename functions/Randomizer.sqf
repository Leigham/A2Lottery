
If (Lega_single_currency)then{
      _Pick1 = [Lega_prize_vehicles,Lega_prize_one,Lega_maxcash,Lega_gold,Lega_poor_prizes,Lega_med_Prizes,Lega_High_prizes,Lega_Legend_prizes] call bis_fnc_selectRandom;
}else{
      _Pick1 = [Lega_prize_vehicles,Lega_prize_one,Lega_gold,Lega_poor_prizes,Lega_med_Prizes,Lega_High_prizes,Lega_Legend_prizes] call bis_fnc_selectRandom;
};

if(_pick1 = Lega_prize_vehicles)then{
  _spawnvic = _pick1 call fnc_Spawn_Chosen_vehicle;
};
