_tele = _this select 0;
_caller = _this select 1;
 
_caller setPos [(getPos baseavia select 0) - 1.8, (getPos baseavia select 1) - 1.8];
private _az = getDir baseavia;
_caller setDir _az;
