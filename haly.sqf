while {haly < 1} do {

sleep 1;

{
_knowsabout = 0;
	if (_x != player) then {
	_knowsabout= _x knowsabout player;
	};

	if (_knowsabout > 2) then {
	haly=1;
	piste = getpos player;
	};
	

//systemchat format ["%1 knowsabout: %2", name _x, _knowsabout];
} forEach allunits;

};

if (haly==1) then {
	
	{
		if ((side _x)==independent and _x != kuski and _x != body1 and _x != dealer) then {
			_x setBehaviour "combat";
			[_x, piste] execvm "seuranta.sqf";
		};
	} forEach allunits;
};