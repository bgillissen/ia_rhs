/*
@filename: initPlayerLocal.sqf
Author:
	
	Quiksilver

Last modified:

	29/10/2014 ArmA 1.32 by Quiksilver
	
Description:

	Client scripts and event handlers.
______________________________________________________*/

enableSentences FALSE;															
enableSaving [FALSE,FALSE];
player enableFatigue FALSE;

//------------------------------------------------ Handle parameters

for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};

//------------------- client executions

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;

_null = [] execvm "scripts\vehicle\crew\crew.sqf"; 								// vehicle HUD
//_null = [] execVM 'scripts\group_manager.sqf';									// group manager
_null = [] execVM "scripts\restrictions.sqf"; 									// gear restrictions and safezone
_null = [] execVM "scripts\pilotCheck.sqf"; 									// pilots only
_null = [] execVM "scripts\jump.sqf";											// jump action
_null = [] execVM "scripts\misc\diary.sqf";										// diary tabs	
_null = [] execVM "scripts\icons.sqf";											// blufor map tracker Quicksilver
_null = [] execVM "scripts\VAclient.sqf";										// Virtual Arsenal
_null = [] execVM "scripts\misc\Intro.sqf";										// AW intro screen
_null = [] execVM "scripts\voice_control\voiceControl.sqf";						// Voice Control
if (PARAMS_HeliRope != 0) then {call compile preprocessFileLineNumbers "scripts\vehicle\fastrope\zlt_fastrope.sqf";};

[] call QS_fnc_respawnPilot;


//-------------------- PVEHs

"addToScore" addPublicVariableEventHandler
{
	((_this select 1) select 0) addScore ((_this select 1) select 1);
};

tawvd_disablenone = false;

//--------------------- Arty Computer and Squad Manager

enableEngineArtillery false;
if (player isKindOf "rhsusf_army_ocp_fso") then {
	enableEngineArtillery true;
};

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

//--------------------- Billboard Image Randomiser

	_imageList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14];
	_bill1 = _imageList call BIS_fnc_selectRandom;
	if (_bill1 == 1) then {Bill_1 setObjectTexture [0,"media\images\billboard1.paa"]};
	if (_bill1 == 2) then {Bill_1 setObjectTexture [0,"media\images\billboard2.paa"]};
	if (_bill1 == 3) then {Bill_1 setObjectTexture [0,"media\images\billboard3.paa"]};
	if (_bill1 == 4) then {Bill_1 setObjectTexture [0,"media\images\billboard4.paa"]};
	if (_bill1 == 5) then {Bill_1 setObjectTexture [0,"media\images\billboard5.paa"]};
	if (_bill1 == 6) then {Bill_1 setObjectTexture [0,"media\images\billboard6.paa"]};
	if (_bill1 == 7) then {Bill_1 setObjectTexture [0,"media\images\billboard7.paa"]};
	if (_bill1 == 8) then {Bill_1 setObjectTexture [0,"media\images\billboard8.paa"]};
	if (_bill1 == 9) then {Bill_1 setObjectTexture [0,"media\images\billboard9.paa"]};
	if (_bill1 == 10) then {Bill_1 setObjectTexture [0,"media\images\billboard10.paa"]};
	if (_bill1 == 11) then {Bill_1 setObjectTexture [0,"media\images\billboard11.paa"]};
	if (_bill1 == 12) then {Bill_1 setObjectTexture [0,"media\images\billboard12.paa"]};
	if (_bill1 == 13) then {Bill_1 setObjectTexture [0,"media\images\billboard13.paa"]};
	if (_bill1 == 14) then {Bill_1 setObjectTexture [0,"media\images\billboard14.paa"]};
	
	
	_imageList2 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14];
	_bill2 = _imageList2 call BIS_fnc_selectRandom;
	if (_bill2 == 1) then {Bill_2 setObjectTexture [0,"media\images\billboard1.paa"]};
	if (_bill2 == 2) then {Bill_2 setObjectTexture [0,"media\images\billboard2.paa"]};
	if (_bill2 == 3) then {Bill_2 setObjectTexture [0,"media\images\billboard3.paa"]};
	if (_bill2 == 4) then {Bill_2 setObjectTexture [0,"media\images\billboard4.paa"]};
	if (_bill2 == 5) then {Bill_2 setObjectTexture [0,"media\images\billboard5.paa"]};
	if (_bill2 == 6) then {Bill_2 setObjectTexture [0,"media\images\billboard6.paa"]};
	if (_bill2 == 7) then {Bill_2 setObjectTexture [0,"media\images\billboard7.paa"]};
	if (_bill2 == 8) then {Bill_2 setObjectTexture [0,"media\images\billboard8.paa"]};
	if (_bill2 == 9) then {Bill_2 setObjectTexture [0,"media\images\billboard9.paa"]};
	if (_bill2 == 10) then {Bill_2 setObjectTexture [0,"media\images\billboard10.paa"]};
	if (_bill2 == 11) then {Bill_2 setObjectTexture [0,"media\images\billboard11.paa"]};
	if (_bill2 == 12) then {Bill_2 setObjectTexture [0,"media\images\billboard12.paa"]};
	if (_bill2 == 13) then {Bill_2 setObjectTexture [0,"media\images\billboard13.paa"]};
	if (_bill2 == 14) then {Bill_2 setObjectTexture [0,"media\images\billboard14.paa"]};
	
//--------------------- Squad Url Hint

_infoArray = squadParams player;    
_infoSquad = _infoArray select 0;
_squad = _infoSquad select 1;
_infoName = _infoArray select 1;
_name = _infoName select 1; 
_email = _infoSquad select 2;


// replace line below with your Squad xml's email
if (_email == "hello@taskforceunicorn.com") then {

_GlobalHint = format["<t align='center' size='2.2' color='#FF0000'>%1<br/></t><t size='1.4' color='#33CCFF'>%2</t><br/>has joined the server, To become a TFU member, apply to taskforceunicorn.com</t><br/>",_squad,_name];

[_GlobalHint] remoteExec ["AW_fnc_globalHint",0,false];
} else {};


turretname = {
     private ["_result", "_getAnyMagazines", "_findRecurse", "_class"];
     _result = [];
     _getAnyMagazines = {
         private ["_weapon", "_mags"];
         _weapon = configFile >> "CfgWeapons" >> _this;
         _mags = [];
         {
             _mags = _mags + getArray (
                 (if (_x == "this") then { _weapon } else { _weapon >> _x }) >> "magazines"
             )
         } foreach getArray (_weapon >> "muzzles");
         _mags
     };
     _findRecurse = {
         private ["_root", "_class", "_path", "_currentPath"];
         _root = (_this select 0);
         _path = +(_this select 1);
         for "_i" from 0 to count _root -1 do {
             _class = _root select _i;
             if (isClass _class) then {
                 _currentPath = _path + [_i];
                 {
                     _result set [count _result, [_x, _x call _getAnyMagazines, _currentPath, str _class]];
                 } foreach getArray (_class >> "weapons");
                 _class = _class >> "turrets";
                 if (isClass _class) then {
                     [_class, _currentPath] call _findRecurse;
                 };
             };
         };
     };
     _class = (
         configFile >> "CfgVehicles" >> (
             switch (typeName _this) do {
                 case "STRING" : {_this};
                 case "OBJECT" : {typeOf _this};
                 default {nil}
             }
         ) >> "turrets"
     );
     [_class, []] call _findRecurse;
     _result;
 };