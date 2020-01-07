
waitUntil {laskeutuminen};
	[h1, dealer, p1, 0] call BIS_fnc_liveFeed;
	sleep 60;
	call BIS_fnc_liveFeedTerminate;

waitUntil {dealer distance auto < 4};
	[h1, dealer, p1, 0] call BIS_fnc_liveFeed;
	sleep 20;
	call BIS_fnc_liveFeedTerminate;
	sleep 5;
	[h3, dealer, p1, 0] call BIS_fnc_liveFeed;
	
	
