_tele = _this select 0;
_caller = _this select 1;
 
_caller setPos [(getPos baseutf select 0) + 1.8, (getPos baseutf select 1) - 2];
private _az = getDir baseutf;
_caller setDir _az;