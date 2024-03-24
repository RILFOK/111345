_tele = _this select 0;
_caller = _this select 1;

_caller setPos [(getPos baseutf select 0) - 0.7, (getPos baseutf select 1) - 1.8];
private _az = getDir baseutf;
_caller setDir _az;
