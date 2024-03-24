if(!isServer) exitWith {};
    params ["_marker","_distance","_direction","_height","_usmc_csat"]; 

	private _type = selectRandom csatHelliParadrop; //class name вертолета
	
	private _markpos = getMarkerPos _marker; //позиция маркера точки

      private _paradist = 200;
      
   //позиция-здесь вертолет заспавнится
    private _spawnpos = [(_markpos select 0) + ((sin _direction) * _distance), (_markpos select 1) + ((cos _direction) * _distance), _height];
    private _dirveh = _direction + 180;
	
	[_type,_dirveh,_spawnpos,_height,_markpos,_paradist,_usmc_csat] spawn srv_fnc_desantcsat;
	
	sleep 3;

    
[_markpos,_spawnpos,_dirveh] spawn srv_fnc_Spr_cobracsat;

