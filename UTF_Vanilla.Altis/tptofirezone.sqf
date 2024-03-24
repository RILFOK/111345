_tele = _this select 0;
_caller = _this select 1;
 
_caller setPos [(getPos firezone select 0) + 1.8, (getPos firezone select 1) - 1.8];
private _az = getDir firezone;
_caller setDir _az;