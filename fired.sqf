ampuja = (_this select 0);

ampuja addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	
	_vaimennin = ampuja weaponAccessories currentMuzzle ampuja param [0, ""] != "";
	if (!_vaimennin && haly==0) then {
		haly=1;
	};
	if (!_vaimennin) then {
		piste=getpos p1;
		[1] execvm "ammuttu.sqf";
		
	} else {[0] execvm "ammuttu.sqf"};
		
	if (_muzzle=="handGrenademuzzle") then {
		piste=getpos p1;
			if (haly==0) then {
			haly=1
			};
	};
	
	if (_muzzle=="IRGrenade") then {
	
	_null = _this spawn {
        _irg = _this select 6;
      
		
    
        sleep 5;   
		piste=getpos _irg;
		//systemchat format ["%1", getpos _irg];
		[_irg,1] execvm "ohjus.sqf";	
    
    };
	
	};
	
}];