_tele = _this select 0;
_caller = _this select 1;
 
_caller setPos [(getPos greenisland1 select 0) - 1.09031, (getPos greenisland1 select 1) + 1.38445];
private _az = getDir greenisland1;
_caller setDir _az;