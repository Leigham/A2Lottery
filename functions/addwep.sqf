_win = this select 0;
if (_win) then
{
  _dir = getdir _playerObj;
  _pos = getPosATL _playerObj;
  _pos = [(_pos select 0)+2*sin(_dir),(_pos select 1)+2*cos(_dir),(_pos select 2)];
  [_dir,_pos] spawn {
    _dir = _this select 0;
    _pos = _this select 1;
    _box = 'WeaponHolder' createVehicle _pos;
    _box setPosATL _pos;
    clearWeaponCargoGlobal _b0x;
    clearmagazinecargoGlobal _b0x;
    _box addWeaponCargoGlobal [_win, 1];
    _GetItemName = getText (configFile >> 'CfgWeapons' >> _wep >> 'displayName');
    _GetMagClassName = getArray (configFile >> 'CfgWeapons' >> _win >> 'magazines');
    _magazineClass = _GetMagClassName select 0;
    _GetMagName = getArray (configFile >> 'CfgMagazines' >> _magazineClass 'displayname' );
    _box addMagazineCargoGlobal [_magazineClass, 2];
    
  };
};
sleep 300;
Deletevehicle _box;
//end of Script
