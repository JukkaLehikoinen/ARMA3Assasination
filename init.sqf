[] execvm "briefing.sqf";
doku=false;
tapettu=false;
fail2=false;
haly=0;
nolla setpos [0,0,0];
kerta=0;
pois=false;
piste= getpos p1;
ammuttu=false;
laskeutuminen=false;
laser=0;

enableEnvironment [false, true];
[] execvm "dealerinkuvaamista.sqf";
[] execvm "dokuarpa.sqf";
[] execvm "haly.sqf";
[] execvm "fail2.sqf";
[player] execvm "fired.sqf";
[] execvm "tar.sqf";
vene setVehicleLock "LOCKED";
{
if ((side _x) == independent) then {
sleep 0.1;
	_x setBehaviour "safe";
	};
} forEach allunits;


player addAction ["<t color='#FF0000'>Take documents</t>", "deletevehicle tieto; removeallactions player; doku=true", [],1,true,true,"","player distance tieto < 2"];

sleep 5;


waitUntil {!alive dealer and !fail2};
sleep 7;
p1 sidechat "Arrow to Bishop. Be adviced, Grandi is down, I repeat Grandi is down.";
p1 sideradio "down";
sleep 2;
call BIS_fnc_liveFeedTerminate;
sleep 5;
if (!doku) then {
	hq sidechat "Roger that. Proceed to the documents.";
	hq sideradio "down1";
} else {
	hq sidechat "Roger that. Proceed to the extraction";
	hq sideradio "down2";
};
sleep 15;
[h2,p1] execvm "feed.sqf";







