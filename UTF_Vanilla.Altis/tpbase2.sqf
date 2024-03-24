_tele = _this select 0;
_caller = _this select 1;

_caller setPos [(getPos tpport select 0) - 1.8, (getPos tpport select 1) - 0.3];
private _az = getDir tpport;
_caller setDir _az;