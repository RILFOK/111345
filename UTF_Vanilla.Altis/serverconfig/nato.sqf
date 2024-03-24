
/*
	--------------------------------------------------------------
	Список Техники, пехоты, конфиг СПН, список городов - исключений,
	а так же настройка количества триггеров, рестарта. 
	
	Укрепы на ключевые точки менять в папке broturrets


	АЛТИС 
------------

	-------------------------------------------------------Haron

*/


/* Конфиг миссии _trigger_hn_config1: 1. параметр - массив городов-исключений, 2. - количество триггеров. 
3. - команда после триггеров ( малый/большой рестарт )  #restart или #restartserver */

private _trigger_hn_config1 = [["Gravia","Telos","Anthrakia","Delfinaki"], 2, "#restart"]; 

missionNameSpace setVariable ["_trigger_hn_config1",_trigger_hn_config1];
//--------------------------------------------------------------


// Список кастомных триггеров 

private _trigger_hn_customs1 = [[[25414.8,20340.5], "Электростанция"],[[23548.7,16436.8], "Охролимни"],[[21910.6,14836.9], "Лимни"],[[14955.4,11119.3], "Фаронаки"],[[7335.64,11429.2], "Эдесса"],
								[[8349.19,10805.3], "Электростанция Эдесса"],[[6433.79,12186.9], "Айос-Панайотис"],[[6171.93,16248.8], "Фабрика"],[[5408.33,17915.1], "Гори"],
								[[7521.16,18316], "Айос-Минас"],[[6539.1,20036.3], "Свалка"],[[11204.2,8712.01], "Разрушенный замок"],[[12298.7,8899.3],"Наблюдательный пункт"],
								[[11668.4,7583.52], "Скопос"],[[9355.5,8143.47], "Сфака"], [[13419.983,11889.748], "Макриниси"] ,[[23877.21,23714.938], "Сидерас"] ,
								[[3640.155,10269.765], "Атанос"]];
								
missionNamespace setvariable ["_trigger_hn_customs1",_trigger_hn_customs1];

//СПН 
//-------------------------------------------------------------
missionNamespace setvariable ["_trigger_hn_spn1","true" configClasses(configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_ReconTeam") apply {getText (_x>>"vehicle")},true];


//Пехота в триггере штабе и за станками 
//----------------------------------------------------------
missionNameSpace setVariable ["_trigger_hn_shta_defence",[
	"B_Soldier_SL_F",
	"B_soldier_AR_F",
	"B_HeavyGunner_F",
	"B_soldier_AAR_F",
	"B_soldier_M_F",
	"B_Sharpshooter_F",
	"B_soldier_LAT_F",
	"B_medic_F"
],true];


//Пехота в триггере
//------------------------------------------------------------
missionNameSpace setVariable ["infantry",[
"B_Soldier_GL_F",
"B_engineer_F",
"B_Soldier_TL_F",
"B_Soldier_SL_F",
"B_medic_F",
"B_soldier_repair_F",
"B_officer_F",
"B_Soldier_A_F",
"B_soldier_AAR_F",
"B_soldier_AAA_F",
"B_soldier_AAA_F",
"B_soldier_AAA_F",
"B_soldier_AAA_F",
"B_soldier_AAT_F",
"B_soldier_AAT_F",
"B_soldier_AAT_F",
"B_soldier_AAT_F",
"B_soldier_AAT_F",
"B_soldier_AR_F",
"B_soldier_AA_F",
"B_soldier_AT_F",
"B_soldier_exp_F",
"B_soldier_M_F",
"B_Soldier_F",
"B_soldier_LAT_F" ,
"B_HeavyGunner_F" ,
"B_soldier_UAV_F" ,
"B_Sharpshooter_F"
],true];
//------------------------------------------------------------


// десантники 
//------------------------------------------------------------
missionNameSpace setVariable ["usmc_infantry",[
"B_Soldier_SL_F",
"B_medic_F",
"B_soldier_repair_F",
"B_officer_F",
"B_Soldier_A_F",
"B_soldier_AAR_F",
"B_soldier_AAA_F",
"B_soldier_AAA_F",
"B_soldier_AAA_F",
"B_soldier_AAT_F",
"B_soldier_AAT_F",
"B_soldier_AAT_F",
"B_soldier_AAT_F",
"B_soldier_AR_F",
"B_soldier_AA_F",
"B_soldier_AT_F",
"B_soldier_exp_F",
"B_soldier_M_F",
"B_Soldier_F",
"B_soldier_LAT_F"
],true];
//----------------------------------------------------------------



//Все колесное - хантера, бомжи,маршалы, рино
//------------------------------------------------------------
missionNameSpace setVariable ["Car", [
"B_MRAP_01_gmg_F",
"B_MRAP_01_hmg_F",
"B_LSV_01_AT_F",
"B_G_Offroad_01_AT_F",
"B_APC_Tracked_01_AA_F",
"B_AFV_Wheeled_01_up_cannon_F",
"B_G_Offroad_01_armed_F",
"B_T_LSV_01_armed_CTRG_F",
"B_T_LSV_01_armed_CTRG_F"
],true];

//------------------------------------------------------------

//Все гусеничное - танки, зенитки, пантеры, бобкеты
missionNameSpace setVariable ["Tank",[
"B_APC_Wheeled_01_cannon_F",
"B_APC_Tracked_01_CRV_F",
"B_APC_Tracked_01_rcws_F",
"B_MBT_01_cannon_F",
"B_MBT_01_TUSK_F",
"B_T_MBT_01_cannon_F",
"B_T_MBT_01_TUSK_F",
"B_T_APC_Tracked_01_AA_F",
"B_MBT_01_TUSK_F",
"B_AFV_Wheeled_01_up_cannon_F",
"B_APC_Tracked_01_AA_F"
/*,
"B_MBT_01_arty_F",
"B_MBT_01_mlrs_F"*/
],true];
//------------------------------------------------------------


// Арта !
//------------------------------------------------------------
missionNameSpace setVariable ["Arty",[
"B_MBT_01_arty_F"
],true];

//Снаряды для арты
missionNameSpace setVariable ["Arty_hn_mag",[
"32Rnd_155mm_Mo_shells","4Rnd_155mm_Mo_guided"

],true];
//------------------------------------------------------------


// гусеничная техника, которая спавнится на допке ( зенитка/сламмер )
//------------------------------------------------------------
missionNameSpace setVariable ["_Side_Tank",[
"B_APC_Tracked_01_rcws_F" ,
"B_APC_Tracked_01_CRV_F" 
],true];
//------------------------------------------------------------

// легкая техника, которая спавнится на допке ( хантер и сапог )
//------------------------------------------------------------
missionNameSpace setVariable ["_Side_light",[
"B_MRAP_01_gmg_F" , 
"B_MRAP_01_hmg_F" ,
"B_G_Offroad_01_armed_F" ,
"B_G_Offroad_01_AT_F"
],true];
//------------------------------------------------------------


//Первым строго прописывать тяжелый вертолет (блекфут/апач), а потом пауни (СОБЛЮДАТЬ ПОРЯДОК! можно добавить больше боевых вертолетов)
//------------------------------------------------------------
missionNameSpace setVariable ["EnemyHelli",[
"B_Heli_Attack_01_dynamicLoadout_F",
"B_Heli_Light_01_dynamicLoadout_F"
],true];
//------------------------------------------------------------


// Десантный чинук
//------------------------------------------------------------
missionNameSpace setVariable ["EnemyHelliParadrop",["B_Heli_Transport_03_unarmed_F"],true];
//------------------------------------------------------------

// Госта
//------------------------------------------------------------
missionNamespace setVariable ["gosta",["B_Heli_Transport_01_F"],true];
//------------------------------------------------------------



// прописать строго один истребитель и один штурмовик ( СОБЛЮДАТЬ ПОРЯДОК ). БОЛЬШЕ САМОЛЕТОВ СЮДА НЕ ДОБАВЛЯТЬ !
//------------------------------------------------------------
missionNameSpace setVariable ["EnemyAir",["B_Plane_Fighter_01_F","B_Plane_CAS_01_dynamicLoadout_F"],true];
//------------------------------------------------------------



// прописать строго 2 истребителя ( можно одинаковые ). БОЛЬШЕ ДВУХ НЕЛЬЗЯ
//------------------------------------------------------------
missionNameSpace setVariable ["EnemyAirAA",["B_Plane_Fighter_01_F", "I_Plane_Fighter_03_AA_F"],true];
//------------------------------------------------------------

