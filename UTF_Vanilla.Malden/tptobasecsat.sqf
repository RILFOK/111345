_tele = _this select 0;
_caller = _this select 1;

_caller setPos [(getPos basecsat select 0) - 1.5  , (getPos basecsat select 1) + 1];
private _az = getDir basecsat;
_caller setDir _az;