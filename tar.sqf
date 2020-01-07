
while {laser < 1} do {
nolla setpos [0,0,0];
_b = getpos nolla;
_c = position laserTarget player;
	if (str _c != str _b) then {
	//hint format ["nolla: %1, laser: %2", _b, _c];
	laser=1;
	[position laserTarget player,0] execvm "ohjus.sqf";
	};
sleep 1;
};