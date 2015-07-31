private ["_veh","_location","_isOk","_vehtospawn","_part_in","_qty_in","_qty","_obj","_objectID","_objectUID","_started","_finished","_animState","_isMedic","_dir","_removed","_keyColor","_keyNumber","_keySelected","_isKeyOK","_config","_textPartIn","_textPartOut"];

  _vehtospawn = VICTOSPAWN;
  _charID = dayz_characterID;
  _dir = getdir vehicle player;
  _pos = getPos vehicle player;
  _pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
  _worldspace = [_dir,_pos];

 cutText ["Starting Spawn, stand still to complete spawn.", "PLAIN DOWN"];

 // First select key color
 _keyColor = ["Green","Red","Blue","Yellow","Black"] call BIS_fnc_selectRandom;

 // then select number from 1 - 2500
 _keyNumber = (floor(random 2500)) + 1;

 // Combine to key (eg.ItemKeyYellow2494) classname
 _keySelected = format[("ItemKey%1%2"),_keyColor,_keyNumber];

 _isKeyOK =  isClass(configFile >> "CfgWeapons" >> _keySelected);

 _config = _keySelected;
 _isOk = [player,_config] call BIS_fnc_invAdd;
 if (!_isOk)then{
   _backpackkey = true;
   _backpack = unitBackpack player;
   _backpack = addWeaponCargoGlobal [_config,"1"];
 };
 waitUntil {!isNil "_isOk"};
 if (_isOk and _isKeyOK) then {

 _removed = ([player,_part_in,_qty_in] call BIS_fnc_invRemove);
 _dir = round(random 360);


 // CHANGE the classname below to match your vehicle (MV22_DZ) - Kudos to WaTTe for this tweak!
 _location = position player findEmptyPosition [0,20,"VICTOSPAWN"];

 //place vehicle spawn marker (local)
 _veh = createVehicle ["Sign_arrow_down_large_EP1", _location, [], 0, "CAN_COLLIDE"];

 _location = (getPosATL _veh);

 PVDZE_veh_Publish2 = [_veh,[_dir,_location],_vehtospawn,false,_keySelected];
 publicVariableServer  "PVDZE_veh_Publish2";
 player reveal _veh;

 cutText [format[("Prize Spawned, key added to toolbelt, ENJOY !"),_qty_in,_textPartIn,_textPartOut], "PLAIN DOWN"];
  if (!isOk)then{
  cutText [format[("Prize Spawned, key added to Backpack, ENJOY !"),_qty_in,_textPartIn,_textPartOut], "PLAIN DOWN"];
  };
 } else {
 cutText ["Something Went Wrong, Contact an Admin.", "PLAIN DOWN"];
 };
