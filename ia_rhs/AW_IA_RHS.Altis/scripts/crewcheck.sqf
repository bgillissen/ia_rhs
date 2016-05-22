// Original pilotcheck by Kamaradski [AW]. 
// Since then been tweaked by many hands!
// Notable contributors: chucky [allFPS], Quiksilver.

_crews = ["rhsusf_army_ocp_crewman"];

waitUntil {player == player};

_iamcrew = ({typeOf player == _x} count _crews) > 0;

/* Remove comments and insert UIDs into the whitelist to exempt individuals from this script
_uid = getPlayerUID player;

_whitelist = [
				//"76561198030235789" //ben
			 ];

if (_uid in _whitelist) exitWith {};
*/

while { true } do {
	_oldvehicle = vehicle player;
	waitUntil {vehicle player != _oldvehicle};

	if(vehicle player != player) then {
		_veh = vehicle player;

		//------------------------------ tanks and IFV are reserved to crew only
		//player groupChat _veh kindOf;
		if ( (_veh isKindOf "Tank") || (_veh isKindOf "IFV")  ) then {
			if(!_iamcrew) then {
				_forbidden = [driver _veh];
				if (player in _forbidden) then {
					systemChat "You must be part of the tank crew to be driver";
					player action ["getOut", _veh];
				};
				_forbidden = [gunner _veh];
				if (player in _forbidden) then {
					systemChat "You must be part of the tank crew to be gunner";
					player action ["getOut", _veh];
				};
				_forbidden = [commander _veh];
				if (player in _forbidden) then {
					systemChat "You must be part of the tank crew to be commander";
					player action ["getOut", _veh];
				};
			};
		};
	};
};

