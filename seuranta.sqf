_ukko = (_this select 0);
piste = (_this select 1);

//_ukko domove position player;
_ukko domove piste;
//systemchat format ["%1 lahtee tulemaan", _ukko];
sleep 29;

sleep 1;
	waitUntil {_ukko knowsabout player > 2 || ammuttu};
	piste = getpos player;
	[_ukko,piste] execvm "seuranta.sqf";
	