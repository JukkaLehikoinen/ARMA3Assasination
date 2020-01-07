paikka = round(random 2)+1;
switch (paikka) do {
    case 1: { tieto setpos [7898.196,8867.925,4.789]; };
    case 2: { tieto setpos [7875.899,9108.591,4.574]; };
    case 3: { tieto setpos [7873.111,9062.985,4.860]; };
};

waitUntil {doku};
sleep 5;

// dokumentti kuittaus
if (fail2 or !alive dealer) then {
	player sidechat "Arrow to Bishop. The documents have been found and held. Heading to extraction point. Over.";
	player sideradio "doku1";
	sleep 8;
	hq sidechat "Thats a roger, Bishop out";
	hq sideradio "dokuroger";
	sleep 5;
} else {
	player sidechat "Arrow to Bishop. The documents were gathered, waiting for Grandi to meet his maker."; 
	player sideradio "doku2";
	sleep 8;
	hq sidechat "Thats a roger, Bishop out";
	hq sideradio "dokuroger";
	sleep 5;};



waitUntil {pois};
	vene setVehicleLock "UNLOCKED";


// pelaaja pakoveneessä ja loppu häämöttää.
waitUntil {player in vene};
	koordi= getpos vene;
waitUntil {vene distance koordi > 5};
	call BIS_fnc_liveFeedTerminate;
	loppumusa=true;
waitUntil {vene distance koordi > 200};

	titleCut ["Mission completed", "BLACK OUT", 5];
	sleep 5;
	vene setFuel 0;

	{
		if ((side _x)==independent) then {deletevehicle _x;};
	} forEach allunits;

	hideobject p1;
	48 fadeMusic 0;
	sleep 50;
	loppu=true;



