[] spawn {

	waitUntil {!isNull player};
	waitUntil {player == player};
	waitUntil {
		sleep 0.1;
		_haveSwRadio = call TFAR_fnc_haveSWRadio;
		_haveLrRadio = call TFAR_fnc_haveLRRadio;
		_unableUseRadio = player getVariable ["tf_unable_to_use_radio", false];
		_haveLrRadio or _haveSwRadio or _unableUseRadio
	};
 
	_unableUseRadio = player getVariable ["tf_unable_to_use_radio", false];
 
	if (_unableUseRadio) exitWith {};
	
	sleep 2;
	_haveLrRadio = call TFAR_fnc_haveLRRadio;
		
	if ( _haveLrRadio ) then {
		[(call TFAR_fnc_activeLrRadio), 1, "50"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 2, "60"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 3, "70"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 4, "80"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 5, "90"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 6, "100"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 7, "110"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 8, "120"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 9, "130"] call TFAR_fnc_SetChannelFrequency;
		systemChat "LongRange Frequencies set";
	};
	
	sleep 2;
	_haveSwRadio = call TFAR_fnc_haveSWRadio;
	
	if ( _haveSwRadio ) then {
		[(call TFAR_fnc_activeSwRadio), 1, "300"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 2, "310"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 3, "320"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 4, "330"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 5, "340"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 6, "350"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 7, "360"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 8, "370"] call TFAR_fnc_SetChannelFrequency;
		systemChat "ShortWave Frequencies set";
	};

	player addEventHandler ["GetInMan", {
		_veh = _this select 2;
		_pos = _this select 1;		
		if ( _pos == "cargo" ) exitWith{}; 
		_haveVehRadio =  _veh call TFAR_fnc_hasVehicleRadio;
		if ( _haveVehRadio ) then {
			[(call TFAR_fnc_activeLrRadio), 1, "50"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 2, "60"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 3, "70"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 4, "80"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 5, "90"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 6, "100"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 7, "110"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 8, "120"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 9, "130"] call TFAR_fnc_SetChannelFrequency;
			systemChat "Vehicle Frequencies set";
		}; 
	}];
};