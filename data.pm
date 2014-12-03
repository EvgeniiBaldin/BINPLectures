#!/usr/bin/perl -w
# only data structure (for including)

#base dir
$torrentpath="/Space/Lectures/torrent";

#tracker list for announce
@trackerlist=qw{udp://tracker.openbittorrent.com:80
                udp://tracker.publicbt.com:80
                udp://tracker.istole.it:80
                udp://tracker.ccc.de:80};


# Теория сильных взаимодействий (лекции, профессор Фадин В.С., 2014 г.)
$dir{QCD} ="QCD_Lectures_Fadin_Spring_2014";
$dir1080p{QCD} ="QCD_Lectures_Fadin_Spring_2014_(1080p)";
$comment1080p{QCD}="QCD Fadin V.S., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{QCD}="NSUphyslect-QCD-Fadin-1080p.torrent";

$dir720p{QCD} ="QCD_Lectures_Fadin_Spring_2014_(720p)";
$comment720p{QCD}="QCD Fadin V.S., NSU Lectures on Physics (720p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{QCD}="NSUphyslect-QCD-Fadin-720p.torrent";

$dirsrc{QCD} ="QCD_Lectures_Fadin_Spring_2014_(src)";
$commentsrc{QCD}="QCD Fadin V.S., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{QCD}="NSUphyslect-QCD-Fadin-source.torrent";

$category{QCD}="Education";
$tags{QCD}="Fadin,QCD";
$name{"QCD-1"}="QCD_Fadin_Lecture01";
$title{"QCD-1"}="QCD Fadin V.S. Lecture N 1";
$summary{"QCD-1"}="Кварковая модель. Калибровочный принцип. Цветовая группа SU(N). Изотопическая группа SU(2). Неприводимые представления изотопической группы. G-чётность. Гиперзаряд. Соотношение Гелл-Манна — Нисидзимы.";
$name{"QCD-2"}="QCD_Fadin_Lecture02";
$title{"QCD-2"}="QCD Fadin V.S. Lecture N 2";

$summary{"QCD-2"}="Унитарная симметрия. Флейворная группа SU(3). Свойства группSU(3) и SU(N). Матрицы псевдоскалярных и векторных мезонов. Омега-фи (omega-phi) смешивание. Массовые формулы. Невылетание цвета. Мезоны и барионы. Мотивация для N_C=3. Экзотические состояния. Эффективные лагранжианы адронных распадов.";
$name{"QCD-3"}="QCD_Fadin_Lecture03";
$title{"QCD-3"}="QCD Fadin V.S. Lecture N 3";
$summary{"QCD-3"}="Лагранжиан КХД. Правила Фейнмана для КХД. Фундаментальное и присоединённое представления. Элементы цветовой алгебры. Рассеяние кварка на кварке, кварка на антикварке, глюона на кварке, глюона на глюоне. Реджевская асимптотика сечений. Понятие о партонах.";
$name{"QCD-4"}="QCD_Fadin_Lecture04";
$title{"QCD-4"}="QCD Fadin V.S. Lecture N 4";
$summary{"QCD-4"}="Оценки для партонных и адронных сечений при рассеянии на большие углы. Пион-пионное, пион-нуклонное, нуклон-нуклонное рассеяние. Оценки для адронных формфакторов. Судаковский двойной логарифм. Теория возмущений в КХД. Перенормировка КХД в схеме overline{MS}. Размерностная регуляризация. Параметризация Фейнмана. Интегрирование в D-мерном импульсном пространстве. Перенормировки полей КХД и функций Грина. Перенормировка заряда. Бета-функция (функция Гелл-Манна—Лоу) в КХД. Бета-функция в однопетлевом приближении. Асимптотическая свобода.";
$name{"QCD-5"}="QCD_Fadin_Lecture05";
$title{"QCD-5"}="QCD Fadin V.S. Lecture N 5";
$summary{"QCD-5"}="Бегущая константа связи. Уравнение Гелл-Манна—Лоу. Асимптотическая свобода. Лямбда КХД (Lambda_{QCD}). Тяжёлые кварконии. Потенциал взаимодействия нерелятивистских кварков. Квантовые числа и распады кваркониев. Чармонии. J/psi-мезон.";
$name{"QCD-6"}="QCD_Fadin_Lecture06";
$title{"QCD-6"}="QCD Fadin V.S. Lecture N 6";
$summary{"QCD-6"}="Сечения резонансов. Узкие резонансы. Учёт излучения фотона. Излучение в начальном состоянии (ISR). Модель векторной доминантности (МВД). Распады тяжёлых кваркониев. Соотношения между ширинами распада кваркониев. Сокращение расходимостей в достаточно инклюзивных процессах. Магнитно-дипольные распады мезонов. Масса кварка.";
$name{"QCD-7"}="QCD_Fadin_Lecture07";
$title{"QCD-7"}="QCD Fadin V.S. Lecture N 7";
$summary{"QCD-7"}="Токи векторных мезонов. МВД. Связь констант для rho-, omega- и phi-мезонов. Формфактор pi-мезона. Распад rho-мезона в два pi-мезона и в электрон-позитронную пару. Рассеяние лептонов на адронах. Глубоконеупругое рассеяние. Лептонный и адронный тензор. Структурные функции (W_1, W_2 и F_1, F_2). Упругое рассеяние: дираковские (саксовские) формфакторы. Электрические и магнитные формфакторы. Эксперименты по исследованию двухфотонного вклада. Бьёркеновский скейлинг. Слабая зависимость от Q^2. Асимптотическая свобода и партоны.";
$name{"QCD-8"}="QCD_Fadin_Lecture08";
$title{"QCD-8"}="QCD Fadin V.S. Lecture N 8";
$summary{"QCD-8"}="Глубоконеупругое рассеяние. Партонные функции распределения. Спин партонов. Соотношение Каллана—Гросса. Число партонов в партоне. Функции расщепления (ядра Альтарелли—Паризи). Уравнение (ДГЛАП) на партонные функции распределения при изменении Q^2. Функции расщепления в КХД. Валентные и «морские» кварки. Вклад виртуальных поправок в диагональные функции расщепления.";
$name{"QCD-9"}="QCD_Fadin_Lecture09";
$title{"QCD-9"}="QCD Fadin V.S. Lecture N 9";
$summary{"QCD-9"}="Уравнения эволюции ДГЛАП. Адронные струи. Функция фрагментации (доля адрона в партоне). Валентные и «морские» кварки. Меллиновские моменты партонных функций распределения. Решение уравнения ДГЛАП для несинглетных и синглетных моментов. Поведение моментов при j близких к 1. Проблема суммирования [alpha_sln(1/x)]^n при малых x. Область применимости уравнения ДГЛАП.";
$name{"QCD-10"}="QCD_Fadin_Lecture10";
$title{"QCD-10"}="QCD Fadin V.S. Lecture N 10";
$summary{"QCD-10"}="Константы связи в КЭД и КХД. Адронный тензор W_{mu nu} и его представление через коммутатор токов. Область вблизи светового конуса. Операторное разложение. Особенности вильсоновских коэффициентов. Твист оператора. Операторы твиста два. Связь тензора W_{mu nu} с амплитудой T_{mu nu}. Дисперсионный интеграл для T_{mu nu} и связь с моментами структурных функций (F_{1,2}). Матричные элементы локальных операторов и их зависимость от mu. Мультипликативная перенормировка операторов. Уравнение ренорм-группы. Аномальная размерность операторов. Зависимость вильсоновских коэффициентов от Q^2. Смешивание синглетных операторов при перенормировке. Связь аномальных размерностей с моментами ядер Альтарелли—Паризи.";
$name{"QCD-11"}="QCD_Fadin_Lecture11";
$title{"QCD-11"}="QCD Fadin V.S. Lecture N 11";
$summary{"QCD-11"}="Процессы электрон-позитронной аннигиляции в адроны. Инклюзивные сечения. Величина R. Адронный тензор R_{mu nu}. Ведущая роль малых расстояний. Связь полного сечения и R_{mu nu}. R в теории возмущений. Теорема Киношиты. Инфракрасные расходимости. Операторное разложение для R. Непертурбативные вклады. Нетривиальная структура вакуума КХД. Глюонный конденсат. Струйные события. Сечение для двух струй: виртуальные и реальные сингулярности. Дифференциальное сечение трёхструйного события. Сечения на пороге.";
$name{"QCD-12"}="QCD_Fadin_Lecture12";
$title{"QCD-12"}="QCD Fadin V.S. Lecture N 12";
$summary{"QCD-12"}="Процессы электрон-позитронной аннигиляции в адроны. Экспериментальное открытие глюона в струйных событиях. Инклюзивные спектры. Инклюзивное сечение процесса с образованием фиксированного адрона P. Представление сечения в партонной модели. Функции фрагментации (число адронов в партоне). Операторное разложение в следующем за главным логарифмическом приближении (СГЛП): неоднозначность, связанная с зависимостью от масштаба перенормировки. Уравнение на функции фрагментации. Вычисление множественности (среднее количество адронов типа P): переход к моментам M_j(Q^2), сингулярность при x=0, эффект когерентности излучения мягких глюонов, суммирование ряда теории возмущений в дважды логарифмическом приближении. Поведение моментов при j→1. Эффект «горбатого плато» в области малых x в спектрах. Дисперсионные правила сумм. Вакуумные конденсаты. Нетривиальная структура вакуума КХД. Непертурбативные (невозмущенческие) эффекты. Дисперсионная связь R и P (поляризационного оператора). Необходимость введения глюонного конденсата.";
$name{"QCD-13"}="QCD_Fadin_Lecture13";
$title{"QCD-13"}="QCD Fadin V.S. Lecture N 13";
$summary{"QCD-13"}="Дисперсионное правило сумм для распада J/psi-мезона: дисперсионные интегралы A_n, приближение узких резонансов, нахождение ширины распада J/psi в e^+e^-. Проблемы для A_n при больших n. Необходимость введения глюонного конденсата и его вклад в A_n. Пропагатор кварка в фоновом поле. Ренорм-инвариантность alpha_s(G^a_{mu nu})^2. Правила сумм для rho-мезонов. Изовекторный ток. Вклад в поляризационный оператор глюонного и кваркового конденсатов. Спонтанное нарушение симметрии. Теорема Голдстоуна. Спонтанное нарушение непрерывных симметрий. Механизм Хиггса. Киральная симметрия безмассового лагранжиана КХД. Псевдоголдстоуновские бозоны. Киральный (аксиальный) ток. Нуклонные матричные элементы кирального тока. Нуклонные матричные элементы аксиального тока: формфакторы g_a, h_a. Иллюстрация теоремы Голдстоуна: наличие pi-мезонного полюса в формфакторе h_a.";
$name{"QCD-14"}="QCD_Fadin_Lecture14";
$title{"QCD-14"}="QCD Fadin V.S. Lecture N 14";
$summary{"QCD-14"}="Соотношение между формфакторами g_a и h_a. Бета-распад нейтрона и экспериментальные значения g_a. pi-мезонный полюс матричного элемента аксиального тока, f_{pi}, константа g_{pi N N}. Вывод соотношения Голдбергера-Треймана (СГТ). Гипотеза частичного сохранения аксиального тока (ЧСАТ). Вывод СГТ из ЧСАТ. Кварковый конденсат. Редукционные формулы (связь матричных элементов с функциями Грина). Связь между массой pi-мезонов, вакуумными конденсатами и массами u- и d-кварков. Формула Гелл-Манна—Окубо (массовая формула). Несколько слов о Великом Объединении, группа SU(5).";
$name{"QCD-15"}="QCD_Fadin_Lecture15";
$title{"QCD-15"}="QCD Fadin V.S. Lecture N 15";
$summary{"QCD-15"}="Функциональные интегралы в квантовой механике: представление для функции Грина. Лагранжев и гамильтонов подход. Представление через функциональный интеграл коррелятора в квантовой теории поля (бозонные поля). Двухточечные корреляторы и гауссовы функциональные интегралы. Производящие функционалы для функции Грина. Источники. Функциональные производные. Грассманова алгебра. Грассмановы поля. Дифференцирование и интегрирование грассмановых полей. Гауссовы функциональные интегралы для грассмановых полей.";
$name{"QCD-16"}="QCD_Fadin_Lecture16";
$title{"QCD-16"}="QCD Fadin V.S. Lecture N 16";
$summary{"QCD-16"}="Духи Фаддеева-Попова. Калибровочная инвариантность действия. Групповая мера для калибровочной группы. Инфинитезимальные калибровочные преобразования. Проблемы канонического квантования. Фиксация калибровки в функциональном пространстве, det[M]. Калибровочная инвариантность детерминанта. Факторизация бесконечной меры в функциональном интеграле. Введение духовых полей для представления det[M]. Член, фиксирующий калибровку. Духи в КЭД. Духов член в лагранжиане для калибровки Лоренца.";


# Квантовая электродинамика (лекции, профессор Фадин В.С., 2013 г.)
$dir{QED} ="QED_Lectures_Fadin_Autumn_2013";

$dir1080p{QED} ="QED_Lectures_Fadin_Autumn_2013_(1080p)";
$comment1080p{QED}="QED Fadin V.S., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{QED}="NSUphyslect-QED-Fadin-1080p.torrent";

$dir720p{QED} ="QED_Lectures_Fadin_Autumn_2013_(720p)";
$comment720p{QED}="QED Fadin V.S., NSU Lectures on Physics (720p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{QED}="NSUphyslect-QED-Fadin-720p.torrent";

$dirsrc{QED} ="QED_Lectures_Fadin_Autumn_2013_(src)";
$commentsrc{QED}="QED Fadin V.S., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{QED}="NSUphyslect-QED-Fadin-source.torrent";

# Суперсимметрия в квантовой теории поля (спецкурс профессора Черняка
# В.Л., 2013 г.)
$dir{SUSY}="SUSY_Lectures_Chernyak_Autumn_2013";
$dir1080p{SUSY}="SUSY_Lectures_Chernyak_Autumn_2013_(1080p)";
$comment1080p{SUSY}="SUSY Chernyak V.L., NSU Lectures on Physics (1080p  libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{SUSY}="NSUphyslect-SUSY-Chernyak-1080p.torrent";

$dir720p{SUSY}="SUSY_Lectures_Chernyak_Autumn_2013_(720p)";
$comment720p{SUSY}="SUSY Chernyak V.L., NSU Lectures on Physics (720p  libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{SUSY}="NSUphyslect-SUSY-Chernyak-720p.torrent";

$dirsrc{SUSY}="SUSY_Lectures_Chernyak_Autumn_2013_(src)";
$commentsrc{SUSY}="SUSY Chernyak V.L., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{SUSY}="NSUphyslect-SUSY-Chernyak-source.torrent";

# Теория электрослабых взаимодействий (лекции, профессор Черняк В.Л.,
# 2013 г.)
$dir{EW}  ="EW_Lectures_Chernyak_Autumn_2013";
$dir1080p{EW}  ="EW_Lectures_Chernyak_Autumn_2013_(1080p)";
$comment1080p{EW}="EW Chernyak V.L., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{EW}="NSUphyslect-EW-Chernyak-1080p.torrent";

$dir720p{EW}  ="EW_Lectures_Chernyak_Autumn_2013_(720p)";
$comment720p{EW}="EW Chernyak V.L., NSU Lectures on Physics (720p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{EW}="NSUphyslect-EW-Chernyak-720p.torrent";

$dirsrc{EW}  ="EW_Lectures_Chernyak_Autumn_2013_(src)";
$commentsrc{EW}="EW Chernyak V.L., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{EW}="NSUphyslect-EW-Chernyak-source.torrent";


# Физика элементарных частиц (лекции, профессор Сербо В.Г., 2013 г.)
$dir{HEP} ="HEP_Lectures_Serbo_Autumn_2013";
$dir1080p{HEP} ="HEP_Lectures_Serbo_Autumn_2013_(1080p)";
$comment1080p{HEP}="HEP Serbo V.G., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{HEP}="NSUphyslect-HEP-Serbo-1080p.torrent";

$dir720p{HEP} ="HEP_Lectures_Serbo_Autumn_2013_(720p)";
$comment720p{HEP}="HEP Serbo V.G., NSU Lectures on Physics (720p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{HEP}="NSUphyslect-HEP-Serbo-720p.torrent";

$dirsrc{HEP} ="HEP_Lectures_Serbo_Autumn_2013_(src)";
$commentsrc{HEP}="HEP Serbo V.G., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{HEP}="NSUphyslect-HEP-Serbo-source.torrent";


# Физика элементарных частиц (семинары, доцент Сковпень Ю.И., 2014 г.)
$dir{HEPs}="Introduction_to_HEP_Seminars_Skovpen";
$dir1080p{HEPs}="HEP_Seminars_Skovpen_Autumn_2014_(1080p)";
$comment1080p{HEPs}="HEPs Skovpen Yu.I., NSU Seminars on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{HEPs}="NSUphyslect-HEPs-Skovpen-1080p.torrent";

$dir720p{HEPs}="HEP_Seminars_Skovpen_Autumn_2014_(720p)";
$comment720p{HEPs}="HEPs Skovpen Yu.I., NSU Seminars on Physics (720p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{HEPs}="NSUphyslect-HEPs-Skovpen-720p.torrent";

$dirsrc{HEPs}="HEP_Seminars_Skovpen_Autumn_2014_(src)";
$commentsrc{HEPs}="HEPs Skovpen Yu.I., NSU Seminars on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{HEPs}="NSUphyslect-HEPs-Skovpen-source.torrent";

$category{HEPs}="Education";
$tags{HEPs}="Skovpen,HEP";
$name{"HEPs-1"}="HEP_Skovpen_Seminar01";
$title{"HEPs-1"}="HEP Skovpen Yu.I. Seminar N 1";
$summary{"HEPs-1"}="";
$name{"HEPs-2"}="HEP_Skovpen_Seminar02";
$title{"HEPs-2"}="HEP Skovpen Yu.I. Seminar N 2";
$summary{"HEPs-2"}="";
$name{"HEPs-3"}="HEP_Skovpen_Seminar03";
$title{"HEPs-3"}="HEP Skovpen Yu.I. Seminar N 3";
$summary{"HEPs-3"}="";
$name{"HEPs-4"}="HEP_Skovpen_Seminar04";
$title{"HEPs-4"}="HEP Skovpen Yu.I. Seminar N 4";
$summary{"HEPs-4"}="";
$name{"HEPs-5"}="HEP_Skovpen_Seminar05";
$title{"HEPs-5"}="HEP Skovpen Yu.I. Seminar N 5";
$summary{"HEPs-5"}="";
$name{"HEPs-6"}="HEP_Skovpen_Seminar06";
$title{"HEPs-6"}="HEP Skovpen Yu.I. Seminar N 6";
$summary{"HEPs-6"}="";
$name{"HEPs-7"}="HEP_Skovpen_Seminar07";
$title{"HEPs-7"}="HEP Skovpen Yu.I. Seminar N 7";
$summary{"HEPs-7"}="";
$name{"HEPs-8"}="HEP_Skovpen_Seminar08";
$title{"HEPs-8"}="HEP Skovpen Yu.I. Seminar N 8";
$summary{"HEPs-8"}="";
$name{"HEPs-9"}="HEP_Skovpen_Seminar09";
$title{"HEPs-9"}="HEP Skovpen Yu.I. Seminar N 9";
$summary{"HEPs-9"}="";
$name{"HEPs-10"}="HEP_Skovpen_Seminar10";
$title{"HEPs-10"}="HEP Skovpen Yu.I. Seminar N 10";
$summary{"HEPs-10"}="";
$name{"HEPs-11"}="HEP_Skovpen_Seminar11";
$title{"HEPs-11"}="HEP Skovpen Yu.I. Seminar N 11";
$summary{"HEPs-11"}="";
$name{"HEPs-12"}="HEP_Skovpen_Seminar12";
$title{"HEPs-12"}="HEP Skovpen Yu.I. Seminar N 12";
$summary{"HEPs-12"}="";
$name{"HEPs-13"}="HEP_Skovpen_Seminar13";
$title{"HEPs-13"}="HEP Skovpen Yu.I. Seminar N 13";
$summary{"HEPs-13"}="";
$name{"HEPs-14"}="HEP_Skovpen_Seminar14";
$title{"HEPs-14"}="HEP Skovpen Yu.I. Seminar N 14";
$summary{"HEPs-14"}="";
$name{"HEPs-15"}="HEP_Skovpen_Seminar15";
$title{"HEPs-15"}="HEP Skovpen Yu.I. Seminar N 15";
$summary{"HEPs-15"}="";

# Избранные вопросы нелинейной и хаотической динамики. (спецкурс
# доцента Жирова О.В., 2014 г.)
$dir{NaCD}="Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014";

$dir1080p{NaCD}="Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014_(1080p)";
$comment1080p{NaCD}="NaCD Zhirov O.V., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{NaCD}="NSUphyslect-NaCD-Zhirov-1080p.torrent";

$dir720p{NaCD}="Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014_(720p)";
$comment720p{NaCD}="NaCD Zhirov O.V., NSU Lectures on Physics (720p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{NaCD}="NSUphyslect-NaCD-Zhirov-720p.torrent";

$dirsrc{NaCD}="Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014_(src)";
$commentsrc{NaCD}="NaCD Zhirov O.V., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{NaCD}="NSUphyslect-NaCD-Zhirov-source.torrent";

# Двухфотонная физика (лекции, профессор Сербо В.Г., 2014 г.)
$dir{GG}  ="Gamma-Gamma_Serbo_Lecture";

$dir1080p{GG}  ="Gamma-Gamma_Serbo_Lecture_Autumn_2014_(1080p)";
$comment1080p{GG}="GG Serbo V.G., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{GG}="NSUphyslect-GG-Serbo-1080p.torrent";

$dir720p{GG}  ="Gamma-Gamma_Serbo_Lecture_Autumn_2014_(720p)";
$comment720p{GG}="GG Serbo V.G., NSU Lectures on Physics (720p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{GG}="NSUphyslect-GG-Serbo-720p.torrent";

$dirsrc{GG}  ="Gamma-Gamma_Serbo_Lecture_Autumn_2014_(src)";
$commentsrc{GG}="GG Serbo V.G., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{GG}="NSUphyslect-GG-Serbo-source.torrent";


# Атомное ядро (лекции, профессор Дмитриев В.Ф., 2014 г.)
$dir{NUC} ="Nucleus_Dmitriev_Lecture";

$dir1080p{NUC} ="Nucleus_Dmitriev_Lecture_Autumn_2014_(1080p)";
$comment1080p{NUC}="NUC Dmitriev V.F., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{NUC}="NSUphyslect-NUC-Dmitriev-1080p.torrent";

$dir720p{NUC} ="Nucleus_Dmitriev_Lecture_Autumn_2014_(720p)";
$comment720p{NUC}="NUC Dmitriev V.F., NSU Lectures on Physics (720p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{NUC}="NSUphyslect-NUC-Dmitriev-720p.torrent";

$dirsrc{NUC} ="Nucleus_Dmitriev_Lecture_Autumn_2014_(src)";
$commentsrc{NUC}="NUC Dmitriev V.F., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{NUC}="NSUphyslect-NUC-Dmitriev-source.torrent";

$category{NUC}="Education";
$tags{NUC}="Dmitriev,Nucleus";
$name{"NUC-1"}="Nucleus_Dmitriev_Lecture01";
$title{"NUC-1"}="NUC Dmitriev V.F. Lecture N 1";
$summary{"NUC-1"}="";
$name{"NUC-2"}="Nucleus_Dmitriev_Lecture02";
$title{"NUC-2"}="NUC Dmitriev V.F. Lecture N 2";
$summary{"NUC-2"}="";
$name{"NUC-3"}="Nucleus_Dmitriev_Lecture03";
$title{"NUC-3"}="NUC Dmitriev V.F. Lecture N 3";
$summary{"NUC-3"}="";
$name{"NUC-4"}="Nucleus_Dmitriev_Lecture04";
$title{"NUC-4"}="NUC Dmitriev V.F. Lecture N 4";
$summary{"NUC-4"}="";
$name{"NUC-5"}="Nucleus_Dmitriev_Lecture05";
$title{"NUC-5"}="NUC Dmitriev V.F. Lecture N 5";
$summary{"NUC-5"}="";
$name{"NUC-6"}="Nucleus_Dmitriev_Lecture06";
$title{"NUC-6"}="NUC Dmitriev V.F. Lecture N 6";
$summary{"NUC-6"}="";
$name{"NUC-7"}="Nucleus_Dmitriev_Lecture07";
$title{"NUC-7"}="NUC Dmitriev V.F. Lecture N 7";
$summary{"NUC-7"}="";
$name{"NUC-8"}="Nucleus_Dmitriev_Lecture08";
$title{"NUC-8"}="NUC Dmitriev V.F. Lecture N 8";
$summary{"NUC-8"}="";
$name{"NUC-9"}="Nucleus_Dmitriev_Lecture09";
$title{"NUC-9"}="NUC Dmitriev V.F. Lecture N 9";
$summary{"NUC-9"}="";
$name{"NUC-10"}="Nucleus_Dmitriev_Lecture10";
$title{"NUC-10"}="NUC Dmitriev V.F. Lecture N 10";
$summary{"NUC-10"}="";

# Экскурсии в теорию струн (спецкурс ст. преп., к.ф.-м.н. Померанского
# А.А., 2014 г.)
$dir{STR} ="Strings_Lectures_Pomeransky_Autumn";
$dir1080p{STR} ="Strings_Lectures_Pomeransky_2014_(1080p)";
$comment1080p{STR}="STR Pomeransky A.A., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{STR}="NSUphyslect-STR-Pomeransky-1080p.torrent";

$dir720p{STR} ="Strings_Lectures_Pomeransky_2014_(720p)";
$comment720p{STR}="STR Pomeransky A.A., NSU Lectures on Physics (720p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename720p{STR}="NSUphyslect-STR-Pomeransky-720p.torrent";

$dirsrc{STR} ="Strings_Lectures_Pomeransky_2014_(src)";
$commentsrc{STR}="STR Pomeransky A.A., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{STR}="NSUphyslect-STR-Pomeransky-source.torrent";
