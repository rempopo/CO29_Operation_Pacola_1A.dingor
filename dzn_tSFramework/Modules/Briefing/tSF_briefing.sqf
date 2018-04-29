//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Situation:")
"По полученным данным, в заброшенном аэропорту вблизи El Villon в данный момент происходит разгрузка украденного с американского военного склада вооружения. El Villon наводнили боевики, проконтролировать все это прибыл глава картеля, за которым мы долгое время ведем охоту. Усугубляет ситуацию то, что местная полиция в доле с картелем и обеспечивает дополнительную охрану города и аэропорта. Сегодня мы попытаемся убить двух зайцев сразу: убрать главу картеля, а также захватить местного коррумпированного офицера полиции.

Разведка отметила предполагаемые места, где может находится глава картеля и офицер."
END

TOPIC("A. Enemy Forces:")
"Бойцы картеля - нерегулярные силы.<br />        около 1 взвода.<br />Отряды местной полиции - регулярные силы.<br />        около 1 отделения."
END

TOPIC("B. Friendly Forces:")
"Специальная оперативная группа ЦРУ.<br />        1'1 - 9 чел.<br />        1'1 - 9 чел.<br />        1'1 - 9 чел.<br />        1'6 - 2 чел."
END

TOPIC("II. Mission:")
"1. Ликвидировать главу картеля.<br />2. Захватить и вывезти офицера мексиканской полиции.<br />3. Вернуться на исходную позицию.<br />4. Уничтожить самолеты картеля (опционально).<br />"
END

TOPIC("III. Execution:")
"По плану командира."
END

TOPIC("IV. Service Support:")
"2x - SUV вооруженных M134.<br />2x - SUV (невооруженный).<br />3x - UH-1H (транспортный).<br /><br />"
END

TOPIC("V. Command & Signal:")
"PL NET 50<br />1'1 - SR CH 1<br />1'2 - SR CH 2"
END

TOPIC("VI. Mission notes:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. GSO notes:")
"-"
END
};

ADD_TOPICS
