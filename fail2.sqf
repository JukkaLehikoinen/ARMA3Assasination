waitUntil {fail2};
sleep 3;
hq sidechat "Bishop to Arrow. Grandi got away... Focus to the documents";
hq sideradio "dealeraway";
sleep 2;
call BIS_fnc_liveFeedTerminate;
sleep 10;
[h2,p1] execvm "feed.sqf";
