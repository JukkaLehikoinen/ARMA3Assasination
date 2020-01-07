_h=(_this select 0);
target=(_this select 1);
sleep 4;
hq sidechat "Bishop to Arrow. We are monitoring the progress of the mission via satellite.";
hq sideradio "satelliitti";
sleep 3;
[h2, p1, p1, 2] call BIS_fnc_liveFeed;

while {alive target} do {
targetkoordi=getpos target;
_h setpos [targetkoordi # 0, targetkoordi # 1, 20];
sleep 0.01;
};

sleep 7;
call BIS_fnc_liveFeedTerminate;