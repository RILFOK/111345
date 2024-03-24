_tele = _this select 0;
_caller = _this select 1;
 
_caller setPos [(getPos greenisland2 select 0) + 0.0308883, (getPos greenisland2 select 1) - 2.079672];
private _az = getDir greenisland2;
_caller setDir _az;