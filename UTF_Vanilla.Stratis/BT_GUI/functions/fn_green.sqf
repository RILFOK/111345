disableSerialization;

_spisok = ["Richard SMID", //Bars
		   "Джозеф Райт", //ViperZ
		   "Псих", //P5iH
		   "Хасан", //evgeniy35rus
		   "Isaac Foster", //SkillPropil
		   "Имрат Кутаев" //Egor
		   ];
createDialog "BT_list_green";
waitUntil {!isNull (findDisplay 9992);};

_ctrl = (findDisplay 9992) displayCtrl 1555;
{
	_ctrl lbAdd _x;
} forEach _spisok;

BT_green_info =
{
disableSerialization;
_ctrl3 = (findDisplay 9992) displayCtrl 1055;
_ctrl2 = (findDisplay 9992) displayCtrl 1066;
_id = lbCurSel 1555;
//_class = lbData [7, _id];
_roz = "В розыске";
_lik = "Ликвидирован";
_info0 = "";
_info1 = "";

if (_id == 0) then
{
	_ctrl3 ctrlSetStructuredText parseText "Имя: <t color='#ff0000'>Richard SMID</t><br/> Служил в элитном спецназе, был специолист по разведке, имел множество наград разных степеней. В Августе 2030 г. Попал в плен, его предали Командиры и выдали его место положение на секретной квартире Richard не смог вырваться и провел в плену много времени. Его сдал комондир который был одним из руководителей синдиката, который так-же проводил тайные опыты над бойцами. Richard  узнал об этом но стать частью эусперемнта отказался и мог помешать дольнейшем планам Комондира. Проведя в плену долгое время Richard смог вырваться но так как он много знал о произашетшем он не смног жить спокойно нормальной жизнью так как на него охотились разные синдекаты и группировки. Richard занялся контрабондой оружия под прикрытием чтоб выйти на Комондира. Но не получилось он был вынужден уехать, но мог выжить только в одном случае стать наемником и скрываться. Наемником он решил стать так как комондир имел конкурентов и некоторые выше стоящие лица начали догадоваться что комондир предатель. Richard искал себе подобных (наемников) только в месте они могли выполнить заказ на Комондира, но онеще не поступил. Richard слышал что на одном острове есть группа наемником он отправился туда чтоб договориться о помощи друг другу, он хотел присоединиться к ним и помогать в разных заданиях, но попросил о помощи когда поступит заказ на Комондира они должны ему помочь. Прибывши на остров он встретил Имрата Кутаева, он бы главным у наемников, тот принял Richrda выслушал и они смогли договориться.";
	ctrlSetText [1066, format["%1",_roz]];
	_ctrl2 ctrlSetTextColor [0,1,0,1];
}
else
{
	if (_id == 1) then
	{
		_ctrl3 ctrlSetStructuredText parseText "Имя: <t color='#ff0000'>Джозеф Райт</t><br/>Возраст: <t color='#ff0000'>29 лет</t><br/>Звание: <t color='#ff0000'>Сержант</t><br/>Место службы: <t color='#ff0000'>Военно-пехотные силы</t><br/>Отряд: <t color='#ff0000'>Морпехи</t><br/>История:<br/>Джозеф Райт родился в штате Вашингтон, США. Закончил обучение в Говардском Университете. После высшего образования пошел в Военные силы США на обучение снайпера. Дослужившись до Сержанта, Джозефа направили в Афганистан, отряд Морпехи. Спустя год ведения боевых действий, Джозефа отправили обратно в США.Изначально Джозеф невзлюбил командование в армии, в связи с чем, после Афганистана, он разорвал военный контракт и при помощи своих личных связей сбежал на остров Алтис, в следствии чего, Джозефа разыскивает военная полиция за нарушение военного договора, а так-же убийство Подполковника ЗАСЕКРЕЧЕНО. Со времен ведения войны, у него осталась его любимая снайперская винтовка, которой он очень дорожит, ну и некоторое обмундирование в виде бронежилета и шлема. Джозеф очень любит военный арсенал и выбирает оружие только на свое усмотрение. Заинтересованный успехами Джозефа, ЗАСЕКРЕЧЕНО предложил ему работу в качестве наемника. Джозеф согласился, после чего был записан в группу наемников.  Джозеф предпочитает работать один, вдалеке от остальных, в связи с чем у него появляется немало проблем... Но однако, Джозеф смог наладить некие отношения с армией НАТО, в следствии чего они прикрывают большинство его тёмных дел.<br/><br/>Психологический портрет:<br/>Джозеф хладнокровен и малоэмоционален с незнакомцами. Поддержит любую компанию знакомых в разговоре. Часто разбавляет неловкие/трудные ситуации юмором.  Любит рисовать, и нередко его рисунки пересекаются с событиями из его жизни. Сильно боится высоты, в связи с чем мало летает на вертолетах/самолетах.(изменено)";
		ctrlSetText [1066, format["%1",_roz]];
		_ctrl2 ctrlSetTextColor [0,1,0,1];
	}
	else
	{
		if (_id == 2) then
		{
			_ctrl3 ctrlSetStructuredText parseText "Имя: <t color='#ff0000'>Псих</t><br/>Происхождение: <t color='#ff0000'>Дагестан</t><br/>Гражданство: <t color='#ff0000'>РФ</t><br/>Языки: <t color='#ff0000'>Русский, Дагестанский, Английский, Французский</t><br/>Биография:<br/>прошёл 4 горячих точки, обучен на всей технике, знаком со всеми видами стрелкового оружия, прекрасно обращаться с взрывчаткой, но правительство его страны предала оставив умирать на острове Алтис, куда он прибыл с секретным заданием: захватить в плен лидера группировки BLACK SKULL(точно не помню как пишеться). После провального захвата главы ВS, был сам захвачен в плен, с последующим вступлением в террористическую организация. В этой группировке он любит заниматься похищением людей и их пыткой.";
			ctrlSetText [1066, format["%1",_roz]];
			_ctrl2 ctrlSetTextColor [0,1,0,1];
		}
		else
		{
			if (_id == 3) then
			{
			_ctrl3 ctrlSetStructuredText parseText "Имя: <t color='#ff0000'>Хасан</t><br/>Характеристика:<br/>По характеру Хасан очень дерзкий,из-за одного оскорбления может полезть в драку,общается с людьми всегда на высоком тоне,склонен к вороству,убийству людей.Его лицо почти всегда имеет какую-то строгую ноту,По телосложению Хасан атлетичен, Таковых увлечений нет,ворует,стреляет,деретcя,иногда читает реп.Родился на острове Алтис,отец был бандитом,состоял в банде [BlackSkull],мать умерла.Отцу было тяжело воспитывать ребенка,но он справлялся.Однажды на район отца был проезд мимо сил красных,стреляли с автоматов,пистолетов,от услышанных выстрелов ребенок громко заплакал,отец достав пистолет начал стрелять в ответ,но его убили,после увиденного члены банды BS начали сами воспитывать ребенка. В возрасте 6 лет пошел учиться, как все дети, в школу недалеко от дома, но в ней не доучился, т.к. учился Хасанчик очень плохо,и плохо себя вел на уроках,дрался с одноклассниками,взрывал петарды в туалете,ребеночек был Так-себе.И поэтом выгнали в возрасте 15-ти лет.Так как выгнали из школы,он решил вступить в группировку ,группировку своего покойного отца,что бы продолжить дело банды и отомстить за отца.В банде не отличался,всегда носил одежду фиолетового,и платок того же цвета,так-же в возрасте 17-ти лет была первая перестрелка,первое оружие из которого он стрелял был Ак-47(укороченный),этот автомат остался от отца.После перестрелки с Красными, в кругах банды он был более уважаемым членом,ведь такая перестрелка была очень важна для банды,они перестреляли почти весь район красных В настоящие время находиться в банде BlackSkull,часто перестрелки,грабежи,кража людей,район не спокойный.Всегда помню! Я страх! Я всегда помню! Я охотник! Всегда помню! Я подлец! Всегда помню! Я ничто!";
			ctrlSetText [1066, format["%1",_roz]];
			_ctrl2 ctrlSetTextColor [0,1,0,1];
			}
			else
			{
				if (_id == 4) then
				{
					_ctrl3 ctrlSetStructuredText parseText "Имя: <t color='#ff0000'>Isaac Foster</t><br/>Биография:<br/>родился в городе Хьюстон штата Техас, с детства Айзек увлекался военными игрушками и часто просил его отца, служившего в ВВС США,  рассказывать о том кто такие военные и что они делают. Из-за этого, когда он вырос, пошёл добровольцем в ряды армии США, сначала был салагой. Затем прошёл КМБ ( Курс молодого бойца), с помощью своих выдающихся способностей, получил возможность попасть  в специальный отряд ВМС США «SEAL»(«Морские котики»), служа там , его специализацией было снайпер-подрывник. За время его службы, был награждён медалью «За выдающуюся службу» (ВМС США), на его счету было около десятка застреленных командиров отряда боевиков международной исламистской террористической организации «Аль-Каида». Также нельзя было не отметить его достижений в качестве подрывника. Грамотно раскладывай или, устанавливая мины на дорогах, не раз подрывал колонны с боеприпасами и бойцами, идущими на помощь к своим собратьям. После 6 лет службы, он решил перевестись в ВВС США, чтобы понять, что чувствовал его отец, управляя самолет или вертолетом, естественно у него была квалификация пилота, которую он подтверждал, каждый год, и заслуги перед отечеством тоже были, поэтому не составило большего труда перевестись туда. Около 5 лет, он был пилотом боевых самолетов, находившихся на авианосце «Авраам Линкольн». На своем Lockheed Martin F-35 Lightning II, он совершил более 1000 вылетов, из них более 500 боевых, по уничтожению вражеских сил. За свою выдающуюся службу был награжден Медалью Почёта (США). Вернувшись домой , он обнаруживает тела мертвых родителей и ещё двух человек в черных масках, стоящих у трупов родителей, схватившись за нож он их убивает. Услышав сирену полиции, он сбегает из дома и прячется у своего друга. На следующий день его объявляют в розыск, за убийство. Через какое-то время, посетив могилу родителей, он принимает обет молчания и решает сбежать из США на Алтис, где присоединяется к BlackSkull, в котором его друг заместитель главы отряда. А дальше…";
					ctrlSetText [1066, format["%1",_roz]];
					_ctrl2 ctrlSetTextColor [0,1,0,1];
				}
				else
				{
					if (_id == 5) then
					{
						_ctrl3 ctrlSetStructuredText parseText "Имя: <t color='#ff0000'>Имрат Кутаев</t><br/>Биография: <br/>На протяжении долгого времени служил в организации по предотвращению последствий военных действий IDAP. специализировался на обезвреживании миных полей и ликвидации огнестрельного оружия. С каждым годом службы все сильнее убеждался, что добиться мирного урегулирования военных конфликтов невозможно. У него сложилась своя идеология: война закончится тогда, когда сильный полностью уничтожит слабого 5 лет назад опираясь на свои убеждения начал незаконную торговлю оружием, добытым силами организации. когда его незаконная деятельность была вскрыта, его объявили в розыск. он стал врагом для всех стран и официальных организаций. Тогда он занялся поддержкой незаконных формирований. с 2032 года обосновался на о. Алтис. Занимался нелегальным сбором информации о силах ООН и НАТО, в дальнейшем продавал эту информацию партизанам. в 2034 году когда обе стороны узнали о его деятельности, объвили его военным преступником, и начали проводить специальные операции по его ликвидации. в связи с этим он примкнул к группировке Black Skull.<br/><br/>Характеристика:<br/>Специализируется на уничтожении небольших боевых групп, а так же на уничтожении снайперских пар. Имеет опыт в уничтожении бронированной техники. со времен службы у него остались противопехотные и противотанковые мины. Активно занимается подрывной деятельностью.";
						ctrlSetText [1066, format["%1",_roz]];
						_ctrl2 ctrlSetTextColor [0,1,0,1];
					};
				};
			};
		};
	};
};
};
 