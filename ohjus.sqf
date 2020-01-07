_c = (_this select 0);
_muoto=(_this select 1);

if (kerta==0) then {
kerta=1;
_b = getpos nolla;

if (_muoto==0) then {
_c = position laserTarget player;
};
_pos=[0,0,0];

_okorkeus = 5000;
if (_muoto==0) then { _pos = [_c # 0, _c # 1, _okorkeus]; };
if (_muoto==1) then { _pos = [getpos _c select 0, getpos _c select 1, _okorkeus]; };
     
nolla setpos _pos;

_ohjus = "M_Scalpel_AT";
_ohjus2 = _ohjus createvehicle [getpos nolla select 0, getpos nolla select 1, getpos nolla select 2];
_ohjus2 setVectorDirAndUp [[0,0,-1],[0,1,0]];
sleep 4;

	while {alive _ohjus2} do {
	_pos2 = [(getpos _ohjus2 select 0), (getpos _ohjus2 select 1)];
	_korkeus = (getpos _ohjus2 select 2);
	
	if (_muoto==0) then {
	_c=position laserTarget player;
	_pos = [_c # 0, _c # 1];
	_ohjus2 setpos [_c # 0, _c # 1, (getpos _ohjus2 select 2)];
	};
	
	if (_muoto==1) then {	
	_pos = [getpos _c select 0, getpos _c select 1];
	_ohjus2 setpos [getpos _c select 0, getpos _c select 1, (getpos _ohjus2 select 2)];
	};
	
	sleep 0.2;
	};
	

if (haly==0 && alive dealer) then {
	haly=1;
} else {
	sleep 15;
	haly=1;
};

};



