; ModuleID = 'bc/Cipher/camellia.bc'
source_filename = "Cipher/camellia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"mark\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [18 x i8] c"Cipher/camellia.c\00", section "llvm.metadata"
@SIGMA = internal constant [12 x i32] [i32 -1600231809, i32 1003262091, i32 -1233459112, i32 1286239154, i32 -957401297, i32 -380665154, i32 1426019237, i32 -237801700, i32 283453434, i32 -563598051, i32 -1336506174, i32 -1276722691], align 16, !dbg !0
@Camellia_SBOX = internal constant [4 x [256 x i32]] [[256 x i32] [i32 1886416896, i32 -2105376256, i32 741092352, i32 -320017408, i32 -1280068864, i32 656877312, i32 -1061109760, i32 -437918464, i32 -454761472, i32 -2054847232, i32 1465341696, i32 892679424, i32 -353703424, i32 202116096, i32 -1364283904, i32 1094795520, i32 589505280, i32 -269488384, i32 1802201856, i32 -1819045120, i32 1162167552, i32 421075200, i32 -1515870976, i32 555819264, i32 -303174400, i32 235802112, i32 1330597632, i32 1313754624, i32 488447232, i32 1701143808, i32 -1835888128, i32 -1111638784, i32 -2038004224, i32 -1195853824, i32 -1347440896, i32 -1886417152, i32 2088532992, i32 -336860416, i32 522133248, i32 -825307648, i32 1044266496, i32 808464384, i32 -589505536, i32 1600085760, i32 1583242752, i32 -976894720, i32 185273088, i32 437918208, i32 -1499027968, i32 -505290496, i32 960051456, i32 -892679680, i32 -707406592, i32 1195853568, i32 1566399744, i32 1027423488, i32 -640034560, i32 16843008, i32 1515870720, i32 -690563584, i32 1364283648, i32 1448498688, i32 1819044864, i32 1296911616, i32 -1953789184, i32 218959104, i32 -1701144064, i32 1717986816, i32 -67372288, i32 -858993664, i32 -1330597888, i32 757935360, i32 1953788928, i32 303174144, i32 724249344, i32 538976256, i32 -252645376, i32 -1313754880, i32 -2071690240, i32 -1717987072, i32 -538976512, i32 1280068608, i32 -875836672, i32 -1027423744, i32 875836416, i32 2122219008, i32 1987474944, i32 84215040, i32 1835887872, i32 -1212696832, i32 -1448498944, i32 825307392, i32 -774778624, i32 387389184, i32 67372032, i32 -673720576, i32 336860160, i32 1482184704, i32 976894464, i32 1633771776, i32 -555819520, i32 454761216, i32 286331136, i32 471604224, i32 842150400, i32 252645120, i32 -1667458048, i32 370546176, i32 1397969664, i32 404232192, i32 -218959360, i32 572662272, i32 -16843264, i32 1145324544, i32 -808464640, i32 -1296911872, i32 -1010580736, i32 -1246382848, i32 2054846976, i32 -1852731136, i32 606348288, i32 134744064, i32 -387389440, i32 -1465341952, i32 1616928768, i32 -50529280, i32 1768515840, i32 1347440640, i32 -1431655936, i32 -791621632, i32 -1600086016, i32 2105376000, i32 -1583243008, i32 -1987475200, i32 1650614784, i32 -1751673088, i32 1414812672, i32 1532713728, i32 505290240, i32 -1785359104, i32 -522133504, i32 -256, i32 1684300800, i32 -757935616, i32 269488128, i32 -993737728, i32 0, i32 1212696576, i32 -1549556992, i32 -134744320, i32 1970631936, i32 -606348544, i32 -1970632192, i32 50529024, i32 -421075456, i32 -623191552, i32 151587072, i32 1061109504, i32 -572662528, i32 -1802202112, i32 -2021161216, i32 1549556736, i32 -2088533248, i32 33686016, i32 -842150656, i32 1246382592, i32 -1869574144, i32 858993408, i32 1936945920, i32 1734829824, i32 -151587328, i32 -202116352, i32 -1650615040, i32 2139062016, i32 -1077952768, i32 -488447488, i32 1381126656, i32 -1684301056, i32 -656877568, i32 640034304, i32 -926365696, i32 926365440, i32 -960051712, i32 993737472, i32 -2122219264, i32 -1768516096, i32 1869573888, i32 1263225600, i32 320017152, i32 -1094795776, i32 1667457792, i32 774778368, i32 -370546432, i32 2038003968, i32 -1482184960, i32 -1936946176, i32 -1616929024, i32 1852730880, i32 -1128481792, i32 -1903260160, i32 690563328, i32 -168430336, i32 -101058304, i32 -1229539840, i32 791621376, i32 -33686272, i32 -1263225856, i32 1499027712, i32 2021160960, i32 -1734830080, i32 101058048, i32 1785358848, i32 -404232448, i32 1179010560, i32 1903259904, i32 -1162167808, i32 -724249600, i32 623191296, i32 -1414812928, i32 1111638528, i32 -2004318208, i32 -1566400000, i32 -1920103168, i32 -84215296, i32 1920102912, i32 117901056, i32 -1179010816, i32 1431655680, i32 -117901312, i32 -286331392, i32 -1397969920, i32 168430080, i32 909522432, i32 1229539584, i32 707406336, i32 1751672832, i32 1010580480, i32 943208448, i32 -235802368, i32 -1532713984, i32 1077952512, i32 673720320, i32 -741092608, i32 2071689984, i32 -1145324800, i32 -909522688, i32 1128481536, i32 -1044266752, i32 353703168, i32 -471604480, i32 -1381126912, i32 -185273344, i32 2004317952, i32 -943208704, i32 -2139062272, i32 -1633772032], [256 x i32] [i32 1886388336, i32 741081132, i32 -1280114509, i32 -1061158720, i32 -454819612, i32 1465319511, i32 -353763094, i32 -1364328274, i32 589496355, i32 1802174571, i32 1162149957, i32 -1515913051, i32 -303234835, i32 1330577487, i32 488439837, i32 -1835925358, i32 -2038038394, i32 -1347485521, i32 2088501372, i32 522125343, i32 1044250686, i32 -589561636, i32 1583218782, i32 185270283, i32 -1499070298, i32 960036921, i32 -707460907, i32 1566376029, i32 -640089895, i32 1515847770, i32 1364262993, i32 1819017324, i32 -1953824629, i32 -1701183334, i32 -67436293, i32 -1330642768, i32 1953759348, i32 724238379, i32 -252706576, i32 -2071723900, i32 -539033377, i32 -875888437, i32 875823156, i32 1987444854, i32 1835860077, i32 -1448542039, i32 -774831919, i32 67371012, i32 336855060, i32 976879674, i32 -555876130, i32 286326801, i32 842137650, i32 -1667497828, i32 1397948499, i32 -219021070, i32 -16908034, i32 -808517425, i32 -1010630461, i32 2054815866, i32 606339108, i32 -387448600, i32 1616904288, i32 1768489065, i32 -1431699286, i32 -1600126816, i32 -1583284063, i32 1650589794, i32 1414791252, i32 505282590, i32 -522190624, i32 1684275300, i32 269484048, i32 0, i32 -1549598557, i32 1970602101, i32 -1970667382, i32 -421134106, i32 151584777, i32 -572718883, i32 -2021195641, i32 -2088566653, i32 -842202931, i32 -1869610864, i32 1936916595, i32 -151650058, i32 -1650655075, i32 -1078001473, i32 1381105746, i32 -656932648, i32 -926416696, i32 -960102202, i32 -2122252159, i32 1869545583, i32 320012307, i32 1667432547, i32 -370605847, i32 -1482227545, i32 -1616969569, i32 -1128529732, i32 690552873, i32 -101121799, i32 791609391, i32 -1263271756, i32 2021130360, i32 101056518, i32 -404291353, i32 1903231089, i32 -724303660, i32 -1414856533, i32 -2004352888, i32 -1920139123, i32 1920073842, i32 -1179057991, i32 -117964552, i32 -1398013780, i32 909508662, i32 707395626, i32 1010565180, i32 -235863823, i32 1077936192, i32 -741146413, i32 -1145372485, i32 1128464451, i32 353697813, i32 -1381171027, i32 2004287607, i32 -2139094912, i32 -2105409406, i32 -320077588, i32 656867367, i32 -437976859, i32 -2054881147, i32 892665909, i32 202113036, i32 1094778945, i32 -269549329, i32 -1819082605, i32 421068825, i32 555810849, i32 235798542, i32 1313734734, i32 1701118053, i32 -1111686979, i32 -1195900744, i32 -1886453617, i32 -336920341, i32 -825360178, i32 808452144, i32 1600061535, i32 -976944955, i32 437911578, i32 -505347871, i32 -892731190, i32 1195835463, i32 1027407933, i32 16842753, i32 -690618154, i32 1448476758, i32 1296891981, i32 218955789, i32 1717960806, i32 -859045684, i32 757923885, i32 303169554, i32 538968096, i32 -1313800015, i32 -1718026087, i32 1280049228, i32 -1027473214, i32 2122186878, i32 84213765, i32 -1212743497, i32 825294897, i32 387383319, i32 -673775401, i32 1482162264, i32 1633747041, i32 454754331, i32 471597084, i32 252641295, i32 370540566, i32 404226072, i32 572653602, i32 1145307204, i32 -1296957262, i32 -1246429003, i32 -1852768111, i32 134742024, i32 -1465384792, i32 -50593540, i32 1347420240, i32 -791674672, i32 2105344125, i32 -1987510135, i32 -1751711593, i32 1532690523, i32 -1785397099, i32 -65281, i32 -757989166, i32 -993787708, i32 1212678216, i32 -134807305, i32 -606404389, i32 50528259, i32 -623247142, i32 1061093439, i32 -1802239852, i32 1549533276, i32 33685506, i32 1246363722, i32 858980403, i32 1734803559, i32 -202178317, i32 2139029631, i32 -488505118, i32 -1684340581, i32 640024614, i32 926351415, i32 993722427, i32 -1768554346, i32 1263206475, i32 -1094844226, i32 774766638, i32 2037973113, i32 -1936981876, i32 1852702830, i32 -1903296370, i32 -168492811, i32 -1229586250, i32 -33750787, i32 1499005017, i32 -1734868840, i32 1785331818, i32 1178992710, i32 -1162215238, i32 623181861, i32 1111621698, i32 -1566441310, i32 -84279046, i32 117899271, i32 1431634005, i32 -286392082, i32 168427530, i32 1229520969, i32 1751646312, i32 943194168, i32 -1532755804, i32 673710120, i32 2071658619, i32 -909573943, i32 -1044315967, i32 -471662365, i32 -185335564, i32 -943259449, i32 -1633812322], [256 x i32] [i32 14737632, i32 328965, i32 5789784, i32 14277081, i32 6776679, i32 5131854, i32 8487297, i32 13355979, i32 13224393, i32 723723, i32 11447982, i32 6974058, i32 14013909, i32 1579032, i32 6118749, i32 8553090, i32 4605510, i32 14671839, i32 14079702, i32 2565927, i32 9079434, i32 3289650, i32 4934475, i32 4342338, i32 14408667, i32 1842204, i32 10395294, i32 10263708, i32 3815994, i32 13290186, i32 2434341, i32 8092539, i32 855309, i32 7434609, i32 6250335, i32 2039583, i32 16316664, i32 14145495, i32 4079166, i32 10329501, i32 8158332, i32 6316128, i32 12171705, i32 12500670, i32 12369084, i32 9145227, i32 1447446, i32 3421236, i32 5066061, i32 12829635, i32 7500402, i32 9803157, i32 11250603, i32 9342606, i32 12237498, i32 8026746, i32 11776947, i32 131586, i32 11842740, i32 11382189, i32 10658466, i32 11316396, i32 14211288, i32 10132122, i32 1513239, i32 1710618, i32 3487029, i32 13421772, i32 16250871, i32 10066329, i32 6381921, i32 5921370, i32 15263976, i32 2368548, i32 5658198, i32 4210752, i32 14803425, i32 6513507, i32 592137, i32 3355443, i32 12566463, i32 10000536, i32 9934743, i32 8750469, i32 6842472, i32 16579836, i32 15527148, i32 657930, i32 14342874, i32 7303023, i32 5460819, i32 6447714, i32 10724259, i32 3026478, i32 526344, i32 11513775, i32 2631720, i32 11579568, i32 7631988, i32 12763842, i32 12434877, i32 3552822, i32 2236962, i32 3684408, i32 6579300, i32 1973790, i32 3750201, i32 2894892, i32 10921638, i32 3158064, i32 15066597, i32 4473924, i32 16645629, i32 8947848, i32 10461087, i32 6645093, i32 8882055, i32 7039851, i32 16053492, i32 2302755, i32 4737096, i32 1052688, i32 13750737, i32 5329233, i32 12632256, i32 16382457, i32 13816530, i32 10526880, i32 5592405, i32 10592673, i32 4276545, i32 16448250, i32 4408131, i32 1250067, i32 12895428, i32 3092271, i32 11053224, i32 11974326, i32 3947580, i32 2829099, i32 12698049, i32 16777215, i32 13158600, i32 10855845, i32 2105376, i32 9013641, i32 0, i32 9474192, i32 4671303, i32 15724527, i32 15395562, i32 12040119, i32 1381653, i32 394758, i32 13487565, i32 11908533, i32 1184274, i32 8289918, i32 12303291, i32 2697513, i32 986895, i32 12105912, i32 460551, i32 263172, i32 10197915, i32 9737364, i32 2171169, i32 6710886, i32 15132390, i32 13553358, i32 15592941, i32 15198183, i32 3881787, i32 16711422, i32 8355711, i32 12961221, i32 10790052, i32 3618615, i32 11645361, i32 5000268, i32 9539985, i32 7237230, i32 9276813, i32 7763574, i32 197379, i32 2960685, i32 14606046, i32 9868950, i32 2500134, i32 8224125, i32 13027014, i32 6052956, i32 13882323, i32 15921906, i32 5197647, i32 1644825, i32 4144959, i32 14474460, i32 7960953, i32 1907997, i32 5395026, i32 15461355, i32 15987699, i32 7171437, i32 6184542, i32 16514043, i32 6908265, i32 11711154, i32 15790320, i32 3223857, i32 789516, i32 13948116, i32 13619151, i32 9211020, i32 14869218, i32 7697781, i32 11119017, i32 4868682, i32 5723991, i32 8684676, i32 1118481, i32 4539717, i32 1776411, i32 16119285, i32 15000804, i32 921102, i32 7566195, i32 11184810, i32 15856113, i32 14540253, i32 5855577, i32 1315860, i32 7105644, i32 9605778, i32 5526612, i32 13684944, i32 7895160, i32 7368816, i32 14935011, i32 4802889, i32 8421504, i32 5263440, i32 10987431, i32 16185078, i32 7829367, i32 9671571, i32 8816262, i32 8618883, i32 2763306, i32 13092807, i32 5987163, i32 15329769, i32 15658734, i32 9408399, i32 65793, i32 4013373], [256 x i32] [i32 939538488, i32 1090535745, i32 369104406, i32 1979741814, i32 -654255655, i32 -1828678765, i32 1610637408, i32 -234818830, i32 1912631922, i32 -1040137534, i32 -1426019413, i32 -1711236454, i32 1962964341, i32 100664838, i32 1459640151, i32 -1610571616, i32 -1862233711, i32 -150931465, i32 -1258244683, i32 -922695223, i32 -1577016670, i32 -1946121076, i32 -771697966, i32 -1879011184, i32 -167708938, i32 117442311, i32 -1493129305, i32 654321447, i32 -1912566130, i32 -1308577102, i32 1224755529, i32 -570368290, i32 1124090691, i32 1543527516, i32 -687810601, i32 -956250169, i32 1040203326, i32 -184486411, i32 -1895788657, i32 1728079719, i32 520101663, i32 402659352, i32 1845522030, i32 -1358909521, i32 788541231, i32 -503258398, i32 -2063563387, i32 218107149, i32 1392530259, i32 -268373776, i32 -1677681508, i32 1694524773, i32 -369038614, i32 -1560239197, i32 -1375686994, i32 -1644126562, i32 -335483668, i32 -2147450752, i32 754986285, i32 1795189611, i32 -1476351832, i32 721431339, i32 905983542, i32 -1509906778, i32 -989805115, i32 -2046785914, i32 1291865421, i32 855651123, i32 -50266627, i32 1711302246, i32 1476417624, i32 -1778346346, i32 973093434, i32 150997257, i32 -1795123819, i32 268439568, i32 2013296760, i32 -671033128, i32 1107313218, i32 -872362804, i32 -285151249, i32 637543974, i32 -452925979, i32 1627414881, i32 436214298, i32 1056980799, i32 989870907, i32 -2113895806, i32 -1241467210, i32 -620700709, i32 -738143020, i32 -1744791400, i32 -402593560, i32 -1962898549, i32 33554946, i32 -352261141, i32 167774730, i32 738208812, i32 486546717, i32 -1342132048, i32 1862299503, i32 -1929343603, i32 -2013230968, i32 234884622, i32 419436825, i32 -2030008441, i32 1308642894, i32 184552203, i32 -1459574359, i32 201329676, i32 2030074233, i32 285217041, i32 2130739071, i32 570434082, i32 -419371033, i32 1493195097, i32 -520035871, i32 -637478182, i32 1023425853, i32 -939472696, i32 301994514, i32 67109892, i32 1946186868, i32 1409307732, i32 805318704, i32 2113961598, i32 -1275022156, i32 671098920, i32 1426085205, i32 1744857192, i32 1342197840, i32 -1107247426, i32 -805252912, i32 -1006582588, i32 822096177, i32 -889140277, i32 704653866, i32 -1392464467, i32 251662095, i32 -905917750, i32 1879076976, i32 -16711681, i32 838873650, i32 1761634665, i32 134219784, i32 1644192354, i32 0, i32 603989028, i32 -788475439, i32 -83821573, i32 -1174357318, i32 -318706195, i32 1157645637, i32 -2130673279, i32 1929409395, i32 1828744557, i32 -2080340860, i32 -1627349089, i32 -301928722, i32 1241533002, i32 -1023360061, i32 771763758, i32 -1056915007, i32 16777473, i32 -436148506, i32 620766501, i32 1207978056, i32 -1728013927, i32 -1191134791, i32 -1291799629, i32 2063629179, i32 -117376519, i32 -838807858, i32 -1090469953, i32 -553590817, i32 1895854449, i32 687876393, i32 -855585331, i32 1811967084, i32 318771987, i32 1677747300, i32 -1694458981, i32 1660969827, i32 -1660904035, i32 -1073692480, i32 1258310475, i32 -1224689737, i32 -1526684251, i32 -1996453495, i32 1593859935, i32 -1325354575, i32 385881879, i32 -201263884, i32 -1140802372, i32 -754920493, i32 1174423110, i32 -822030385, i32 922761015, i32 1577082462, i32 1191200583, i32 -1811901292, i32 -100599046, i32 -67044100, i32 1526750043, i32 -1761568873, i32 -33489154, i32 1509972570, i32 -1409241940, i32 1006648380, i32 1275087948, i32 50332419, i32 889206069, i32 -218041357, i32 587211555, i32 -1207912264, i32 1560304989, i32 1778412138, i32 -1845456238, i32 -721365547, i32 553656609, i32 1140868164, i32 1358975313, i32 -973027642, i32 2097184125, i32 956315961, i32 -2097118333, i32 -603923236, i32 -1442796886, i32 2080406652, i32 1996519287, i32 1442862678, i32 83887365, i32 452991771, i32 -1543461724, i32 352326933, i32 872428596, i32 503324190, i32 469769244, i32 -134153992, i32 1375752786, i32 536879136, i32 335549460, i32 -385816087, i32 -1124024899, i32 -587145763, i32 -469703452, i32 -1593794143, i32 -536813344, i32 -1979676022, i32 -251596303, i32 -704588074, i32 2046851706, i32 -1157579845, i32 -486480925, i32 1073758272, i32 1325420367]], align 16, !dbg !12
@__const.main.Key = private unnamed_addr constant [17 x i8] c"3141592653589793\00", align 16
@__const.main.charset = private unnamed_addr constant [94 x i8] c"!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\00", align 16

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @Camellia_Ekeygen(i32 %keyBitLength, i8* %rawKey, i32* %k) #0 !dbg !26 {
entry:
  %retval = alloca i32, align 4
  %keyBitLength.addr = alloca i32, align 4
  %rawKey.addr = alloca i8*, align 8
  %k.addr = alloca i32*, align 8
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %_t0 = alloca i32, align 4
  %_t1 = alloca i32, align 4
  %_t2 = alloca i32, align 4
  %_t3 = alloca i32, align 4
  %_t0201 = alloca i32, align 4
  %_t1202 = alloca i32, align 4
  %_t2203 = alloca i32, align 4
  %_t3204 = alloca i32, align 4
  %_t0258 = alloca i32, align 4
  %_t1259 = alloca i32, align 4
  %_t2260 = alloca i32, align 4
  %_t3261 = alloca i32, align 4
  %_t0307 = alloca i32, align 4
  %_t1308 = alloca i32, align 4
  %_t2309 = alloca i32, align 4
  %_t3310 = alloca i32, align 4
  %_t0363 = alloca i32, align 4
  %_t0381 = alloca i32, align 4
  %_t0400 = alloca i32, align 4
  %_t0417 = alloca i32, align 4
  %_t0436 = alloca i32, align 4
  %_t0455 = alloca i32, align 4
  %_t0478 = alloca i32, align 4
  %_t0497 = alloca i32, align 4
  %_t0516 = alloca i32, align 4
  %_t0533 = alloca i32, align 4
  %_t0552 = alloca i32, align 4
  %_t0571 = alloca i32, align 4
  %_t0603 = alloca i32, align 4
  %_t1604 = alloca i32, align 4
  %_t2605 = alloca i32, align 4
  %_t3606 = alloca i32, align 4
  %_t0652 = alloca i32, align 4
  %_t1653 = alloca i32, align 4
  %_t2654 = alloca i32, align 4
  %_t3655 = alloca i32, align 4
  %_t0705 = alloca i32, align 4
  %_t0724 = alloca i32, align 4
  %_t0743 = alloca i32, align 4
  %_t0766 = alloca i32, align 4
  %_t0785 = alloca i32, align 4
  %_t0804 = alloca i32, align 4
  %_t0823 = alloca i32, align 4
  %_t0846 = alloca i32, align 4
  %_t0865 = alloca i32, align 4
  %_t0888 = alloca i32, align 4
  %_t0911 = alloca i32, align 4
  %_t0930 = alloca i32, align 4
  %_t0949 = alloca i32, align 4
  %_t0968 = alloca i32, align 4
  store i32 %keyBitLength, i32* %keyBitLength.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %keyBitLength.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %rawKey, i8** %rawKey.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rawKey.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %rawKey.addr1 = bitcast i8** %rawKey.addr to i8*
  call void @llvm.var.annotation(i8* %rawKey.addr1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 280)
  store i32* %k, i32** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %s0, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %s1, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %s2, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %s3, metadata !45, metadata !DIExpression()), !dbg !46
  %0 = load i8*, i8** %rawKey.addr, align 8, !dbg !47
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !47
  %1 = load i8, i8* %arrayidx, align 1, !dbg !47
  %conv = zext i8 %1 to i32, !dbg !47
  %shl = shl i32 %conv, 24, !dbg !47
  %2 = load i8*, i8** %rawKey.addr, align 8, !dbg !47
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !47
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !47
  %conv3 = zext i8 %3 to i32, !dbg !47
  %shl4 = shl i32 %conv3, 16, !dbg !47
  %xor = xor i32 %shl, %shl4, !dbg !47
  %4 = load i8*, i8** %rawKey.addr, align 8, !dbg !47
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !47
  %5 = load i8, i8* %arrayidx5, align 1, !dbg !47
  %conv6 = zext i8 %5 to i32, !dbg !47
  %shl7 = shl i32 %conv6, 8, !dbg !47
  %xor8 = xor i32 %xor, %shl7, !dbg !47
  %6 = load i8*, i8** %rawKey.addr, align 8, !dbg !47
  %arrayidx9 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !47
  %7 = load i8, i8* %arrayidx9, align 1, !dbg !47
  %conv10 = zext i8 %7 to i32, !dbg !47
  %xor11 = xor i32 %xor8, %conv10, !dbg !47
  store i32 %xor11, i32* %s0, align 4, !dbg !48
  %8 = load i32*, i32** %k.addr, align 8, !dbg !49
  %arrayidx12 = getelementptr inbounds i32, i32* %8, i64 0, !dbg !49
  store i32 %xor11, i32* %arrayidx12, align 4, !dbg !50
  %9 = load i8*, i8** %rawKey.addr, align 8, !dbg !51
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 4, !dbg !51
  %arrayidx13 = getelementptr inbounds i8, i8* %add.ptr, i64 0, !dbg !51
  %10 = load i8, i8* %arrayidx13, align 1, !dbg !51
  %conv14 = zext i8 %10 to i32, !dbg !51
  %shl15 = shl i32 %conv14, 24, !dbg !51
  %11 = load i8*, i8** %rawKey.addr, align 8, !dbg !51
  %add.ptr16 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !51
  %arrayidx17 = getelementptr inbounds i8, i8* %add.ptr16, i64 1, !dbg !51
  %12 = load i8, i8* %arrayidx17, align 1, !dbg !51
  %conv18 = zext i8 %12 to i32, !dbg !51
  %shl19 = shl i32 %conv18, 16, !dbg !51
  %xor20 = xor i32 %shl15, %shl19, !dbg !51
  %13 = load i8*, i8** %rawKey.addr, align 8, !dbg !51
  %add.ptr21 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !51
  %arrayidx22 = getelementptr inbounds i8, i8* %add.ptr21, i64 2, !dbg !51
  %14 = load i8, i8* %arrayidx22, align 1, !dbg !51
  %conv23 = zext i8 %14 to i32, !dbg !51
  %shl24 = shl i32 %conv23, 8, !dbg !51
  %xor25 = xor i32 %xor20, %shl24, !dbg !51
  %15 = load i8*, i8** %rawKey.addr, align 8, !dbg !51
  %add.ptr26 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !51
  %arrayidx27 = getelementptr inbounds i8, i8* %add.ptr26, i64 3, !dbg !51
  %16 = load i8, i8* %arrayidx27, align 1, !dbg !51
  %conv28 = zext i8 %16 to i32, !dbg !51
  %xor29 = xor i32 %xor25, %conv28, !dbg !51
  store i32 %xor29, i32* %s1, align 4, !dbg !52
  %17 = load i32*, i32** %k.addr, align 8, !dbg !53
  %arrayidx30 = getelementptr inbounds i32, i32* %17, i64 1, !dbg !53
  store i32 %xor29, i32* %arrayidx30, align 4, !dbg !54
  %18 = load i8*, i8** %rawKey.addr, align 8, !dbg !55
  %add.ptr31 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !55
  %arrayidx32 = getelementptr inbounds i8, i8* %add.ptr31, i64 0, !dbg !55
  %19 = load i8, i8* %arrayidx32, align 1, !dbg !55
  %conv33 = zext i8 %19 to i32, !dbg !55
  %shl34 = shl i32 %conv33, 24, !dbg !55
  %20 = load i8*, i8** %rawKey.addr, align 8, !dbg !55
  %add.ptr35 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !55
  %arrayidx36 = getelementptr inbounds i8, i8* %add.ptr35, i64 1, !dbg !55
  %21 = load i8, i8* %arrayidx36, align 1, !dbg !55
  %conv37 = zext i8 %21 to i32, !dbg !55
  %shl38 = shl i32 %conv37, 16, !dbg !55
  %xor39 = xor i32 %shl34, %shl38, !dbg !55
  %22 = load i8*, i8** %rawKey.addr, align 8, !dbg !55
  %add.ptr40 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !55
  %arrayidx41 = getelementptr inbounds i8, i8* %add.ptr40, i64 2, !dbg !55
  %23 = load i8, i8* %arrayidx41, align 1, !dbg !55
  %conv42 = zext i8 %23 to i32, !dbg !55
  %shl43 = shl i32 %conv42, 8, !dbg !55
  %xor44 = xor i32 %xor39, %shl43, !dbg !55
  %24 = load i8*, i8** %rawKey.addr, align 8, !dbg !55
  %add.ptr45 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !55
  %arrayidx46 = getelementptr inbounds i8, i8* %add.ptr45, i64 3, !dbg !55
  %25 = load i8, i8* %arrayidx46, align 1, !dbg !55
  %conv47 = zext i8 %25 to i32, !dbg !55
  %xor48 = xor i32 %xor44, %conv47, !dbg !55
  store i32 %xor48, i32* %s2, align 4, !dbg !56
  %26 = load i32*, i32** %k.addr, align 8, !dbg !57
  %arrayidx49 = getelementptr inbounds i32, i32* %26, i64 2, !dbg !57
  store i32 %xor48, i32* %arrayidx49, align 4, !dbg !58
  %27 = load i8*, i8** %rawKey.addr, align 8, !dbg !59
  %add.ptr50 = getelementptr inbounds i8, i8* %27, i64 12, !dbg !59
  %arrayidx51 = getelementptr inbounds i8, i8* %add.ptr50, i64 0, !dbg !59
  %28 = load i8, i8* %arrayidx51, align 1, !dbg !59
  %conv52 = zext i8 %28 to i32, !dbg !59
  %shl53 = shl i32 %conv52, 24, !dbg !59
  %29 = load i8*, i8** %rawKey.addr, align 8, !dbg !59
  %add.ptr54 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !59
  %arrayidx55 = getelementptr inbounds i8, i8* %add.ptr54, i64 1, !dbg !59
  %30 = load i8, i8* %arrayidx55, align 1, !dbg !59
  %conv56 = zext i8 %30 to i32, !dbg !59
  %shl57 = shl i32 %conv56, 16, !dbg !59
  %xor58 = xor i32 %shl53, %shl57, !dbg !59
  %31 = load i8*, i8** %rawKey.addr, align 8, !dbg !59
  %add.ptr59 = getelementptr inbounds i8, i8* %31, i64 12, !dbg !59
  %arrayidx60 = getelementptr inbounds i8, i8* %add.ptr59, i64 2, !dbg !59
  %32 = load i8, i8* %arrayidx60, align 1, !dbg !59
  %conv61 = zext i8 %32 to i32, !dbg !59
  %shl62 = shl i32 %conv61, 8, !dbg !59
  %xor63 = xor i32 %xor58, %shl62, !dbg !59
  %33 = load i8*, i8** %rawKey.addr, align 8, !dbg !59
  %add.ptr64 = getelementptr inbounds i8, i8* %33, i64 12, !dbg !59
  %arrayidx65 = getelementptr inbounds i8, i8* %add.ptr64, i64 3, !dbg !59
  %34 = load i8, i8* %arrayidx65, align 1, !dbg !59
  %conv66 = zext i8 %34 to i32, !dbg !59
  %xor67 = xor i32 %xor63, %conv66, !dbg !59
  store i32 %xor67, i32* %s3, align 4, !dbg !60
  %35 = load i32*, i32** %k.addr, align 8, !dbg !61
  %arrayidx68 = getelementptr inbounds i32, i32* %35, i64 3, !dbg !61
  store i32 %xor67, i32* %arrayidx68, align 4, !dbg !62
  %36 = load i32, i32* %keyBitLength.addr, align 4, !dbg !63
  %cmp = icmp ne i32 %36, 128, !dbg !65
  br i1 %cmp, label %if.then, label %if.end160, !dbg !66

if.then:                                          ; preds = %entry
  %37 = load i8*, i8** %rawKey.addr, align 8, !dbg !67
  %add.ptr70 = getelementptr inbounds i8, i8* %37, i64 16, !dbg !67
  %arrayidx71 = getelementptr inbounds i8, i8* %add.ptr70, i64 0, !dbg !67
  %38 = load i8, i8* %arrayidx71, align 1, !dbg !67
  %conv72 = zext i8 %38 to i32, !dbg !67
  %shl73 = shl i32 %conv72, 24, !dbg !67
  %39 = load i8*, i8** %rawKey.addr, align 8, !dbg !67
  %add.ptr74 = getelementptr inbounds i8, i8* %39, i64 16, !dbg !67
  %arrayidx75 = getelementptr inbounds i8, i8* %add.ptr74, i64 1, !dbg !67
  %40 = load i8, i8* %arrayidx75, align 1, !dbg !67
  %conv76 = zext i8 %40 to i32, !dbg !67
  %shl77 = shl i32 %conv76, 16, !dbg !67
  %xor78 = xor i32 %shl73, %shl77, !dbg !67
  %41 = load i8*, i8** %rawKey.addr, align 8, !dbg !67
  %add.ptr79 = getelementptr inbounds i8, i8* %41, i64 16, !dbg !67
  %arrayidx80 = getelementptr inbounds i8, i8* %add.ptr79, i64 2, !dbg !67
  %42 = load i8, i8* %arrayidx80, align 1, !dbg !67
  %conv81 = zext i8 %42 to i32, !dbg !67
  %shl82 = shl i32 %conv81, 8, !dbg !67
  %xor83 = xor i32 %xor78, %shl82, !dbg !67
  %43 = load i8*, i8** %rawKey.addr, align 8, !dbg !67
  %add.ptr84 = getelementptr inbounds i8, i8* %43, i64 16, !dbg !67
  %arrayidx85 = getelementptr inbounds i8, i8* %add.ptr84, i64 3, !dbg !67
  %44 = load i8, i8* %arrayidx85, align 1, !dbg !67
  %conv86 = zext i8 %44 to i32, !dbg !67
  %xor87 = xor i32 %xor83, %conv86, !dbg !67
  store i32 %xor87, i32* %s0, align 4, !dbg !69
  %45 = load i32*, i32** %k.addr, align 8, !dbg !70
  %arrayidx88 = getelementptr inbounds i32, i32* %45, i64 8, !dbg !70
  store i32 %xor87, i32* %arrayidx88, align 4, !dbg !71
  %46 = load i8*, i8** %rawKey.addr, align 8, !dbg !72
  %add.ptr89 = getelementptr inbounds i8, i8* %46, i64 20, !dbg !72
  %arrayidx90 = getelementptr inbounds i8, i8* %add.ptr89, i64 0, !dbg !72
  %47 = load i8, i8* %arrayidx90, align 1, !dbg !72
  %conv91 = zext i8 %47 to i32, !dbg !72
  %shl92 = shl i32 %conv91, 24, !dbg !72
  %48 = load i8*, i8** %rawKey.addr, align 8, !dbg !72
  %add.ptr93 = getelementptr inbounds i8, i8* %48, i64 20, !dbg !72
  %arrayidx94 = getelementptr inbounds i8, i8* %add.ptr93, i64 1, !dbg !72
  %49 = load i8, i8* %arrayidx94, align 1, !dbg !72
  %conv95 = zext i8 %49 to i32, !dbg !72
  %shl96 = shl i32 %conv95, 16, !dbg !72
  %xor97 = xor i32 %shl92, %shl96, !dbg !72
  %50 = load i8*, i8** %rawKey.addr, align 8, !dbg !72
  %add.ptr98 = getelementptr inbounds i8, i8* %50, i64 20, !dbg !72
  %arrayidx99 = getelementptr inbounds i8, i8* %add.ptr98, i64 2, !dbg !72
  %51 = load i8, i8* %arrayidx99, align 1, !dbg !72
  %conv100 = zext i8 %51 to i32, !dbg !72
  %shl101 = shl i32 %conv100, 8, !dbg !72
  %xor102 = xor i32 %xor97, %shl101, !dbg !72
  %52 = load i8*, i8** %rawKey.addr, align 8, !dbg !72
  %add.ptr103 = getelementptr inbounds i8, i8* %52, i64 20, !dbg !72
  %arrayidx104 = getelementptr inbounds i8, i8* %add.ptr103, i64 3, !dbg !72
  %53 = load i8, i8* %arrayidx104, align 1, !dbg !72
  %conv105 = zext i8 %53 to i32, !dbg !72
  %xor106 = xor i32 %xor102, %conv105, !dbg !72
  store i32 %xor106, i32* %s1, align 4, !dbg !73
  %54 = load i32*, i32** %k.addr, align 8, !dbg !74
  %arrayidx107 = getelementptr inbounds i32, i32* %54, i64 9, !dbg !74
  store i32 %xor106, i32* %arrayidx107, align 4, !dbg !75
  %55 = load i32, i32* %keyBitLength.addr, align 4, !dbg !76
  %cmp108 = icmp eq i32 %55, 192, !dbg !78
  br i1 %cmp108, label %if.then110, label %if.else, !dbg !79

if.then110:                                       ; preds = %if.then
  %56 = load i32, i32* %s0, align 4, !dbg !80
  %neg = xor i32 %56, -1, !dbg !82
  store i32 %neg, i32* %s2, align 4, !dbg !83
  %57 = load i32*, i32** %k.addr, align 8, !dbg !84
  %arrayidx111 = getelementptr inbounds i32, i32* %57, i64 10, !dbg !84
  store i32 %neg, i32* %arrayidx111, align 4, !dbg !85
  %58 = load i32, i32* %s1, align 4, !dbg !86
  %neg112 = xor i32 %58, -1, !dbg !87
  store i32 %neg112, i32* %s3, align 4, !dbg !88
  %59 = load i32*, i32** %k.addr, align 8, !dbg !89
  %arrayidx113 = getelementptr inbounds i32, i32* %59, i64 11, !dbg !89
  store i32 %neg112, i32* %arrayidx113, align 4, !dbg !90
  br label %if.end, !dbg !91

if.else:                                          ; preds = %if.then
  %60 = load i8*, i8** %rawKey.addr, align 8, !dbg !92
  %add.ptr114 = getelementptr inbounds i8, i8* %60, i64 24, !dbg !92
  %arrayidx115 = getelementptr inbounds i8, i8* %add.ptr114, i64 0, !dbg !92
  %61 = load i8, i8* %arrayidx115, align 1, !dbg !92
  %conv116 = zext i8 %61 to i32, !dbg !92
  %shl117 = shl i32 %conv116, 24, !dbg !92
  %62 = load i8*, i8** %rawKey.addr, align 8, !dbg !92
  %add.ptr118 = getelementptr inbounds i8, i8* %62, i64 24, !dbg !92
  %arrayidx119 = getelementptr inbounds i8, i8* %add.ptr118, i64 1, !dbg !92
  %63 = load i8, i8* %arrayidx119, align 1, !dbg !92
  %conv120 = zext i8 %63 to i32, !dbg !92
  %shl121 = shl i32 %conv120, 16, !dbg !92
  %xor122 = xor i32 %shl117, %shl121, !dbg !92
  %64 = load i8*, i8** %rawKey.addr, align 8, !dbg !92
  %add.ptr123 = getelementptr inbounds i8, i8* %64, i64 24, !dbg !92
  %arrayidx124 = getelementptr inbounds i8, i8* %add.ptr123, i64 2, !dbg !92
  %65 = load i8, i8* %arrayidx124, align 1, !dbg !92
  %conv125 = zext i8 %65 to i32, !dbg !92
  %shl126 = shl i32 %conv125, 8, !dbg !92
  %xor127 = xor i32 %xor122, %shl126, !dbg !92
  %66 = load i8*, i8** %rawKey.addr, align 8, !dbg !92
  %add.ptr128 = getelementptr inbounds i8, i8* %66, i64 24, !dbg !92
  %arrayidx129 = getelementptr inbounds i8, i8* %add.ptr128, i64 3, !dbg !92
  %67 = load i8, i8* %arrayidx129, align 1, !dbg !92
  %conv130 = zext i8 %67 to i32, !dbg !92
  %xor131 = xor i32 %xor127, %conv130, !dbg !92
  store i32 %xor131, i32* %s2, align 4, !dbg !94
  %68 = load i32*, i32** %k.addr, align 8, !dbg !95
  %arrayidx132 = getelementptr inbounds i32, i32* %68, i64 10, !dbg !95
  store i32 %xor131, i32* %arrayidx132, align 4, !dbg !96
  %69 = load i8*, i8** %rawKey.addr, align 8, !dbg !97
  %add.ptr133 = getelementptr inbounds i8, i8* %69, i64 28, !dbg !97
  %arrayidx134 = getelementptr inbounds i8, i8* %add.ptr133, i64 0, !dbg !97
  %70 = load i8, i8* %arrayidx134, align 1, !dbg !97
  %conv135 = zext i8 %70 to i32, !dbg !97
  %shl136 = shl i32 %conv135, 24, !dbg !97
  %71 = load i8*, i8** %rawKey.addr, align 8, !dbg !97
  %add.ptr137 = getelementptr inbounds i8, i8* %71, i64 28, !dbg !97
  %arrayidx138 = getelementptr inbounds i8, i8* %add.ptr137, i64 1, !dbg !97
  %72 = load i8, i8* %arrayidx138, align 1, !dbg !97
  %conv139 = zext i8 %72 to i32, !dbg !97
  %shl140 = shl i32 %conv139, 16, !dbg !97
  %xor141 = xor i32 %shl136, %shl140, !dbg !97
  %73 = load i8*, i8** %rawKey.addr, align 8, !dbg !97
  %add.ptr142 = getelementptr inbounds i8, i8* %73, i64 28, !dbg !97
  %arrayidx143 = getelementptr inbounds i8, i8* %add.ptr142, i64 2, !dbg !97
  %74 = load i8, i8* %arrayidx143, align 1, !dbg !97
  %conv144 = zext i8 %74 to i32, !dbg !97
  %shl145 = shl i32 %conv144, 8, !dbg !97
  %xor146 = xor i32 %xor141, %shl145, !dbg !97
  %75 = load i8*, i8** %rawKey.addr, align 8, !dbg !97
  %add.ptr147 = getelementptr inbounds i8, i8* %75, i64 28, !dbg !97
  %arrayidx148 = getelementptr inbounds i8, i8* %add.ptr147, i64 3, !dbg !97
  %76 = load i8, i8* %arrayidx148, align 1, !dbg !97
  %conv149 = zext i8 %76 to i32, !dbg !97
  %xor150 = xor i32 %xor146, %conv149, !dbg !97
  store i32 %xor150, i32* %s3, align 4, !dbg !98
  %77 = load i32*, i32** %k.addr, align 8, !dbg !99
  %arrayidx151 = getelementptr inbounds i32, i32* %77, i64 11, !dbg !99
  store i32 %xor150, i32* %arrayidx151, align 4, !dbg !100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then110
  %78 = load i32*, i32** %k.addr, align 8, !dbg !101
  %arrayidx152 = getelementptr inbounds i32, i32* %78, i64 0, !dbg !101
  %79 = load i32, i32* %arrayidx152, align 4, !dbg !101
  %80 = load i32, i32* %s0, align 4, !dbg !102
  %xor153 = xor i32 %80, %79, !dbg !102
  store i32 %xor153, i32* %s0, align 4, !dbg !102
  %81 = load i32*, i32** %k.addr, align 8, !dbg !103
  %arrayidx154 = getelementptr inbounds i32, i32* %81, i64 1, !dbg !103
  %82 = load i32, i32* %arrayidx154, align 4, !dbg !103
  %83 = load i32, i32* %s1, align 4, !dbg !104
  %xor155 = xor i32 %83, %82, !dbg !104
  store i32 %xor155, i32* %s1, align 4, !dbg !104
  %84 = load i32*, i32** %k.addr, align 8, !dbg !105
  %arrayidx156 = getelementptr inbounds i32, i32* %84, i64 2, !dbg !105
  %85 = load i32, i32* %arrayidx156, align 4, !dbg !105
  %86 = load i32, i32* %s2, align 4, !dbg !106
  %xor157 = xor i32 %86, %85, !dbg !106
  store i32 %xor157, i32* %s2, align 4, !dbg !106
  %87 = load i32*, i32** %k.addr, align 8, !dbg !107
  %arrayidx158 = getelementptr inbounds i32, i32* %87, i64 3, !dbg !107
  %88 = load i32, i32* %arrayidx158, align 4, !dbg !107
  %89 = load i32, i32* %s3, align 4, !dbg !108
  %xor159 = xor i32 %89, %88, !dbg !108
  store i32 %xor159, i32* %s3, align 4, !dbg !108
  br label %if.end160, !dbg !109

if.end160:                                        ; preds = %if.end, %entry
  br label %do.body, !dbg !110

do.body:                                          ; preds = %if.end160
  call void @llvm.dbg.declare(metadata i32* %_t0, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %_t1, metadata !114, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %_t2, metadata !115, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %_t3, metadata !116, metadata !DIExpression()), !dbg !113
  %90 = load i32, i32* %s0, align 4, !dbg !113
  %91 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 0), align 4, !dbg !113
  %xor161 = xor i32 %90, %91, !dbg !113
  store i32 %xor161, i32* %_t0, align 4, !dbg !113
  %92 = load i32, i32* %_t0, align 4, !dbg !113
  %and = and i32 %92, 255, !dbg !113
  %idxprom = zext i32 %and to i64, !dbg !113
  %arrayidx162 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom, !dbg !113
  %93 = load i32, i32* %arrayidx162, align 4, !dbg !113
  store i32 %93, i32* %_t3, align 4, !dbg !113
  %94 = load i32, i32* %s1, align 4, !dbg !113
  %95 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 1), align 4, !dbg !113
  %xor163 = xor i32 %94, %95, !dbg !113
  store i32 %xor163, i32* %_t1, align 4, !dbg !113
  %96 = load i32, i32* %_t0, align 4, !dbg !113
  %shr = lshr i32 %96, 8, !dbg !113
  %and164 = and i32 %shr, 255, !dbg !113
  %idxprom165 = zext i32 %and164 to i64, !dbg !113
  %arrayidx166 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom165, !dbg !113
  %97 = load i32, i32* %arrayidx166, align 4, !dbg !113
  %98 = load i32, i32* %_t3, align 4, !dbg !113
  %xor167 = xor i32 %98, %97, !dbg !113
  store i32 %xor167, i32* %_t3, align 4, !dbg !113
  %99 = load i32, i32* %_t1, align 4, !dbg !113
  %and168 = and i32 %99, 255, !dbg !113
  %idxprom169 = zext i32 %and168 to i64, !dbg !113
  %arrayidx170 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom169, !dbg !113
  %100 = load i32, i32* %arrayidx170, align 4, !dbg !113
  store i32 %100, i32* %_t2, align 4, !dbg !113
  %101 = load i32, i32* %_t0, align 4, !dbg !113
  %shr171 = lshr i32 %101, 16, !dbg !113
  %and172 = and i32 %shr171, 255, !dbg !113
  %idxprom173 = zext i32 %and172 to i64, !dbg !113
  %arrayidx174 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom173, !dbg !113
  %102 = load i32, i32* %arrayidx174, align 4, !dbg !113
  %103 = load i32, i32* %_t3, align 4, !dbg !113
  %xor175 = xor i32 %103, %102, !dbg !113
  store i32 %xor175, i32* %_t3, align 4, !dbg !113
  %104 = load i32, i32* %_t1, align 4, !dbg !113
  %shr176 = lshr i32 %104, 8, !dbg !113
  %and177 = and i32 %shr176, 255, !dbg !113
  %idxprom178 = zext i32 %and177 to i64, !dbg !113
  %arrayidx179 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom178, !dbg !113
  %105 = load i32, i32* %arrayidx179, align 4, !dbg !113
  %106 = load i32, i32* %_t2, align 4, !dbg !113
  %xor180 = xor i32 %106, %105, !dbg !113
  store i32 %xor180, i32* %_t2, align 4, !dbg !113
  %107 = load i32, i32* %_t0, align 4, !dbg !113
  %shr181 = lshr i32 %107, 24, !dbg !113
  %idxprom182 = zext i32 %shr181 to i64, !dbg !113
  %arrayidx183 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom182, !dbg !113
  %108 = load i32, i32* %arrayidx183, align 4, !dbg !113
  %109 = load i32, i32* %_t3, align 4, !dbg !113
  %xor184 = xor i32 %109, %108, !dbg !113
  store i32 %xor184, i32* %_t3, align 4, !dbg !113
  %110 = load i32, i32* %_t3, align 4, !dbg !113
  %111 = load i32, i32* %_t2, align 4, !dbg !113
  %xor185 = xor i32 %111, %110, !dbg !113
  store i32 %xor185, i32* %_t2, align 4, !dbg !113
  %112 = load i32, i32* %_t3, align 4, !dbg !113
  %shr186 = lshr i32 %112, 8, !dbg !113
  %113 = load i32, i32* %_t3, align 4, !dbg !113
  %shl187 = shl i32 %113, 24, !dbg !113
  %add = add i32 %shr186, %shl187, !dbg !113
  store i32 %add, i32* %_t3, align 4, !dbg !113
  %114 = load i32, i32* %_t1, align 4, !dbg !113
  %shr188 = lshr i32 %114, 16, !dbg !113
  %and189 = and i32 %shr188, 255, !dbg !113
  %idxprom190 = zext i32 %and189 to i64, !dbg !113
  %arrayidx191 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom190, !dbg !113
  %115 = load i32, i32* %arrayidx191, align 4, !dbg !113
  %116 = load i32, i32* %_t2, align 4, !dbg !113
  %xor192 = xor i32 %116, %115, !dbg !113
  store i32 %xor192, i32* %_t2, align 4, !dbg !113
  %117 = load i32, i32* %_t3, align 4, !dbg !113
  %118 = load i32, i32* %s3, align 4, !dbg !113
  %xor193 = xor i32 %118, %117, !dbg !113
  store i32 %xor193, i32* %s3, align 4, !dbg !113
  %119 = load i32, i32* %_t1, align 4, !dbg !113
  %shr194 = lshr i32 %119, 24, !dbg !113
  %idxprom195 = zext i32 %shr194 to i64, !dbg !113
  %arrayidx196 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom195, !dbg !113
  %120 = load i32, i32* %arrayidx196, align 4, !dbg !113
  %121 = load i32, i32* %_t2, align 4, !dbg !113
  %xor197 = xor i32 %121, %120, !dbg !113
  store i32 %xor197, i32* %_t2, align 4, !dbg !113
  %122 = load i32, i32* %_t2, align 4, !dbg !113
  %123 = load i32, i32* %s2, align 4, !dbg !113
  %xor198 = xor i32 %123, %122, !dbg !113
  store i32 %xor198, i32* %s2, align 4, !dbg !113
  %124 = load i32, i32* %_t2, align 4, !dbg !113
  %125 = load i32, i32* %s3, align 4, !dbg !113
  %xor199 = xor i32 %125, %124, !dbg !113
  store i32 %xor199, i32* %s3, align 4, !dbg !113
  br label %do.end, !dbg !113

do.end:                                           ; preds = %do.body
  br label %do.body200, !dbg !117

do.body200:                                       ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %_t0201, metadata !118, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %_t1202, metadata !121, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %_t2203, metadata !122, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %_t3204, metadata !123, metadata !DIExpression()), !dbg !120
  %126 = load i32, i32* %s2, align 4, !dbg !120
  %127 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 2), align 4, !dbg !120
  %xor205 = xor i32 %126, %127, !dbg !120
  store i32 %xor205, i32* %_t0201, align 4, !dbg !120
  %128 = load i32, i32* %_t0201, align 4, !dbg !120
  %and206 = and i32 %128, 255, !dbg !120
  %idxprom207 = zext i32 %and206 to i64, !dbg !120
  %arrayidx208 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom207, !dbg !120
  %129 = load i32, i32* %arrayidx208, align 4, !dbg !120
  store i32 %129, i32* %_t3204, align 4, !dbg !120
  %130 = load i32, i32* %s3, align 4, !dbg !120
  %131 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 3), align 4, !dbg !120
  %xor209 = xor i32 %130, %131, !dbg !120
  store i32 %xor209, i32* %_t1202, align 4, !dbg !120
  %132 = load i32, i32* %_t0201, align 4, !dbg !120
  %shr210 = lshr i32 %132, 8, !dbg !120
  %and211 = and i32 %shr210, 255, !dbg !120
  %idxprom212 = zext i32 %and211 to i64, !dbg !120
  %arrayidx213 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom212, !dbg !120
  %133 = load i32, i32* %arrayidx213, align 4, !dbg !120
  %134 = load i32, i32* %_t3204, align 4, !dbg !120
  %xor214 = xor i32 %134, %133, !dbg !120
  store i32 %xor214, i32* %_t3204, align 4, !dbg !120
  %135 = load i32, i32* %_t1202, align 4, !dbg !120
  %and215 = and i32 %135, 255, !dbg !120
  %idxprom216 = zext i32 %and215 to i64, !dbg !120
  %arrayidx217 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom216, !dbg !120
  %136 = load i32, i32* %arrayidx217, align 4, !dbg !120
  store i32 %136, i32* %_t2203, align 4, !dbg !120
  %137 = load i32, i32* %_t0201, align 4, !dbg !120
  %shr218 = lshr i32 %137, 16, !dbg !120
  %and219 = and i32 %shr218, 255, !dbg !120
  %idxprom220 = zext i32 %and219 to i64, !dbg !120
  %arrayidx221 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom220, !dbg !120
  %138 = load i32, i32* %arrayidx221, align 4, !dbg !120
  %139 = load i32, i32* %_t3204, align 4, !dbg !120
  %xor222 = xor i32 %139, %138, !dbg !120
  store i32 %xor222, i32* %_t3204, align 4, !dbg !120
  %140 = load i32, i32* %_t1202, align 4, !dbg !120
  %shr223 = lshr i32 %140, 8, !dbg !120
  %and224 = and i32 %shr223, 255, !dbg !120
  %idxprom225 = zext i32 %and224 to i64, !dbg !120
  %arrayidx226 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom225, !dbg !120
  %141 = load i32, i32* %arrayidx226, align 4, !dbg !120
  %142 = load i32, i32* %_t2203, align 4, !dbg !120
  %xor227 = xor i32 %142, %141, !dbg !120
  store i32 %xor227, i32* %_t2203, align 4, !dbg !120
  %143 = load i32, i32* %_t0201, align 4, !dbg !120
  %shr228 = lshr i32 %143, 24, !dbg !120
  %idxprom229 = zext i32 %shr228 to i64, !dbg !120
  %arrayidx230 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom229, !dbg !120
  %144 = load i32, i32* %arrayidx230, align 4, !dbg !120
  %145 = load i32, i32* %_t3204, align 4, !dbg !120
  %xor231 = xor i32 %145, %144, !dbg !120
  store i32 %xor231, i32* %_t3204, align 4, !dbg !120
  %146 = load i32, i32* %_t3204, align 4, !dbg !120
  %147 = load i32, i32* %_t2203, align 4, !dbg !120
  %xor232 = xor i32 %147, %146, !dbg !120
  store i32 %xor232, i32* %_t2203, align 4, !dbg !120
  %148 = load i32, i32* %_t3204, align 4, !dbg !120
  %shr233 = lshr i32 %148, 8, !dbg !120
  %149 = load i32, i32* %_t3204, align 4, !dbg !120
  %shl234 = shl i32 %149, 24, !dbg !120
  %add235 = add i32 %shr233, %shl234, !dbg !120
  store i32 %add235, i32* %_t3204, align 4, !dbg !120
  %150 = load i32, i32* %_t1202, align 4, !dbg !120
  %shr236 = lshr i32 %150, 16, !dbg !120
  %and237 = and i32 %shr236, 255, !dbg !120
  %idxprom238 = zext i32 %and237 to i64, !dbg !120
  %arrayidx239 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom238, !dbg !120
  %151 = load i32, i32* %arrayidx239, align 4, !dbg !120
  %152 = load i32, i32* %_t2203, align 4, !dbg !120
  %xor240 = xor i32 %152, %151, !dbg !120
  store i32 %xor240, i32* %_t2203, align 4, !dbg !120
  %153 = load i32, i32* %_t3204, align 4, !dbg !120
  %154 = load i32, i32* %s1, align 4, !dbg !120
  %xor241 = xor i32 %154, %153, !dbg !120
  store i32 %xor241, i32* %s1, align 4, !dbg !120
  %155 = load i32, i32* %_t1202, align 4, !dbg !120
  %shr242 = lshr i32 %155, 24, !dbg !120
  %idxprom243 = zext i32 %shr242 to i64, !dbg !120
  %arrayidx244 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom243, !dbg !120
  %156 = load i32, i32* %arrayidx244, align 4, !dbg !120
  %157 = load i32, i32* %_t2203, align 4, !dbg !120
  %xor245 = xor i32 %157, %156, !dbg !120
  store i32 %xor245, i32* %_t2203, align 4, !dbg !120
  %158 = load i32, i32* %_t2203, align 4, !dbg !120
  %159 = load i32, i32* %s0, align 4, !dbg !120
  %xor246 = xor i32 %159, %158, !dbg !120
  store i32 %xor246, i32* %s0, align 4, !dbg !120
  %160 = load i32, i32* %_t2203, align 4, !dbg !120
  %161 = load i32, i32* %s1, align 4, !dbg !120
  %xor247 = xor i32 %161, %160, !dbg !120
  store i32 %xor247, i32* %s1, align 4, !dbg !120
  br label %do.end248, !dbg !120

do.end248:                                        ; preds = %do.body200
  %162 = load i32*, i32** %k.addr, align 8, !dbg !124
  %arrayidx249 = getelementptr inbounds i32, i32* %162, i64 0, !dbg !124
  %163 = load i32, i32* %arrayidx249, align 4, !dbg !124
  %164 = load i32, i32* %s0, align 4, !dbg !125
  %xor250 = xor i32 %164, %163, !dbg !125
  store i32 %xor250, i32* %s0, align 4, !dbg !125
  %165 = load i32*, i32** %k.addr, align 8, !dbg !126
  %arrayidx251 = getelementptr inbounds i32, i32* %165, i64 1, !dbg !126
  %166 = load i32, i32* %arrayidx251, align 4, !dbg !126
  %167 = load i32, i32* %s1, align 4, !dbg !127
  %xor252 = xor i32 %167, %166, !dbg !127
  store i32 %xor252, i32* %s1, align 4, !dbg !127
  %168 = load i32*, i32** %k.addr, align 8, !dbg !128
  %arrayidx253 = getelementptr inbounds i32, i32* %168, i64 2, !dbg !128
  %169 = load i32, i32* %arrayidx253, align 4, !dbg !128
  %170 = load i32, i32* %s2, align 4, !dbg !129
  %xor254 = xor i32 %170, %169, !dbg !129
  store i32 %xor254, i32* %s2, align 4, !dbg !129
  %171 = load i32*, i32** %k.addr, align 8, !dbg !130
  %arrayidx255 = getelementptr inbounds i32, i32* %171, i64 3, !dbg !130
  %172 = load i32, i32* %arrayidx255, align 4, !dbg !130
  %173 = load i32, i32* %s3, align 4, !dbg !131
  %xor256 = xor i32 %173, %172, !dbg !131
  store i32 %xor256, i32* %s3, align 4, !dbg !131
  br label %do.body257, !dbg !132

do.body257:                                       ; preds = %do.end248
  call void @llvm.dbg.declare(metadata i32* %_t0258, metadata !133, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %_t1259, metadata !136, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %_t2260, metadata !137, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %_t3261, metadata !138, metadata !DIExpression()), !dbg !135
  %174 = load i32, i32* %s0, align 4, !dbg !135
  %175 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 4), align 4, !dbg !135
  %xor262 = xor i32 %174, %175, !dbg !135
  store i32 %xor262, i32* %_t0258, align 4, !dbg !135
  %176 = load i32, i32* %_t0258, align 4, !dbg !135
  %and263 = and i32 %176, 255, !dbg !135
  %idxprom264 = zext i32 %and263 to i64, !dbg !135
  %arrayidx265 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom264, !dbg !135
  %177 = load i32, i32* %arrayidx265, align 4, !dbg !135
  store i32 %177, i32* %_t3261, align 4, !dbg !135
  %178 = load i32, i32* %s1, align 4, !dbg !135
  %179 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 5), align 4, !dbg !135
  %xor266 = xor i32 %178, %179, !dbg !135
  store i32 %xor266, i32* %_t1259, align 4, !dbg !135
  %180 = load i32, i32* %_t0258, align 4, !dbg !135
  %shr267 = lshr i32 %180, 8, !dbg !135
  %and268 = and i32 %shr267, 255, !dbg !135
  %idxprom269 = zext i32 %and268 to i64, !dbg !135
  %arrayidx270 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom269, !dbg !135
  %181 = load i32, i32* %arrayidx270, align 4, !dbg !135
  %182 = load i32, i32* %_t3261, align 4, !dbg !135
  %xor271 = xor i32 %182, %181, !dbg !135
  store i32 %xor271, i32* %_t3261, align 4, !dbg !135
  %183 = load i32, i32* %_t1259, align 4, !dbg !135
  %and272 = and i32 %183, 255, !dbg !135
  %idxprom273 = zext i32 %and272 to i64, !dbg !135
  %arrayidx274 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom273, !dbg !135
  %184 = load i32, i32* %arrayidx274, align 4, !dbg !135
  store i32 %184, i32* %_t2260, align 4, !dbg !135
  %185 = load i32, i32* %_t0258, align 4, !dbg !135
  %shr275 = lshr i32 %185, 16, !dbg !135
  %and276 = and i32 %shr275, 255, !dbg !135
  %idxprom277 = zext i32 %and276 to i64, !dbg !135
  %arrayidx278 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom277, !dbg !135
  %186 = load i32, i32* %arrayidx278, align 4, !dbg !135
  %187 = load i32, i32* %_t3261, align 4, !dbg !135
  %xor279 = xor i32 %187, %186, !dbg !135
  store i32 %xor279, i32* %_t3261, align 4, !dbg !135
  %188 = load i32, i32* %_t1259, align 4, !dbg !135
  %shr280 = lshr i32 %188, 8, !dbg !135
  %and281 = and i32 %shr280, 255, !dbg !135
  %idxprom282 = zext i32 %and281 to i64, !dbg !135
  %arrayidx283 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom282, !dbg !135
  %189 = load i32, i32* %arrayidx283, align 4, !dbg !135
  %190 = load i32, i32* %_t2260, align 4, !dbg !135
  %xor284 = xor i32 %190, %189, !dbg !135
  store i32 %xor284, i32* %_t2260, align 4, !dbg !135
  %191 = load i32, i32* %_t0258, align 4, !dbg !135
  %shr285 = lshr i32 %191, 24, !dbg !135
  %idxprom286 = zext i32 %shr285 to i64, !dbg !135
  %arrayidx287 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom286, !dbg !135
  %192 = load i32, i32* %arrayidx287, align 4, !dbg !135
  %193 = load i32, i32* %_t3261, align 4, !dbg !135
  %xor288 = xor i32 %193, %192, !dbg !135
  store i32 %xor288, i32* %_t3261, align 4, !dbg !135
  %194 = load i32, i32* %_t3261, align 4, !dbg !135
  %195 = load i32, i32* %_t2260, align 4, !dbg !135
  %xor289 = xor i32 %195, %194, !dbg !135
  store i32 %xor289, i32* %_t2260, align 4, !dbg !135
  %196 = load i32, i32* %_t3261, align 4, !dbg !135
  %shr290 = lshr i32 %196, 8, !dbg !135
  %197 = load i32, i32* %_t3261, align 4, !dbg !135
  %shl291 = shl i32 %197, 24, !dbg !135
  %add292 = add i32 %shr290, %shl291, !dbg !135
  store i32 %add292, i32* %_t3261, align 4, !dbg !135
  %198 = load i32, i32* %_t1259, align 4, !dbg !135
  %shr293 = lshr i32 %198, 16, !dbg !135
  %and294 = and i32 %shr293, 255, !dbg !135
  %idxprom295 = zext i32 %and294 to i64, !dbg !135
  %arrayidx296 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom295, !dbg !135
  %199 = load i32, i32* %arrayidx296, align 4, !dbg !135
  %200 = load i32, i32* %_t2260, align 4, !dbg !135
  %xor297 = xor i32 %200, %199, !dbg !135
  store i32 %xor297, i32* %_t2260, align 4, !dbg !135
  %201 = load i32, i32* %_t3261, align 4, !dbg !135
  %202 = load i32, i32* %s3, align 4, !dbg !135
  %xor298 = xor i32 %202, %201, !dbg !135
  store i32 %xor298, i32* %s3, align 4, !dbg !135
  %203 = load i32, i32* %_t1259, align 4, !dbg !135
  %shr299 = lshr i32 %203, 24, !dbg !135
  %idxprom300 = zext i32 %shr299 to i64, !dbg !135
  %arrayidx301 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom300, !dbg !135
  %204 = load i32, i32* %arrayidx301, align 4, !dbg !135
  %205 = load i32, i32* %_t2260, align 4, !dbg !135
  %xor302 = xor i32 %205, %204, !dbg !135
  store i32 %xor302, i32* %_t2260, align 4, !dbg !135
  %206 = load i32, i32* %_t2260, align 4, !dbg !135
  %207 = load i32, i32* %s2, align 4, !dbg !135
  %xor303 = xor i32 %207, %206, !dbg !135
  store i32 %xor303, i32* %s2, align 4, !dbg !135
  %208 = load i32, i32* %_t2260, align 4, !dbg !135
  %209 = load i32, i32* %s3, align 4, !dbg !135
  %xor304 = xor i32 %209, %208, !dbg !135
  store i32 %xor304, i32* %s3, align 4, !dbg !135
  br label %do.end305, !dbg !135

do.end305:                                        ; preds = %do.body257
  br label %do.body306, !dbg !139

do.body306:                                       ; preds = %do.end305
  call void @llvm.dbg.declare(metadata i32* %_t0307, metadata !140, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %_t1308, metadata !143, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %_t2309, metadata !144, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %_t3310, metadata !145, metadata !DIExpression()), !dbg !142
  %210 = load i32, i32* %s2, align 4, !dbg !142
  %211 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 6), align 4, !dbg !142
  %xor311 = xor i32 %210, %211, !dbg !142
  store i32 %xor311, i32* %_t0307, align 4, !dbg !142
  %212 = load i32, i32* %_t0307, align 4, !dbg !142
  %and312 = and i32 %212, 255, !dbg !142
  %idxprom313 = zext i32 %and312 to i64, !dbg !142
  %arrayidx314 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom313, !dbg !142
  %213 = load i32, i32* %arrayidx314, align 4, !dbg !142
  store i32 %213, i32* %_t3310, align 4, !dbg !142
  %214 = load i32, i32* %s3, align 4, !dbg !142
  %215 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 7), align 4, !dbg !142
  %xor315 = xor i32 %214, %215, !dbg !142
  store i32 %xor315, i32* %_t1308, align 4, !dbg !142
  %216 = load i32, i32* %_t0307, align 4, !dbg !142
  %shr316 = lshr i32 %216, 8, !dbg !142
  %and317 = and i32 %shr316, 255, !dbg !142
  %idxprom318 = zext i32 %and317 to i64, !dbg !142
  %arrayidx319 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom318, !dbg !142
  %217 = load i32, i32* %arrayidx319, align 4, !dbg !142
  %218 = load i32, i32* %_t3310, align 4, !dbg !142
  %xor320 = xor i32 %218, %217, !dbg !142
  store i32 %xor320, i32* %_t3310, align 4, !dbg !142
  %219 = load i32, i32* %_t1308, align 4, !dbg !142
  %and321 = and i32 %219, 255, !dbg !142
  %idxprom322 = zext i32 %and321 to i64, !dbg !142
  %arrayidx323 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom322, !dbg !142
  %220 = load i32, i32* %arrayidx323, align 4, !dbg !142
  store i32 %220, i32* %_t2309, align 4, !dbg !142
  %221 = load i32, i32* %_t0307, align 4, !dbg !142
  %shr324 = lshr i32 %221, 16, !dbg !142
  %and325 = and i32 %shr324, 255, !dbg !142
  %idxprom326 = zext i32 %and325 to i64, !dbg !142
  %arrayidx327 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom326, !dbg !142
  %222 = load i32, i32* %arrayidx327, align 4, !dbg !142
  %223 = load i32, i32* %_t3310, align 4, !dbg !142
  %xor328 = xor i32 %223, %222, !dbg !142
  store i32 %xor328, i32* %_t3310, align 4, !dbg !142
  %224 = load i32, i32* %_t1308, align 4, !dbg !142
  %shr329 = lshr i32 %224, 8, !dbg !142
  %and330 = and i32 %shr329, 255, !dbg !142
  %idxprom331 = zext i32 %and330 to i64, !dbg !142
  %arrayidx332 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom331, !dbg !142
  %225 = load i32, i32* %arrayidx332, align 4, !dbg !142
  %226 = load i32, i32* %_t2309, align 4, !dbg !142
  %xor333 = xor i32 %226, %225, !dbg !142
  store i32 %xor333, i32* %_t2309, align 4, !dbg !142
  %227 = load i32, i32* %_t0307, align 4, !dbg !142
  %shr334 = lshr i32 %227, 24, !dbg !142
  %idxprom335 = zext i32 %shr334 to i64, !dbg !142
  %arrayidx336 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom335, !dbg !142
  %228 = load i32, i32* %arrayidx336, align 4, !dbg !142
  %229 = load i32, i32* %_t3310, align 4, !dbg !142
  %xor337 = xor i32 %229, %228, !dbg !142
  store i32 %xor337, i32* %_t3310, align 4, !dbg !142
  %230 = load i32, i32* %_t3310, align 4, !dbg !142
  %231 = load i32, i32* %_t2309, align 4, !dbg !142
  %xor338 = xor i32 %231, %230, !dbg !142
  store i32 %xor338, i32* %_t2309, align 4, !dbg !142
  %232 = load i32, i32* %_t3310, align 4, !dbg !142
  %shr339 = lshr i32 %232, 8, !dbg !142
  %233 = load i32, i32* %_t3310, align 4, !dbg !142
  %shl340 = shl i32 %233, 24, !dbg !142
  %add341 = add i32 %shr339, %shl340, !dbg !142
  store i32 %add341, i32* %_t3310, align 4, !dbg !142
  %234 = load i32, i32* %_t1308, align 4, !dbg !142
  %shr342 = lshr i32 %234, 16, !dbg !142
  %and343 = and i32 %shr342, 255, !dbg !142
  %idxprom344 = zext i32 %and343 to i64, !dbg !142
  %arrayidx345 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom344, !dbg !142
  %235 = load i32, i32* %arrayidx345, align 4, !dbg !142
  %236 = load i32, i32* %_t2309, align 4, !dbg !142
  %xor346 = xor i32 %236, %235, !dbg !142
  store i32 %xor346, i32* %_t2309, align 4, !dbg !142
  %237 = load i32, i32* %_t3310, align 4, !dbg !142
  %238 = load i32, i32* %s1, align 4, !dbg !142
  %xor347 = xor i32 %238, %237, !dbg !142
  store i32 %xor347, i32* %s1, align 4, !dbg !142
  %239 = load i32, i32* %_t1308, align 4, !dbg !142
  %shr348 = lshr i32 %239, 24, !dbg !142
  %idxprom349 = zext i32 %shr348 to i64, !dbg !142
  %arrayidx350 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom349, !dbg !142
  %240 = load i32, i32* %arrayidx350, align 4, !dbg !142
  %241 = load i32, i32* %_t2309, align 4, !dbg !142
  %xor351 = xor i32 %241, %240, !dbg !142
  store i32 %xor351, i32* %_t2309, align 4, !dbg !142
  %242 = load i32, i32* %_t2309, align 4, !dbg !142
  %243 = load i32, i32* %s0, align 4, !dbg !142
  %xor352 = xor i32 %243, %242, !dbg !142
  store i32 %xor352, i32* %s0, align 4, !dbg !142
  %244 = load i32, i32* %_t2309, align 4, !dbg !142
  %245 = load i32, i32* %s1, align 4, !dbg !142
  %xor353 = xor i32 %245, %244, !dbg !142
  store i32 %xor353, i32* %s1, align 4, !dbg !142
  br label %do.end354, !dbg !142

do.end354:                                        ; preds = %do.body306
  %246 = load i32, i32* %keyBitLength.addr, align 4, !dbg !146
  %cmp355 = icmp eq i32 %246, 128, !dbg !148
  br i1 %cmp355, label %if.then357, label %if.else589, !dbg !149

if.then357:                                       ; preds = %do.end354
  %247 = load i32, i32* %s0, align 4, !dbg !150
  %248 = load i32*, i32** %k.addr, align 8, !dbg !152
  %arrayidx358 = getelementptr inbounds i32, i32* %248, i64 4, !dbg !152
  store i32 %247, i32* %arrayidx358, align 4, !dbg !153
  %249 = load i32, i32* %s1, align 4, !dbg !154
  %250 = load i32*, i32** %k.addr, align 8, !dbg !155
  %arrayidx359 = getelementptr inbounds i32, i32* %250, i64 5, !dbg !155
  store i32 %249, i32* %arrayidx359, align 4, !dbg !156
  %251 = load i32, i32* %s2, align 4, !dbg !157
  %252 = load i32*, i32** %k.addr, align 8, !dbg !158
  %arrayidx360 = getelementptr inbounds i32, i32* %252, i64 6, !dbg !158
  store i32 %251, i32* %arrayidx360, align 4, !dbg !159
  %253 = load i32, i32* %s3, align 4, !dbg !160
  %254 = load i32*, i32** %k.addr, align 8, !dbg !161
  %arrayidx361 = getelementptr inbounds i32, i32* %254, i64 7, !dbg !161
  store i32 %253, i32* %arrayidx361, align 4, !dbg !162
  br label %do.body362, !dbg !163

do.body362:                                       ; preds = %if.then357
  call void @llvm.dbg.declare(metadata i32* %_t0363, metadata !164, metadata !DIExpression()), !dbg !166
  %255 = load i32, i32* %s0, align 4, !dbg !166
  %shr364 = lshr i32 %255, 17, !dbg !166
  store i32 %shr364, i32* %_t0363, align 4, !dbg !166
  %256 = load i32, i32* %s0, align 4, !dbg !166
  %shl365 = shl i32 %256, 15, !dbg !166
  %257 = load i32, i32* %s1, align 4, !dbg !166
  %shr366 = lshr i32 %257, 17, !dbg !166
  %or = or i32 %shl365, %shr366, !dbg !166
  store i32 %or, i32* %s0, align 4, !dbg !166
  %258 = load i32, i32* %s1, align 4, !dbg !166
  %shl367 = shl i32 %258, 15, !dbg !166
  %259 = load i32, i32* %s2, align 4, !dbg !166
  %shr368 = lshr i32 %259, 17, !dbg !166
  %or369 = or i32 %shl367, %shr368, !dbg !166
  store i32 %or369, i32* %s1, align 4, !dbg !166
  %260 = load i32, i32* %s2, align 4, !dbg !166
  %shl370 = shl i32 %260, 15, !dbg !166
  %261 = load i32, i32* %s3, align 4, !dbg !166
  %shr371 = lshr i32 %261, 17, !dbg !166
  %or372 = or i32 %shl370, %shr371, !dbg !166
  store i32 %or372, i32* %s2, align 4, !dbg !166
  %262 = load i32, i32* %s3, align 4, !dbg !166
  %shl373 = shl i32 %262, 15, !dbg !166
  %263 = load i32, i32* %_t0363, align 4, !dbg !166
  %or374 = or i32 %shl373, %263, !dbg !166
  store i32 %or374, i32* %s3, align 4, !dbg !166
  br label %do.end375, !dbg !166

do.end375:                                        ; preds = %do.body362
  %264 = load i32, i32* %s0, align 4, !dbg !167
  %265 = load i32*, i32** %k.addr, align 8, !dbg !168
  %arrayidx376 = getelementptr inbounds i32, i32* %265, i64 12, !dbg !168
  store i32 %264, i32* %arrayidx376, align 4, !dbg !169
  %266 = load i32, i32* %s1, align 4, !dbg !170
  %267 = load i32*, i32** %k.addr, align 8, !dbg !171
  %arrayidx377 = getelementptr inbounds i32, i32* %267, i64 13, !dbg !171
  store i32 %266, i32* %arrayidx377, align 4, !dbg !172
  %268 = load i32, i32* %s2, align 4, !dbg !173
  %269 = load i32*, i32** %k.addr, align 8, !dbg !174
  %arrayidx378 = getelementptr inbounds i32, i32* %269, i64 14, !dbg !174
  store i32 %268, i32* %arrayidx378, align 4, !dbg !175
  %270 = load i32, i32* %s3, align 4, !dbg !176
  %271 = load i32*, i32** %k.addr, align 8, !dbg !177
  %arrayidx379 = getelementptr inbounds i32, i32* %271, i64 15, !dbg !177
  store i32 %270, i32* %arrayidx379, align 4, !dbg !178
  br label %do.body380, !dbg !179

do.body380:                                       ; preds = %do.end375
  call void @llvm.dbg.declare(metadata i32* %_t0381, metadata !180, metadata !DIExpression()), !dbg !182
  %272 = load i32, i32* %s0, align 4, !dbg !182
  %shr382 = lshr i32 %272, 17, !dbg !182
  store i32 %shr382, i32* %_t0381, align 4, !dbg !182
  %273 = load i32, i32* %s0, align 4, !dbg !182
  %shl383 = shl i32 %273, 15, !dbg !182
  %274 = load i32, i32* %s1, align 4, !dbg !182
  %shr384 = lshr i32 %274, 17, !dbg !182
  %or385 = or i32 %shl383, %shr384, !dbg !182
  store i32 %or385, i32* %s0, align 4, !dbg !182
  %275 = load i32, i32* %s1, align 4, !dbg !182
  %shl386 = shl i32 %275, 15, !dbg !182
  %276 = load i32, i32* %s2, align 4, !dbg !182
  %shr387 = lshr i32 %276, 17, !dbg !182
  %or388 = or i32 %shl386, %shr387, !dbg !182
  store i32 %or388, i32* %s1, align 4, !dbg !182
  %277 = load i32, i32* %s2, align 4, !dbg !182
  %shl389 = shl i32 %277, 15, !dbg !182
  %278 = load i32, i32* %s3, align 4, !dbg !182
  %shr390 = lshr i32 %278, 17, !dbg !182
  %or391 = or i32 %shl389, %shr390, !dbg !182
  store i32 %or391, i32* %s2, align 4, !dbg !182
  %279 = load i32, i32* %s3, align 4, !dbg !182
  %shl392 = shl i32 %279, 15, !dbg !182
  %280 = load i32, i32* %_t0381, align 4, !dbg !182
  %or393 = or i32 %shl392, %280, !dbg !182
  store i32 %or393, i32* %s3, align 4, !dbg !182
  br label %do.end394, !dbg !182

do.end394:                                        ; preds = %do.body380
  %281 = load i32, i32* %s0, align 4, !dbg !183
  %282 = load i32*, i32** %k.addr, align 8, !dbg !184
  %arrayidx395 = getelementptr inbounds i32, i32* %282, i64 16, !dbg !184
  store i32 %281, i32* %arrayidx395, align 4, !dbg !185
  %283 = load i32, i32* %s1, align 4, !dbg !186
  %284 = load i32*, i32** %k.addr, align 8, !dbg !187
  %arrayidx396 = getelementptr inbounds i32, i32* %284, i64 17, !dbg !187
  store i32 %283, i32* %arrayidx396, align 4, !dbg !188
  %285 = load i32, i32* %s2, align 4, !dbg !189
  %286 = load i32*, i32** %k.addr, align 8, !dbg !190
  %arrayidx397 = getelementptr inbounds i32, i32* %286, i64 18, !dbg !190
  store i32 %285, i32* %arrayidx397, align 4, !dbg !191
  %287 = load i32, i32* %s3, align 4, !dbg !192
  %288 = load i32*, i32** %k.addr, align 8, !dbg !193
  %arrayidx398 = getelementptr inbounds i32, i32* %288, i64 19, !dbg !193
  store i32 %287, i32* %arrayidx398, align 4, !dbg !194
  br label %do.body399, !dbg !195

do.body399:                                       ; preds = %do.end394
  call void @llvm.dbg.declare(metadata i32* %_t0400, metadata !196, metadata !DIExpression()), !dbg !198
  %289 = load i32, i32* %s0, align 4, !dbg !198
  %shr401 = lshr i32 %289, 17, !dbg !198
  store i32 %shr401, i32* %_t0400, align 4, !dbg !198
  %290 = load i32, i32* %s0, align 4, !dbg !198
  %shl402 = shl i32 %290, 15, !dbg !198
  %291 = load i32, i32* %s1, align 4, !dbg !198
  %shr403 = lshr i32 %291, 17, !dbg !198
  %or404 = or i32 %shl402, %shr403, !dbg !198
  store i32 %or404, i32* %s0, align 4, !dbg !198
  %292 = load i32, i32* %s1, align 4, !dbg !198
  %shl405 = shl i32 %292, 15, !dbg !198
  %293 = load i32, i32* %s2, align 4, !dbg !198
  %shr406 = lshr i32 %293, 17, !dbg !198
  %or407 = or i32 %shl405, %shr406, !dbg !198
  store i32 %or407, i32* %s1, align 4, !dbg !198
  %294 = load i32, i32* %s2, align 4, !dbg !198
  %shl408 = shl i32 %294, 15, !dbg !198
  %295 = load i32, i32* %s3, align 4, !dbg !198
  %shr409 = lshr i32 %295, 17, !dbg !198
  %or410 = or i32 %shl408, %shr409, !dbg !198
  store i32 %or410, i32* %s2, align 4, !dbg !198
  %296 = load i32, i32* %s3, align 4, !dbg !198
  %shl411 = shl i32 %296, 15, !dbg !198
  %297 = load i32, i32* %_t0400, align 4, !dbg !198
  %or412 = or i32 %shl411, %297, !dbg !198
  store i32 %or412, i32* %s3, align 4, !dbg !198
  br label %do.end413, !dbg !198

do.end413:                                        ; preds = %do.body399
  %298 = load i32, i32* %s0, align 4, !dbg !199
  %299 = load i32*, i32** %k.addr, align 8, !dbg !200
  %arrayidx414 = getelementptr inbounds i32, i32* %299, i64 24, !dbg !200
  store i32 %298, i32* %arrayidx414, align 4, !dbg !201
  %300 = load i32, i32* %s1, align 4, !dbg !202
  %301 = load i32*, i32** %k.addr, align 8, !dbg !203
  %arrayidx415 = getelementptr inbounds i32, i32* %301, i64 25, !dbg !203
  store i32 %300, i32* %arrayidx415, align 4, !dbg !204
  br label %do.body416, !dbg !205

do.body416:                                       ; preds = %do.end413
  call void @llvm.dbg.declare(metadata i32* %_t0417, metadata !206, metadata !DIExpression()), !dbg !208
  %302 = load i32, i32* %s0, align 4, !dbg !208
  %shr418 = lshr i32 %302, 17, !dbg !208
  store i32 %shr418, i32* %_t0417, align 4, !dbg !208
  %303 = load i32, i32* %s0, align 4, !dbg !208
  %shl419 = shl i32 %303, 15, !dbg !208
  %304 = load i32, i32* %s1, align 4, !dbg !208
  %shr420 = lshr i32 %304, 17, !dbg !208
  %or421 = or i32 %shl419, %shr420, !dbg !208
  store i32 %or421, i32* %s0, align 4, !dbg !208
  %305 = load i32, i32* %s1, align 4, !dbg !208
  %shl422 = shl i32 %305, 15, !dbg !208
  %306 = load i32, i32* %s2, align 4, !dbg !208
  %shr423 = lshr i32 %306, 17, !dbg !208
  %or424 = or i32 %shl422, %shr423, !dbg !208
  store i32 %or424, i32* %s1, align 4, !dbg !208
  %307 = load i32, i32* %s2, align 4, !dbg !208
  %shl425 = shl i32 %307, 15, !dbg !208
  %308 = load i32, i32* %s3, align 4, !dbg !208
  %shr426 = lshr i32 %308, 17, !dbg !208
  %or427 = or i32 %shl425, %shr426, !dbg !208
  store i32 %or427, i32* %s2, align 4, !dbg !208
  %309 = load i32, i32* %s3, align 4, !dbg !208
  %shl428 = shl i32 %309, 15, !dbg !208
  %310 = load i32, i32* %_t0417, align 4, !dbg !208
  %or429 = or i32 %shl428, %310, !dbg !208
  store i32 %or429, i32* %s3, align 4, !dbg !208
  br label %do.end430, !dbg !208

do.end430:                                        ; preds = %do.body416
  %311 = load i32, i32* %s0, align 4, !dbg !209
  %312 = load i32*, i32** %k.addr, align 8, !dbg !210
  %arrayidx431 = getelementptr inbounds i32, i32* %312, i64 28, !dbg !210
  store i32 %311, i32* %arrayidx431, align 4, !dbg !211
  %313 = load i32, i32* %s1, align 4, !dbg !212
  %314 = load i32*, i32** %k.addr, align 8, !dbg !213
  %arrayidx432 = getelementptr inbounds i32, i32* %314, i64 29, !dbg !213
  store i32 %313, i32* %arrayidx432, align 4, !dbg !214
  %315 = load i32, i32* %s2, align 4, !dbg !215
  %316 = load i32*, i32** %k.addr, align 8, !dbg !216
  %arrayidx433 = getelementptr inbounds i32, i32* %316, i64 30, !dbg !216
  store i32 %315, i32* %arrayidx433, align 4, !dbg !217
  %317 = load i32, i32* %s3, align 4, !dbg !218
  %318 = load i32*, i32** %k.addr, align 8, !dbg !219
  %arrayidx434 = getelementptr inbounds i32, i32* %318, i64 31, !dbg !219
  store i32 %317, i32* %arrayidx434, align 4, !dbg !220
  br label %do.body435, !dbg !221

do.body435:                                       ; preds = %do.end430
  call void @llvm.dbg.declare(metadata i32* %_t0436, metadata !222, metadata !DIExpression()), !dbg !224
  %319 = load i32, i32* %s1, align 4, !dbg !224
  %shr437 = lshr i32 %319, 30, !dbg !224
  store i32 %shr437, i32* %_t0436, align 4, !dbg !224
  %320 = load i32, i32* %s1, align 4, !dbg !224
  %shl438 = shl i32 %320, 2, !dbg !224
  %321 = load i32, i32* %s2, align 4, !dbg !224
  %shr439 = lshr i32 %321, 30, !dbg !224
  %or440 = or i32 %shl438, %shr439, !dbg !224
  store i32 %or440, i32* %s1, align 4, !dbg !224
  %322 = load i32, i32* %s2, align 4, !dbg !224
  %shl441 = shl i32 %322, 2, !dbg !224
  %323 = load i32, i32* %s3, align 4, !dbg !224
  %shr442 = lshr i32 %323, 30, !dbg !224
  %or443 = or i32 %shl441, %shr442, !dbg !224
  store i32 %or443, i32* %s2, align 4, !dbg !224
  %324 = load i32, i32* %s3, align 4, !dbg !224
  %shl444 = shl i32 %324, 2, !dbg !224
  %325 = load i32, i32* %s0, align 4, !dbg !224
  %shr445 = lshr i32 %325, 30, !dbg !224
  %or446 = or i32 %shl444, %shr445, !dbg !224
  store i32 %or446, i32* %s3, align 4, !dbg !224
  %326 = load i32, i32* %s0, align 4, !dbg !224
  %shl447 = shl i32 %326, 2, !dbg !224
  %327 = load i32, i32* %_t0436, align 4, !dbg !224
  %or448 = or i32 %shl447, %327, !dbg !224
  store i32 %or448, i32* %s0, align 4, !dbg !224
  br label %do.end449, !dbg !224

do.end449:                                        ; preds = %do.body435
  %328 = load i32, i32* %s1, align 4, !dbg !225
  %329 = load i32*, i32** %k.addr, align 8, !dbg !226
  %arrayidx450 = getelementptr inbounds i32, i32* %329, i64 40, !dbg !226
  store i32 %328, i32* %arrayidx450, align 4, !dbg !227
  %330 = load i32, i32* %s2, align 4, !dbg !228
  %331 = load i32*, i32** %k.addr, align 8, !dbg !229
  %arrayidx451 = getelementptr inbounds i32, i32* %331, i64 41, !dbg !229
  store i32 %330, i32* %arrayidx451, align 4, !dbg !230
  %332 = load i32, i32* %s3, align 4, !dbg !231
  %333 = load i32*, i32** %k.addr, align 8, !dbg !232
  %arrayidx452 = getelementptr inbounds i32, i32* %333, i64 42, !dbg !232
  store i32 %332, i32* %arrayidx452, align 4, !dbg !233
  %334 = load i32, i32* %s0, align 4, !dbg !234
  %335 = load i32*, i32** %k.addr, align 8, !dbg !235
  %arrayidx453 = getelementptr inbounds i32, i32* %335, i64 43, !dbg !235
  store i32 %334, i32* %arrayidx453, align 4, !dbg !236
  br label %do.body454, !dbg !237

do.body454:                                       ; preds = %do.end449
  call void @llvm.dbg.declare(metadata i32* %_t0455, metadata !238, metadata !DIExpression()), !dbg !240
  %336 = load i32, i32* %s1, align 4, !dbg !240
  %shr456 = lshr i32 %336, 15, !dbg !240
  store i32 %shr456, i32* %_t0455, align 4, !dbg !240
  %337 = load i32, i32* %s1, align 4, !dbg !240
  %shl457 = shl i32 %337, 17, !dbg !240
  %338 = load i32, i32* %s2, align 4, !dbg !240
  %shr458 = lshr i32 %338, 15, !dbg !240
  %or459 = or i32 %shl457, %shr458, !dbg !240
  store i32 %or459, i32* %s1, align 4, !dbg !240
  %339 = load i32, i32* %s2, align 4, !dbg !240
  %shl460 = shl i32 %339, 17, !dbg !240
  %340 = load i32, i32* %s3, align 4, !dbg !240
  %shr461 = lshr i32 %340, 15, !dbg !240
  %or462 = or i32 %shl460, %shr461, !dbg !240
  store i32 %or462, i32* %s2, align 4, !dbg !240
  %341 = load i32, i32* %s3, align 4, !dbg !240
  %shl463 = shl i32 %341, 17, !dbg !240
  %342 = load i32, i32* %s0, align 4, !dbg !240
  %shr464 = lshr i32 %342, 15, !dbg !240
  %or465 = or i32 %shl463, %shr464, !dbg !240
  store i32 %or465, i32* %s3, align 4, !dbg !240
  %343 = load i32, i32* %s0, align 4, !dbg !240
  %shl466 = shl i32 %343, 17, !dbg !240
  %344 = load i32, i32* %_t0455, align 4, !dbg !240
  %or467 = or i32 %shl466, %344, !dbg !240
  store i32 %or467, i32* %s0, align 4, !dbg !240
  br label %do.end468, !dbg !240

do.end468:                                        ; preds = %do.body454
  %345 = load i32, i32* %s1, align 4, !dbg !241
  %346 = load i32*, i32** %k.addr, align 8, !dbg !242
  %arrayidx469 = getelementptr inbounds i32, i32* %346, i64 48, !dbg !242
  store i32 %345, i32* %arrayidx469, align 4, !dbg !243
  %347 = load i32, i32* %s2, align 4, !dbg !244
  %348 = load i32*, i32** %k.addr, align 8, !dbg !245
  %arrayidx470 = getelementptr inbounds i32, i32* %348, i64 49, !dbg !245
  store i32 %347, i32* %arrayidx470, align 4, !dbg !246
  %349 = load i32, i32* %s3, align 4, !dbg !247
  %350 = load i32*, i32** %k.addr, align 8, !dbg !248
  %arrayidx471 = getelementptr inbounds i32, i32* %350, i64 50, !dbg !248
  store i32 %349, i32* %arrayidx471, align 4, !dbg !249
  %351 = load i32, i32* %s0, align 4, !dbg !250
  %352 = load i32*, i32** %k.addr, align 8, !dbg !251
  %arrayidx472 = getelementptr inbounds i32, i32* %352, i64 51, !dbg !251
  store i32 %351, i32* %arrayidx472, align 4, !dbg !252
  %353 = load i32*, i32** %k.addr, align 8, !dbg !253
  %arrayidx473 = getelementptr inbounds i32, i32* %353, i64 0, !dbg !253
  %354 = load i32, i32* %arrayidx473, align 4, !dbg !253
  store i32 %354, i32* %s0, align 4, !dbg !254
  %355 = load i32*, i32** %k.addr, align 8, !dbg !255
  %arrayidx474 = getelementptr inbounds i32, i32* %355, i64 1, !dbg !255
  %356 = load i32, i32* %arrayidx474, align 4, !dbg !255
  store i32 %356, i32* %s1, align 4, !dbg !256
  %357 = load i32*, i32** %k.addr, align 8, !dbg !257
  %arrayidx475 = getelementptr inbounds i32, i32* %357, i64 2, !dbg !257
  %358 = load i32, i32* %arrayidx475, align 4, !dbg !257
  store i32 %358, i32* %s2, align 4, !dbg !258
  %359 = load i32*, i32** %k.addr, align 8, !dbg !259
  %arrayidx476 = getelementptr inbounds i32, i32* %359, i64 3, !dbg !259
  %360 = load i32, i32* %arrayidx476, align 4, !dbg !259
  store i32 %360, i32* %s3, align 4, !dbg !260
  br label %do.body477, !dbg !261

do.body477:                                       ; preds = %do.end468
  call void @llvm.dbg.declare(metadata i32* %_t0478, metadata !262, metadata !DIExpression()), !dbg !264
  %361 = load i32, i32* %s0, align 4, !dbg !264
  %shr479 = lshr i32 %361, 17, !dbg !264
  store i32 %shr479, i32* %_t0478, align 4, !dbg !264
  %362 = load i32, i32* %s0, align 4, !dbg !264
  %shl480 = shl i32 %362, 15, !dbg !264
  %363 = load i32, i32* %s1, align 4, !dbg !264
  %shr481 = lshr i32 %363, 17, !dbg !264
  %or482 = or i32 %shl480, %shr481, !dbg !264
  store i32 %or482, i32* %s0, align 4, !dbg !264
  %364 = load i32, i32* %s1, align 4, !dbg !264
  %shl483 = shl i32 %364, 15, !dbg !264
  %365 = load i32, i32* %s2, align 4, !dbg !264
  %shr484 = lshr i32 %365, 17, !dbg !264
  %or485 = or i32 %shl483, %shr484, !dbg !264
  store i32 %or485, i32* %s1, align 4, !dbg !264
  %366 = load i32, i32* %s2, align 4, !dbg !264
  %shl486 = shl i32 %366, 15, !dbg !264
  %367 = load i32, i32* %s3, align 4, !dbg !264
  %shr487 = lshr i32 %367, 17, !dbg !264
  %or488 = or i32 %shl486, %shr487, !dbg !264
  store i32 %or488, i32* %s2, align 4, !dbg !264
  %368 = load i32, i32* %s3, align 4, !dbg !264
  %shl489 = shl i32 %368, 15, !dbg !264
  %369 = load i32, i32* %_t0478, align 4, !dbg !264
  %or490 = or i32 %shl489, %369, !dbg !264
  store i32 %or490, i32* %s3, align 4, !dbg !264
  br label %do.end491, !dbg !264

do.end491:                                        ; preds = %do.body477
  %370 = load i32, i32* %s0, align 4, !dbg !265
  %371 = load i32*, i32** %k.addr, align 8, !dbg !266
  %arrayidx492 = getelementptr inbounds i32, i32* %371, i64 8, !dbg !266
  store i32 %370, i32* %arrayidx492, align 4, !dbg !267
  %372 = load i32, i32* %s1, align 4, !dbg !268
  %373 = load i32*, i32** %k.addr, align 8, !dbg !269
  %arrayidx493 = getelementptr inbounds i32, i32* %373, i64 9, !dbg !269
  store i32 %372, i32* %arrayidx493, align 4, !dbg !270
  %374 = load i32, i32* %s2, align 4, !dbg !271
  %375 = load i32*, i32** %k.addr, align 8, !dbg !272
  %arrayidx494 = getelementptr inbounds i32, i32* %375, i64 10, !dbg !272
  store i32 %374, i32* %arrayidx494, align 4, !dbg !273
  %376 = load i32, i32* %s3, align 4, !dbg !274
  %377 = load i32*, i32** %k.addr, align 8, !dbg !275
  %arrayidx495 = getelementptr inbounds i32, i32* %377, i64 11, !dbg !275
  store i32 %376, i32* %arrayidx495, align 4, !dbg !276
  br label %do.body496, !dbg !277

do.body496:                                       ; preds = %do.end491
  call void @llvm.dbg.declare(metadata i32* %_t0497, metadata !278, metadata !DIExpression()), !dbg !280
  %378 = load i32, i32* %s0, align 4, !dbg !280
  %shr498 = lshr i32 %378, 2, !dbg !280
  store i32 %shr498, i32* %_t0497, align 4, !dbg !280
  %379 = load i32, i32* %s0, align 4, !dbg !280
  %shl499 = shl i32 %379, 30, !dbg !280
  %380 = load i32, i32* %s1, align 4, !dbg !280
  %shr500 = lshr i32 %380, 2, !dbg !280
  %or501 = or i32 %shl499, %shr500, !dbg !280
  store i32 %or501, i32* %s0, align 4, !dbg !280
  %381 = load i32, i32* %s1, align 4, !dbg !280
  %shl502 = shl i32 %381, 30, !dbg !280
  %382 = load i32, i32* %s2, align 4, !dbg !280
  %shr503 = lshr i32 %382, 2, !dbg !280
  %or504 = or i32 %shl502, %shr503, !dbg !280
  store i32 %or504, i32* %s1, align 4, !dbg !280
  %383 = load i32, i32* %s2, align 4, !dbg !280
  %shl505 = shl i32 %383, 30, !dbg !280
  %384 = load i32, i32* %s3, align 4, !dbg !280
  %shr506 = lshr i32 %384, 2, !dbg !280
  %or507 = or i32 %shl505, %shr506, !dbg !280
  store i32 %or507, i32* %s2, align 4, !dbg !280
  %385 = load i32, i32* %s3, align 4, !dbg !280
  %shl508 = shl i32 %385, 30, !dbg !280
  %386 = load i32, i32* %_t0497, align 4, !dbg !280
  %or509 = or i32 %shl508, %386, !dbg !280
  store i32 %or509, i32* %s3, align 4, !dbg !280
  br label %do.end510, !dbg !280

do.end510:                                        ; preds = %do.body496
  %387 = load i32, i32* %s0, align 4, !dbg !281
  %388 = load i32*, i32** %k.addr, align 8, !dbg !282
  %arrayidx511 = getelementptr inbounds i32, i32* %388, i64 20, !dbg !282
  store i32 %387, i32* %arrayidx511, align 4, !dbg !283
  %389 = load i32, i32* %s1, align 4, !dbg !284
  %390 = load i32*, i32** %k.addr, align 8, !dbg !285
  %arrayidx512 = getelementptr inbounds i32, i32* %390, i64 21, !dbg !285
  store i32 %389, i32* %arrayidx512, align 4, !dbg !286
  %391 = load i32, i32* %s2, align 4, !dbg !287
  %392 = load i32*, i32** %k.addr, align 8, !dbg !288
  %arrayidx513 = getelementptr inbounds i32, i32* %392, i64 22, !dbg !288
  store i32 %391, i32* %arrayidx513, align 4, !dbg !289
  %393 = load i32, i32* %s3, align 4, !dbg !290
  %394 = load i32*, i32** %k.addr, align 8, !dbg !291
  %arrayidx514 = getelementptr inbounds i32, i32* %394, i64 23, !dbg !291
  store i32 %393, i32* %arrayidx514, align 4, !dbg !292
  br label %do.body515, !dbg !293

do.body515:                                       ; preds = %do.end510
  call void @llvm.dbg.declare(metadata i32* %_t0516, metadata !294, metadata !DIExpression()), !dbg !296
  %395 = load i32, i32* %s0, align 4, !dbg !296
  %shr517 = lshr i32 %395, 17, !dbg !296
  store i32 %shr517, i32* %_t0516, align 4, !dbg !296
  %396 = load i32, i32* %s0, align 4, !dbg !296
  %shl518 = shl i32 %396, 15, !dbg !296
  %397 = load i32, i32* %s1, align 4, !dbg !296
  %shr519 = lshr i32 %397, 17, !dbg !296
  %or520 = or i32 %shl518, %shr519, !dbg !296
  store i32 %or520, i32* %s0, align 4, !dbg !296
  %398 = load i32, i32* %s1, align 4, !dbg !296
  %shl521 = shl i32 %398, 15, !dbg !296
  %399 = load i32, i32* %s2, align 4, !dbg !296
  %shr522 = lshr i32 %399, 17, !dbg !296
  %or523 = or i32 %shl521, %shr522, !dbg !296
  store i32 %or523, i32* %s1, align 4, !dbg !296
  %400 = load i32, i32* %s2, align 4, !dbg !296
  %shl524 = shl i32 %400, 15, !dbg !296
  %401 = load i32, i32* %s3, align 4, !dbg !296
  %shr525 = lshr i32 %401, 17, !dbg !296
  %or526 = or i32 %shl524, %shr525, !dbg !296
  store i32 %or526, i32* %s2, align 4, !dbg !296
  %402 = load i32, i32* %s3, align 4, !dbg !296
  %shl527 = shl i32 %402, 15, !dbg !296
  %403 = load i32, i32* %_t0516, align 4, !dbg !296
  %or528 = or i32 %shl527, %403, !dbg !296
  store i32 %or528, i32* %s3, align 4, !dbg !296
  br label %do.end529, !dbg !296

do.end529:                                        ; preds = %do.body515
  %404 = load i32, i32* %s2, align 4, !dbg !297
  %405 = load i32*, i32** %k.addr, align 8, !dbg !298
  %arrayidx530 = getelementptr inbounds i32, i32* %405, i64 26, !dbg !298
  store i32 %404, i32* %arrayidx530, align 4, !dbg !299
  %406 = load i32, i32* %s3, align 4, !dbg !300
  %407 = load i32*, i32** %k.addr, align 8, !dbg !301
  %arrayidx531 = getelementptr inbounds i32, i32* %407, i64 27, !dbg !301
  store i32 %406, i32* %arrayidx531, align 4, !dbg !302
  br label %do.body532, !dbg !303

do.body532:                                       ; preds = %do.end529
  call void @llvm.dbg.declare(metadata i32* %_t0533, metadata !304, metadata !DIExpression()), !dbg !306
  %408 = load i32, i32* %s0, align 4, !dbg !306
  %shr534 = lshr i32 %408, 15, !dbg !306
  store i32 %shr534, i32* %_t0533, align 4, !dbg !306
  %409 = load i32, i32* %s0, align 4, !dbg !306
  %shl535 = shl i32 %409, 17, !dbg !306
  %410 = load i32, i32* %s1, align 4, !dbg !306
  %shr536 = lshr i32 %410, 15, !dbg !306
  %or537 = or i32 %shl535, %shr536, !dbg !306
  store i32 %or537, i32* %s0, align 4, !dbg !306
  %411 = load i32, i32* %s1, align 4, !dbg !306
  %shl538 = shl i32 %411, 17, !dbg !306
  %412 = load i32, i32* %s2, align 4, !dbg !306
  %shr539 = lshr i32 %412, 15, !dbg !306
  %or540 = or i32 %shl538, %shr539, !dbg !306
  store i32 %or540, i32* %s1, align 4, !dbg !306
  %413 = load i32, i32* %s2, align 4, !dbg !306
  %shl541 = shl i32 %413, 17, !dbg !306
  %414 = load i32, i32* %s3, align 4, !dbg !306
  %shr542 = lshr i32 %414, 15, !dbg !306
  %or543 = or i32 %shl541, %shr542, !dbg !306
  store i32 %or543, i32* %s2, align 4, !dbg !306
  %415 = load i32, i32* %s3, align 4, !dbg !306
  %shl544 = shl i32 %415, 17, !dbg !306
  %416 = load i32, i32* %_t0533, align 4, !dbg !306
  %or545 = or i32 %shl544, %416, !dbg !306
  store i32 %or545, i32* %s3, align 4, !dbg !306
  br label %do.end546, !dbg !306

do.end546:                                        ; preds = %do.body532
  %417 = load i32, i32* %s0, align 4, !dbg !307
  %418 = load i32*, i32** %k.addr, align 8, !dbg !308
  %arrayidx547 = getelementptr inbounds i32, i32* %418, i64 32, !dbg !308
  store i32 %417, i32* %arrayidx547, align 4, !dbg !309
  %419 = load i32, i32* %s1, align 4, !dbg !310
  %420 = load i32*, i32** %k.addr, align 8, !dbg !311
  %arrayidx548 = getelementptr inbounds i32, i32* %420, i64 33, !dbg !311
  store i32 %419, i32* %arrayidx548, align 4, !dbg !312
  %421 = load i32, i32* %s2, align 4, !dbg !313
  %422 = load i32*, i32** %k.addr, align 8, !dbg !314
  %arrayidx549 = getelementptr inbounds i32, i32* %422, i64 34, !dbg !314
  store i32 %421, i32* %arrayidx549, align 4, !dbg !315
  %423 = load i32, i32* %s3, align 4, !dbg !316
  %424 = load i32*, i32** %k.addr, align 8, !dbg !317
  %arrayidx550 = getelementptr inbounds i32, i32* %424, i64 35, !dbg !317
  store i32 %423, i32* %arrayidx550, align 4, !dbg !318
  br label %do.body551, !dbg !319

do.body551:                                       ; preds = %do.end546
  call void @llvm.dbg.declare(metadata i32* %_t0552, metadata !320, metadata !DIExpression()), !dbg !322
  %425 = load i32, i32* %s0, align 4, !dbg !322
  %shr553 = lshr i32 %425, 15, !dbg !322
  store i32 %shr553, i32* %_t0552, align 4, !dbg !322
  %426 = load i32, i32* %s0, align 4, !dbg !322
  %shl554 = shl i32 %426, 17, !dbg !322
  %427 = load i32, i32* %s1, align 4, !dbg !322
  %shr555 = lshr i32 %427, 15, !dbg !322
  %or556 = or i32 %shl554, %shr555, !dbg !322
  store i32 %or556, i32* %s0, align 4, !dbg !322
  %428 = load i32, i32* %s1, align 4, !dbg !322
  %shl557 = shl i32 %428, 17, !dbg !322
  %429 = load i32, i32* %s2, align 4, !dbg !322
  %shr558 = lshr i32 %429, 15, !dbg !322
  %or559 = or i32 %shl557, %shr558, !dbg !322
  store i32 %or559, i32* %s1, align 4, !dbg !322
  %430 = load i32, i32* %s2, align 4, !dbg !322
  %shl560 = shl i32 %430, 17, !dbg !322
  %431 = load i32, i32* %s3, align 4, !dbg !322
  %shr561 = lshr i32 %431, 15, !dbg !322
  %or562 = or i32 %shl560, %shr561, !dbg !322
  store i32 %or562, i32* %s2, align 4, !dbg !322
  %432 = load i32, i32* %s3, align 4, !dbg !322
  %shl563 = shl i32 %432, 17, !dbg !322
  %433 = load i32, i32* %_t0552, align 4, !dbg !322
  %or564 = or i32 %shl563, %433, !dbg !322
  store i32 %or564, i32* %s3, align 4, !dbg !322
  br label %do.end565, !dbg !322

do.end565:                                        ; preds = %do.body551
  %434 = load i32, i32* %s0, align 4, !dbg !323
  %435 = load i32*, i32** %k.addr, align 8, !dbg !324
  %arrayidx566 = getelementptr inbounds i32, i32* %435, i64 36, !dbg !324
  store i32 %434, i32* %arrayidx566, align 4, !dbg !325
  %436 = load i32, i32* %s1, align 4, !dbg !326
  %437 = load i32*, i32** %k.addr, align 8, !dbg !327
  %arrayidx567 = getelementptr inbounds i32, i32* %437, i64 37, !dbg !327
  store i32 %436, i32* %arrayidx567, align 4, !dbg !328
  %438 = load i32, i32* %s2, align 4, !dbg !329
  %439 = load i32*, i32** %k.addr, align 8, !dbg !330
  %arrayidx568 = getelementptr inbounds i32, i32* %439, i64 38, !dbg !330
  store i32 %438, i32* %arrayidx568, align 4, !dbg !331
  %440 = load i32, i32* %s3, align 4, !dbg !332
  %441 = load i32*, i32** %k.addr, align 8, !dbg !333
  %arrayidx569 = getelementptr inbounds i32, i32* %441, i64 39, !dbg !333
  store i32 %440, i32* %arrayidx569, align 4, !dbg !334
  br label %do.body570, !dbg !335

do.body570:                                       ; preds = %do.end565
  call void @llvm.dbg.declare(metadata i32* %_t0571, metadata !336, metadata !DIExpression()), !dbg !338
  %442 = load i32, i32* %s0, align 4, !dbg !338
  %shr572 = lshr i32 %442, 15, !dbg !338
  store i32 %shr572, i32* %_t0571, align 4, !dbg !338
  %443 = load i32, i32* %s0, align 4, !dbg !338
  %shl573 = shl i32 %443, 17, !dbg !338
  %444 = load i32, i32* %s1, align 4, !dbg !338
  %shr574 = lshr i32 %444, 15, !dbg !338
  %or575 = or i32 %shl573, %shr574, !dbg !338
  store i32 %or575, i32* %s0, align 4, !dbg !338
  %445 = load i32, i32* %s1, align 4, !dbg !338
  %shl576 = shl i32 %445, 17, !dbg !338
  %446 = load i32, i32* %s2, align 4, !dbg !338
  %shr577 = lshr i32 %446, 15, !dbg !338
  %or578 = or i32 %shl576, %shr577, !dbg !338
  store i32 %or578, i32* %s1, align 4, !dbg !338
  %447 = load i32, i32* %s2, align 4, !dbg !338
  %shl579 = shl i32 %447, 17, !dbg !338
  %448 = load i32, i32* %s3, align 4, !dbg !338
  %shr580 = lshr i32 %448, 15, !dbg !338
  %or581 = or i32 %shl579, %shr580, !dbg !338
  store i32 %or581, i32* %s2, align 4, !dbg !338
  %449 = load i32, i32* %s3, align 4, !dbg !338
  %shl582 = shl i32 %449, 17, !dbg !338
  %450 = load i32, i32* %_t0571, align 4, !dbg !338
  %or583 = or i32 %shl582, %450, !dbg !338
  store i32 %or583, i32* %s3, align 4, !dbg !338
  br label %do.end584, !dbg !338

do.end584:                                        ; preds = %do.body570
  %451 = load i32, i32* %s0, align 4, !dbg !339
  %452 = load i32*, i32** %k.addr, align 8, !dbg !340
  %arrayidx585 = getelementptr inbounds i32, i32* %452, i64 44, !dbg !340
  store i32 %451, i32* %arrayidx585, align 4, !dbg !341
  %453 = load i32, i32* %s1, align 4, !dbg !342
  %454 = load i32*, i32** %k.addr, align 8, !dbg !343
  %arrayidx586 = getelementptr inbounds i32, i32* %454, i64 45, !dbg !343
  store i32 %453, i32* %arrayidx586, align 4, !dbg !344
  %455 = load i32, i32* %s2, align 4, !dbg !345
  %456 = load i32*, i32** %k.addr, align 8, !dbg !346
  %arrayidx587 = getelementptr inbounds i32, i32* %456, i64 46, !dbg !346
  store i32 %455, i32* %arrayidx587, align 4, !dbg !347
  %457 = load i32, i32* %s3, align 4, !dbg !348
  %458 = load i32*, i32** %k.addr, align 8, !dbg !349
  %arrayidx588 = getelementptr inbounds i32, i32* %458, i64 47, !dbg !349
  store i32 %457, i32* %arrayidx588, align 4, !dbg !350
  store i32 3, i32* %retval, align 4, !dbg !351
  br label %return, !dbg !351

if.else589:                                       ; preds = %do.end354
  %459 = load i32, i32* %s0, align 4, !dbg !352
  %460 = load i32*, i32** %k.addr, align 8, !dbg !354
  %arrayidx590 = getelementptr inbounds i32, i32* %460, i64 12, !dbg !354
  store i32 %459, i32* %arrayidx590, align 4, !dbg !355
  %461 = load i32, i32* %s1, align 4, !dbg !356
  %462 = load i32*, i32** %k.addr, align 8, !dbg !357
  %arrayidx591 = getelementptr inbounds i32, i32* %462, i64 13, !dbg !357
  store i32 %461, i32* %arrayidx591, align 4, !dbg !358
  %463 = load i32, i32* %s2, align 4, !dbg !359
  %464 = load i32*, i32** %k.addr, align 8, !dbg !360
  %arrayidx592 = getelementptr inbounds i32, i32* %464, i64 14, !dbg !360
  store i32 %463, i32* %arrayidx592, align 4, !dbg !361
  %465 = load i32, i32* %s3, align 4, !dbg !362
  %466 = load i32*, i32** %k.addr, align 8, !dbg !363
  %arrayidx593 = getelementptr inbounds i32, i32* %466, i64 15, !dbg !363
  store i32 %465, i32* %arrayidx593, align 4, !dbg !364
  %467 = load i32*, i32** %k.addr, align 8, !dbg !365
  %arrayidx594 = getelementptr inbounds i32, i32* %467, i64 8, !dbg !365
  %468 = load i32, i32* %arrayidx594, align 4, !dbg !365
  %469 = load i32, i32* %s0, align 4, !dbg !366
  %xor595 = xor i32 %469, %468, !dbg !366
  store i32 %xor595, i32* %s0, align 4, !dbg !366
  %470 = load i32*, i32** %k.addr, align 8, !dbg !367
  %arrayidx596 = getelementptr inbounds i32, i32* %470, i64 9, !dbg !367
  %471 = load i32, i32* %arrayidx596, align 4, !dbg !367
  %472 = load i32, i32* %s1, align 4, !dbg !368
  %xor597 = xor i32 %472, %471, !dbg !368
  store i32 %xor597, i32* %s1, align 4, !dbg !368
  %473 = load i32*, i32** %k.addr, align 8, !dbg !369
  %arrayidx598 = getelementptr inbounds i32, i32* %473, i64 10, !dbg !369
  %474 = load i32, i32* %arrayidx598, align 4, !dbg !369
  %475 = load i32, i32* %s2, align 4, !dbg !370
  %xor599 = xor i32 %475, %474, !dbg !370
  store i32 %xor599, i32* %s2, align 4, !dbg !370
  %476 = load i32*, i32** %k.addr, align 8, !dbg !371
  %arrayidx600 = getelementptr inbounds i32, i32* %476, i64 11, !dbg !371
  %477 = load i32, i32* %arrayidx600, align 4, !dbg !371
  %478 = load i32, i32* %s3, align 4, !dbg !372
  %xor601 = xor i32 %478, %477, !dbg !372
  store i32 %xor601, i32* %s3, align 4, !dbg !372
  br label %do.body602, !dbg !373

do.body602:                                       ; preds = %if.else589
  call void @llvm.dbg.declare(metadata i32* %_t0603, metadata !374, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata i32* %_t1604, metadata !377, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata i32* %_t2605, metadata !378, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata i32* %_t3606, metadata !379, metadata !DIExpression()), !dbg !376
  %479 = load i32, i32* %s0, align 4, !dbg !376
  %480 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 8), align 4, !dbg !376
  %xor607 = xor i32 %479, %480, !dbg !376
  store i32 %xor607, i32* %_t0603, align 4, !dbg !376
  %481 = load i32, i32* %_t0603, align 4, !dbg !376
  %and608 = and i32 %481, 255, !dbg !376
  %idxprom609 = zext i32 %and608 to i64, !dbg !376
  %arrayidx610 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom609, !dbg !376
  %482 = load i32, i32* %arrayidx610, align 4, !dbg !376
  store i32 %482, i32* %_t3606, align 4, !dbg !376
  %483 = load i32, i32* %s1, align 4, !dbg !376
  %484 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 9), align 4, !dbg !376
  %xor611 = xor i32 %483, %484, !dbg !376
  store i32 %xor611, i32* %_t1604, align 4, !dbg !376
  %485 = load i32, i32* %_t0603, align 4, !dbg !376
  %shr612 = lshr i32 %485, 8, !dbg !376
  %and613 = and i32 %shr612, 255, !dbg !376
  %idxprom614 = zext i32 %and613 to i64, !dbg !376
  %arrayidx615 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom614, !dbg !376
  %486 = load i32, i32* %arrayidx615, align 4, !dbg !376
  %487 = load i32, i32* %_t3606, align 4, !dbg !376
  %xor616 = xor i32 %487, %486, !dbg !376
  store i32 %xor616, i32* %_t3606, align 4, !dbg !376
  %488 = load i32, i32* %_t1604, align 4, !dbg !376
  %and617 = and i32 %488, 255, !dbg !376
  %idxprom618 = zext i32 %and617 to i64, !dbg !376
  %arrayidx619 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom618, !dbg !376
  %489 = load i32, i32* %arrayidx619, align 4, !dbg !376
  store i32 %489, i32* %_t2605, align 4, !dbg !376
  %490 = load i32, i32* %_t0603, align 4, !dbg !376
  %shr620 = lshr i32 %490, 16, !dbg !376
  %and621 = and i32 %shr620, 255, !dbg !376
  %idxprom622 = zext i32 %and621 to i64, !dbg !376
  %arrayidx623 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom622, !dbg !376
  %491 = load i32, i32* %arrayidx623, align 4, !dbg !376
  %492 = load i32, i32* %_t3606, align 4, !dbg !376
  %xor624 = xor i32 %492, %491, !dbg !376
  store i32 %xor624, i32* %_t3606, align 4, !dbg !376
  %493 = load i32, i32* %_t1604, align 4, !dbg !376
  %shr625 = lshr i32 %493, 8, !dbg !376
  %and626 = and i32 %shr625, 255, !dbg !376
  %idxprom627 = zext i32 %and626 to i64, !dbg !376
  %arrayidx628 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom627, !dbg !376
  %494 = load i32, i32* %arrayidx628, align 4, !dbg !376
  %495 = load i32, i32* %_t2605, align 4, !dbg !376
  %xor629 = xor i32 %495, %494, !dbg !376
  store i32 %xor629, i32* %_t2605, align 4, !dbg !376
  %496 = load i32, i32* %_t0603, align 4, !dbg !376
  %shr630 = lshr i32 %496, 24, !dbg !376
  %idxprom631 = zext i32 %shr630 to i64, !dbg !376
  %arrayidx632 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom631, !dbg !376
  %497 = load i32, i32* %arrayidx632, align 4, !dbg !376
  %498 = load i32, i32* %_t3606, align 4, !dbg !376
  %xor633 = xor i32 %498, %497, !dbg !376
  store i32 %xor633, i32* %_t3606, align 4, !dbg !376
  %499 = load i32, i32* %_t3606, align 4, !dbg !376
  %500 = load i32, i32* %_t2605, align 4, !dbg !376
  %xor634 = xor i32 %500, %499, !dbg !376
  store i32 %xor634, i32* %_t2605, align 4, !dbg !376
  %501 = load i32, i32* %_t3606, align 4, !dbg !376
  %shr635 = lshr i32 %501, 8, !dbg !376
  %502 = load i32, i32* %_t3606, align 4, !dbg !376
  %shl636 = shl i32 %502, 24, !dbg !376
  %add637 = add i32 %shr635, %shl636, !dbg !376
  store i32 %add637, i32* %_t3606, align 4, !dbg !376
  %503 = load i32, i32* %_t1604, align 4, !dbg !376
  %shr638 = lshr i32 %503, 16, !dbg !376
  %and639 = and i32 %shr638, 255, !dbg !376
  %idxprom640 = zext i32 %and639 to i64, !dbg !376
  %arrayidx641 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom640, !dbg !376
  %504 = load i32, i32* %arrayidx641, align 4, !dbg !376
  %505 = load i32, i32* %_t2605, align 4, !dbg !376
  %xor642 = xor i32 %505, %504, !dbg !376
  store i32 %xor642, i32* %_t2605, align 4, !dbg !376
  %506 = load i32, i32* %_t3606, align 4, !dbg !376
  %507 = load i32, i32* %s3, align 4, !dbg !376
  %xor643 = xor i32 %507, %506, !dbg !376
  store i32 %xor643, i32* %s3, align 4, !dbg !376
  %508 = load i32, i32* %_t1604, align 4, !dbg !376
  %shr644 = lshr i32 %508, 24, !dbg !376
  %idxprom645 = zext i32 %shr644 to i64, !dbg !376
  %arrayidx646 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom645, !dbg !376
  %509 = load i32, i32* %arrayidx646, align 4, !dbg !376
  %510 = load i32, i32* %_t2605, align 4, !dbg !376
  %xor647 = xor i32 %510, %509, !dbg !376
  store i32 %xor647, i32* %_t2605, align 4, !dbg !376
  %511 = load i32, i32* %_t2605, align 4, !dbg !376
  %512 = load i32, i32* %s2, align 4, !dbg !376
  %xor648 = xor i32 %512, %511, !dbg !376
  store i32 %xor648, i32* %s2, align 4, !dbg !376
  %513 = load i32, i32* %_t2605, align 4, !dbg !376
  %514 = load i32, i32* %s3, align 4, !dbg !376
  %xor649 = xor i32 %514, %513, !dbg !376
  store i32 %xor649, i32* %s3, align 4, !dbg !376
  br label %do.end650, !dbg !376

do.end650:                                        ; preds = %do.body602
  br label %do.body651, !dbg !380

do.body651:                                       ; preds = %do.end650
  call void @llvm.dbg.declare(metadata i32* %_t0652, metadata !381, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i32* %_t1653, metadata !384, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i32* %_t2654, metadata !385, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i32* %_t3655, metadata !386, metadata !DIExpression()), !dbg !383
  %515 = load i32, i32* %s2, align 4, !dbg !383
  %516 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 10), align 4, !dbg !383
  %xor656 = xor i32 %515, %516, !dbg !383
  store i32 %xor656, i32* %_t0652, align 4, !dbg !383
  %517 = load i32, i32* %_t0652, align 4, !dbg !383
  %and657 = and i32 %517, 255, !dbg !383
  %idxprom658 = zext i32 %and657 to i64, !dbg !383
  %arrayidx659 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom658, !dbg !383
  %518 = load i32, i32* %arrayidx659, align 4, !dbg !383
  store i32 %518, i32* %_t3655, align 4, !dbg !383
  %519 = load i32, i32* %s3, align 4, !dbg !383
  %520 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @SIGMA, i64 0, i64 11), align 4, !dbg !383
  %xor660 = xor i32 %519, %520, !dbg !383
  store i32 %xor660, i32* %_t1653, align 4, !dbg !383
  %521 = load i32, i32* %_t0652, align 4, !dbg !383
  %shr661 = lshr i32 %521, 8, !dbg !383
  %and662 = and i32 %shr661, 255, !dbg !383
  %idxprom663 = zext i32 %and662 to i64, !dbg !383
  %arrayidx664 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom663, !dbg !383
  %522 = load i32, i32* %arrayidx664, align 4, !dbg !383
  %523 = load i32, i32* %_t3655, align 4, !dbg !383
  %xor665 = xor i32 %523, %522, !dbg !383
  store i32 %xor665, i32* %_t3655, align 4, !dbg !383
  %524 = load i32, i32* %_t1653, align 4, !dbg !383
  %and666 = and i32 %524, 255, !dbg !383
  %idxprom667 = zext i32 %and666 to i64, !dbg !383
  %arrayidx668 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom667, !dbg !383
  %525 = load i32, i32* %arrayidx668, align 4, !dbg !383
  store i32 %525, i32* %_t2654, align 4, !dbg !383
  %526 = load i32, i32* %_t0652, align 4, !dbg !383
  %shr669 = lshr i32 %526, 16, !dbg !383
  %and670 = and i32 %shr669, 255, !dbg !383
  %idxprom671 = zext i32 %and670 to i64, !dbg !383
  %arrayidx672 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom671, !dbg !383
  %527 = load i32, i32* %arrayidx672, align 4, !dbg !383
  %528 = load i32, i32* %_t3655, align 4, !dbg !383
  %xor673 = xor i32 %528, %527, !dbg !383
  store i32 %xor673, i32* %_t3655, align 4, !dbg !383
  %529 = load i32, i32* %_t1653, align 4, !dbg !383
  %shr674 = lshr i32 %529, 8, !dbg !383
  %and675 = and i32 %shr674, 255, !dbg !383
  %idxprom676 = zext i32 %and675 to i64, !dbg !383
  %arrayidx677 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom676, !dbg !383
  %530 = load i32, i32* %arrayidx677, align 4, !dbg !383
  %531 = load i32, i32* %_t2654, align 4, !dbg !383
  %xor678 = xor i32 %531, %530, !dbg !383
  store i32 %xor678, i32* %_t2654, align 4, !dbg !383
  %532 = load i32, i32* %_t0652, align 4, !dbg !383
  %shr679 = lshr i32 %532, 24, !dbg !383
  %idxprom680 = zext i32 %shr679 to i64, !dbg !383
  %arrayidx681 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom680, !dbg !383
  %533 = load i32, i32* %arrayidx681, align 4, !dbg !383
  %534 = load i32, i32* %_t3655, align 4, !dbg !383
  %xor682 = xor i32 %534, %533, !dbg !383
  store i32 %xor682, i32* %_t3655, align 4, !dbg !383
  %535 = load i32, i32* %_t3655, align 4, !dbg !383
  %536 = load i32, i32* %_t2654, align 4, !dbg !383
  %xor683 = xor i32 %536, %535, !dbg !383
  store i32 %xor683, i32* %_t2654, align 4, !dbg !383
  %537 = load i32, i32* %_t3655, align 4, !dbg !383
  %shr684 = lshr i32 %537, 8, !dbg !383
  %538 = load i32, i32* %_t3655, align 4, !dbg !383
  %shl685 = shl i32 %538, 24, !dbg !383
  %add686 = add i32 %shr684, %shl685, !dbg !383
  store i32 %add686, i32* %_t3655, align 4, !dbg !383
  %539 = load i32, i32* %_t1653, align 4, !dbg !383
  %shr687 = lshr i32 %539, 16, !dbg !383
  %and688 = and i32 %shr687, 255, !dbg !383
  %idxprom689 = zext i32 %and688 to i64, !dbg !383
  %arrayidx690 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom689, !dbg !383
  %540 = load i32, i32* %arrayidx690, align 4, !dbg !383
  %541 = load i32, i32* %_t2654, align 4, !dbg !383
  %xor691 = xor i32 %541, %540, !dbg !383
  store i32 %xor691, i32* %_t2654, align 4, !dbg !383
  %542 = load i32, i32* %_t3655, align 4, !dbg !383
  %543 = load i32, i32* %s1, align 4, !dbg !383
  %xor692 = xor i32 %543, %542, !dbg !383
  store i32 %xor692, i32* %s1, align 4, !dbg !383
  %544 = load i32, i32* %_t1653, align 4, !dbg !383
  %shr693 = lshr i32 %544, 24, !dbg !383
  %idxprom694 = zext i32 %shr693 to i64, !dbg !383
  %arrayidx695 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom694, !dbg !383
  %545 = load i32, i32* %arrayidx695, align 4, !dbg !383
  %546 = load i32, i32* %_t2654, align 4, !dbg !383
  %xor696 = xor i32 %546, %545, !dbg !383
  store i32 %xor696, i32* %_t2654, align 4, !dbg !383
  %547 = load i32, i32* %_t2654, align 4, !dbg !383
  %548 = load i32, i32* %s0, align 4, !dbg !383
  %xor697 = xor i32 %548, %547, !dbg !383
  store i32 %xor697, i32* %s0, align 4, !dbg !383
  %549 = load i32, i32* %_t2654, align 4, !dbg !383
  %550 = load i32, i32* %s1, align 4, !dbg !383
  %xor698 = xor i32 %550, %549, !dbg !383
  store i32 %xor698, i32* %s1, align 4, !dbg !383
  br label %do.end699, !dbg !383

do.end699:                                        ; preds = %do.body651
  %551 = load i32, i32* %s0, align 4, !dbg !387
  %552 = load i32*, i32** %k.addr, align 8, !dbg !388
  %arrayidx700 = getelementptr inbounds i32, i32* %552, i64 4, !dbg !388
  store i32 %551, i32* %arrayidx700, align 4, !dbg !389
  %553 = load i32, i32* %s1, align 4, !dbg !390
  %554 = load i32*, i32** %k.addr, align 8, !dbg !391
  %arrayidx701 = getelementptr inbounds i32, i32* %554, i64 5, !dbg !391
  store i32 %553, i32* %arrayidx701, align 4, !dbg !392
  %555 = load i32, i32* %s2, align 4, !dbg !393
  %556 = load i32*, i32** %k.addr, align 8, !dbg !394
  %arrayidx702 = getelementptr inbounds i32, i32* %556, i64 6, !dbg !394
  store i32 %555, i32* %arrayidx702, align 4, !dbg !395
  %557 = load i32, i32* %s3, align 4, !dbg !396
  %558 = load i32*, i32** %k.addr, align 8, !dbg !397
  %arrayidx703 = getelementptr inbounds i32, i32* %558, i64 7, !dbg !397
  store i32 %557, i32* %arrayidx703, align 4, !dbg !398
  br label %do.body704, !dbg !399

do.body704:                                       ; preds = %do.end699
  call void @llvm.dbg.declare(metadata i32* %_t0705, metadata !400, metadata !DIExpression()), !dbg !402
  %559 = load i32, i32* %s0, align 4, !dbg !402
  %shr706 = lshr i32 %559, 2, !dbg !402
  store i32 %shr706, i32* %_t0705, align 4, !dbg !402
  %560 = load i32, i32* %s0, align 4, !dbg !402
  %shl707 = shl i32 %560, 30, !dbg !402
  %561 = load i32, i32* %s1, align 4, !dbg !402
  %shr708 = lshr i32 %561, 2, !dbg !402
  %or709 = or i32 %shl707, %shr708, !dbg !402
  store i32 %or709, i32* %s0, align 4, !dbg !402
  %562 = load i32, i32* %s1, align 4, !dbg !402
  %shl710 = shl i32 %562, 30, !dbg !402
  %563 = load i32, i32* %s2, align 4, !dbg !402
  %shr711 = lshr i32 %563, 2, !dbg !402
  %or712 = or i32 %shl710, %shr711, !dbg !402
  store i32 %or712, i32* %s1, align 4, !dbg !402
  %564 = load i32, i32* %s2, align 4, !dbg !402
  %shl713 = shl i32 %564, 30, !dbg !402
  %565 = load i32, i32* %s3, align 4, !dbg !402
  %shr714 = lshr i32 %565, 2, !dbg !402
  %or715 = or i32 %shl713, %shr714, !dbg !402
  store i32 %or715, i32* %s2, align 4, !dbg !402
  %566 = load i32, i32* %s3, align 4, !dbg !402
  %shl716 = shl i32 %566, 30, !dbg !402
  %567 = load i32, i32* %_t0705, align 4, !dbg !402
  %or717 = or i32 %shl716, %567, !dbg !402
  store i32 %or717, i32* %s3, align 4, !dbg !402
  br label %do.end718, !dbg !402

do.end718:                                        ; preds = %do.body704
  %568 = load i32, i32* %s0, align 4, !dbg !403
  %569 = load i32*, i32** %k.addr, align 8, !dbg !404
  %arrayidx719 = getelementptr inbounds i32, i32* %569, i64 20, !dbg !404
  store i32 %568, i32* %arrayidx719, align 4, !dbg !405
  %570 = load i32, i32* %s1, align 4, !dbg !406
  %571 = load i32*, i32** %k.addr, align 8, !dbg !407
  %arrayidx720 = getelementptr inbounds i32, i32* %571, i64 21, !dbg !407
  store i32 %570, i32* %arrayidx720, align 4, !dbg !408
  %572 = load i32, i32* %s2, align 4, !dbg !409
  %573 = load i32*, i32** %k.addr, align 8, !dbg !410
  %arrayidx721 = getelementptr inbounds i32, i32* %573, i64 22, !dbg !410
  store i32 %572, i32* %arrayidx721, align 4, !dbg !411
  %574 = load i32, i32* %s3, align 4, !dbg !412
  %575 = load i32*, i32** %k.addr, align 8, !dbg !413
  %arrayidx722 = getelementptr inbounds i32, i32* %575, i64 23, !dbg !413
  store i32 %574, i32* %arrayidx722, align 4, !dbg !414
  br label %do.body723, !dbg !415

do.body723:                                       ; preds = %do.end718
  call void @llvm.dbg.declare(metadata i32* %_t0724, metadata !416, metadata !DIExpression()), !dbg !418
  %576 = load i32, i32* %s0, align 4, !dbg !418
  %shr725 = lshr i32 %576, 2, !dbg !418
  store i32 %shr725, i32* %_t0724, align 4, !dbg !418
  %577 = load i32, i32* %s0, align 4, !dbg !418
  %shl726 = shl i32 %577, 30, !dbg !418
  %578 = load i32, i32* %s1, align 4, !dbg !418
  %shr727 = lshr i32 %578, 2, !dbg !418
  %or728 = or i32 %shl726, %shr727, !dbg !418
  store i32 %or728, i32* %s0, align 4, !dbg !418
  %579 = load i32, i32* %s1, align 4, !dbg !418
  %shl729 = shl i32 %579, 30, !dbg !418
  %580 = load i32, i32* %s2, align 4, !dbg !418
  %shr730 = lshr i32 %580, 2, !dbg !418
  %or731 = or i32 %shl729, %shr730, !dbg !418
  store i32 %or731, i32* %s1, align 4, !dbg !418
  %581 = load i32, i32* %s2, align 4, !dbg !418
  %shl732 = shl i32 %581, 30, !dbg !418
  %582 = load i32, i32* %s3, align 4, !dbg !418
  %shr733 = lshr i32 %582, 2, !dbg !418
  %or734 = or i32 %shl732, %shr733, !dbg !418
  store i32 %or734, i32* %s2, align 4, !dbg !418
  %583 = load i32, i32* %s3, align 4, !dbg !418
  %shl735 = shl i32 %583, 30, !dbg !418
  %584 = load i32, i32* %_t0724, align 4, !dbg !418
  %or736 = or i32 %shl735, %584, !dbg !418
  store i32 %or736, i32* %s3, align 4, !dbg !418
  br label %do.end737, !dbg !418

do.end737:                                        ; preds = %do.body723
  %585 = load i32, i32* %s0, align 4, !dbg !419
  %586 = load i32*, i32** %k.addr, align 8, !dbg !420
  %arrayidx738 = getelementptr inbounds i32, i32* %586, i64 40, !dbg !420
  store i32 %585, i32* %arrayidx738, align 4, !dbg !421
  %587 = load i32, i32* %s1, align 4, !dbg !422
  %588 = load i32*, i32** %k.addr, align 8, !dbg !423
  %arrayidx739 = getelementptr inbounds i32, i32* %588, i64 41, !dbg !423
  store i32 %587, i32* %arrayidx739, align 4, !dbg !424
  %589 = load i32, i32* %s2, align 4, !dbg !425
  %590 = load i32*, i32** %k.addr, align 8, !dbg !426
  %arrayidx740 = getelementptr inbounds i32, i32* %590, i64 42, !dbg !426
  store i32 %589, i32* %arrayidx740, align 4, !dbg !427
  %591 = load i32, i32* %s3, align 4, !dbg !428
  %592 = load i32*, i32** %k.addr, align 8, !dbg !429
  %arrayidx741 = getelementptr inbounds i32, i32* %592, i64 43, !dbg !429
  store i32 %591, i32* %arrayidx741, align 4, !dbg !430
  br label %do.body742, !dbg !431

do.body742:                                       ; preds = %do.end737
  call void @llvm.dbg.declare(metadata i32* %_t0743, metadata !432, metadata !DIExpression()), !dbg !434
  %593 = load i32, i32* %s1, align 4, !dbg !434
  %shr744 = lshr i32 %593, 13, !dbg !434
  store i32 %shr744, i32* %_t0743, align 4, !dbg !434
  %594 = load i32, i32* %s1, align 4, !dbg !434
  %shl745 = shl i32 %594, 19, !dbg !434
  %595 = load i32, i32* %s2, align 4, !dbg !434
  %shr746 = lshr i32 %595, 13, !dbg !434
  %or747 = or i32 %shl745, %shr746, !dbg !434
  store i32 %or747, i32* %s1, align 4, !dbg !434
  %596 = load i32, i32* %s2, align 4, !dbg !434
  %shl748 = shl i32 %596, 19, !dbg !434
  %597 = load i32, i32* %s3, align 4, !dbg !434
  %shr749 = lshr i32 %597, 13, !dbg !434
  %or750 = or i32 %shl748, %shr749, !dbg !434
  store i32 %or750, i32* %s2, align 4, !dbg !434
  %598 = load i32, i32* %s3, align 4, !dbg !434
  %shl751 = shl i32 %598, 19, !dbg !434
  %599 = load i32, i32* %s0, align 4, !dbg !434
  %shr752 = lshr i32 %599, 13, !dbg !434
  %or753 = or i32 %shl751, %shr752, !dbg !434
  store i32 %or753, i32* %s3, align 4, !dbg !434
  %600 = load i32, i32* %s0, align 4, !dbg !434
  %shl754 = shl i32 %600, 19, !dbg !434
  %601 = load i32, i32* %_t0743, align 4, !dbg !434
  %or755 = or i32 %shl754, %601, !dbg !434
  store i32 %or755, i32* %s0, align 4, !dbg !434
  br label %do.end756, !dbg !434

do.end756:                                        ; preds = %do.body742
  %602 = load i32, i32* %s1, align 4, !dbg !435
  %603 = load i32*, i32** %k.addr, align 8, !dbg !436
  %arrayidx757 = getelementptr inbounds i32, i32* %603, i64 64, !dbg !436
  store i32 %602, i32* %arrayidx757, align 4, !dbg !437
  %604 = load i32, i32* %s2, align 4, !dbg !438
  %605 = load i32*, i32** %k.addr, align 8, !dbg !439
  %arrayidx758 = getelementptr inbounds i32, i32* %605, i64 65, !dbg !439
  store i32 %604, i32* %arrayidx758, align 4, !dbg !440
  %606 = load i32, i32* %s3, align 4, !dbg !441
  %607 = load i32*, i32** %k.addr, align 8, !dbg !442
  %arrayidx759 = getelementptr inbounds i32, i32* %607, i64 66, !dbg !442
  store i32 %606, i32* %arrayidx759, align 4, !dbg !443
  %608 = load i32, i32* %s0, align 4, !dbg !444
  %609 = load i32*, i32** %k.addr, align 8, !dbg !445
  %arrayidx760 = getelementptr inbounds i32, i32* %609, i64 67, !dbg !445
  store i32 %608, i32* %arrayidx760, align 4, !dbg !446
  %610 = load i32*, i32** %k.addr, align 8, !dbg !447
  %arrayidx761 = getelementptr inbounds i32, i32* %610, i64 8, !dbg !447
  %611 = load i32, i32* %arrayidx761, align 4, !dbg !447
  store i32 %611, i32* %s0, align 4, !dbg !448
  %612 = load i32*, i32** %k.addr, align 8, !dbg !449
  %arrayidx762 = getelementptr inbounds i32, i32* %612, i64 9, !dbg !449
  %613 = load i32, i32* %arrayidx762, align 4, !dbg !449
  store i32 %613, i32* %s1, align 4, !dbg !450
  %614 = load i32*, i32** %k.addr, align 8, !dbg !451
  %arrayidx763 = getelementptr inbounds i32, i32* %614, i64 10, !dbg !451
  %615 = load i32, i32* %arrayidx763, align 4, !dbg !451
  store i32 %615, i32* %s2, align 4, !dbg !452
  %616 = load i32*, i32** %k.addr, align 8, !dbg !453
  %arrayidx764 = getelementptr inbounds i32, i32* %616, i64 11, !dbg !453
  %617 = load i32, i32* %arrayidx764, align 4, !dbg !453
  store i32 %617, i32* %s3, align 4, !dbg !454
  br label %do.body765, !dbg !455

do.body765:                                       ; preds = %do.end756
  call void @llvm.dbg.declare(metadata i32* %_t0766, metadata !456, metadata !DIExpression()), !dbg !458
  %618 = load i32, i32* %s0, align 4, !dbg !458
  %shr767 = lshr i32 %618, 17, !dbg !458
  store i32 %shr767, i32* %_t0766, align 4, !dbg !458
  %619 = load i32, i32* %s0, align 4, !dbg !458
  %shl768 = shl i32 %619, 15, !dbg !458
  %620 = load i32, i32* %s1, align 4, !dbg !458
  %shr769 = lshr i32 %620, 17, !dbg !458
  %or770 = or i32 %shl768, %shr769, !dbg !458
  store i32 %or770, i32* %s0, align 4, !dbg !458
  %621 = load i32, i32* %s1, align 4, !dbg !458
  %shl771 = shl i32 %621, 15, !dbg !458
  %622 = load i32, i32* %s2, align 4, !dbg !458
  %shr772 = lshr i32 %622, 17, !dbg !458
  %or773 = or i32 %shl771, %shr772, !dbg !458
  store i32 %or773, i32* %s1, align 4, !dbg !458
  %623 = load i32, i32* %s2, align 4, !dbg !458
  %shl774 = shl i32 %623, 15, !dbg !458
  %624 = load i32, i32* %s3, align 4, !dbg !458
  %shr775 = lshr i32 %624, 17, !dbg !458
  %or776 = or i32 %shl774, %shr775, !dbg !458
  store i32 %or776, i32* %s2, align 4, !dbg !458
  %625 = load i32, i32* %s3, align 4, !dbg !458
  %shl777 = shl i32 %625, 15, !dbg !458
  %626 = load i32, i32* %_t0766, align 4, !dbg !458
  %or778 = or i32 %shl777, %626, !dbg !458
  store i32 %or778, i32* %s3, align 4, !dbg !458
  br label %do.end779, !dbg !458

do.end779:                                        ; preds = %do.body765
  %627 = load i32, i32* %s0, align 4, !dbg !459
  %628 = load i32*, i32** %k.addr, align 8, !dbg !460
  %arrayidx780 = getelementptr inbounds i32, i32* %628, i64 8, !dbg !460
  store i32 %627, i32* %arrayidx780, align 4, !dbg !461
  %629 = load i32, i32* %s1, align 4, !dbg !462
  %630 = load i32*, i32** %k.addr, align 8, !dbg !463
  %arrayidx781 = getelementptr inbounds i32, i32* %630, i64 9, !dbg !463
  store i32 %629, i32* %arrayidx781, align 4, !dbg !464
  %631 = load i32, i32* %s2, align 4, !dbg !465
  %632 = load i32*, i32** %k.addr, align 8, !dbg !466
  %arrayidx782 = getelementptr inbounds i32, i32* %632, i64 10, !dbg !466
  store i32 %631, i32* %arrayidx782, align 4, !dbg !467
  %633 = load i32, i32* %s3, align 4, !dbg !468
  %634 = load i32*, i32** %k.addr, align 8, !dbg !469
  %arrayidx783 = getelementptr inbounds i32, i32* %634, i64 11, !dbg !469
  store i32 %633, i32* %arrayidx783, align 4, !dbg !470
  br label %do.body784, !dbg !471

do.body784:                                       ; preds = %do.end779
  call void @llvm.dbg.declare(metadata i32* %_t0785, metadata !472, metadata !DIExpression()), !dbg !474
  %635 = load i32, i32* %s0, align 4, !dbg !474
  %shr786 = lshr i32 %635, 17, !dbg !474
  store i32 %shr786, i32* %_t0785, align 4, !dbg !474
  %636 = load i32, i32* %s0, align 4, !dbg !474
  %shl787 = shl i32 %636, 15, !dbg !474
  %637 = load i32, i32* %s1, align 4, !dbg !474
  %shr788 = lshr i32 %637, 17, !dbg !474
  %or789 = or i32 %shl787, %shr788, !dbg !474
  store i32 %or789, i32* %s0, align 4, !dbg !474
  %638 = load i32, i32* %s1, align 4, !dbg !474
  %shl790 = shl i32 %638, 15, !dbg !474
  %639 = load i32, i32* %s2, align 4, !dbg !474
  %shr791 = lshr i32 %639, 17, !dbg !474
  %or792 = or i32 %shl790, %shr791, !dbg !474
  store i32 %or792, i32* %s1, align 4, !dbg !474
  %640 = load i32, i32* %s2, align 4, !dbg !474
  %shl793 = shl i32 %640, 15, !dbg !474
  %641 = load i32, i32* %s3, align 4, !dbg !474
  %shr794 = lshr i32 %641, 17, !dbg !474
  %or795 = or i32 %shl793, %shr794, !dbg !474
  store i32 %or795, i32* %s2, align 4, !dbg !474
  %642 = load i32, i32* %s3, align 4, !dbg !474
  %shl796 = shl i32 %642, 15, !dbg !474
  %643 = load i32, i32* %_t0785, align 4, !dbg !474
  %or797 = or i32 %shl796, %643, !dbg !474
  store i32 %or797, i32* %s3, align 4, !dbg !474
  br label %do.end798, !dbg !474

do.end798:                                        ; preds = %do.body784
  %644 = load i32, i32* %s0, align 4, !dbg !475
  %645 = load i32*, i32** %k.addr, align 8, !dbg !476
  %arrayidx799 = getelementptr inbounds i32, i32* %645, i64 16, !dbg !476
  store i32 %644, i32* %arrayidx799, align 4, !dbg !477
  %646 = load i32, i32* %s1, align 4, !dbg !478
  %647 = load i32*, i32** %k.addr, align 8, !dbg !479
  %arrayidx800 = getelementptr inbounds i32, i32* %647, i64 17, !dbg !479
  store i32 %646, i32* %arrayidx800, align 4, !dbg !480
  %648 = load i32, i32* %s2, align 4, !dbg !481
  %649 = load i32*, i32** %k.addr, align 8, !dbg !482
  %arrayidx801 = getelementptr inbounds i32, i32* %649, i64 18, !dbg !482
  store i32 %648, i32* %arrayidx801, align 4, !dbg !483
  %650 = load i32, i32* %s3, align 4, !dbg !484
  %651 = load i32*, i32** %k.addr, align 8, !dbg !485
  %arrayidx802 = getelementptr inbounds i32, i32* %651, i64 19, !dbg !485
  store i32 %650, i32* %arrayidx802, align 4, !dbg !486
  br label %do.body803, !dbg !487

do.body803:                                       ; preds = %do.end798
  call void @llvm.dbg.declare(metadata i32* %_t0804, metadata !488, metadata !DIExpression()), !dbg !490
  %652 = load i32, i32* %s0, align 4, !dbg !490
  %shr805 = lshr i32 %652, 2, !dbg !490
  store i32 %shr805, i32* %_t0804, align 4, !dbg !490
  %653 = load i32, i32* %s0, align 4, !dbg !490
  %shl806 = shl i32 %653, 30, !dbg !490
  %654 = load i32, i32* %s1, align 4, !dbg !490
  %shr807 = lshr i32 %654, 2, !dbg !490
  %or808 = or i32 %shl806, %shr807, !dbg !490
  store i32 %or808, i32* %s0, align 4, !dbg !490
  %655 = load i32, i32* %s1, align 4, !dbg !490
  %shl809 = shl i32 %655, 30, !dbg !490
  %656 = load i32, i32* %s2, align 4, !dbg !490
  %shr810 = lshr i32 %656, 2, !dbg !490
  %or811 = or i32 %shl809, %shr810, !dbg !490
  store i32 %or811, i32* %s1, align 4, !dbg !490
  %657 = load i32, i32* %s2, align 4, !dbg !490
  %shl812 = shl i32 %657, 30, !dbg !490
  %658 = load i32, i32* %s3, align 4, !dbg !490
  %shr813 = lshr i32 %658, 2, !dbg !490
  %or814 = or i32 %shl812, %shr813, !dbg !490
  store i32 %or814, i32* %s2, align 4, !dbg !490
  %659 = load i32, i32* %s3, align 4, !dbg !490
  %shl815 = shl i32 %659, 30, !dbg !490
  %660 = load i32, i32* %_t0804, align 4, !dbg !490
  %or816 = or i32 %shl815, %660, !dbg !490
  store i32 %or816, i32* %s3, align 4, !dbg !490
  br label %do.end817, !dbg !490

do.end817:                                        ; preds = %do.body803
  %661 = load i32, i32* %s0, align 4, !dbg !491
  %662 = load i32*, i32** %k.addr, align 8, !dbg !492
  %arrayidx818 = getelementptr inbounds i32, i32* %662, i64 36, !dbg !492
  store i32 %661, i32* %arrayidx818, align 4, !dbg !493
  %663 = load i32, i32* %s1, align 4, !dbg !494
  %664 = load i32*, i32** %k.addr, align 8, !dbg !495
  %arrayidx819 = getelementptr inbounds i32, i32* %664, i64 37, !dbg !495
  store i32 %663, i32* %arrayidx819, align 4, !dbg !496
  %665 = load i32, i32* %s2, align 4, !dbg !497
  %666 = load i32*, i32** %k.addr, align 8, !dbg !498
  %arrayidx820 = getelementptr inbounds i32, i32* %666, i64 38, !dbg !498
  store i32 %665, i32* %arrayidx820, align 4, !dbg !499
  %667 = load i32, i32* %s3, align 4, !dbg !500
  %668 = load i32*, i32** %k.addr, align 8, !dbg !501
  %arrayidx821 = getelementptr inbounds i32, i32* %668, i64 39, !dbg !501
  store i32 %667, i32* %arrayidx821, align 4, !dbg !502
  br label %do.body822, !dbg !503

do.body822:                                       ; preds = %do.end817
  call void @llvm.dbg.declare(metadata i32* %_t0823, metadata !504, metadata !DIExpression()), !dbg !506
  %669 = load i32, i32* %s1, align 4, !dbg !506
  %shr824 = lshr i32 %669, 30, !dbg !506
  store i32 %shr824, i32* %_t0823, align 4, !dbg !506
  %670 = load i32, i32* %s1, align 4, !dbg !506
  %shl825 = shl i32 %670, 2, !dbg !506
  %671 = load i32, i32* %s2, align 4, !dbg !506
  %shr826 = lshr i32 %671, 30, !dbg !506
  %or827 = or i32 %shl825, %shr826, !dbg !506
  store i32 %or827, i32* %s1, align 4, !dbg !506
  %672 = load i32, i32* %s2, align 4, !dbg !506
  %shl828 = shl i32 %672, 2, !dbg !506
  %673 = load i32, i32* %s3, align 4, !dbg !506
  %shr829 = lshr i32 %673, 30, !dbg !506
  %or830 = or i32 %shl828, %shr829, !dbg !506
  store i32 %or830, i32* %s2, align 4, !dbg !506
  %674 = load i32, i32* %s3, align 4, !dbg !506
  %shl831 = shl i32 %674, 2, !dbg !506
  %675 = load i32, i32* %s0, align 4, !dbg !506
  %shr832 = lshr i32 %675, 30, !dbg !506
  %or833 = or i32 %shl831, %shr832, !dbg !506
  store i32 %or833, i32* %s3, align 4, !dbg !506
  %676 = load i32, i32* %s0, align 4, !dbg !506
  %shl834 = shl i32 %676, 2, !dbg !506
  %677 = load i32, i32* %_t0823, align 4, !dbg !506
  %or835 = or i32 %shl834, %677, !dbg !506
  store i32 %or835, i32* %s0, align 4, !dbg !506
  br label %do.end836, !dbg !506

do.end836:                                        ; preds = %do.body822
  %678 = load i32, i32* %s1, align 4, !dbg !507
  %679 = load i32*, i32** %k.addr, align 8, !dbg !508
  %arrayidx837 = getelementptr inbounds i32, i32* %679, i64 52, !dbg !508
  store i32 %678, i32* %arrayidx837, align 4, !dbg !509
  %680 = load i32, i32* %s2, align 4, !dbg !510
  %681 = load i32*, i32** %k.addr, align 8, !dbg !511
  %arrayidx838 = getelementptr inbounds i32, i32* %681, i64 53, !dbg !511
  store i32 %680, i32* %arrayidx838, align 4, !dbg !512
  %682 = load i32, i32* %s3, align 4, !dbg !513
  %683 = load i32*, i32** %k.addr, align 8, !dbg !514
  %arrayidx839 = getelementptr inbounds i32, i32* %683, i64 54, !dbg !514
  store i32 %682, i32* %arrayidx839, align 4, !dbg !515
  %684 = load i32, i32* %s0, align 4, !dbg !516
  %685 = load i32*, i32** %k.addr, align 8, !dbg !517
  %arrayidx840 = getelementptr inbounds i32, i32* %685, i64 55, !dbg !517
  store i32 %684, i32* %arrayidx840, align 4, !dbg !518
  %686 = load i32*, i32** %k.addr, align 8, !dbg !519
  %arrayidx841 = getelementptr inbounds i32, i32* %686, i64 12, !dbg !519
  %687 = load i32, i32* %arrayidx841, align 4, !dbg !519
  store i32 %687, i32* %s0, align 4, !dbg !520
  %688 = load i32*, i32** %k.addr, align 8, !dbg !521
  %arrayidx842 = getelementptr inbounds i32, i32* %688, i64 13, !dbg !521
  %689 = load i32, i32* %arrayidx842, align 4, !dbg !521
  store i32 %689, i32* %s1, align 4, !dbg !522
  %690 = load i32*, i32** %k.addr, align 8, !dbg !523
  %arrayidx843 = getelementptr inbounds i32, i32* %690, i64 14, !dbg !523
  %691 = load i32, i32* %arrayidx843, align 4, !dbg !523
  store i32 %691, i32* %s2, align 4, !dbg !524
  %692 = load i32*, i32** %k.addr, align 8, !dbg !525
  %arrayidx844 = getelementptr inbounds i32, i32* %692, i64 15, !dbg !525
  %693 = load i32, i32* %arrayidx844, align 4, !dbg !525
  store i32 %693, i32* %s3, align 4, !dbg !526
  br label %do.body845, !dbg !527

do.body845:                                       ; preds = %do.end836
  call void @llvm.dbg.declare(metadata i32* %_t0846, metadata !528, metadata !DIExpression()), !dbg !530
  %694 = load i32, i32* %s0, align 4, !dbg !530
  %shr847 = lshr i32 %694, 17, !dbg !530
  store i32 %shr847, i32* %_t0846, align 4, !dbg !530
  %695 = load i32, i32* %s0, align 4, !dbg !530
  %shl848 = shl i32 %695, 15, !dbg !530
  %696 = load i32, i32* %s1, align 4, !dbg !530
  %shr849 = lshr i32 %696, 17, !dbg !530
  %or850 = or i32 %shl848, %shr849, !dbg !530
  store i32 %or850, i32* %s0, align 4, !dbg !530
  %697 = load i32, i32* %s1, align 4, !dbg !530
  %shl851 = shl i32 %697, 15, !dbg !530
  %698 = load i32, i32* %s2, align 4, !dbg !530
  %shr852 = lshr i32 %698, 17, !dbg !530
  %or853 = or i32 %shl851, %shr852, !dbg !530
  store i32 %or853, i32* %s1, align 4, !dbg !530
  %699 = load i32, i32* %s2, align 4, !dbg !530
  %shl854 = shl i32 %699, 15, !dbg !530
  %700 = load i32, i32* %s3, align 4, !dbg !530
  %shr855 = lshr i32 %700, 17, !dbg !530
  %or856 = or i32 %shl854, %shr855, !dbg !530
  store i32 %or856, i32* %s2, align 4, !dbg !530
  %701 = load i32, i32* %s3, align 4, !dbg !530
  %shl857 = shl i32 %701, 15, !dbg !530
  %702 = load i32, i32* %_t0846, align 4, !dbg !530
  %or858 = or i32 %shl857, %702, !dbg !530
  store i32 %or858, i32* %s3, align 4, !dbg !530
  br label %do.end859, !dbg !530

do.end859:                                        ; preds = %do.body845
  %703 = load i32, i32* %s0, align 4, !dbg !531
  %704 = load i32*, i32** %k.addr, align 8, !dbg !532
  %arrayidx860 = getelementptr inbounds i32, i32* %704, i64 12, !dbg !532
  store i32 %703, i32* %arrayidx860, align 4, !dbg !533
  %705 = load i32, i32* %s1, align 4, !dbg !534
  %706 = load i32*, i32** %k.addr, align 8, !dbg !535
  %arrayidx861 = getelementptr inbounds i32, i32* %706, i64 13, !dbg !535
  store i32 %705, i32* %arrayidx861, align 4, !dbg !536
  %707 = load i32, i32* %s2, align 4, !dbg !537
  %708 = load i32*, i32** %k.addr, align 8, !dbg !538
  %arrayidx862 = getelementptr inbounds i32, i32* %708, i64 14, !dbg !538
  store i32 %707, i32* %arrayidx862, align 4, !dbg !539
  %709 = load i32, i32* %s3, align 4, !dbg !540
  %710 = load i32*, i32** %k.addr, align 8, !dbg !541
  %arrayidx863 = getelementptr inbounds i32, i32* %710, i64 15, !dbg !541
  store i32 %709, i32* %arrayidx863, align 4, !dbg !542
  br label %do.body864, !dbg !543

do.body864:                                       ; preds = %do.end859
  call void @llvm.dbg.declare(metadata i32* %_t0865, metadata !544, metadata !DIExpression()), !dbg !546
  %711 = load i32, i32* %s0, align 4, !dbg !546
  %shr866 = lshr i32 %711, 2, !dbg !546
  store i32 %shr866, i32* %_t0865, align 4, !dbg !546
  %712 = load i32, i32* %s0, align 4, !dbg !546
  %shl867 = shl i32 %712, 30, !dbg !546
  %713 = load i32, i32* %s1, align 4, !dbg !546
  %shr868 = lshr i32 %713, 2, !dbg !546
  %or869 = or i32 %shl867, %shr868, !dbg !546
  store i32 %or869, i32* %s0, align 4, !dbg !546
  %714 = load i32, i32* %s1, align 4, !dbg !546
  %shl870 = shl i32 %714, 30, !dbg !546
  %715 = load i32, i32* %s2, align 4, !dbg !546
  %shr871 = lshr i32 %715, 2, !dbg !546
  %or872 = or i32 %shl870, %shr871, !dbg !546
  store i32 %or872, i32* %s1, align 4, !dbg !546
  %716 = load i32, i32* %s2, align 4, !dbg !546
  %shl873 = shl i32 %716, 30, !dbg !546
  %717 = load i32, i32* %s3, align 4, !dbg !546
  %shr874 = lshr i32 %717, 2, !dbg !546
  %or875 = or i32 %shl873, %shr874, !dbg !546
  store i32 %or875, i32* %s2, align 4, !dbg !546
  %718 = load i32, i32* %s3, align 4, !dbg !546
  %shl876 = shl i32 %718, 30, !dbg !546
  %719 = load i32, i32* %_t0865, align 4, !dbg !546
  %or877 = or i32 %shl876, %719, !dbg !546
  store i32 %or877, i32* %s3, align 4, !dbg !546
  br label %do.end878, !dbg !546

do.end878:                                        ; preds = %do.body864
  %720 = load i32, i32* %s0, align 4, !dbg !547
  %721 = load i32*, i32** %k.addr, align 8, !dbg !548
  %arrayidx879 = getelementptr inbounds i32, i32* %721, i64 28, !dbg !548
  store i32 %720, i32* %arrayidx879, align 4, !dbg !549
  %722 = load i32, i32* %s1, align 4, !dbg !550
  %723 = load i32*, i32** %k.addr, align 8, !dbg !551
  %arrayidx880 = getelementptr inbounds i32, i32* %723, i64 29, !dbg !551
  store i32 %722, i32* %arrayidx880, align 4, !dbg !552
  %724 = load i32, i32* %s2, align 4, !dbg !553
  %725 = load i32*, i32** %k.addr, align 8, !dbg !554
  %arrayidx881 = getelementptr inbounds i32, i32* %725, i64 30, !dbg !554
  store i32 %724, i32* %arrayidx881, align 4, !dbg !555
  %726 = load i32, i32* %s3, align 4, !dbg !556
  %727 = load i32*, i32** %k.addr, align 8, !dbg !557
  %arrayidx882 = getelementptr inbounds i32, i32* %727, i64 31, !dbg !557
  store i32 %726, i32* %arrayidx882, align 4, !dbg !558
  %728 = load i32, i32* %s1, align 4, !dbg !559
  %729 = load i32*, i32** %k.addr, align 8, !dbg !560
  %arrayidx883 = getelementptr inbounds i32, i32* %729, i64 48, !dbg !560
  store i32 %728, i32* %arrayidx883, align 4, !dbg !561
  %730 = load i32, i32* %s2, align 4, !dbg !562
  %731 = load i32*, i32** %k.addr, align 8, !dbg !563
  %arrayidx884 = getelementptr inbounds i32, i32* %731, i64 49, !dbg !563
  store i32 %730, i32* %arrayidx884, align 4, !dbg !564
  %732 = load i32, i32* %s3, align 4, !dbg !565
  %733 = load i32*, i32** %k.addr, align 8, !dbg !566
  %arrayidx885 = getelementptr inbounds i32, i32* %733, i64 50, !dbg !566
  store i32 %732, i32* %arrayidx885, align 4, !dbg !567
  %734 = load i32, i32* %s0, align 4, !dbg !568
  %735 = load i32*, i32** %k.addr, align 8, !dbg !569
  %arrayidx886 = getelementptr inbounds i32, i32* %735, i64 51, !dbg !569
  store i32 %734, i32* %arrayidx886, align 4, !dbg !570
  br label %do.body887, !dbg !571

do.body887:                                       ; preds = %do.end878
  call void @llvm.dbg.declare(metadata i32* %_t0888, metadata !572, metadata !DIExpression()), !dbg !574
  %736 = load i32, i32* %s1, align 4, !dbg !574
  %shr889 = lshr i32 %736, 15, !dbg !574
  store i32 %shr889, i32* %_t0888, align 4, !dbg !574
  %737 = load i32, i32* %s1, align 4, !dbg !574
  %shl890 = shl i32 %737, 17, !dbg !574
  %738 = load i32, i32* %s2, align 4, !dbg !574
  %shr891 = lshr i32 %738, 15, !dbg !574
  %or892 = or i32 %shl890, %shr891, !dbg !574
  store i32 %or892, i32* %s1, align 4, !dbg !574
  %739 = load i32, i32* %s2, align 4, !dbg !574
  %shl893 = shl i32 %739, 17, !dbg !574
  %740 = load i32, i32* %s3, align 4, !dbg !574
  %shr894 = lshr i32 %740, 15, !dbg !574
  %or895 = or i32 %shl893, %shr894, !dbg !574
  store i32 %or895, i32* %s2, align 4, !dbg !574
  %741 = load i32, i32* %s3, align 4, !dbg !574
  %shl896 = shl i32 %741, 17, !dbg !574
  %742 = load i32, i32* %s0, align 4, !dbg !574
  %shr897 = lshr i32 %742, 15, !dbg !574
  %or898 = or i32 %shl896, %shr897, !dbg !574
  store i32 %or898, i32* %s3, align 4, !dbg !574
  %743 = load i32, i32* %s0, align 4, !dbg !574
  %shl899 = shl i32 %743, 17, !dbg !574
  %744 = load i32, i32* %_t0888, align 4, !dbg !574
  %or900 = or i32 %shl899, %744, !dbg !574
  store i32 %or900, i32* %s0, align 4, !dbg !574
  br label %do.end901, !dbg !574

do.end901:                                        ; preds = %do.body887
  %745 = load i32, i32* %s1, align 4, !dbg !575
  %746 = load i32*, i32** %k.addr, align 8, !dbg !576
  %arrayidx902 = getelementptr inbounds i32, i32* %746, i64 56, !dbg !576
  store i32 %745, i32* %arrayidx902, align 4, !dbg !577
  %747 = load i32, i32* %s2, align 4, !dbg !578
  %748 = load i32*, i32** %k.addr, align 8, !dbg !579
  %arrayidx903 = getelementptr inbounds i32, i32* %748, i64 57, !dbg !579
  store i32 %747, i32* %arrayidx903, align 4, !dbg !580
  %749 = load i32, i32* %s3, align 4, !dbg !581
  %750 = load i32*, i32** %k.addr, align 8, !dbg !582
  %arrayidx904 = getelementptr inbounds i32, i32* %750, i64 58, !dbg !582
  store i32 %749, i32* %arrayidx904, align 4, !dbg !583
  %751 = load i32, i32* %s0, align 4, !dbg !584
  %752 = load i32*, i32** %k.addr, align 8, !dbg !585
  %arrayidx905 = getelementptr inbounds i32, i32* %752, i64 59, !dbg !585
  store i32 %751, i32* %arrayidx905, align 4, !dbg !586
  %753 = load i32*, i32** %k.addr, align 8, !dbg !587
  %arrayidx906 = getelementptr inbounds i32, i32* %753, i64 0, !dbg !587
  %754 = load i32, i32* %arrayidx906, align 4, !dbg !587
  store i32 %754, i32* %s0, align 4, !dbg !588
  %755 = load i32*, i32** %k.addr, align 8, !dbg !589
  %arrayidx907 = getelementptr inbounds i32, i32* %755, i64 1, !dbg !589
  %756 = load i32, i32* %arrayidx907, align 4, !dbg !589
  store i32 %756, i32* %s1, align 4, !dbg !590
  %757 = load i32*, i32** %k.addr, align 8, !dbg !591
  %arrayidx908 = getelementptr inbounds i32, i32* %757, i64 2, !dbg !591
  %758 = load i32, i32* %arrayidx908, align 4, !dbg !591
  store i32 %758, i32* %s2, align 4, !dbg !592
  %759 = load i32*, i32** %k.addr, align 8, !dbg !593
  %arrayidx909 = getelementptr inbounds i32, i32* %759, i64 3, !dbg !593
  %760 = load i32, i32* %arrayidx909, align 4, !dbg !593
  store i32 %760, i32* %s3, align 4, !dbg !594
  br label %do.body910, !dbg !595

do.body910:                                       ; preds = %do.end901
  call void @llvm.dbg.declare(metadata i32* %_t0911, metadata !596, metadata !DIExpression()), !dbg !598
  %761 = load i32, i32* %s1, align 4, !dbg !598
  %shr912 = lshr i32 %761, 19, !dbg !598
  store i32 %shr912, i32* %_t0911, align 4, !dbg !598
  %762 = load i32, i32* %s1, align 4, !dbg !598
  %shl913 = shl i32 %762, 13, !dbg !598
  %763 = load i32, i32* %s2, align 4, !dbg !598
  %shr914 = lshr i32 %763, 19, !dbg !598
  %or915 = or i32 %shl913, %shr914, !dbg !598
  store i32 %or915, i32* %s1, align 4, !dbg !598
  %764 = load i32, i32* %s2, align 4, !dbg !598
  %shl916 = shl i32 %764, 13, !dbg !598
  %765 = load i32, i32* %s3, align 4, !dbg !598
  %shr917 = lshr i32 %765, 19, !dbg !598
  %or918 = or i32 %shl916, %shr917, !dbg !598
  store i32 %or918, i32* %s2, align 4, !dbg !598
  %766 = load i32, i32* %s3, align 4, !dbg !598
  %shl919 = shl i32 %766, 13, !dbg !598
  %767 = load i32, i32* %s0, align 4, !dbg !598
  %shr920 = lshr i32 %767, 19, !dbg !598
  %or921 = or i32 %shl919, %shr920, !dbg !598
  store i32 %or921, i32* %s3, align 4, !dbg !598
  %768 = load i32, i32* %s0, align 4, !dbg !598
  %shl922 = shl i32 %768, 13, !dbg !598
  %769 = load i32, i32* %_t0911, align 4, !dbg !598
  %or923 = or i32 %shl922, %769, !dbg !598
  store i32 %or923, i32* %s0, align 4, !dbg !598
  br label %do.end924, !dbg !598

do.end924:                                        ; preds = %do.body910
  %770 = load i32, i32* %s1, align 4, !dbg !599
  %771 = load i32*, i32** %k.addr, align 8, !dbg !600
  %arrayidx925 = getelementptr inbounds i32, i32* %771, i64 24, !dbg !600
  store i32 %770, i32* %arrayidx925, align 4, !dbg !601
  %772 = load i32, i32* %s2, align 4, !dbg !602
  %773 = load i32*, i32** %k.addr, align 8, !dbg !603
  %arrayidx926 = getelementptr inbounds i32, i32* %773, i64 25, !dbg !603
  store i32 %772, i32* %arrayidx926, align 4, !dbg !604
  %774 = load i32, i32* %s3, align 4, !dbg !605
  %775 = load i32*, i32** %k.addr, align 8, !dbg !606
  %arrayidx927 = getelementptr inbounds i32, i32* %775, i64 26, !dbg !606
  store i32 %774, i32* %arrayidx927, align 4, !dbg !607
  %776 = load i32, i32* %s0, align 4, !dbg !608
  %777 = load i32*, i32** %k.addr, align 8, !dbg !609
  %arrayidx928 = getelementptr inbounds i32, i32* %777, i64 27, !dbg !609
  store i32 %776, i32* %arrayidx928, align 4, !dbg !610
  br label %do.body929, !dbg !611

do.body929:                                       ; preds = %do.end924
  call void @llvm.dbg.declare(metadata i32* %_t0930, metadata !612, metadata !DIExpression()), !dbg !614
  %778 = load i32, i32* %s1, align 4, !dbg !614
  %shr931 = lshr i32 %778, 17, !dbg !614
  store i32 %shr931, i32* %_t0930, align 4, !dbg !614
  %779 = load i32, i32* %s1, align 4, !dbg !614
  %shl932 = shl i32 %779, 15, !dbg !614
  %780 = load i32, i32* %s2, align 4, !dbg !614
  %shr933 = lshr i32 %780, 17, !dbg !614
  %or934 = or i32 %shl932, %shr933, !dbg !614
  store i32 %or934, i32* %s1, align 4, !dbg !614
  %781 = load i32, i32* %s2, align 4, !dbg !614
  %shl935 = shl i32 %781, 15, !dbg !614
  %782 = load i32, i32* %s3, align 4, !dbg !614
  %shr936 = lshr i32 %782, 17, !dbg !614
  %or937 = or i32 %shl935, %shr936, !dbg !614
  store i32 %or937, i32* %s2, align 4, !dbg !614
  %783 = load i32, i32* %s3, align 4, !dbg !614
  %shl938 = shl i32 %783, 15, !dbg !614
  %784 = load i32, i32* %s0, align 4, !dbg !614
  %shr939 = lshr i32 %784, 17, !dbg !614
  %or940 = or i32 %shl938, %shr939, !dbg !614
  store i32 %or940, i32* %s3, align 4, !dbg !614
  %785 = load i32, i32* %s0, align 4, !dbg !614
  %shl941 = shl i32 %785, 15, !dbg !614
  %786 = load i32, i32* %_t0930, align 4, !dbg !614
  %or942 = or i32 %shl941, %786, !dbg !614
  store i32 %or942, i32* %s0, align 4, !dbg !614
  br label %do.end943, !dbg !614

do.end943:                                        ; preds = %do.body929
  %787 = load i32, i32* %s1, align 4, !dbg !615
  %788 = load i32*, i32** %k.addr, align 8, !dbg !616
  %arrayidx944 = getelementptr inbounds i32, i32* %788, i64 32, !dbg !616
  store i32 %787, i32* %arrayidx944, align 4, !dbg !617
  %789 = load i32, i32* %s2, align 4, !dbg !618
  %790 = load i32*, i32** %k.addr, align 8, !dbg !619
  %arrayidx945 = getelementptr inbounds i32, i32* %790, i64 33, !dbg !619
  store i32 %789, i32* %arrayidx945, align 4, !dbg !620
  %791 = load i32, i32* %s3, align 4, !dbg !621
  %792 = load i32*, i32** %k.addr, align 8, !dbg !622
  %arrayidx946 = getelementptr inbounds i32, i32* %792, i64 34, !dbg !622
  store i32 %791, i32* %arrayidx946, align 4, !dbg !623
  %793 = load i32, i32* %s0, align 4, !dbg !624
  %794 = load i32*, i32** %k.addr, align 8, !dbg !625
  %arrayidx947 = getelementptr inbounds i32, i32* %794, i64 35, !dbg !625
  store i32 %793, i32* %arrayidx947, align 4, !dbg !626
  br label %do.body948, !dbg !627

do.body948:                                       ; preds = %do.end943
  call void @llvm.dbg.declare(metadata i32* %_t0949, metadata !628, metadata !DIExpression()), !dbg !630
  %795 = load i32, i32* %s1, align 4, !dbg !630
  %shr950 = lshr i32 %795, 15, !dbg !630
  store i32 %shr950, i32* %_t0949, align 4, !dbg !630
  %796 = load i32, i32* %s1, align 4, !dbg !630
  %shl951 = shl i32 %796, 17, !dbg !630
  %797 = load i32, i32* %s2, align 4, !dbg !630
  %shr952 = lshr i32 %797, 15, !dbg !630
  %or953 = or i32 %shl951, %shr952, !dbg !630
  store i32 %or953, i32* %s1, align 4, !dbg !630
  %798 = load i32, i32* %s2, align 4, !dbg !630
  %shl954 = shl i32 %798, 17, !dbg !630
  %799 = load i32, i32* %s3, align 4, !dbg !630
  %shr955 = lshr i32 %799, 15, !dbg !630
  %or956 = or i32 %shl954, %shr955, !dbg !630
  store i32 %or956, i32* %s2, align 4, !dbg !630
  %800 = load i32, i32* %s3, align 4, !dbg !630
  %shl957 = shl i32 %800, 17, !dbg !630
  %801 = load i32, i32* %s0, align 4, !dbg !630
  %shr958 = lshr i32 %801, 15, !dbg !630
  %or959 = or i32 %shl957, %shr958, !dbg !630
  store i32 %or959, i32* %s3, align 4, !dbg !630
  %802 = load i32, i32* %s0, align 4, !dbg !630
  %shl960 = shl i32 %802, 17, !dbg !630
  %803 = load i32, i32* %_t0949, align 4, !dbg !630
  %or961 = or i32 %shl960, %803, !dbg !630
  store i32 %or961, i32* %s0, align 4, !dbg !630
  br label %do.end962, !dbg !630

do.end962:                                        ; preds = %do.body948
  %804 = load i32, i32* %s1, align 4, !dbg !631
  %805 = load i32*, i32** %k.addr, align 8, !dbg !632
  %arrayidx963 = getelementptr inbounds i32, i32* %805, i64 44, !dbg !632
  store i32 %804, i32* %arrayidx963, align 4, !dbg !633
  %806 = load i32, i32* %s2, align 4, !dbg !634
  %807 = load i32*, i32** %k.addr, align 8, !dbg !635
  %arrayidx964 = getelementptr inbounds i32, i32* %807, i64 45, !dbg !635
  store i32 %806, i32* %arrayidx964, align 4, !dbg !636
  %808 = load i32, i32* %s3, align 4, !dbg !637
  %809 = load i32*, i32** %k.addr, align 8, !dbg !638
  %arrayidx965 = getelementptr inbounds i32, i32* %809, i64 46, !dbg !638
  store i32 %808, i32* %arrayidx965, align 4, !dbg !639
  %810 = load i32, i32* %s0, align 4, !dbg !640
  %811 = load i32*, i32** %k.addr, align 8, !dbg !641
  %arrayidx966 = getelementptr inbounds i32, i32* %811, i64 47, !dbg !641
  store i32 %810, i32* %arrayidx966, align 4, !dbg !642
  br label %do.body967, !dbg !643

do.body967:                                       ; preds = %do.end962
  call void @llvm.dbg.declare(metadata i32* %_t0968, metadata !644, metadata !DIExpression()), !dbg !646
  %812 = load i32, i32* %s2, align 4, !dbg !646
  %shr969 = lshr i32 %812, 30, !dbg !646
  store i32 %shr969, i32* %_t0968, align 4, !dbg !646
  %813 = load i32, i32* %s2, align 4, !dbg !646
  %shl970 = shl i32 %813, 2, !dbg !646
  %814 = load i32, i32* %s3, align 4, !dbg !646
  %shr971 = lshr i32 %814, 30, !dbg !646
  %or972 = or i32 %shl970, %shr971, !dbg !646
  store i32 %or972, i32* %s2, align 4, !dbg !646
  %815 = load i32, i32* %s3, align 4, !dbg !646
  %shl973 = shl i32 %815, 2, !dbg !646
  %816 = load i32, i32* %s0, align 4, !dbg !646
  %shr974 = lshr i32 %816, 30, !dbg !646
  %or975 = or i32 %shl973, %shr974, !dbg !646
  store i32 %or975, i32* %s3, align 4, !dbg !646
  %817 = load i32, i32* %s0, align 4, !dbg !646
  %shl976 = shl i32 %817, 2, !dbg !646
  %818 = load i32, i32* %s1, align 4, !dbg !646
  %shr977 = lshr i32 %818, 30, !dbg !646
  %or978 = or i32 %shl976, %shr977, !dbg !646
  store i32 %or978, i32* %s0, align 4, !dbg !646
  %819 = load i32, i32* %s1, align 4, !dbg !646
  %shl979 = shl i32 %819, 2, !dbg !646
  %820 = load i32, i32* %_t0968, align 4, !dbg !646
  %or980 = or i32 %shl979, %820, !dbg !646
  store i32 %or980, i32* %s1, align 4, !dbg !646
  br label %do.end981, !dbg !646

do.end981:                                        ; preds = %do.body967
  %821 = load i32, i32* %s2, align 4, !dbg !647
  %822 = load i32*, i32** %k.addr, align 8, !dbg !648
  %arrayidx982 = getelementptr inbounds i32, i32* %822, i64 60, !dbg !648
  store i32 %821, i32* %arrayidx982, align 4, !dbg !649
  %823 = load i32, i32* %s3, align 4, !dbg !650
  %824 = load i32*, i32** %k.addr, align 8, !dbg !651
  %arrayidx983 = getelementptr inbounds i32, i32* %824, i64 61, !dbg !651
  store i32 %823, i32* %arrayidx983, align 4, !dbg !652
  %825 = load i32, i32* %s0, align 4, !dbg !653
  %826 = load i32*, i32** %k.addr, align 8, !dbg !654
  %arrayidx984 = getelementptr inbounds i32, i32* %826, i64 62, !dbg !654
  store i32 %825, i32* %arrayidx984, align 4, !dbg !655
  %827 = load i32, i32* %s1, align 4, !dbg !656
  %828 = load i32*, i32** %k.addr, align 8, !dbg !657
  %arrayidx985 = getelementptr inbounds i32, i32* %828, i64 63, !dbg !657
  store i32 %827, i32* %arrayidx985, align 4, !dbg !658
  store i32 4, i32* %retval, align 4, !dbg !659
  br label %return, !dbg !659

return:                                           ; preds = %do.end981, %do.end584
  %829 = load i32, i32* %retval, align 4, !dbg !660
  ret i32 %829, !dbg !660
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @Camellia_EncryptBlock_Rounds(i32 %grandRounds, i8* %plaintext, i32* %keyTable, i8* %ciphertext) #0 !dbg !661 {
entry:
  %grandRounds.addr = alloca i32, align 4
  %plaintext.addr = alloca i8*, align 8
  %keyTable.addr = alloca i32*, align 8
  %ciphertext.addr = alloca i8*, align 8
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %k = alloca i32*, align 8
  %kend = alloca i32*, align 8
  %_t0 = alloca i32, align 4
  %_t1 = alloca i32, align 4
  %_t2 = alloca i32, align 4
  %_t3 = alloca i32, align 4
  %_t0120 = alloca i32, align 4
  %_t1121 = alloca i32, align 4
  %_t2122 = alloca i32, align 4
  %_t3123 = alloca i32, align 4
  %_t0173 = alloca i32, align 4
  %_t1174 = alloca i32, align 4
  %_t2175 = alloca i32, align 4
  %_t3176 = alloca i32, align 4
  %_t0226 = alloca i32, align 4
  %_t1227 = alloca i32, align 4
  %_t2228 = alloca i32, align 4
  %_t3229 = alloca i32, align 4
  %_t0279 = alloca i32, align 4
  %_t1280 = alloca i32, align 4
  %_t2281 = alloca i32, align 4
  %_t3282 = alloca i32, align 4
  %_t0332 = alloca i32, align 4
  %_t1333 = alloca i32, align 4
  %_t2334 = alloca i32, align 4
  %_t3335 = alloca i32, align 4
  store i32 %grandRounds, i32* %grandRounds.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %grandRounds.addr, metadata !667, metadata !DIExpression()), !dbg !668
  store i8* %plaintext, i8** %plaintext.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %plaintext.addr, metadata !669, metadata !DIExpression()), !dbg !670
  store i32* %keyTable, i32** %keyTable.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %keyTable.addr, metadata !671, metadata !DIExpression()), !dbg !672
  %keyTable.addr1 = bitcast i32** %keyTable.addr to i8*
  call void @llvm.var.annotation(i8* %keyTable.addr1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 398)
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ciphertext.addr, metadata !673, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.declare(metadata i32* %s0, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.declare(metadata i32* %s1, metadata !677, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.declare(metadata i32* %s2, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.declare(metadata i32* %s3, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.declare(metadata i32** %k, metadata !683, metadata !DIExpression()), !dbg !685
  %k2 = bitcast i32** %k to i8*, !dbg !686
  call void @llvm.var.annotation(i8* %k2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 402), !dbg !686
  %0 = load i32*, i32** %keyTable.addr, align 8, !dbg !687
  store i32* %0, i32** %k, align 8, !dbg !685
  call void @llvm.dbg.declare(metadata i32** %kend, metadata !688, metadata !DIExpression()), !dbg !689
  %1 = load i32*, i32** %keyTable.addr, align 8, !dbg !690
  %2 = load i32, i32* %grandRounds.addr, align 4, !dbg !691
  %mul = mul nsw i32 %2, 16, !dbg !692
  %idx.ext = sext i32 %mul to i64, !dbg !693
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.ext, !dbg !693
  store i32* %add.ptr, i32** %kend, align 8, !dbg !689
  %3 = load i8*, i8** %plaintext.addr, align 8, !dbg !694
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0, !dbg !694
  %4 = load i8, i8* %arrayidx, align 1, !dbg !694
  %conv = zext i8 %4 to i32, !dbg !694
  %shl = shl i32 %conv, 24, !dbg !694
  %5 = load i8*, i8** %plaintext.addr, align 8, !dbg !694
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !694
  %6 = load i8, i8* %arrayidx3, align 1, !dbg !694
  %conv4 = zext i8 %6 to i32, !dbg !694
  %shl5 = shl i32 %conv4, 16, !dbg !694
  %xor = xor i32 %shl, %shl5, !dbg !694
  %7 = load i8*, i8** %plaintext.addr, align 8, !dbg !694
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !694
  %8 = load i8, i8* %arrayidx6, align 1, !dbg !694
  %conv7 = zext i8 %8 to i32, !dbg !694
  %shl8 = shl i32 %conv7, 8, !dbg !694
  %xor9 = xor i32 %xor, %shl8, !dbg !694
  %9 = load i8*, i8** %plaintext.addr, align 8, !dbg !694
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 3, !dbg !694
  %10 = load i8, i8* %arrayidx10, align 1, !dbg !694
  %conv11 = zext i8 %10 to i32, !dbg !694
  %xor12 = xor i32 %xor9, %conv11, !dbg !694
  %11 = load i32*, i32** %k, align 8, !dbg !695
  %arrayidx13 = getelementptr inbounds i32, i32* %11, i64 0, !dbg !695
  %12 = load i32, i32* %arrayidx13, align 4, !dbg !695
  %xor14 = xor i32 %xor12, %12, !dbg !696
  store i32 %xor14, i32* %s0, align 4, !dbg !697
  %13 = load i8*, i8** %plaintext.addr, align 8, !dbg !698
  %add.ptr15 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !698
  %arrayidx16 = getelementptr inbounds i8, i8* %add.ptr15, i64 0, !dbg !698
  %14 = load i8, i8* %arrayidx16, align 1, !dbg !698
  %conv17 = zext i8 %14 to i32, !dbg !698
  %shl18 = shl i32 %conv17, 24, !dbg !698
  %15 = load i8*, i8** %plaintext.addr, align 8, !dbg !698
  %add.ptr19 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !698
  %arrayidx20 = getelementptr inbounds i8, i8* %add.ptr19, i64 1, !dbg !698
  %16 = load i8, i8* %arrayidx20, align 1, !dbg !698
  %conv21 = zext i8 %16 to i32, !dbg !698
  %shl22 = shl i32 %conv21, 16, !dbg !698
  %xor23 = xor i32 %shl18, %shl22, !dbg !698
  %17 = load i8*, i8** %plaintext.addr, align 8, !dbg !698
  %add.ptr24 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !698
  %arrayidx25 = getelementptr inbounds i8, i8* %add.ptr24, i64 2, !dbg !698
  %18 = load i8, i8* %arrayidx25, align 1, !dbg !698
  %conv26 = zext i8 %18 to i32, !dbg !698
  %shl27 = shl i32 %conv26, 8, !dbg !698
  %xor28 = xor i32 %xor23, %shl27, !dbg !698
  %19 = load i8*, i8** %plaintext.addr, align 8, !dbg !698
  %add.ptr29 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !698
  %arrayidx30 = getelementptr inbounds i8, i8* %add.ptr29, i64 3, !dbg !698
  %20 = load i8, i8* %arrayidx30, align 1, !dbg !698
  %conv31 = zext i8 %20 to i32, !dbg !698
  %xor32 = xor i32 %xor28, %conv31, !dbg !698
  %21 = load i32*, i32** %k, align 8, !dbg !699
  %arrayidx33 = getelementptr inbounds i32, i32* %21, i64 1, !dbg !699
  %22 = load i32, i32* %arrayidx33, align 4, !dbg !699
  %xor34 = xor i32 %xor32, %22, !dbg !700
  store i32 %xor34, i32* %s1, align 4, !dbg !701
  %23 = load i8*, i8** %plaintext.addr, align 8, !dbg !702
  %add.ptr35 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !702
  %arrayidx36 = getelementptr inbounds i8, i8* %add.ptr35, i64 0, !dbg !702
  %24 = load i8, i8* %arrayidx36, align 1, !dbg !702
  %conv37 = zext i8 %24 to i32, !dbg !702
  %shl38 = shl i32 %conv37, 24, !dbg !702
  %25 = load i8*, i8** %plaintext.addr, align 8, !dbg !702
  %add.ptr39 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !702
  %arrayidx40 = getelementptr inbounds i8, i8* %add.ptr39, i64 1, !dbg !702
  %26 = load i8, i8* %arrayidx40, align 1, !dbg !702
  %conv41 = zext i8 %26 to i32, !dbg !702
  %shl42 = shl i32 %conv41, 16, !dbg !702
  %xor43 = xor i32 %shl38, %shl42, !dbg !702
  %27 = load i8*, i8** %plaintext.addr, align 8, !dbg !702
  %add.ptr44 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !702
  %arrayidx45 = getelementptr inbounds i8, i8* %add.ptr44, i64 2, !dbg !702
  %28 = load i8, i8* %arrayidx45, align 1, !dbg !702
  %conv46 = zext i8 %28 to i32, !dbg !702
  %shl47 = shl i32 %conv46, 8, !dbg !702
  %xor48 = xor i32 %xor43, %shl47, !dbg !702
  %29 = load i8*, i8** %plaintext.addr, align 8, !dbg !702
  %add.ptr49 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !702
  %arrayidx50 = getelementptr inbounds i8, i8* %add.ptr49, i64 3, !dbg !702
  %30 = load i8, i8* %arrayidx50, align 1, !dbg !702
  %conv51 = zext i8 %30 to i32, !dbg !702
  %xor52 = xor i32 %xor48, %conv51, !dbg !702
  %31 = load i32*, i32** %k, align 8, !dbg !703
  %arrayidx53 = getelementptr inbounds i32, i32* %31, i64 2, !dbg !703
  %32 = load i32, i32* %arrayidx53, align 4, !dbg !703
  %xor54 = xor i32 %xor52, %32, !dbg !704
  store i32 %xor54, i32* %s2, align 4, !dbg !705
  %33 = load i8*, i8** %plaintext.addr, align 8, !dbg !706
  %add.ptr55 = getelementptr inbounds i8, i8* %33, i64 12, !dbg !706
  %arrayidx56 = getelementptr inbounds i8, i8* %add.ptr55, i64 0, !dbg !706
  %34 = load i8, i8* %arrayidx56, align 1, !dbg !706
  %conv57 = zext i8 %34 to i32, !dbg !706
  %shl58 = shl i32 %conv57, 24, !dbg !706
  %35 = load i8*, i8** %plaintext.addr, align 8, !dbg !706
  %add.ptr59 = getelementptr inbounds i8, i8* %35, i64 12, !dbg !706
  %arrayidx60 = getelementptr inbounds i8, i8* %add.ptr59, i64 1, !dbg !706
  %36 = load i8, i8* %arrayidx60, align 1, !dbg !706
  %conv61 = zext i8 %36 to i32, !dbg !706
  %shl62 = shl i32 %conv61, 16, !dbg !706
  %xor63 = xor i32 %shl58, %shl62, !dbg !706
  %37 = load i8*, i8** %plaintext.addr, align 8, !dbg !706
  %add.ptr64 = getelementptr inbounds i8, i8* %37, i64 12, !dbg !706
  %arrayidx65 = getelementptr inbounds i8, i8* %add.ptr64, i64 2, !dbg !706
  %38 = load i8, i8* %arrayidx65, align 1, !dbg !706
  %conv66 = zext i8 %38 to i32, !dbg !706
  %shl67 = shl i32 %conv66, 8, !dbg !706
  %xor68 = xor i32 %xor63, %shl67, !dbg !706
  %39 = load i8*, i8** %plaintext.addr, align 8, !dbg !706
  %add.ptr69 = getelementptr inbounds i8, i8* %39, i64 12, !dbg !706
  %arrayidx70 = getelementptr inbounds i8, i8* %add.ptr69, i64 3, !dbg !706
  %40 = load i8, i8* %arrayidx70, align 1, !dbg !706
  %conv71 = zext i8 %40 to i32, !dbg !706
  %xor72 = xor i32 %xor68, %conv71, !dbg !706
  %41 = load i32*, i32** %k, align 8, !dbg !707
  %arrayidx73 = getelementptr inbounds i32, i32* %41, i64 3, !dbg !707
  %42 = load i32, i32* %arrayidx73, align 4, !dbg !707
  %xor74 = xor i32 %xor72, %42, !dbg !708
  store i32 %xor74, i32* %s3, align 4, !dbg !709
  %43 = load i32*, i32** %k, align 8, !dbg !710
  %add.ptr75 = getelementptr inbounds i32, i32* %43, i64 4, !dbg !710
  store i32* %add.ptr75, i32** %k, align 8, !dbg !710
  br label %while.body, !dbg !711

while.body:                                       ; preds = %entry, %if.end
  br label %do.body, !dbg !712

do.body:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i32* %_t0, metadata !714, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %_t1, metadata !717, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %_t2, metadata !718, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %_t3, metadata !719, metadata !DIExpression()), !dbg !716
  %44 = load i32, i32* %s0, align 4, !dbg !716
  %45 = load i32*, i32** %k, align 8, !dbg !716
  %add.ptr76 = getelementptr inbounds i32, i32* %45, i64 0, !dbg !716
  %arrayidx77 = getelementptr inbounds i32, i32* %add.ptr76, i64 0, !dbg !716
  %46 = load i32, i32* %arrayidx77, align 4, !dbg !716
  %xor78 = xor i32 %44, %46, !dbg !716
  store i32 %xor78, i32* %_t0, align 4, !dbg !716
  %47 = load i32, i32* %_t0, align 4, !dbg !716
  %and = and i32 %47, 255, !dbg !716
  %idxprom = zext i32 %and to i64, !dbg !716
  %arrayidx79 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom, !dbg !716
  %48 = load i32, i32* %arrayidx79, align 4, !dbg !716
  store i32 %48, i32* %_t3, align 4, !dbg !716
  %49 = load i32, i32* %s1, align 4, !dbg !716
  %50 = load i32*, i32** %k, align 8, !dbg !716
  %add.ptr80 = getelementptr inbounds i32, i32* %50, i64 0, !dbg !716
  %arrayidx81 = getelementptr inbounds i32, i32* %add.ptr80, i64 1, !dbg !716
  %51 = load i32, i32* %arrayidx81, align 4, !dbg !716
  %xor82 = xor i32 %49, %51, !dbg !716
  store i32 %xor82, i32* %_t1, align 4, !dbg !716
  %52 = load i32, i32* %_t0, align 4, !dbg !716
  %shr = lshr i32 %52, 8, !dbg !716
  %and83 = and i32 %shr, 255, !dbg !716
  %idxprom84 = zext i32 %and83 to i64, !dbg !716
  %arrayidx85 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom84, !dbg !716
  %53 = load i32, i32* %arrayidx85, align 4, !dbg !716
  %54 = load i32, i32* %_t3, align 4, !dbg !716
  %xor86 = xor i32 %54, %53, !dbg !716
  store i32 %xor86, i32* %_t3, align 4, !dbg !716
  %55 = load i32, i32* %_t1, align 4, !dbg !716
  %and87 = and i32 %55, 255, !dbg !716
  %idxprom88 = zext i32 %and87 to i64, !dbg !716
  %arrayidx89 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom88, !dbg !716
  %56 = load i32, i32* %arrayidx89, align 4, !dbg !716
  store i32 %56, i32* %_t2, align 4, !dbg !716
  %57 = load i32, i32* %_t0, align 4, !dbg !716
  %shr90 = lshr i32 %57, 16, !dbg !716
  %and91 = and i32 %shr90, 255, !dbg !716
  %idxprom92 = zext i32 %and91 to i64, !dbg !716
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom92, !dbg !716
  %58 = load i32, i32* %arrayidx93, align 4, !dbg !716
  %59 = load i32, i32* %_t3, align 4, !dbg !716
  %xor94 = xor i32 %59, %58, !dbg !716
  store i32 %xor94, i32* %_t3, align 4, !dbg !716
  %60 = load i32, i32* %_t1, align 4, !dbg !716
  %shr95 = lshr i32 %60, 8, !dbg !716
  %and96 = and i32 %shr95, 255, !dbg !716
  %idxprom97 = zext i32 %and96 to i64, !dbg !716
  %arrayidx98 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom97, !dbg !716
  %61 = load i32, i32* %arrayidx98, align 4, !dbg !716
  %62 = load i32, i32* %_t2, align 4, !dbg !716
  %xor99 = xor i32 %62, %61, !dbg !716
  store i32 %xor99, i32* %_t2, align 4, !dbg !716
  %63 = load i32, i32* %_t0, align 4, !dbg !716
  %shr100 = lshr i32 %63, 24, !dbg !716
  %idxprom101 = zext i32 %shr100 to i64, !dbg !716
  %arrayidx102 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom101, !dbg !716
  %64 = load i32, i32* %arrayidx102, align 4, !dbg !716
  %65 = load i32, i32* %_t3, align 4, !dbg !716
  %xor103 = xor i32 %65, %64, !dbg !716
  store i32 %xor103, i32* %_t3, align 4, !dbg !716
  %66 = load i32, i32* %_t3, align 4, !dbg !716
  %67 = load i32, i32* %_t2, align 4, !dbg !716
  %xor104 = xor i32 %67, %66, !dbg !716
  store i32 %xor104, i32* %_t2, align 4, !dbg !716
  %68 = load i32, i32* %_t3, align 4, !dbg !716
  %shr105 = lshr i32 %68, 8, !dbg !716
  %69 = load i32, i32* %_t3, align 4, !dbg !716
  %shl106 = shl i32 %69, 24, !dbg !716
  %add = add i32 %shr105, %shl106, !dbg !716
  store i32 %add, i32* %_t3, align 4, !dbg !716
  %70 = load i32, i32* %_t1, align 4, !dbg !716
  %shr107 = lshr i32 %70, 16, !dbg !716
  %and108 = and i32 %shr107, 255, !dbg !716
  %idxprom109 = zext i32 %and108 to i64, !dbg !716
  %arrayidx110 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom109, !dbg !716
  %71 = load i32, i32* %arrayidx110, align 4, !dbg !716
  %72 = load i32, i32* %_t2, align 4, !dbg !716
  %xor111 = xor i32 %72, %71, !dbg !716
  store i32 %xor111, i32* %_t2, align 4, !dbg !716
  %73 = load i32, i32* %_t3, align 4, !dbg !716
  %74 = load i32, i32* %s3, align 4, !dbg !716
  %xor112 = xor i32 %74, %73, !dbg !716
  store i32 %xor112, i32* %s3, align 4, !dbg !716
  %75 = load i32, i32* %_t1, align 4, !dbg !716
  %shr113 = lshr i32 %75, 24, !dbg !716
  %idxprom114 = zext i32 %shr113 to i64, !dbg !716
  %arrayidx115 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom114, !dbg !716
  %76 = load i32, i32* %arrayidx115, align 4, !dbg !716
  %77 = load i32, i32* %_t2, align 4, !dbg !716
  %xor116 = xor i32 %77, %76, !dbg !716
  store i32 %xor116, i32* %_t2, align 4, !dbg !716
  %78 = load i32, i32* %_t2, align 4, !dbg !716
  %79 = load i32, i32* %s2, align 4, !dbg !716
  %xor117 = xor i32 %79, %78, !dbg !716
  store i32 %xor117, i32* %s2, align 4, !dbg !716
  %80 = load i32, i32* %_t2, align 4, !dbg !716
  %81 = load i32, i32* %s3, align 4, !dbg !716
  %xor118 = xor i32 %81, %80, !dbg !716
  store i32 %xor118, i32* %s3, align 4, !dbg !716
  br label %do.end, !dbg !716

do.end:                                           ; preds = %do.body
  br label %do.body119, !dbg !720

do.body119:                                       ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %_t0120, metadata !721, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.declare(metadata i32* %_t1121, metadata !724, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.declare(metadata i32* %_t2122, metadata !725, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.declare(metadata i32* %_t3123, metadata !726, metadata !DIExpression()), !dbg !723
  %82 = load i32, i32* %s2, align 4, !dbg !723
  %83 = load i32*, i32** %k, align 8, !dbg !723
  %add.ptr124 = getelementptr inbounds i32, i32* %83, i64 2, !dbg !723
  %arrayidx125 = getelementptr inbounds i32, i32* %add.ptr124, i64 0, !dbg !723
  %84 = load i32, i32* %arrayidx125, align 4, !dbg !723
  %xor126 = xor i32 %82, %84, !dbg !723
  store i32 %xor126, i32* %_t0120, align 4, !dbg !723
  %85 = load i32, i32* %_t0120, align 4, !dbg !723
  %and127 = and i32 %85, 255, !dbg !723
  %idxprom128 = zext i32 %and127 to i64, !dbg !723
  %arrayidx129 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom128, !dbg !723
  %86 = load i32, i32* %arrayidx129, align 4, !dbg !723
  store i32 %86, i32* %_t3123, align 4, !dbg !723
  %87 = load i32, i32* %s3, align 4, !dbg !723
  %88 = load i32*, i32** %k, align 8, !dbg !723
  %add.ptr130 = getelementptr inbounds i32, i32* %88, i64 2, !dbg !723
  %arrayidx131 = getelementptr inbounds i32, i32* %add.ptr130, i64 1, !dbg !723
  %89 = load i32, i32* %arrayidx131, align 4, !dbg !723
  %xor132 = xor i32 %87, %89, !dbg !723
  store i32 %xor132, i32* %_t1121, align 4, !dbg !723
  %90 = load i32, i32* %_t0120, align 4, !dbg !723
  %shr133 = lshr i32 %90, 8, !dbg !723
  %and134 = and i32 %shr133, 255, !dbg !723
  %idxprom135 = zext i32 %and134 to i64, !dbg !723
  %arrayidx136 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom135, !dbg !723
  %91 = load i32, i32* %arrayidx136, align 4, !dbg !723
  %92 = load i32, i32* %_t3123, align 4, !dbg !723
  %xor137 = xor i32 %92, %91, !dbg !723
  store i32 %xor137, i32* %_t3123, align 4, !dbg !723
  %93 = load i32, i32* %_t1121, align 4, !dbg !723
  %and138 = and i32 %93, 255, !dbg !723
  %idxprom139 = zext i32 %and138 to i64, !dbg !723
  %arrayidx140 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom139, !dbg !723
  %94 = load i32, i32* %arrayidx140, align 4, !dbg !723
  store i32 %94, i32* %_t2122, align 4, !dbg !723
  %95 = load i32, i32* %_t0120, align 4, !dbg !723
  %shr141 = lshr i32 %95, 16, !dbg !723
  %and142 = and i32 %shr141, 255, !dbg !723
  %idxprom143 = zext i32 %and142 to i64, !dbg !723
  %arrayidx144 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom143, !dbg !723
  %96 = load i32, i32* %arrayidx144, align 4, !dbg !723
  %97 = load i32, i32* %_t3123, align 4, !dbg !723
  %xor145 = xor i32 %97, %96, !dbg !723
  store i32 %xor145, i32* %_t3123, align 4, !dbg !723
  %98 = load i32, i32* %_t1121, align 4, !dbg !723
  %shr146 = lshr i32 %98, 8, !dbg !723
  %and147 = and i32 %shr146, 255, !dbg !723
  %idxprom148 = zext i32 %and147 to i64, !dbg !723
  %arrayidx149 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom148, !dbg !723
  %99 = load i32, i32* %arrayidx149, align 4, !dbg !723
  %100 = load i32, i32* %_t2122, align 4, !dbg !723
  %xor150 = xor i32 %100, %99, !dbg !723
  store i32 %xor150, i32* %_t2122, align 4, !dbg !723
  %101 = load i32, i32* %_t0120, align 4, !dbg !723
  %shr151 = lshr i32 %101, 24, !dbg !723
  %idxprom152 = zext i32 %shr151 to i64, !dbg !723
  %arrayidx153 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom152, !dbg !723
  %102 = load i32, i32* %arrayidx153, align 4, !dbg !723
  %103 = load i32, i32* %_t3123, align 4, !dbg !723
  %xor154 = xor i32 %103, %102, !dbg !723
  store i32 %xor154, i32* %_t3123, align 4, !dbg !723
  %104 = load i32, i32* %_t3123, align 4, !dbg !723
  %105 = load i32, i32* %_t2122, align 4, !dbg !723
  %xor155 = xor i32 %105, %104, !dbg !723
  store i32 %xor155, i32* %_t2122, align 4, !dbg !723
  %106 = load i32, i32* %_t3123, align 4, !dbg !723
  %shr156 = lshr i32 %106, 8, !dbg !723
  %107 = load i32, i32* %_t3123, align 4, !dbg !723
  %shl157 = shl i32 %107, 24, !dbg !723
  %add158 = add i32 %shr156, %shl157, !dbg !723
  store i32 %add158, i32* %_t3123, align 4, !dbg !723
  %108 = load i32, i32* %_t1121, align 4, !dbg !723
  %shr159 = lshr i32 %108, 16, !dbg !723
  %and160 = and i32 %shr159, 255, !dbg !723
  %idxprom161 = zext i32 %and160 to i64, !dbg !723
  %arrayidx162 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom161, !dbg !723
  %109 = load i32, i32* %arrayidx162, align 4, !dbg !723
  %110 = load i32, i32* %_t2122, align 4, !dbg !723
  %xor163 = xor i32 %110, %109, !dbg !723
  store i32 %xor163, i32* %_t2122, align 4, !dbg !723
  %111 = load i32, i32* %_t3123, align 4, !dbg !723
  %112 = load i32, i32* %s1, align 4, !dbg !723
  %xor164 = xor i32 %112, %111, !dbg !723
  store i32 %xor164, i32* %s1, align 4, !dbg !723
  %113 = load i32, i32* %_t1121, align 4, !dbg !723
  %shr165 = lshr i32 %113, 24, !dbg !723
  %idxprom166 = zext i32 %shr165 to i64, !dbg !723
  %arrayidx167 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom166, !dbg !723
  %114 = load i32, i32* %arrayidx167, align 4, !dbg !723
  %115 = load i32, i32* %_t2122, align 4, !dbg !723
  %xor168 = xor i32 %115, %114, !dbg !723
  store i32 %xor168, i32* %_t2122, align 4, !dbg !723
  %116 = load i32, i32* %_t2122, align 4, !dbg !723
  %117 = load i32, i32* %s0, align 4, !dbg !723
  %xor169 = xor i32 %117, %116, !dbg !723
  store i32 %xor169, i32* %s0, align 4, !dbg !723
  %118 = load i32, i32* %_t2122, align 4, !dbg !723
  %119 = load i32, i32* %s1, align 4, !dbg !723
  %xor170 = xor i32 %119, %118, !dbg !723
  store i32 %xor170, i32* %s1, align 4, !dbg !723
  br label %do.end171, !dbg !723

do.end171:                                        ; preds = %do.body119
  br label %do.body172, !dbg !727

do.body172:                                       ; preds = %do.end171
  call void @llvm.dbg.declare(metadata i32* %_t0173, metadata !728, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata i32* %_t1174, metadata !731, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata i32* %_t2175, metadata !732, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata i32* %_t3176, metadata !733, metadata !DIExpression()), !dbg !730
  %120 = load i32, i32* %s0, align 4, !dbg !730
  %121 = load i32*, i32** %k, align 8, !dbg !730
  %add.ptr177 = getelementptr inbounds i32, i32* %121, i64 4, !dbg !730
  %arrayidx178 = getelementptr inbounds i32, i32* %add.ptr177, i64 0, !dbg !730
  %122 = load i32, i32* %arrayidx178, align 4, !dbg !730
  %xor179 = xor i32 %120, %122, !dbg !730
  store i32 %xor179, i32* %_t0173, align 4, !dbg !730
  %123 = load i32, i32* %_t0173, align 4, !dbg !730
  %and180 = and i32 %123, 255, !dbg !730
  %idxprom181 = zext i32 %and180 to i64, !dbg !730
  %arrayidx182 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom181, !dbg !730
  %124 = load i32, i32* %arrayidx182, align 4, !dbg !730
  store i32 %124, i32* %_t3176, align 4, !dbg !730
  %125 = load i32, i32* %s1, align 4, !dbg !730
  %126 = load i32*, i32** %k, align 8, !dbg !730
  %add.ptr183 = getelementptr inbounds i32, i32* %126, i64 4, !dbg !730
  %arrayidx184 = getelementptr inbounds i32, i32* %add.ptr183, i64 1, !dbg !730
  %127 = load i32, i32* %arrayidx184, align 4, !dbg !730
  %xor185 = xor i32 %125, %127, !dbg !730
  store i32 %xor185, i32* %_t1174, align 4, !dbg !730
  %128 = load i32, i32* %_t0173, align 4, !dbg !730
  %shr186 = lshr i32 %128, 8, !dbg !730
  %and187 = and i32 %shr186, 255, !dbg !730
  %idxprom188 = zext i32 %and187 to i64, !dbg !730
  %arrayidx189 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom188, !dbg !730
  %129 = load i32, i32* %arrayidx189, align 4, !dbg !730
  %130 = load i32, i32* %_t3176, align 4, !dbg !730
  %xor190 = xor i32 %130, %129, !dbg !730
  store i32 %xor190, i32* %_t3176, align 4, !dbg !730
  %131 = load i32, i32* %_t1174, align 4, !dbg !730
  %and191 = and i32 %131, 255, !dbg !730
  %idxprom192 = zext i32 %and191 to i64, !dbg !730
  %arrayidx193 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom192, !dbg !730
  %132 = load i32, i32* %arrayidx193, align 4, !dbg !730
  store i32 %132, i32* %_t2175, align 4, !dbg !730
  %133 = load i32, i32* %_t0173, align 4, !dbg !730
  %shr194 = lshr i32 %133, 16, !dbg !730
  %and195 = and i32 %shr194, 255, !dbg !730
  %idxprom196 = zext i32 %and195 to i64, !dbg !730
  %arrayidx197 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom196, !dbg !730
  %134 = load i32, i32* %arrayidx197, align 4, !dbg !730
  %135 = load i32, i32* %_t3176, align 4, !dbg !730
  %xor198 = xor i32 %135, %134, !dbg !730
  store i32 %xor198, i32* %_t3176, align 4, !dbg !730
  %136 = load i32, i32* %_t1174, align 4, !dbg !730
  %shr199 = lshr i32 %136, 8, !dbg !730
  %and200 = and i32 %shr199, 255, !dbg !730
  %idxprom201 = zext i32 %and200 to i64, !dbg !730
  %arrayidx202 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom201, !dbg !730
  %137 = load i32, i32* %arrayidx202, align 4, !dbg !730
  %138 = load i32, i32* %_t2175, align 4, !dbg !730
  %xor203 = xor i32 %138, %137, !dbg !730
  store i32 %xor203, i32* %_t2175, align 4, !dbg !730
  %139 = load i32, i32* %_t0173, align 4, !dbg !730
  %shr204 = lshr i32 %139, 24, !dbg !730
  %idxprom205 = zext i32 %shr204 to i64, !dbg !730
  %arrayidx206 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom205, !dbg !730
  %140 = load i32, i32* %arrayidx206, align 4, !dbg !730
  %141 = load i32, i32* %_t3176, align 4, !dbg !730
  %xor207 = xor i32 %141, %140, !dbg !730
  store i32 %xor207, i32* %_t3176, align 4, !dbg !730
  %142 = load i32, i32* %_t3176, align 4, !dbg !730
  %143 = load i32, i32* %_t2175, align 4, !dbg !730
  %xor208 = xor i32 %143, %142, !dbg !730
  store i32 %xor208, i32* %_t2175, align 4, !dbg !730
  %144 = load i32, i32* %_t3176, align 4, !dbg !730
  %shr209 = lshr i32 %144, 8, !dbg !730
  %145 = load i32, i32* %_t3176, align 4, !dbg !730
  %shl210 = shl i32 %145, 24, !dbg !730
  %add211 = add i32 %shr209, %shl210, !dbg !730
  store i32 %add211, i32* %_t3176, align 4, !dbg !730
  %146 = load i32, i32* %_t1174, align 4, !dbg !730
  %shr212 = lshr i32 %146, 16, !dbg !730
  %and213 = and i32 %shr212, 255, !dbg !730
  %idxprom214 = zext i32 %and213 to i64, !dbg !730
  %arrayidx215 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom214, !dbg !730
  %147 = load i32, i32* %arrayidx215, align 4, !dbg !730
  %148 = load i32, i32* %_t2175, align 4, !dbg !730
  %xor216 = xor i32 %148, %147, !dbg !730
  store i32 %xor216, i32* %_t2175, align 4, !dbg !730
  %149 = load i32, i32* %_t3176, align 4, !dbg !730
  %150 = load i32, i32* %s3, align 4, !dbg !730
  %xor217 = xor i32 %150, %149, !dbg !730
  store i32 %xor217, i32* %s3, align 4, !dbg !730
  %151 = load i32, i32* %_t1174, align 4, !dbg !730
  %shr218 = lshr i32 %151, 24, !dbg !730
  %idxprom219 = zext i32 %shr218 to i64, !dbg !730
  %arrayidx220 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom219, !dbg !730
  %152 = load i32, i32* %arrayidx220, align 4, !dbg !730
  %153 = load i32, i32* %_t2175, align 4, !dbg !730
  %xor221 = xor i32 %153, %152, !dbg !730
  store i32 %xor221, i32* %_t2175, align 4, !dbg !730
  %154 = load i32, i32* %_t2175, align 4, !dbg !730
  %155 = load i32, i32* %s2, align 4, !dbg !730
  %xor222 = xor i32 %155, %154, !dbg !730
  store i32 %xor222, i32* %s2, align 4, !dbg !730
  %156 = load i32, i32* %_t2175, align 4, !dbg !730
  %157 = load i32, i32* %s3, align 4, !dbg !730
  %xor223 = xor i32 %157, %156, !dbg !730
  store i32 %xor223, i32* %s3, align 4, !dbg !730
  br label %do.end224, !dbg !730

do.end224:                                        ; preds = %do.body172
  br label %do.body225, !dbg !734

do.body225:                                       ; preds = %do.end224
  call void @llvm.dbg.declare(metadata i32* %_t0226, metadata !735, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata i32* %_t1227, metadata !738, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata i32* %_t2228, metadata !739, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata i32* %_t3229, metadata !740, metadata !DIExpression()), !dbg !737
  %158 = load i32, i32* %s2, align 4, !dbg !737
  %159 = load i32*, i32** %k, align 8, !dbg !737
  %add.ptr230 = getelementptr inbounds i32, i32* %159, i64 6, !dbg !737
  %arrayidx231 = getelementptr inbounds i32, i32* %add.ptr230, i64 0, !dbg !737
  %160 = load i32, i32* %arrayidx231, align 4, !dbg !737
  %xor232 = xor i32 %158, %160, !dbg !737
  store i32 %xor232, i32* %_t0226, align 4, !dbg !737
  %161 = load i32, i32* %_t0226, align 4, !dbg !737
  %and233 = and i32 %161, 255, !dbg !737
  %idxprom234 = zext i32 %and233 to i64, !dbg !737
  %arrayidx235 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom234, !dbg !737
  %162 = load i32, i32* %arrayidx235, align 4, !dbg !737
  store i32 %162, i32* %_t3229, align 4, !dbg !737
  %163 = load i32, i32* %s3, align 4, !dbg !737
  %164 = load i32*, i32** %k, align 8, !dbg !737
  %add.ptr236 = getelementptr inbounds i32, i32* %164, i64 6, !dbg !737
  %arrayidx237 = getelementptr inbounds i32, i32* %add.ptr236, i64 1, !dbg !737
  %165 = load i32, i32* %arrayidx237, align 4, !dbg !737
  %xor238 = xor i32 %163, %165, !dbg !737
  store i32 %xor238, i32* %_t1227, align 4, !dbg !737
  %166 = load i32, i32* %_t0226, align 4, !dbg !737
  %shr239 = lshr i32 %166, 8, !dbg !737
  %and240 = and i32 %shr239, 255, !dbg !737
  %idxprom241 = zext i32 %and240 to i64, !dbg !737
  %arrayidx242 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom241, !dbg !737
  %167 = load i32, i32* %arrayidx242, align 4, !dbg !737
  %168 = load i32, i32* %_t3229, align 4, !dbg !737
  %xor243 = xor i32 %168, %167, !dbg !737
  store i32 %xor243, i32* %_t3229, align 4, !dbg !737
  %169 = load i32, i32* %_t1227, align 4, !dbg !737
  %and244 = and i32 %169, 255, !dbg !737
  %idxprom245 = zext i32 %and244 to i64, !dbg !737
  %arrayidx246 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom245, !dbg !737
  %170 = load i32, i32* %arrayidx246, align 4, !dbg !737
  store i32 %170, i32* %_t2228, align 4, !dbg !737
  %171 = load i32, i32* %_t0226, align 4, !dbg !737
  %shr247 = lshr i32 %171, 16, !dbg !737
  %and248 = and i32 %shr247, 255, !dbg !737
  %idxprom249 = zext i32 %and248 to i64, !dbg !737
  %arrayidx250 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom249, !dbg !737
  %172 = load i32, i32* %arrayidx250, align 4, !dbg !737
  %173 = load i32, i32* %_t3229, align 4, !dbg !737
  %xor251 = xor i32 %173, %172, !dbg !737
  store i32 %xor251, i32* %_t3229, align 4, !dbg !737
  %174 = load i32, i32* %_t1227, align 4, !dbg !737
  %shr252 = lshr i32 %174, 8, !dbg !737
  %and253 = and i32 %shr252, 255, !dbg !737
  %idxprom254 = zext i32 %and253 to i64, !dbg !737
  %arrayidx255 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom254, !dbg !737
  %175 = load i32, i32* %arrayidx255, align 4, !dbg !737
  %176 = load i32, i32* %_t2228, align 4, !dbg !737
  %xor256 = xor i32 %176, %175, !dbg !737
  store i32 %xor256, i32* %_t2228, align 4, !dbg !737
  %177 = load i32, i32* %_t0226, align 4, !dbg !737
  %shr257 = lshr i32 %177, 24, !dbg !737
  %idxprom258 = zext i32 %shr257 to i64, !dbg !737
  %arrayidx259 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom258, !dbg !737
  %178 = load i32, i32* %arrayidx259, align 4, !dbg !737
  %179 = load i32, i32* %_t3229, align 4, !dbg !737
  %xor260 = xor i32 %179, %178, !dbg !737
  store i32 %xor260, i32* %_t3229, align 4, !dbg !737
  %180 = load i32, i32* %_t3229, align 4, !dbg !737
  %181 = load i32, i32* %_t2228, align 4, !dbg !737
  %xor261 = xor i32 %181, %180, !dbg !737
  store i32 %xor261, i32* %_t2228, align 4, !dbg !737
  %182 = load i32, i32* %_t3229, align 4, !dbg !737
  %shr262 = lshr i32 %182, 8, !dbg !737
  %183 = load i32, i32* %_t3229, align 4, !dbg !737
  %shl263 = shl i32 %183, 24, !dbg !737
  %add264 = add i32 %shr262, %shl263, !dbg !737
  store i32 %add264, i32* %_t3229, align 4, !dbg !737
  %184 = load i32, i32* %_t1227, align 4, !dbg !737
  %shr265 = lshr i32 %184, 16, !dbg !737
  %and266 = and i32 %shr265, 255, !dbg !737
  %idxprom267 = zext i32 %and266 to i64, !dbg !737
  %arrayidx268 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom267, !dbg !737
  %185 = load i32, i32* %arrayidx268, align 4, !dbg !737
  %186 = load i32, i32* %_t2228, align 4, !dbg !737
  %xor269 = xor i32 %186, %185, !dbg !737
  store i32 %xor269, i32* %_t2228, align 4, !dbg !737
  %187 = load i32, i32* %_t3229, align 4, !dbg !737
  %188 = load i32, i32* %s1, align 4, !dbg !737
  %xor270 = xor i32 %188, %187, !dbg !737
  store i32 %xor270, i32* %s1, align 4, !dbg !737
  %189 = load i32, i32* %_t1227, align 4, !dbg !737
  %shr271 = lshr i32 %189, 24, !dbg !737
  %idxprom272 = zext i32 %shr271 to i64, !dbg !737
  %arrayidx273 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom272, !dbg !737
  %190 = load i32, i32* %arrayidx273, align 4, !dbg !737
  %191 = load i32, i32* %_t2228, align 4, !dbg !737
  %xor274 = xor i32 %191, %190, !dbg !737
  store i32 %xor274, i32* %_t2228, align 4, !dbg !737
  %192 = load i32, i32* %_t2228, align 4, !dbg !737
  %193 = load i32, i32* %s0, align 4, !dbg !737
  %xor275 = xor i32 %193, %192, !dbg !737
  store i32 %xor275, i32* %s0, align 4, !dbg !737
  %194 = load i32, i32* %_t2228, align 4, !dbg !737
  %195 = load i32, i32* %s1, align 4, !dbg !737
  %xor276 = xor i32 %195, %194, !dbg !737
  store i32 %xor276, i32* %s1, align 4, !dbg !737
  br label %do.end277, !dbg !737

do.end277:                                        ; preds = %do.body225
  br label %do.body278, !dbg !741

do.body278:                                       ; preds = %do.end277
  call void @llvm.dbg.declare(metadata i32* %_t0279, metadata !742, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata i32* %_t1280, metadata !745, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata i32* %_t2281, metadata !746, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata i32* %_t3282, metadata !747, metadata !DIExpression()), !dbg !744
  %196 = load i32, i32* %s0, align 4, !dbg !744
  %197 = load i32*, i32** %k, align 8, !dbg !744
  %add.ptr283 = getelementptr inbounds i32, i32* %197, i64 8, !dbg !744
  %arrayidx284 = getelementptr inbounds i32, i32* %add.ptr283, i64 0, !dbg !744
  %198 = load i32, i32* %arrayidx284, align 4, !dbg !744
  %xor285 = xor i32 %196, %198, !dbg !744
  store i32 %xor285, i32* %_t0279, align 4, !dbg !744
  %199 = load i32, i32* %_t0279, align 4, !dbg !744
  %and286 = and i32 %199, 255, !dbg !744
  %idxprom287 = zext i32 %and286 to i64, !dbg !744
  %arrayidx288 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom287, !dbg !744
  %200 = load i32, i32* %arrayidx288, align 4, !dbg !744
  store i32 %200, i32* %_t3282, align 4, !dbg !744
  %201 = load i32, i32* %s1, align 4, !dbg !744
  %202 = load i32*, i32** %k, align 8, !dbg !744
  %add.ptr289 = getelementptr inbounds i32, i32* %202, i64 8, !dbg !744
  %arrayidx290 = getelementptr inbounds i32, i32* %add.ptr289, i64 1, !dbg !744
  %203 = load i32, i32* %arrayidx290, align 4, !dbg !744
  %xor291 = xor i32 %201, %203, !dbg !744
  store i32 %xor291, i32* %_t1280, align 4, !dbg !744
  %204 = load i32, i32* %_t0279, align 4, !dbg !744
  %shr292 = lshr i32 %204, 8, !dbg !744
  %and293 = and i32 %shr292, 255, !dbg !744
  %idxprom294 = zext i32 %and293 to i64, !dbg !744
  %arrayidx295 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom294, !dbg !744
  %205 = load i32, i32* %arrayidx295, align 4, !dbg !744
  %206 = load i32, i32* %_t3282, align 4, !dbg !744
  %xor296 = xor i32 %206, %205, !dbg !744
  store i32 %xor296, i32* %_t3282, align 4, !dbg !744
  %207 = load i32, i32* %_t1280, align 4, !dbg !744
  %and297 = and i32 %207, 255, !dbg !744
  %idxprom298 = zext i32 %and297 to i64, !dbg !744
  %arrayidx299 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom298, !dbg !744
  %208 = load i32, i32* %arrayidx299, align 4, !dbg !744
  store i32 %208, i32* %_t2281, align 4, !dbg !744
  %209 = load i32, i32* %_t0279, align 4, !dbg !744
  %shr300 = lshr i32 %209, 16, !dbg !744
  %and301 = and i32 %shr300, 255, !dbg !744
  %idxprom302 = zext i32 %and301 to i64, !dbg !744
  %arrayidx303 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom302, !dbg !744
  %210 = load i32, i32* %arrayidx303, align 4, !dbg !744
  %211 = load i32, i32* %_t3282, align 4, !dbg !744
  %xor304 = xor i32 %211, %210, !dbg !744
  store i32 %xor304, i32* %_t3282, align 4, !dbg !744
  %212 = load i32, i32* %_t1280, align 4, !dbg !744
  %shr305 = lshr i32 %212, 8, !dbg !744
  %and306 = and i32 %shr305, 255, !dbg !744
  %idxprom307 = zext i32 %and306 to i64, !dbg !744
  %arrayidx308 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom307, !dbg !744
  %213 = load i32, i32* %arrayidx308, align 4, !dbg !744
  %214 = load i32, i32* %_t2281, align 4, !dbg !744
  %xor309 = xor i32 %214, %213, !dbg !744
  store i32 %xor309, i32* %_t2281, align 4, !dbg !744
  %215 = load i32, i32* %_t0279, align 4, !dbg !744
  %shr310 = lshr i32 %215, 24, !dbg !744
  %idxprom311 = zext i32 %shr310 to i64, !dbg !744
  %arrayidx312 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom311, !dbg !744
  %216 = load i32, i32* %arrayidx312, align 4, !dbg !744
  %217 = load i32, i32* %_t3282, align 4, !dbg !744
  %xor313 = xor i32 %217, %216, !dbg !744
  store i32 %xor313, i32* %_t3282, align 4, !dbg !744
  %218 = load i32, i32* %_t3282, align 4, !dbg !744
  %219 = load i32, i32* %_t2281, align 4, !dbg !744
  %xor314 = xor i32 %219, %218, !dbg !744
  store i32 %xor314, i32* %_t2281, align 4, !dbg !744
  %220 = load i32, i32* %_t3282, align 4, !dbg !744
  %shr315 = lshr i32 %220, 8, !dbg !744
  %221 = load i32, i32* %_t3282, align 4, !dbg !744
  %shl316 = shl i32 %221, 24, !dbg !744
  %add317 = add i32 %shr315, %shl316, !dbg !744
  store i32 %add317, i32* %_t3282, align 4, !dbg !744
  %222 = load i32, i32* %_t1280, align 4, !dbg !744
  %shr318 = lshr i32 %222, 16, !dbg !744
  %and319 = and i32 %shr318, 255, !dbg !744
  %idxprom320 = zext i32 %and319 to i64, !dbg !744
  %arrayidx321 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom320, !dbg !744
  %223 = load i32, i32* %arrayidx321, align 4, !dbg !744
  %224 = load i32, i32* %_t2281, align 4, !dbg !744
  %xor322 = xor i32 %224, %223, !dbg !744
  store i32 %xor322, i32* %_t2281, align 4, !dbg !744
  %225 = load i32, i32* %_t3282, align 4, !dbg !744
  %226 = load i32, i32* %s3, align 4, !dbg !744
  %xor323 = xor i32 %226, %225, !dbg !744
  store i32 %xor323, i32* %s3, align 4, !dbg !744
  %227 = load i32, i32* %_t1280, align 4, !dbg !744
  %shr324 = lshr i32 %227, 24, !dbg !744
  %idxprom325 = zext i32 %shr324 to i64, !dbg !744
  %arrayidx326 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom325, !dbg !744
  %228 = load i32, i32* %arrayidx326, align 4, !dbg !744
  %229 = load i32, i32* %_t2281, align 4, !dbg !744
  %xor327 = xor i32 %229, %228, !dbg !744
  store i32 %xor327, i32* %_t2281, align 4, !dbg !744
  %230 = load i32, i32* %_t2281, align 4, !dbg !744
  %231 = load i32, i32* %s2, align 4, !dbg !744
  %xor328 = xor i32 %231, %230, !dbg !744
  store i32 %xor328, i32* %s2, align 4, !dbg !744
  %232 = load i32, i32* %_t2281, align 4, !dbg !744
  %233 = load i32, i32* %s3, align 4, !dbg !744
  %xor329 = xor i32 %233, %232, !dbg !744
  store i32 %xor329, i32* %s3, align 4, !dbg !744
  br label %do.end330, !dbg !744

do.end330:                                        ; preds = %do.body278
  br label %do.body331, !dbg !748

do.body331:                                       ; preds = %do.end330
  call void @llvm.dbg.declare(metadata i32* %_t0332, metadata !749, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata i32* %_t1333, metadata !752, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata i32* %_t2334, metadata !753, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata i32* %_t3335, metadata !754, metadata !DIExpression()), !dbg !751
  %234 = load i32, i32* %s2, align 4, !dbg !751
  %235 = load i32*, i32** %k, align 8, !dbg !751
  %add.ptr336 = getelementptr inbounds i32, i32* %235, i64 10, !dbg !751
  %arrayidx337 = getelementptr inbounds i32, i32* %add.ptr336, i64 0, !dbg !751
  %236 = load i32, i32* %arrayidx337, align 4, !dbg !751
  %xor338 = xor i32 %234, %236, !dbg !751
  store i32 %xor338, i32* %_t0332, align 4, !dbg !751
  %237 = load i32, i32* %_t0332, align 4, !dbg !751
  %and339 = and i32 %237, 255, !dbg !751
  %idxprom340 = zext i32 %and339 to i64, !dbg !751
  %arrayidx341 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom340, !dbg !751
  %238 = load i32, i32* %arrayidx341, align 4, !dbg !751
  store i32 %238, i32* %_t3335, align 4, !dbg !751
  %239 = load i32, i32* %s3, align 4, !dbg !751
  %240 = load i32*, i32** %k, align 8, !dbg !751
  %add.ptr342 = getelementptr inbounds i32, i32* %240, i64 10, !dbg !751
  %arrayidx343 = getelementptr inbounds i32, i32* %add.ptr342, i64 1, !dbg !751
  %241 = load i32, i32* %arrayidx343, align 4, !dbg !751
  %xor344 = xor i32 %239, %241, !dbg !751
  store i32 %xor344, i32* %_t1333, align 4, !dbg !751
  %242 = load i32, i32* %_t0332, align 4, !dbg !751
  %shr345 = lshr i32 %242, 8, !dbg !751
  %and346 = and i32 %shr345, 255, !dbg !751
  %idxprom347 = zext i32 %and346 to i64, !dbg !751
  %arrayidx348 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom347, !dbg !751
  %243 = load i32, i32* %arrayidx348, align 4, !dbg !751
  %244 = load i32, i32* %_t3335, align 4, !dbg !751
  %xor349 = xor i32 %244, %243, !dbg !751
  store i32 %xor349, i32* %_t3335, align 4, !dbg !751
  %245 = load i32, i32* %_t1333, align 4, !dbg !751
  %and350 = and i32 %245, 255, !dbg !751
  %idxprom351 = zext i32 %and350 to i64, !dbg !751
  %arrayidx352 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom351, !dbg !751
  %246 = load i32, i32* %arrayidx352, align 4, !dbg !751
  store i32 %246, i32* %_t2334, align 4, !dbg !751
  %247 = load i32, i32* %_t0332, align 4, !dbg !751
  %shr353 = lshr i32 %247, 16, !dbg !751
  %and354 = and i32 %shr353, 255, !dbg !751
  %idxprom355 = zext i32 %and354 to i64, !dbg !751
  %arrayidx356 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom355, !dbg !751
  %248 = load i32, i32* %arrayidx356, align 4, !dbg !751
  %249 = load i32, i32* %_t3335, align 4, !dbg !751
  %xor357 = xor i32 %249, %248, !dbg !751
  store i32 %xor357, i32* %_t3335, align 4, !dbg !751
  %250 = load i32, i32* %_t1333, align 4, !dbg !751
  %shr358 = lshr i32 %250, 8, !dbg !751
  %and359 = and i32 %shr358, 255, !dbg !751
  %idxprom360 = zext i32 %and359 to i64, !dbg !751
  %arrayidx361 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom360, !dbg !751
  %251 = load i32, i32* %arrayidx361, align 4, !dbg !751
  %252 = load i32, i32* %_t2334, align 4, !dbg !751
  %xor362 = xor i32 %252, %251, !dbg !751
  store i32 %xor362, i32* %_t2334, align 4, !dbg !751
  %253 = load i32, i32* %_t0332, align 4, !dbg !751
  %shr363 = lshr i32 %253, 24, !dbg !751
  %idxprom364 = zext i32 %shr363 to i64, !dbg !751
  %arrayidx365 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom364, !dbg !751
  %254 = load i32, i32* %arrayidx365, align 4, !dbg !751
  %255 = load i32, i32* %_t3335, align 4, !dbg !751
  %xor366 = xor i32 %255, %254, !dbg !751
  store i32 %xor366, i32* %_t3335, align 4, !dbg !751
  %256 = load i32, i32* %_t3335, align 4, !dbg !751
  %257 = load i32, i32* %_t2334, align 4, !dbg !751
  %xor367 = xor i32 %257, %256, !dbg !751
  store i32 %xor367, i32* %_t2334, align 4, !dbg !751
  %258 = load i32, i32* %_t3335, align 4, !dbg !751
  %shr368 = lshr i32 %258, 8, !dbg !751
  %259 = load i32, i32* %_t3335, align 4, !dbg !751
  %shl369 = shl i32 %259, 24, !dbg !751
  %add370 = add i32 %shr368, %shl369, !dbg !751
  store i32 %add370, i32* %_t3335, align 4, !dbg !751
  %260 = load i32, i32* %_t1333, align 4, !dbg !751
  %shr371 = lshr i32 %260, 16, !dbg !751
  %and372 = and i32 %shr371, 255, !dbg !751
  %idxprom373 = zext i32 %and372 to i64, !dbg !751
  %arrayidx374 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom373, !dbg !751
  %261 = load i32, i32* %arrayidx374, align 4, !dbg !751
  %262 = load i32, i32* %_t2334, align 4, !dbg !751
  %xor375 = xor i32 %262, %261, !dbg !751
  store i32 %xor375, i32* %_t2334, align 4, !dbg !751
  %263 = load i32, i32* %_t3335, align 4, !dbg !751
  %264 = load i32, i32* %s1, align 4, !dbg !751
  %xor376 = xor i32 %264, %263, !dbg !751
  store i32 %xor376, i32* %s1, align 4, !dbg !751
  %265 = load i32, i32* %_t1333, align 4, !dbg !751
  %shr377 = lshr i32 %265, 24, !dbg !751
  %idxprom378 = zext i32 %shr377 to i64, !dbg !751
  %arrayidx379 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom378, !dbg !751
  %266 = load i32, i32* %arrayidx379, align 4, !dbg !751
  %267 = load i32, i32* %_t2334, align 4, !dbg !751
  %xor380 = xor i32 %267, %266, !dbg !751
  store i32 %xor380, i32* %_t2334, align 4, !dbg !751
  %268 = load i32, i32* %_t2334, align 4, !dbg !751
  %269 = load i32, i32* %s0, align 4, !dbg !751
  %xor381 = xor i32 %269, %268, !dbg !751
  store i32 %xor381, i32* %s0, align 4, !dbg !751
  %270 = load i32, i32* %_t2334, align 4, !dbg !751
  %271 = load i32, i32* %s1, align 4, !dbg !751
  %xor382 = xor i32 %271, %270, !dbg !751
  store i32 %xor382, i32* %s1, align 4, !dbg !751
  br label %do.end383, !dbg !751

do.end383:                                        ; preds = %do.body331
  %272 = load i32*, i32** %k, align 8, !dbg !755
  %add.ptr384 = getelementptr inbounds i32, i32* %272, i64 12, !dbg !755
  store i32* %add.ptr384, i32** %k, align 8, !dbg !755
  %273 = load i32*, i32** %k, align 8, !dbg !756
  %274 = load i32*, i32** %kend, align 8, !dbg !758
  %cmp = icmp eq i32* %273, %274, !dbg !759
  br i1 %cmp, label %if.then, label %if.end, !dbg !760

if.then:                                          ; preds = %do.end383
  br label %while.end, !dbg !761

if.end:                                           ; preds = %do.end383
  %275 = load i32, i32* %s0, align 4, !dbg !762
  %276 = load i32*, i32** %k, align 8, !dbg !762
  %arrayidx386 = getelementptr inbounds i32, i32* %276, i64 0, !dbg !762
  %277 = load i32, i32* %arrayidx386, align 4, !dbg !762
  %and387 = and i32 %275, %277, !dbg !762
  %shl388 = shl i32 %and387, 1, !dbg !762
  %278 = load i32, i32* %s0, align 4, !dbg !762
  %279 = load i32*, i32** %k, align 8, !dbg !762
  %arrayidx389 = getelementptr inbounds i32, i32* %279, i64 0, !dbg !762
  %280 = load i32, i32* %arrayidx389, align 4, !dbg !762
  %and390 = and i32 %278, %280, !dbg !762
  %shr391 = lshr i32 %and390, 31, !dbg !762
  %add392 = add i32 %shl388, %shr391, !dbg !762
  %281 = load i32, i32* %s1, align 4, !dbg !763
  %xor393 = xor i32 %281, %add392, !dbg !763
  store i32 %xor393, i32* %s1, align 4, !dbg !763
  %282 = load i32, i32* %s3, align 4, !dbg !764
  %283 = load i32*, i32** %k, align 8, !dbg !765
  %arrayidx394 = getelementptr inbounds i32, i32* %283, i64 3, !dbg !765
  %284 = load i32, i32* %arrayidx394, align 4, !dbg !765
  %or = or i32 %282, %284, !dbg !766
  %285 = load i32, i32* %s2, align 4, !dbg !767
  %xor395 = xor i32 %285, %or, !dbg !767
  store i32 %xor395, i32* %s2, align 4, !dbg !767
  %286 = load i32, i32* %s1, align 4, !dbg !768
  %287 = load i32*, i32** %k, align 8, !dbg !769
  %arrayidx396 = getelementptr inbounds i32, i32* %287, i64 1, !dbg !769
  %288 = load i32, i32* %arrayidx396, align 4, !dbg !769
  %or397 = or i32 %286, %288, !dbg !770
  %289 = load i32, i32* %s0, align 4, !dbg !771
  %xor398 = xor i32 %289, %or397, !dbg !771
  store i32 %xor398, i32* %s0, align 4, !dbg !771
  %290 = load i32, i32* %s2, align 4, !dbg !772
  %291 = load i32*, i32** %k, align 8, !dbg !772
  %arrayidx399 = getelementptr inbounds i32, i32* %291, i64 2, !dbg !772
  %292 = load i32, i32* %arrayidx399, align 4, !dbg !772
  %and400 = and i32 %290, %292, !dbg !772
  %shl401 = shl i32 %and400, 1, !dbg !772
  %293 = load i32, i32* %s2, align 4, !dbg !772
  %294 = load i32*, i32** %k, align 8, !dbg !772
  %arrayidx402 = getelementptr inbounds i32, i32* %294, i64 2, !dbg !772
  %295 = load i32, i32* %arrayidx402, align 4, !dbg !772
  %and403 = and i32 %293, %295, !dbg !772
  %shr404 = lshr i32 %and403, 31, !dbg !772
  %add405 = add i32 %shl401, %shr404, !dbg !772
  %296 = load i32, i32* %s3, align 4, !dbg !773
  %xor406 = xor i32 %296, %add405, !dbg !773
  store i32 %xor406, i32* %s3, align 4, !dbg !773
  %297 = load i32*, i32** %k, align 8, !dbg !774
  %add.ptr407 = getelementptr inbounds i32, i32* %297, i64 4, !dbg !774
  store i32* %add.ptr407, i32** %k, align 8, !dbg !774
  br label %while.body, !dbg !711, !llvm.loop !775

while.end:                                        ; preds = %if.then
  %298 = load i32*, i32** %k, align 8, !dbg !777
  %arrayidx408 = getelementptr inbounds i32, i32* %298, i64 0, !dbg !777
  %299 = load i32, i32* %arrayidx408, align 4, !dbg !777
  %300 = load i32, i32* %s2, align 4, !dbg !778
  %xor409 = xor i32 %300, %299, !dbg !778
  store i32 %xor409, i32* %s2, align 4, !dbg !778
  %301 = load i32*, i32** %k, align 8, !dbg !779
  %arrayidx410 = getelementptr inbounds i32, i32* %301, i64 1, !dbg !779
  %302 = load i32, i32* %arrayidx410, align 4, !dbg !779
  %303 = load i32, i32* %s3, align 4, !dbg !780
  %xor411 = xor i32 %303, %302, !dbg !780
  store i32 %xor411, i32* %s3, align 4, !dbg !780
  %304 = load i32*, i32** %k, align 8, !dbg !781
  %arrayidx412 = getelementptr inbounds i32, i32* %304, i64 2, !dbg !781
  %305 = load i32, i32* %arrayidx412, align 4, !dbg !781
  %306 = load i32, i32* %s0, align 4, !dbg !782
  %xor413 = xor i32 %306, %305, !dbg !782
  store i32 %xor413, i32* %s0, align 4, !dbg !782
  %307 = load i32*, i32** %k, align 8, !dbg !783
  %arrayidx414 = getelementptr inbounds i32, i32* %307, i64 3, !dbg !783
  %308 = load i32, i32* %arrayidx414, align 4, !dbg !783
  %309 = load i32, i32* %s1, align 4, !dbg !784
  %xor415 = xor i32 %309, %308, !dbg !784
  store i32 %xor415, i32* %s1, align 4, !dbg !784
  %310 = load i32, i32* %s2, align 4, !dbg !785
  %shr416 = lshr i32 %310, 24, !dbg !785
  %conv417 = trunc i32 %shr416 to i8, !dbg !785
  %311 = load i8*, i8** %ciphertext.addr, align 8, !dbg !785
  %arrayidx418 = getelementptr inbounds i8, i8* %311, i64 0, !dbg !785
  store i8 %conv417, i8* %arrayidx418, align 1, !dbg !785
  %312 = load i32, i32* %s2, align 4, !dbg !785
  %shr419 = lshr i32 %312, 16, !dbg !785
  %conv420 = trunc i32 %shr419 to i8, !dbg !785
  %313 = load i8*, i8** %ciphertext.addr, align 8, !dbg !785
  %arrayidx421 = getelementptr inbounds i8, i8* %313, i64 1, !dbg !785
  store i8 %conv420, i8* %arrayidx421, align 1, !dbg !785
  %314 = load i32, i32* %s2, align 4, !dbg !785
  %shr422 = lshr i32 %314, 8, !dbg !785
  %conv423 = trunc i32 %shr422 to i8, !dbg !785
  %315 = load i8*, i8** %ciphertext.addr, align 8, !dbg !785
  %arrayidx424 = getelementptr inbounds i8, i8* %315, i64 2, !dbg !785
  store i8 %conv423, i8* %arrayidx424, align 1, !dbg !785
  %316 = load i32, i32* %s2, align 4, !dbg !785
  %conv425 = trunc i32 %316 to i8, !dbg !785
  %317 = load i8*, i8** %ciphertext.addr, align 8, !dbg !785
  %arrayidx426 = getelementptr inbounds i8, i8* %317, i64 3, !dbg !785
  store i8 %conv425, i8* %arrayidx426, align 1, !dbg !785
  %318 = load i32, i32* %s3, align 4, !dbg !786
  %shr427 = lshr i32 %318, 24, !dbg !786
  %conv428 = trunc i32 %shr427 to i8, !dbg !786
  %319 = load i8*, i8** %ciphertext.addr, align 8, !dbg !786
  %add.ptr429 = getelementptr inbounds i8, i8* %319, i64 4, !dbg !786
  %arrayidx430 = getelementptr inbounds i8, i8* %add.ptr429, i64 0, !dbg !786
  store i8 %conv428, i8* %arrayidx430, align 1, !dbg !786
  %320 = load i32, i32* %s3, align 4, !dbg !786
  %shr431 = lshr i32 %320, 16, !dbg !786
  %conv432 = trunc i32 %shr431 to i8, !dbg !786
  %321 = load i8*, i8** %ciphertext.addr, align 8, !dbg !786
  %add.ptr433 = getelementptr inbounds i8, i8* %321, i64 4, !dbg !786
  %arrayidx434 = getelementptr inbounds i8, i8* %add.ptr433, i64 1, !dbg !786
  store i8 %conv432, i8* %arrayidx434, align 1, !dbg !786
  %322 = load i32, i32* %s3, align 4, !dbg !786
  %shr435 = lshr i32 %322, 8, !dbg !786
  %conv436 = trunc i32 %shr435 to i8, !dbg !786
  %323 = load i8*, i8** %ciphertext.addr, align 8, !dbg !786
  %add.ptr437 = getelementptr inbounds i8, i8* %323, i64 4, !dbg !786
  %arrayidx438 = getelementptr inbounds i8, i8* %add.ptr437, i64 2, !dbg !786
  store i8 %conv436, i8* %arrayidx438, align 1, !dbg !786
  %324 = load i32, i32* %s3, align 4, !dbg !786
  %conv439 = trunc i32 %324 to i8, !dbg !786
  %325 = load i8*, i8** %ciphertext.addr, align 8, !dbg !786
  %add.ptr440 = getelementptr inbounds i8, i8* %325, i64 4, !dbg !786
  %arrayidx441 = getelementptr inbounds i8, i8* %add.ptr440, i64 3, !dbg !786
  store i8 %conv439, i8* %arrayidx441, align 1, !dbg !786
  %326 = load i32, i32* %s0, align 4, !dbg !787
  %shr442 = lshr i32 %326, 24, !dbg !787
  %conv443 = trunc i32 %shr442 to i8, !dbg !787
  %327 = load i8*, i8** %ciphertext.addr, align 8, !dbg !787
  %add.ptr444 = getelementptr inbounds i8, i8* %327, i64 8, !dbg !787
  %arrayidx445 = getelementptr inbounds i8, i8* %add.ptr444, i64 0, !dbg !787
  store i8 %conv443, i8* %arrayidx445, align 1, !dbg !787
  %328 = load i32, i32* %s0, align 4, !dbg !787
  %shr446 = lshr i32 %328, 16, !dbg !787
  %conv447 = trunc i32 %shr446 to i8, !dbg !787
  %329 = load i8*, i8** %ciphertext.addr, align 8, !dbg !787
  %add.ptr448 = getelementptr inbounds i8, i8* %329, i64 8, !dbg !787
  %arrayidx449 = getelementptr inbounds i8, i8* %add.ptr448, i64 1, !dbg !787
  store i8 %conv447, i8* %arrayidx449, align 1, !dbg !787
  %330 = load i32, i32* %s0, align 4, !dbg !787
  %shr450 = lshr i32 %330, 8, !dbg !787
  %conv451 = trunc i32 %shr450 to i8, !dbg !787
  %331 = load i8*, i8** %ciphertext.addr, align 8, !dbg !787
  %add.ptr452 = getelementptr inbounds i8, i8* %331, i64 8, !dbg !787
  %arrayidx453 = getelementptr inbounds i8, i8* %add.ptr452, i64 2, !dbg !787
  store i8 %conv451, i8* %arrayidx453, align 1, !dbg !787
  %332 = load i32, i32* %s0, align 4, !dbg !787
  %conv454 = trunc i32 %332 to i8, !dbg !787
  %333 = load i8*, i8** %ciphertext.addr, align 8, !dbg !787
  %add.ptr455 = getelementptr inbounds i8, i8* %333, i64 8, !dbg !787
  %arrayidx456 = getelementptr inbounds i8, i8* %add.ptr455, i64 3, !dbg !787
  store i8 %conv454, i8* %arrayidx456, align 1, !dbg !787
  %334 = load i32, i32* %s1, align 4, !dbg !788
  %shr457 = lshr i32 %334, 24, !dbg !788
  %conv458 = trunc i32 %shr457 to i8, !dbg !788
  %335 = load i8*, i8** %ciphertext.addr, align 8, !dbg !788
  %add.ptr459 = getelementptr inbounds i8, i8* %335, i64 12, !dbg !788
  %arrayidx460 = getelementptr inbounds i8, i8* %add.ptr459, i64 0, !dbg !788
  store i8 %conv458, i8* %arrayidx460, align 1, !dbg !788
  %336 = load i32, i32* %s1, align 4, !dbg !788
  %shr461 = lshr i32 %336, 16, !dbg !788
  %conv462 = trunc i32 %shr461 to i8, !dbg !788
  %337 = load i8*, i8** %ciphertext.addr, align 8, !dbg !788
  %add.ptr463 = getelementptr inbounds i8, i8* %337, i64 12, !dbg !788
  %arrayidx464 = getelementptr inbounds i8, i8* %add.ptr463, i64 1, !dbg !788
  store i8 %conv462, i8* %arrayidx464, align 1, !dbg !788
  %338 = load i32, i32* %s1, align 4, !dbg !788
  %shr465 = lshr i32 %338, 8, !dbg !788
  %conv466 = trunc i32 %shr465 to i8, !dbg !788
  %339 = load i8*, i8** %ciphertext.addr, align 8, !dbg !788
  %add.ptr467 = getelementptr inbounds i8, i8* %339, i64 12, !dbg !788
  %arrayidx468 = getelementptr inbounds i8, i8* %add.ptr467, i64 2, !dbg !788
  store i8 %conv466, i8* %arrayidx468, align 1, !dbg !788
  %340 = load i32, i32* %s1, align 4, !dbg !788
  %conv469 = trunc i32 %340 to i8, !dbg !788
  %341 = load i8*, i8** %ciphertext.addr, align 8, !dbg !788
  %add.ptr470 = getelementptr inbounds i8, i8* %341, i64 12, !dbg !788
  %arrayidx471 = getelementptr inbounds i8, i8* %add.ptr470, i64 3, !dbg !788
  store i8 %conv469, i8* %arrayidx471, align 1, !dbg !788
  ret void, !dbg !789
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @Camellia_EncryptBlock(i32 %keyBitLength, i8* %plaintext, i32* %keyTable, i8* %ciphertext) #0 !dbg !790 {
entry:
  %grandRounds.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %grandRounds.addr.i, metadata !667, metadata !DIExpression()), !dbg !791
  %plaintext.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %plaintext.addr.i, metadata !669, metadata !DIExpression()), !dbg !793
  %keyTable.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %keyTable.addr.i, metadata !671, metadata !DIExpression()), !dbg !794
  %ciphertext.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ciphertext.addr.i, metadata !673, metadata !DIExpression()), !dbg !795
  %s0.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s0.i, metadata !675, metadata !DIExpression()), !dbg !796
  %s1.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s1.i, metadata !677, metadata !DIExpression()), !dbg !797
  %s2.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s2.i, metadata !679, metadata !DIExpression()), !dbg !798
  %s3.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s3.i, metadata !681, metadata !DIExpression()), !dbg !799
  %k.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %k.i, metadata !683, metadata !DIExpression()), !dbg !800
  %kend.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %kend.i, metadata !688, metadata !DIExpression()), !dbg !801
  %_t0.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0.i, metadata !714, metadata !DIExpression()), !dbg !802
  %_t1.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1.i, metadata !717, metadata !DIExpression()), !dbg !802
  %_t2.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2.i, metadata !718, metadata !DIExpression()), !dbg !802
  %_t3.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3.i, metadata !719, metadata !DIExpression()), !dbg !802
  %_t0120.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0120.i, metadata !721, metadata !DIExpression()), !dbg !803
  %_t1121.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1121.i, metadata !724, metadata !DIExpression()), !dbg !803
  %_t2122.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2122.i, metadata !725, metadata !DIExpression()), !dbg !803
  %_t3123.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3123.i, metadata !726, metadata !DIExpression()), !dbg !803
  %_t0173.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0173.i, metadata !728, metadata !DIExpression()), !dbg !804
  %_t1174.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1174.i, metadata !731, metadata !DIExpression()), !dbg !804
  %_t2175.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2175.i, metadata !732, metadata !DIExpression()), !dbg !804
  %_t3176.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3176.i, metadata !733, metadata !DIExpression()), !dbg !804
  %_t0226.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0226.i, metadata !735, metadata !DIExpression()), !dbg !805
  %_t1227.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1227.i, metadata !738, metadata !DIExpression()), !dbg !805
  %_t2228.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2228.i, metadata !739, metadata !DIExpression()), !dbg !805
  %_t3229.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3229.i, metadata !740, metadata !DIExpression()), !dbg !805
  %_t0279.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0279.i, metadata !742, metadata !DIExpression()), !dbg !806
  %_t1280.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1280.i, metadata !745, metadata !DIExpression()), !dbg !806
  %_t2281.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2281.i, metadata !746, metadata !DIExpression()), !dbg !806
  %_t3282.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3282.i, metadata !747, metadata !DIExpression()), !dbg !806
  %_t0332.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0332.i, metadata !749, metadata !DIExpression()), !dbg !807
  %_t1333.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1333.i, metadata !752, metadata !DIExpression()), !dbg !807
  %_t2334.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2334.i, metadata !753, metadata !DIExpression()), !dbg !807
  %_t3335.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3335.i, metadata !754, metadata !DIExpression()), !dbg !807
  %keyBitLength.addr = alloca i32, align 4
  %plaintext.addr = alloca i8*, align 8
  %keyTable.addr = alloca i32*, align 8
  %ciphertext.addr = alloca i8*, align 8
  store i32 %keyBitLength, i32* %keyBitLength.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %keyBitLength.addr, metadata !808, metadata !DIExpression()), !dbg !809
  store i8* %plaintext, i8** %plaintext.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %plaintext.addr, metadata !810, metadata !DIExpression()), !dbg !811
  store i32* %keyTable, i32** %keyTable.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %keyTable.addr, metadata !812, metadata !DIExpression()), !dbg !813
  %keyTable.addr1 = bitcast i32** %keyTable.addr to i8*
  call void @llvm.var.annotation(i8* %keyTable.addr1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 444)
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ciphertext.addr, metadata !814, metadata !DIExpression()), !dbg !815
  %0 = load i32, i32* %keyBitLength.addr, align 4, !dbg !816
  %cmp = icmp eq i32 %0, 128, !dbg !817
  %1 = zext i1 %cmp to i64, !dbg !816
  %cond = select i1 %cmp, i32 3, i32 4, !dbg !816
  %2 = load i8*, i8** %plaintext.addr, align 8, !dbg !818
  %3 = load i32*, i32** %keyTable.addr, align 8, !dbg !819
  %4 = load i8*, i8** %ciphertext.addr, align 8, !dbg !820
  store i32 %cond, i32* %grandRounds.addr.i, align 4
  store i8* %2, i8** %plaintext.addr.i, align 8
  store i32* %3, i32** %keyTable.addr.i, align 8
  %keyTable.addr1.i = bitcast i32** %keyTable.addr.i to i8*
  call void @llvm.var.annotation(i8* %keyTable.addr1.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 398) #6
  store i8* %4, i8** %ciphertext.addr.i, align 8
  %k2.i = bitcast i32** %k.i to i8*, !dbg !821
  call void @llvm.var.annotation(i8* %k2.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 402) #6, !dbg !821
  %5 = load i32*, i32** %keyTable.addr.i, align 8, !dbg !822
  store i32* %5, i32** %k.i, align 8, !dbg !800
  %6 = load i32*, i32** %keyTable.addr.i, align 8, !dbg !823
  %7 = load i32, i32* %grandRounds.addr.i, align 4, !dbg !824
  %mul.i = mul nsw i32 %7, 16, !dbg !825
  %idx.ext.i = sext i32 %mul.i to i64, !dbg !826
  %add.ptr.i = getelementptr inbounds i32, i32* %6, i64 %idx.ext.i, !dbg !826
  store i32* %add.ptr.i, i32** %kend.i, align 8, !dbg !801
  %8 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !827
  %9 = load i8, i8* %8, align 1, !dbg !827
  %conv.i = zext i8 %9 to i32, !dbg !827
  %shl.i = shl i32 %conv.i, 24, !dbg !827
  %10 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !827
  %arrayidx3.i = getelementptr inbounds i8, i8* %10, i64 1, !dbg !827
  %11 = load i8, i8* %arrayidx3.i, align 1, !dbg !827
  %conv4.i = zext i8 %11 to i32, !dbg !827
  %shl5.i = shl i32 %conv4.i, 16, !dbg !827
  %xor.i = xor i32 %shl.i, %shl5.i, !dbg !827
  %12 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !827
  %arrayidx6.i = getelementptr inbounds i8, i8* %12, i64 2, !dbg !827
  %13 = load i8, i8* %arrayidx6.i, align 1, !dbg !827
  %conv7.i = zext i8 %13 to i32, !dbg !827
  %shl8.i = shl i32 %conv7.i, 8, !dbg !827
  %xor9.i = xor i32 %xor.i, %shl8.i, !dbg !827
  %14 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !827
  %arrayidx10.i = getelementptr inbounds i8, i8* %14, i64 3, !dbg !827
  %15 = load i8, i8* %arrayidx10.i, align 1, !dbg !827
  %conv11.i = zext i8 %15 to i32, !dbg !827
  %xor12.i = xor i32 %xor9.i, %conv11.i, !dbg !827
  %16 = load i32*, i32** %k.i, align 8, !dbg !828
  %17 = load i32, i32* %16, align 4, !dbg !828
  %xor14.i = xor i32 %xor12.i, %17, !dbg !829
  store i32 %xor14.i, i32* %s0.i, align 4, !dbg !830
  %18 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !831
  %add.ptr15.i = getelementptr inbounds i8, i8* %18, i64 4, !dbg !831
  %19 = load i8, i8* %add.ptr15.i, align 1, !dbg !831
  %conv17.i = zext i8 %19 to i32, !dbg !831
  %shl18.i = shl i32 %conv17.i, 24, !dbg !831
  %20 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !831
  %add.ptr19.i = getelementptr inbounds i8, i8* %20, i64 4, !dbg !831
  %arrayidx20.i = getelementptr inbounds i8, i8* %add.ptr19.i, i64 1, !dbg !831
  %21 = load i8, i8* %arrayidx20.i, align 1, !dbg !831
  %conv21.i = zext i8 %21 to i32, !dbg !831
  %shl22.i = shl i32 %conv21.i, 16, !dbg !831
  %xor23.i = xor i32 %shl18.i, %shl22.i, !dbg !831
  %22 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !831
  %add.ptr24.i = getelementptr inbounds i8, i8* %22, i64 4, !dbg !831
  %arrayidx25.i = getelementptr inbounds i8, i8* %add.ptr24.i, i64 2, !dbg !831
  %23 = load i8, i8* %arrayidx25.i, align 1, !dbg !831
  %conv26.i = zext i8 %23 to i32, !dbg !831
  %shl27.i = shl i32 %conv26.i, 8, !dbg !831
  %xor28.i = xor i32 %xor23.i, %shl27.i, !dbg !831
  %24 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !831
  %add.ptr29.i = getelementptr inbounds i8, i8* %24, i64 4, !dbg !831
  %arrayidx30.i = getelementptr inbounds i8, i8* %add.ptr29.i, i64 3, !dbg !831
  %25 = load i8, i8* %arrayidx30.i, align 1, !dbg !831
  %conv31.i = zext i8 %25 to i32, !dbg !831
  %xor32.i = xor i32 %xor28.i, %conv31.i, !dbg !831
  %26 = load i32*, i32** %k.i, align 8, !dbg !832
  %arrayidx33.i = getelementptr inbounds i32, i32* %26, i64 1, !dbg !832
  %27 = load i32, i32* %arrayidx33.i, align 4, !dbg !832
  %xor34.i = xor i32 %xor32.i, %27, !dbg !833
  store i32 %xor34.i, i32* %s1.i, align 4, !dbg !834
  %28 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !835
  %add.ptr35.i = getelementptr inbounds i8, i8* %28, i64 8, !dbg !835
  %29 = load i8, i8* %add.ptr35.i, align 1, !dbg !835
  %conv37.i = zext i8 %29 to i32, !dbg !835
  %shl38.i = shl i32 %conv37.i, 24, !dbg !835
  %30 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !835
  %add.ptr39.i = getelementptr inbounds i8, i8* %30, i64 8, !dbg !835
  %arrayidx40.i = getelementptr inbounds i8, i8* %add.ptr39.i, i64 1, !dbg !835
  %31 = load i8, i8* %arrayidx40.i, align 1, !dbg !835
  %conv41.i = zext i8 %31 to i32, !dbg !835
  %shl42.i = shl i32 %conv41.i, 16, !dbg !835
  %xor43.i = xor i32 %shl38.i, %shl42.i, !dbg !835
  %32 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !835
  %add.ptr44.i = getelementptr inbounds i8, i8* %32, i64 8, !dbg !835
  %arrayidx45.i = getelementptr inbounds i8, i8* %add.ptr44.i, i64 2, !dbg !835
  %33 = load i8, i8* %arrayidx45.i, align 1, !dbg !835
  %conv46.i = zext i8 %33 to i32, !dbg !835
  %shl47.i = shl i32 %conv46.i, 8, !dbg !835
  %xor48.i = xor i32 %xor43.i, %shl47.i, !dbg !835
  %34 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !835
  %add.ptr49.i = getelementptr inbounds i8, i8* %34, i64 8, !dbg !835
  %arrayidx50.i = getelementptr inbounds i8, i8* %add.ptr49.i, i64 3, !dbg !835
  %35 = load i8, i8* %arrayidx50.i, align 1, !dbg !835
  %conv51.i = zext i8 %35 to i32, !dbg !835
  %xor52.i = xor i32 %xor48.i, %conv51.i, !dbg !835
  %36 = load i32*, i32** %k.i, align 8, !dbg !836
  %arrayidx53.i = getelementptr inbounds i32, i32* %36, i64 2, !dbg !836
  %37 = load i32, i32* %arrayidx53.i, align 4, !dbg !836
  %xor54.i = xor i32 %xor52.i, %37, !dbg !837
  store i32 %xor54.i, i32* %s2.i, align 4, !dbg !838
  %38 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !839
  %add.ptr55.i = getelementptr inbounds i8, i8* %38, i64 12, !dbg !839
  %39 = load i8, i8* %add.ptr55.i, align 1, !dbg !839
  %conv57.i = zext i8 %39 to i32, !dbg !839
  %shl58.i = shl i32 %conv57.i, 24, !dbg !839
  %40 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !839
  %add.ptr59.i = getelementptr inbounds i8, i8* %40, i64 12, !dbg !839
  %arrayidx60.i = getelementptr inbounds i8, i8* %add.ptr59.i, i64 1, !dbg !839
  %41 = load i8, i8* %arrayidx60.i, align 1, !dbg !839
  %conv61.i = zext i8 %41 to i32, !dbg !839
  %shl62.i = shl i32 %conv61.i, 16, !dbg !839
  %xor63.i = xor i32 %shl58.i, %shl62.i, !dbg !839
  %42 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !839
  %add.ptr64.i = getelementptr inbounds i8, i8* %42, i64 12, !dbg !839
  %arrayidx65.i = getelementptr inbounds i8, i8* %add.ptr64.i, i64 2, !dbg !839
  %43 = load i8, i8* %arrayidx65.i, align 1, !dbg !839
  %conv66.i = zext i8 %43 to i32, !dbg !839
  %shl67.i = shl i32 %conv66.i, 8, !dbg !839
  %xor68.i = xor i32 %xor63.i, %shl67.i, !dbg !839
  %44 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !839
  %add.ptr69.i = getelementptr inbounds i8, i8* %44, i64 12, !dbg !839
  %arrayidx70.i = getelementptr inbounds i8, i8* %add.ptr69.i, i64 3, !dbg !839
  %45 = load i8, i8* %arrayidx70.i, align 1, !dbg !839
  %conv71.i = zext i8 %45 to i32, !dbg !839
  %xor72.i = xor i32 %xor68.i, %conv71.i, !dbg !839
  %46 = load i32*, i32** %k.i, align 8, !dbg !840
  %arrayidx73.i = getelementptr inbounds i32, i32* %46, i64 3, !dbg !840
  %47 = load i32, i32* %arrayidx73.i, align 4, !dbg !840
  %xor74.i = xor i32 %xor72.i, %47, !dbg !841
  store i32 %xor74.i, i32* %s3.i, align 4, !dbg !842
  %48 = load i32*, i32** %k.i, align 8, !dbg !843
  %add.ptr75.i = getelementptr inbounds i32, i32* %48, i64 4, !dbg !843
  store i32* %add.ptr75.i, i32** %k.i, align 8, !dbg !843
  br label %while.body.i, !dbg !844

while.body.i:                                     ; preds = %if.end.i, %entry
  %49 = load i32, i32* %s0.i, align 4, !dbg !802
  %50 = load i32*, i32** %k.i, align 8, !dbg !802
  %51 = load i32, i32* %50, align 4, !dbg !802
  %xor78.i = xor i32 %49, %51, !dbg !802
  store i32 %xor78.i, i32* %_t0.i, align 4, !dbg !802
  %52 = load i32, i32* %_t0.i, align 4, !dbg !802
  %and.i = and i32 %52, 255, !dbg !802
  %idxprom.i = zext i32 %and.i to i64, !dbg !802
  %arrayidx79.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom.i, !dbg !802
  %53 = load i32, i32* %arrayidx79.i, align 4, !dbg !802
  store i32 %53, i32* %_t3.i, align 4, !dbg !802
  %54 = load i32, i32* %s1.i, align 4, !dbg !802
  %55 = load i32*, i32** %k.i, align 8, !dbg !802
  %arrayidx81.i = getelementptr inbounds i32, i32* %55, i64 1, !dbg !802
  %56 = load i32, i32* %arrayidx81.i, align 4, !dbg !802
  %xor82.i = xor i32 %54, %56, !dbg !802
  store i32 %xor82.i, i32* %_t1.i, align 4, !dbg !802
  %57 = load i32, i32* %_t0.i, align 4, !dbg !802
  %shr.i = lshr i32 %57, 8, !dbg !802
  %and83.i = and i32 %shr.i, 255, !dbg !802
  %idxprom84.i = zext i32 %and83.i to i64, !dbg !802
  %arrayidx85.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom84.i, !dbg !802
  %58 = load i32, i32* %arrayidx85.i, align 4, !dbg !802
  %59 = load i32, i32* %_t3.i, align 4, !dbg !802
  %xor86.i = xor i32 %59, %58, !dbg !802
  store i32 %xor86.i, i32* %_t3.i, align 4, !dbg !802
  %60 = load i32, i32* %_t1.i, align 4, !dbg !802
  %and87.i = and i32 %60, 255, !dbg !802
  %idxprom88.i = zext i32 %and87.i to i64, !dbg !802
  %arrayidx89.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom88.i, !dbg !802
  %61 = load i32, i32* %arrayidx89.i, align 4, !dbg !802
  store i32 %61, i32* %_t2.i, align 4, !dbg !802
  %62 = load i32, i32* %_t0.i, align 4, !dbg !802
  %shr90.i = lshr i32 %62, 16, !dbg !802
  %and91.i = and i32 %shr90.i, 255, !dbg !802
  %idxprom92.i = zext i32 %and91.i to i64, !dbg !802
  %arrayidx93.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom92.i, !dbg !802
  %63 = load i32, i32* %arrayidx93.i, align 4, !dbg !802
  %64 = load i32, i32* %_t3.i, align 4, !dbg !802
  %xor94.i = xor i32 %64, %63, !dbg !802
  store i32 %xor94.i, i32* %_t3.i, align 4, !dbg !802
  %65 = load i32, i32* %_t1.i, align 4, !dbg !802
  %shr95.i = lshr i32 %65, 8, !dbg !802
  %and96.i = and i32 %shr95.i, 255, !dbg !802
  %idxprom97.i = zext i32 %and96.i to i64, !dbg !802
  %arrayidx98.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom97.i, !dbg !802
  %66 = load i32, i32* %arrayidx98.i, align 4, !dbg !802
  %67 = load i32, i32* %_t2.i, align 4, !dbg !802
  %xor99.i = xor i32 %67, %66, !dbg !802
  store i32 %xor99.i, i32* %_t2.i, align 4, !dbg !802
  %68 = load i32, i32* %_t0.i, align 4, !dbg !802
  %shr100.i = lshr i32 %68, 24, !dbg !802
  %idxprom101.i = zext i32 %shr100.i to i64, !dbg !802
  %arrayidx102.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom101.i, !dbg !802
  %69 = load i32, i32* %arrayidx102.i, align 4, !dbg !802
  %70 = load i32, i32* %_t3.i, align 4, !dbg !802
  %xor103.i = xor i32 %70, %69, !dbg !802
  store i32 %xor103.i, i32* %_t3.i, align 4, !dbg !802
  %71 = load i32, i32* %_t3.i, align 4, !dbg !802
  %72 = load i32, i32* %_t2.i, align 4, !dbg !802
  %xor104.i = xor i32 %72, %71, !dbg !802
  store i32 %xor104.i, i32* %_t2.i, align 4, !dbg !802
  %73 = load i32, i32* %_t3.i, align 4, !dbg !802
  %shr105.i = lshr i32 %73, 8, !dbg !802
  %74 = load i32, i32* %_t3.i, align 4, !dbg !802
  %shl106.i = shl i32 %74, 24, !dbg !802
  %add.i = add i32 %shr105.i, %shl106.i, !dbg !802
  store i32 %add.i, i32* %_t3.i, align 4, !dbg !802
  %75 = load i32, i32* %_t1.i, align 4, !dbg !802
  %shr107.i = lshr i32 %75, 16, !dbg !802
  %and108.i = and i32 %shr107.i, 255, !dbg !802
  %idxprom109.i = zext i32 %and108.i to i64, !dbg !802
  %arrayidx110.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom109.i, !dbg !802
  %76 = load i32, i32* %arrayidx110.i, align 4, !dbg !802
  %77 = load i32, i32* %_t2.i, align 4, !dbg !802
  %xor111.i = xor i32 %77, %76, !dbg !802
  store i32 %xor111.i, i32* %_t2.i, align 4, !dbg !802
  %78 = load i32, i32* %_t3.i, align 4, !dbg !802
  %79 = load i32, i32* %s3.i, align 4, !dbg !802
  %xor112.i = xor i32 %79, %78, !dbg !802
  store i32 %xor112.i, i32* %s3.i, align 4, !dbg !802
  %80 = load i32, i32* %_t1.i, align 4, !dbg !802
  %shr113.i = lshr i32 %80, 24, !dbg !802
  %idxprom114.i = zext i32 %shr113.i to i64, !dbg !802
  %arrayidx115.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom114.i, !dbg !802
  %81 = load i32, i32* %arrayidx115.i, align 4, !dbg !802
  %82 = load i32, i32* %_t2.i, align 4, !dbg !802
  %xor116.i = xor i32 %82, %81, !dbg !802
  store i32 %xor116.i, i32* %_t2.i, align 4, !dbg !802
  %83 = load i32, i32* %_t2.i, align 4, !dbg !802
  %84 = load i32, i32* %s2.i, align 4, !dbg !802
  %xor117.i = xor i32 %84, %83, !dbg !802
  store i32 %xor117.i, i32* %s2.i, align 4, !dbg !802
  %85 = load i32, i32* %_t2.i, align 4, !dbg !802
  %86 = load i32, i32* %s3.i, align 4, !dbg !802
  %xor118.i = xor i32 %86, %85, !dbg !802
  store i32 %xor118.i, i32* %s3.i, align 4, !dbg !802
  %87 = load i32, i32* %s2.i, align 4, !dbg !803
  %88 = load i32*, i32** %k.i, align 8, !dbg !803
  %add.ptr124.i = getelementptr inbounds i32, i32* %88, i64 2, !dbg !803
  %89 = load i32, i32* %add.ptr124.i, align 4, !dbg !803
  %xor126.i = xor i32 %87, %89, !dbg !803
  store i32 %xor126.i, i32* %_t0120.i, align 4, !dbg !803
  %90 = load i32, i32* %_t0120.i, align 4, !dbg !803
  %and127.i = and i32 %90, 255, !dbg !803
  %idxprom128.i = zext i32 %and127.i to i64, !dbg !803
  %arrayidx129.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom128.i, !dbg !803
  %91 = load i32, i32* %arrayidx129.i, align 4, !dbg !803
  store i32 %91, i32* %_t3123.i, align 4, !dbg !803
  %92 = load i32, i32* %s3.i, align 4, !dbg !803
  %93 = load i32*, i32** %k.i, align 8, !dbg !803
  %add.ptr130.i = getelementptr inbounds i32, i32* %93, i64 2, !dbg !803
  %arrayidx131.i = getelementptr inbounds i32, i32* %add.ptr130.i, i64 1, !dbg !803
  %94 = load i32, i32* %arrayidx131.i, align 4, !dbg !803
  %xor132.i = xor i32 %92, %94, !dbg !803
  store i32 %xor132.i, i32* %_t1121.i, align 4, !dbg !803
  %95 = load i32, i32* %_t0120.i, align 4, !dbg !803
  %shr133.i = lshr i32 %95, 8, !dbg !803
  %and134.i = and i32 %shr133.i, 255, !dbg !803
  %idxprom135.i = zext i32 %and134.i to i64, !dbg !803
  %arrayidx136.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom135.i, !dbg !803
  %96 = load i32, i32* %arrayidx136.i, align 4, !dbg !803
  %97 = load i32, i32* %_t3123.i, align 4, !dbg !803
  %xor137.i = xor i32 %97, %96, !dbg !803
  store i32 %xor137.i, i32* %_t3123.i, align 4, !dbg !803
  %98 = load i32, i32* %_t1121.i, align 4, !dbg !803
  %and138.i = and i32 %98, 255, !dbg !803
  %idxprom139.i = zext i32 %and138.i to i64, !dbg !803
  %arrayidx140.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom139.i, !dbg !803
  %99 = load i32, i32* %arrayidx140.i, align 4, !dbg !803
  store i32 %99, i32* %_t2122.i, align 4, !dbg !803
  %100 = load i32, i32* %_t0120.i, align 4, !dbg !803
  %shr141.i = lshr i32 %100, 16, !dbg !803
  %and142.i = and i32 %shr141.i, 255, !dbg !803
  %idxprom143.i = zext i32 %and142.i to i64, !dbg !803
  %arrayidx144.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom143.i, !dbg !803
  %101 = load i32, i32* %arrayidx144.i, align 4, !dbg !803
  %102 = load i32, i32* %_t3123.i, align 4, !dbg !803
  %xor145.i = xor i32 %102, %101, !dbg !803
  store i32 %xor145.i, i32* %_t3123.i, align 4, !dbg !803
  %103 = load i32, i32* %_t1121.i, align 4, !dbg !803
  %shr146.i = lshr i32 %103, 8, !dbg !803
  %and147.i = and i32 %shr146.i, 255, !dbg !803
  %idxprom148.i = zext i32 %and147.i to i64, !dbg !803
  %arrayidx149.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom148.i, !dbg !803
  %104 = load i32, i32* %arrayidx149.i, align 4, !dbg !803
  %105 = load i32, i32* %_t2122.i, align 4, !dbg !803
  %xor150.i = xor i32 %105, %104, !dbg !803
  store i32 %xor150.i, i32* %_t2122.i, align 4, !dbg !803
  %106 = load i32, i32* %_t0120.i, align 4, !dbg !803
  %shr151.i = lshr i32 %106, 24, !dbg !803
  %idxprom152.i = zext i32 %shr151.i to i64, !dbg !803
  %arrayidx153.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom152.i, !dbg !803
  %107 = load i32, i32* %arrayidx153.i, align 4, !dbg !803
  %108 = load i32, i32* %_t3123.i, align 4, !dbg !803
  %xor154.i = xor i32 %108, %107, !dbg !803
  store i32 %xor154.i, i32* %_t3123.i, align 4, !dbg !803
  %109 = load i32, i32* %_t3123.i, align 4, !dbg !803
  %110 = load i32, i32* %_t2122.i, align 4, !dbg !803
  %xor155.i = xor i32 %110, %109, !dbg !803
  store i32 %xor155.i, i32* %_t2122.i, align 4, !dbg !803
  %111 = load i32, i32* %_t3123.i, align 4, !dbg !803
  %shr156.i = lshr i32 %111, 8, !dbg !803
  %112 = load i32, i32* %_t3123.i, align 4, !dbg !803
  %shl157.i = shl i32 %112, 24, !dbg !803
  %add158.i = add i32 %shr156.i, %shl157.i, !dbg !803
  store i32 %add158.i, i32* %_t3123.i, align 4, !dbg !803
  %113 = load i32, i32* %_t1121.i, align 4, !dbg !803
  %shr159.i = lshr i32 %113, 16, !dbg !803
  %and160.i = and i32 %shr159.i, 255, !dbg !803
  %idxprom161.i = zext i32 %and160.i to i64, !dbg !803
  %arrayidx162.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom161.i, !dbg !803
  %114 = load i32, i32* %arrayidx162.i, align 4, !dbg !803
  %115 = load i32, i32* %_t2122.i, align 4, !dbg !803
  %xor163.i = xor i32 %115, %114, !dbg !803
  store i32 %xor163.i, i32* %_t2122.i, align 4, !dbg !803
  %116 = load i32, i32* %_t3123.i, align 4, !dbg !803
  %117 = load i32, i32* %s1.i, align 4, !dbg !803
  %xor164.i = xor i32 %117, %116, !dbg !803
  store i32 %xor164.i, i32* %s1.i, align 4, !dbg !803
  %118 = load i32, i32* %_t1121.i, align 4, !dbg !803
  %shr165.i = lshr i32 %118, 24, !dbg !803
  %idxprom166.i = zext i32 %shr165.i to i64, !dbg !803
  %arrayidx167.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom166.i, !dbg !803
  %119 = load i32, i32* %arrayidx167.i, align 4, !dbg !803
  %120 = load i32, i32* %_t2122.i, align 4, !dbg !803
  %xor168.i = xor i32 %120, %119, !dbg !803
  store i32 %xor168.i, i32* %_t2122.i, align 4, !dbg !803
  %121 = load i32, i32* %_t2122.i, align 4, !dbg !803
  %122 = load i32, i32* %s0.i, align 4, !dbg !803
  %xor169.i = xor i32 %122, %121, !dbg !803
  store i32 %xor169.i, i32* %s0.i, align 4, !dbg !803
  %123 = load i32, i32* %_t2122.i, align 4, !dbg !803
  %124 = load i32, i32* %s1.i, align 4, !dbg !803
  %xor170.i = xor i32 %124, %123, !dbg !803
  store i32 %xor170.i, i32* %s1.i, align 4, !dbg !803
  %125 = load i32, i32* %s0.i, align 4, !dbg !804
  %126 = load i32*, i32** %k.i, align 8, !dbg !804
  %add.ptr177.i = getelementptr inbounds i32, i32* %126, i64 4, !dbg !804
  %127 = load i32, i32* %add.ptr177.i, align 4, !dbg !804
  %xor179.i = xor i32 %125, %127, !dbg !804
  store i32 %xor179.i, i32* %_t0173.i, align 4, !dbg !804
  %128 = load i32, i32* %_t0173.i, align 4, !dbg !804
  %and180.i = and i32 %128, 255, !dbg !804
  %idxprom181.i = zext i32 %and180.i to i64, !dbg !804
  %arrayidx182.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom181.i, !dbg !804
  %129 = load i32, i32* %arrayidx182.i, align 4, !dbg !804
  store i32 %129, i32* %_t3176.i, align 4, !dbg !804
  %130 = load i32, i32* %s1.i, align 4, !dbg !804
  %131 = load i32*, i32** %k.i, align 8, !dbg !804
  %add.ptr183.i = getelementptr inbounds i32, i32* %131, i64 4, !dbg !804
  %arrayidx184.i = getelementptr inbounds i32, i32* %add.ptr183.i, i64 1, !dbg !804
  %132 = load i32, i32* %arrayidx184.i, align 4, !dbg !804
  %xor185.i = xor i32 %130, %132, !dbg !804
  store i32 %xor185.i, i32* %_t1174.i, align 4, !dbg !804
  %133 = load i32, i32* %_t0173.i, align 4, !dbg !804
  %shr186.i = lshr i32 %133, 8, !dbg !804
  %and187.i = and i32 %shr186.i, 255, !dbg !804
  %idxprom188.i = zext i32 %and187.i to i64, !dbg !804
  %arrayidx189.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom188.i, !dbg !804
  %134 = load i32, i32* %arrayidx189.i, align 4, !dbg !804
  %135 = load i32, i32* %_t3176.i, align 4, !dbg !804
  %xor190.i = xor i32 %135, %134, !dbg !804
  store i32 %xor190.i, i32* %_t3176.i, align 4, !dbg !804
  %136 = load i32, i32* %_t1174.i, align 4, !dbg !804
  %and191.i = and i32 %136, 255, !dbg !804
  %idxprom192.i = zext i32 %and191.i to i64, !dbg !804
  %arrayidx193.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom192.i, !dbg !804
  %137 = load i32, i32* %arrayidx193.i, align 4, !dbg !804
  store i32 %137, i32* %_t2175.i, align 4, !dbg !804
  %138 = load i32, i32* %_t0173.i, align 4, !dbg !804
  %shr194.i = lshr i32 %138, 16, !dbg !804
  %and195.i = and i32 %shr194.i, 255, !dbg !804
  %idxprom196.i = zext i32 %and195.i to i64, !dbg !804
  %arrayidx197.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom196.i, !dbg !804
  %139 = load i32, i32* %arrayidx197.i, align 4, !dbg !804
  %140 = load i32, i32* %_t3176.i, align 4, !dbg !804
  %xor198.i = xor i32 %140, %139, !dbg !804
  store i32 %xor198.i, i32* %_t3176.i, align 4, !dbg !804
  %141 = load i32, i32* %_t1174.i, align 4, !dbg !804
  %shr199.i = lshr i32 %141, 8, !dbg !804
  %and200.i = and i32 %shr199.i, 255, !dbg !804
  %idxprom201.i = zext i32 %and200.i to i64, !dbg !804
  %arrayidx202.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom201.i, !dbg !804
  %142 = load i32, i32* %arrayidx202.i, align 4, !dbg !804
  %143 = load i32, i32* %_t2175.i, align 4, !dbg !804
  %xor203.i = xor i32 %143, %142, !dbg !804
  store i32 %xor203.i, i32* %_t2175.i, align 4, !dbg !804
  %144 = load i32, i32* %_t0173.i, align 4, !dbg !804
  %shr204.i = lshr i32 %144, 24, !dbg !804
  %idxprom205.i = zext i32 %shr204.i to i64, !dbg !804
  %arrayidx206.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom205.i, !dbg !804
  %145 = load i32, i32* %arrayidx206.i, align 4, !dbg !804
  %146 = load i32, i32* %_t3176.i, align 4, !dbg !804
  %xor207.i = xor i32 %146, %145, !dbg !804
  store i32 %xor207.i, i32* %_t3176.i, align 4, !dbg !804
  %147 = load i32, i32* %_t3176.i, align 4, !dbg !804
  %148 = load i32, i32* %_t2175.i, align 4, !dbg !804
  %xor208.i = xor i32 %148, %147, !dbg !804
  store i32 %xor208.i, i32* %_t2175.i, align 4, !dbg !804
  %149 = load i32, i32* %_t3176.i, align 4, !dbg !804
  %shr209.i = lshr i32 %149, 8, !dbg !804
  %150 = load i32, i32* %_t3176.i, align 4, !dbg !804
  %shl210.i = shl i32 %150, 24, !dbg !804
  %add211.i = add i32 %shr209.i, %shl210.i, !dbg !804
  store i32 %add211.i, i32* %_t3176.i, align 4, !dbg !804
  %151 = load i32, i32* %_t1174.i, align 4, !dbg !804
  %shr212.i = lshr i32 %151, 16, !dbg !804
  %and213.i = and i32 %shr212.i, 255, !dbg !804
  %idxprom214.i = zext i32 %and213.i to i64, !dbg !804
  %arrayidx215.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom214.i, !dbg !804
  %152 = load i32, i32* %arrayidx215.i, align 4, !dbg !804
  %153 = load i32, i32* %_t2175.i, align 4, !dbg !804
  %xor216.i = xor i32 %153, %152, !dbg !804
  store i32 %xor216.i, i32* %_t2175.i, align 4, !dbg !804
  %154 = load i32, i32* %_t3176.i, align 4, !dbg !804
  %155 = load i32, i32* %s3.i, align 4, !dbg !804
  %xor217.i = xor i32 %155, %154, !dbg !804
  store i32 %xor217.i, i32* %s3.i, align 4, !dbg !804
  %156 = load i32, i32* %_t1174.i, align 4, !dbg !804
  %shr218.i = lshr i32 %156, 24, !dbg !804
  %idxprom219.i = zext i32 %shr218.i to i64, !dbg !804
  %arrayidx220.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom219.i, !dbg !804
  %157 = load i32, i32* %arrayidx220.i, align 4, !dbg !804
  %158 = load i32, i32* %_t2175.i, align 4, !dbg !804
  %xor221.i = xor i32 %158, %157, !dbg !804
  store i32 %xor221.i, i32* %_t2175.i, align 4, !dbg !804
  %159 = load i32, i32* %_t2175.i, align 4, !dbg !804
  %160 = load i32, i32* %s2.i, align 4, !dbg !804
  %xor222.i = xor i32 %160, %159, !dbg !804
  store i32 %xor222.i, i32* %s2.i, align 4, !dbg !804
  %161 = load i32, i32* %_t2175.i, align 4, !dbg !804
  %162 = load i32, i32* %s3.i, align 4, !dbg !804
  %xor223.i = xor i32 %162, %161, !dbg !804
  store i32 %xor223.i, i32* %s3.i, align 4, !dbg !804
  %163 = load i32, i32* %s2.i, align 4, !dbg !805
  %164 = load i32*, i32** %k.i, align 8, !dbg !805
  %add.ptr230.i = getelementptr inbounds i32, i32* %164, i64 6, !dbg !805
  %165 = load i32, i32* %add.ptr230.i, align 4, !dbg !805
  %xor232.i = xor i32 %163, %165, !dbg !805
  store i32 %xor232.i, i32* %_t0226.i, align 4, !dbg !805
  %166 = load i32, i32* %_t0226.i, align 4, !dbg !805
  %and233.i = and i32 %166, 255, !dbg !805
  %idxprom234.i = zext i32 %and233.i to i64, !dbg !805
  %arrayidx235.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom234.i, !dbg !805
  %167 = load i32, i32* %arrayidx235.i, align 4, !dbg !805
  store i32 %167, i32* %_t3229.i, align 4, !dbg !805
  %168 = load i32, i32* %s3.i, align 4, !dbg !805
  %169 = load i32*, i32** %k.i, align 8, !dbg !805
  %add.ptr236.i = getelementptr inbounds i32, i32* %169, i64 6, !dbg !805
  %arrayidx237.i = getelementptr inbounds i32, i32* %add.ptr236.i, i64 1, !dbg !805
  %170 = load i32, i32* %arrayidx237.i, align 4, !dbg !805
  %xor238.i = xor i32 %168, %170, !dbg !805
  store i32 %xor238.i, i32* %_t1227.i, align 4, !dbg !805
  %171 = load i32, i32* %_t0226.i, align 4, !dbg !805
  %shr239.i = lshr i32 %171, 8, !dbg !805
  %and240.i = and i32 %shr239.i, 255, !dbg !805
  %idxprom241.i = zext i32 %and240.i to i64, !dbg !805
  %arrayidx242.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom241.i, !dbg !805
  %172 = load i32, i32* %arrayidx242.i, align 4, !dbg !805
  %173 = load i32, i32* %_t3229.i, align 4, !dbg !805
  %xor243.i = xor i32 %173, %172, !dbg !805
  store i32 %xor243.i, i32* %_t3229.i, align 4, !dbg !805
  %174 = load i32, i32* %_t1227.i, align 4, !dbg !805
  %and244.i = and i32 %174, 255, !dbg !805
  %idxprom245.i = zext i32 %and244.i to i64, !dbg !805
  %arrayidx246.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom245.i, !dbg !805
  %175 = load i32, i32* %arrayidx246.i, align 4, !dbg !805
  store i32 %175, i32* %_t2228.i, align 4, !dbg !805
  %176 = load i32, i32* %_t0226.i, align 4, !dbg !805
  %shr247.i = lshr i32 %176, 16, !dbg !805
  %and248.i = and i32 %shr247.i, 255, !dbg !805
  %idxprom249.i = zext i32 %and248.i to i64, !dbg !805
  %arrayidx250.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom249.i, !dbg !805
  %177 = load i32, i32* %arrayidx250.i, align 4, !dbg !805
  %178 = load i32, i32* %_t3229.i, align 4, !dbg !805
  %xor251.i = xor i32 %178, %177, !dbg !805
  store i32 %xor251.i, i32* %_t3229.i, align 4, !dbg !805
  %179 = load i32, i32* %_t1227.i, align 4, !dbg !805
  %shr252.i = lshr i32 %179, 8, !dbg !805
  %and253.i = and i32 %shr252.i, 255, !dbg !805
  %idxprom254.i = zext i32 %and253.i to i64, !dbg !805
  %arrayidx255.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom254.i, !dbg !805
  %180 = load i32, i32* %arrayidx255.i, align 4, !dbg !805
  %181 = load i32, i32* %_t2228.i, align 4, !dbg !805
  %xor256.i = xor i32 %181, %180, !dbg !805
  store i32 %xor256.i, i32* %_t2228.i, align 4, !dbg !805
  %182 = load i32, i32* %_t0226.i, align 4, !dbg !805
  %shr257.i = lshr i32 %182, 24, !dbg !805
  %idxprom258.i = zext i32 %shr257.i to i64, !dbg !805
  %arrayidx259.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom258.i, !dbg !805
  %183 = load i32, i32* %arrayidx259.i, align 4, !dbg !805
  %184 = load i32, i32* %_t3229.i, align 4, !dbg !805
  %xor260.i = xor i32 %184, %183, !dbg !805
  store i32 %xor260.i, i32* %_t3229.i, align 4, !dbg !805
  %185 = load i32, i32* %_t3229.i, align 4, !dbg !805
  %186 = load i32, i32* %_t2228.i, align 4, !dbg !805
  %xor261.i = xor i32 %186, %185, !dbg !805
  store i32 %xor261.i, i32* %_t2228.i, align 4, !dbg !805
  %187 = load i32, i32* %_t3229.i, align 4, !dbg !805
  %shr262.i = lshr i32 %187, 8, !dbg !805
  %188 = load i32, i32* %_t3229.i, align 4, !dbg !805
  %shl263.i = shl i32 %188, 24, !dbg !805
  %add264.i = add i32 %shr262.i, %shl263.i, !dbg !805
  store i32 %add264.i, i32* %_t3229.i, align 4, !dbg !805
  %189 = load i32, i32* %_t1227.i, align 4, !dbg !805
  %shr265.i = lshr i32 %189, 16, !dbg !805
  %and266.i = and i32 %shr265.i, 255, !dbg !805
  %idxprom267.i = zext i32 %and266.i to i64, !dbg !805
  %arrayidx268.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom267.i, !dbg !805
  %190 = load i32, i32* %arrayidx268.i, align 4, !dbg !805
  %191 = load i32, i32* %_t2228.i, align 4, !dbg !805
  %xor269.i = xor i32 %191, %190, !dbg !805
  store i32 %xor269.i, i32* %_t2228.i, align 4, !dbg !805
  %192 = load i32, i32* %_t3229.i, align 4, !dbg !805
  %193 = load i32, i32* %s1.i, align 4, !dbg !805
  %xor270.i = xor i32 %193, %192, !dbg !805
  store i32 %xor270.i, i32* %s1.i, align 4, !dbg !805
  %194 = load i32, i32* %_t1227.i, align 4, !dbg !805
  %shr271.i = lshr i32 %194, 24, !dbg !805
  %idxprom272.i = zext i32 %shr271.i to i64, !dbg !805
  %arrayidx273.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom272.i, !dbg !805
  %195 = load i32, i32* %arrayidx273.i, align 4, !dbg !805
  %196 = load i32, i32* %_t2228.i, align 4, !dbg !805
  %xor274.i = xor i32 %196, %195, !dbg !805
  store i32 %xor274.i, i32* %_t2228.i, align 4, !dbg !805
  %197 = load i32, i32* %_t2228.i, align 4, !dbg !805
  %198 = load i32, i32* %s0.i, align 4, !dbg !805
  %xor275.i = xor i32 %198, %197, !dbg !805
  store i32 %xor275.i, i32* %s0.i, align 4, !dbg !805
  %199 = load i32, i32* %_t2228.i, align 4, !dbg !805
  %200 = load i32, i32* %s1.i, align 4, !dbg !805
  %xor276.i = xor i32 %200, %199, !dbg !805
  store i32 %xor276.i, i32* %s1.i, align 4, !dbg !805
  %201 = load i32, i32* %s0.i, align 4, !dbg !806
  %202 = load i32*, i32** %k.i, align 8, !dbg !806
  %add.ptr283.i = getelementptr inbounds i32, i32* %202, i64 8, !dbg !806
  %203 = load i32, i32* %add.ptr283.i, align 4, !dbg !806
  %xor285.i = xor i32 %201, %203, !dbg !806
  store i32 %xor285.i, i32* %_t0279.i, align 4, !dbg !806
  %204 = load i32, i32* %_t0279.i, align 4, !dbg !806
  %and286.i = and i32 %204, 255, !dbg !806
  %idxprom287.i = zext i32 %and286.i to i64, !dbg !806
  %arrayidx288.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom287.i, !dbg !806
  %205 = load i32, i32* %arrayidx288.i, align 4, !dbg !806
  store i32 %205, i32* %_t3282.i, align 4, !dbg !806
  %206 = load i32, i32* %s1.i, align 4, !dbg !806
  %207 = load i32*, i32** %k.i, align 8, !dbg !806
  %add.ptr289.i = getelementptr inbounds i32, i32* %207, i64 8, !dbg !806
  %arrayidx290.i = getelementptr inbounds i32, i32* %add.ptr289.i, i64 1, !dbg !806
  %208 = load i32, i32* %arrayidx290.i, align 4, !dbg !806
  %xor291.i = xor i32 %206, %208, !dbg !806
  store i32 %xor291.i, i32* %_t1280.i, align 4, !dbg !806
  %209 = load i32, i32* %_t0279.i, align 4, !dbg !806
  %shr292.i = lshr i32 %209, 8, !dbg !806
  %and293.i = and i32 %shr292.i, 255, !dbg !806
  %idxprom294.i = zext i32 %and293.i to i64, !dbg !806
  %arrayidx295.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom294.i, !dbg !806
  %210 = load i32, i32* %arrayidx295.i, align 4, !dbg !806
  %211 = load i32, i32* %_t3282.i, align 4, !dbg !806
  %xor296.i = xor i32 %211, %210, !dbg !806
  store i32 %xor296.i, i32* %_t3282.i, align 4, !dbg !806
  %212 = load i32, i32* %_t1280.i, align 4, !dbg !806
  %and297.i = and i32 %212, 255, !dbg !806
  %idxprom298.i = zext i32 %and297.i to i64, !dbg !806
  %arrayidx299.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom298.i, !dbg !806
  %213 = load i32, i32* %arrayidx299.i, align 4, !dbg !806
  store i32 %213, i32* %_t2281.i, align 4, !dbg !806
  %214 = load i32, i32* %_t0279.i, align 4, !dbg !806
  %shr300.i = lshr i32 %214, 16, !dbg !806
  %and301.i = and i32 %shr300.i, 255, !dbg !806
  %idxprom302.i = zext i32 %and301.i to i64, !dbg !806
  %arrayidx303.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom302.i, !dbg !806
  %215 = load i32, i32* %arrayidx303.i, align 4, !dbg !806
  %216 = load i32, i32* %_t3282.i, align 4, !dbg !806
  %xor304.i = xor i32 %216, %215, !dbg !806
  store i32 %xor304.i, i32* %_t3282.i, align 4, !dbg !806
  %217 = load i32, i32* %_t1280.i, align 4, !dbg !806
  %shr305.i = lshr i32 %217, 8, !dbg !806
  %and306.i = and i32 %shr305.i, 255, !dbg !806
  %idxprom307.i = zext i32 %and306.i to i64, !dbg !806
  %arrayidx308.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom307.i, !dbg !806
  %218 = load i32, i32* %arrayidx308.i, align 4, !dbg !806
  %219 = load i32, i32* %_t2281.i, align 4, !dbg !806
  %xor309.i = xor i32 %219, %218, !dbg !806
  store i32 %xor309.i, i32* %_t2281.i, align 4, !dbg !806
  %220 = load i32, i32* %_t0279.i, align 4, !dbg !806
  %shr310.i = lshr i32 %220, 24, !dbg !806
  %idxprom311.i = zext i32 %shr310.i to i64, !dbg !806
  %arrayidx312.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom311.i, !dbg !806
  %221 = load i32, i32* %arrayidx312.i, align 4, !dbg !806
  %222 = load i32, i32* %_t3282.i, align 4, !dbg !806
  %xor313.i = xor i32 %222, %221, !dbg !806
  store i32 %xor313.i, i32* %_t3282.i, align 4, !dbg !806
  %223 = load i32, i32* %_t3282.i, align 4, !dbg !806
  %224 = load i32, i32* %_t2281.i, align 4, !dbg !806
  %xor314.i = xor i32 %224, %223, !dbg !806
  store i32 %xor314.i, i32* %_t2281.i, align 4, !dbg !806
  %225 = load i32, i32* %_t3282.i, align 4, !dbg !806
  %shr315.i = lshr i32 %225, 8, !dbg !806
  %226 = load i32, i32* %_t3282.i, align 4, !dbg !806
  %shl316.i = shl i32 %226, 24, !dbg !806
  %add317.i = add i32 %shr315.i, %shl316.i, !dbg !806
  store i32 %add317.i, i32* %_t3282.i, align 4, !dbg !806
  %227 = load i32, i32* %_t1280.i, align 4, !dbg !806
  %shr318.i = lshr i32 %227, 16, !dbg !806
  %and319.i = and i32 %shr318.i, 255, !dbg !806
  %idxprom320.i = zext i32 %and319.i to i64, !dbg !806
  %arrayidx321.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom320.i, !dbg !806
  %228 = load i32, i32* %arrayidx321.i, align 4, !dbg !806
  %229 = load i32, i32* %_t2281.i, align 4, !dbg !806
  %xor322.i = xor i32 %229, %228, !dbg !806
  store i32 %xor322.i, i32* %_t2281.i, align 4, !dbg !806
  %230 = load i32, i32* %_t3282.i, align 4, !dbg !806
  %231 = load i32, i32* %s3.i, align 4, !dbg !806
  %xor323.i = xor i32 %231, %230, !dbg !806
  store i32 %xor323.i, i32* %s3.i, align 4, !dbg !806
  %232 = load i32, i32* %_t1280.i, align 4, !dbg !806
  %shr324.i = lshr i32 %232, 24, !dbg !806
  %idxprom325.i = zext i32 %shr324.i to i64, !dbg !806
  %arrayidx326.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom325.i, !dbg !806
  %233 = load i32, i32* %arrayidx326.i, align 4, !dbg !806
  %234 = load i32, i32* %_t2281.i, align 4, !dbg !806
  %xor327.i = xor i32 %234, %233, !dbg !806
  store i32 %xor327.i, i32* %_t2281.i, align 4, !dbg !806
  %235 = load i32, i32* %_t2281.i, align 4, !dbg !806
  %236 = load i32, i32* %s2.i, align 4, !dbg !806
  %xor328.i = xor i32 %236, %235, !dbg !806
  store i32 %xor328.i, i32* %s2.i, align 4, !dbg !806
  %237 = load i32, i32* %_t2281.i, align 4, !dbg !806
  %238 = load i32, i32* %s3.i, align 4, !dbg !806
  %xor329.i = xor i32 %238, %237, !dbg !806
  store i32 %xor329.i, i32* %s3.i, align 4, !dbg !806
  %239 = load i32, i32* %s2.i, align 4, !dbg !807
  %240 = load i32*, i32** %k.i, align 8, !dbg !807
  %add.ptr336.i = getelementptr inbounds i32, i32* %240, i64 10, !dbg !807
  %241 = load i32, i32* %add.ptr336.i, align 4, !dbg !807
  %xor338.i = xor i32 %239, %241, !dbg !807
  store i32 %xor338.i, i32* %_t0332.i, align 4, !dbg !807
  %242 = load i32, i32* %_t0332.i, align 4, !dbg !807
  %and339.i = and i32 %242, 255, !dbg !807
  %idxprom340.i = zext i32 %and339.i to i64, !dbg !807
  %arrayidx341.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom340.i, !dbg !807
  %243 = load i32, i32* %arrayidx341.i, align 4, !dbg !807
  store i32 %243, i32* %_t3335.i, align 4, !dbg !807
  %244 = load i32, i32* %s3.i, align 4, !dbg !807
  %245 = load i32*, i32** %k.i, align 8, !dbg !807
  %add.ptr342.i = getelementptr inbounds i32, i32* %245, i64 10, !dbg !807
  %arrayidx343.i = getelementptr inbounds i32, i32* %add.ptr342.i, i64 1, !dbg !807
  %246 = load i32, i32* %arrayidx343.i, align 4, !dbg !807
  %xor344.i = xor i32 %244, %246, !dbg !807
  store i32 %xor344.i, i32* %_t1333.i, align 4, !dbg !807
  %247 = load i32, i32* %_t0332.i, align 4, !dbg !807
  %shr345.i = lshr i32 %247, 8, !dbg !807
  %and346.i = and i32 %shr345.i, 255, !dbg !807
  %idxprom347.i = zext i32 %and346.i to i64, !dbg !807
  %arrayidx348.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom347.i, !dbg !807
  %248 = load i32, i32* %arrayidx348.i, align 4, !dbg !807
  %249 = load i32, i32* %_t3335.i, align 4, !dbg !807
  %xor349.i = xor i32 %249, %248, !dbg !807
  store i32 %xor349.i, i32* %_t3335.i, align 4, !dbg !807
  %250 = load i32, i32* %_t1333.i, align 4, !dbg !807
  %and350.i = and i32 %250, 255, !dbg !807
  %idxprom351.i = zext i32 %and350.i to i64, !dbg !807
  %arrayidx352.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom351.i, !dbg !807
  %251 = load i32, i32* %arrayidx352.i, align 4, !dbg !807
  store i32 %251, i32* %_t2334.i, align 4, !dbg !807
  %252 = load i32, i32* %_t0332.i, align 4, !dbg !807
  %shr353.i = lshr i32 %252, 16, !dbg !807
  %and354.i = and i32 %shr353.i, 255, !dbg !807
  %idxprom355.i = zext i32 %and354.i to i64, !dbg !807
  %arrayidx356.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom355.i, !dbg !807
  %253 = load i32, i32* %arrayidx356.i, align 4, !dbg !807
  %254 = load i32, i32* %_t3335.i, align 4, !dbg !807
  %xor357.i = xor i32 %254, %253, !dbg !807
  store i32 %xor357.i, i32* %_t3335.i, align 4, !dbg !807
  %255 = load i32, i32* %_t1333.i, align 4, !dbg !807
  %shr358.i = lshr i32 %255, 8, !dbg !807
  %and359.i = and i32 %shr358.i, 255, !dbg !807
  %idxprom360.i = zext i32 %and359.i to i64, !dbg !807
  %arrayidx361.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom360.i, !dbg !807
  %256 = load i32, i32* %arrayidx361.i, align 4, !dbg !807
  %257 = load i32, i32* %_t2334.i, align 4, !dbg !807
  %xor362.i = xor i32 %257, %256, !dbg !807
  store i32 %xor362.i, i32* %_t2334.i, align 4, !dbg !807
  %258 = load i32, i32* %_t0332.i, align 4, !dbg !807
  %shr363.i = lshr i32 %258, 24, !dbg !807
  %idxprom364.i = zext i32 %shr363.i to i64, !dbg !807
  %arrayidx365.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom364.i, !dbg !807
  %259 = load i32, i32* %arrayidx365.i, align 4, !dbg !807
  %260 = load i32, i32* %_t3335.i, align 4, !dbg !807
  %xor366.i = xor i32 %260, %259, !dbg !807
  store i32 %xor366.i, i32* %_t3335.i, align 4, !dbg !807
  %261 = load i32, i32* %_t3335.i, align 4, !dbg !807
  %262 = load i32, i32* %_t2334.i, align 4, !dbg !807
  %xor367.i = xor i32 %262, %261, !dbg !807
  store i32 %xor367.i, i32* %_t2334.i, align 4, !dbg !807
  %263 = load i32, i32* %_t3335.i, align 4, !dbg !807
  %shr368.i = lshr i32 %263, 8, !dbg !807
  %264 = load i32, i32* %_t3335.i, align 4, !dbg !807
  %shl369.i = shl i32 %264, 24, !dbg !807
  %add370.i = add i32 %shr368.i, %shl369.i, !dbg !807
  store i32 %add370.i, i32* %_t3335.i, align 4, !dbg !807
  %265 = load i32, i32* %_t1333.i, align 4, !dbg !807
  %shr371.i = lshr i32 %265, 16, !dbg !807
  %and372.i = and i32 %shr371.i, 255, !dbg !807
  %idxprom373.i = zext i32 %and372.i to i64, !dbg !807
  %arrayidx374.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom373.i, !dbg !807
  %266 = load i32, i32* %arrayidx374.i, align 4, !dbg !807
  %267 = load i32, i32* %_t2334.i, align 4, !dbg !807
  %xor375.i = xor i32 %267, %266, !dbg !807
  store i32 %xor375.i, i32* %_t2334.i, align 4, !dbg !807
  %268 = load i32, i32* %_t3335.i, align 4, !dbg !807
  %269 = load i32, i32* %s1.i, align 4, !dbg !807
  %xor376.i = xor i32 %269, %268, !dbg !807
  store i32 %xor376.i, i32* %s1.i, align 4, !dbg !807
  %270 = load i32, i32* %_t1333.i, align 4, !dbg !807
  %shr377.i = lshr i32 %270, 24, !dbg !807
  %idxprom378.i = zext i32 %shr377.i to i64, !dbg !807
  %arrayidx379.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom378.i, !dbg !807
  %271 = load i32, i32* %arrayidx379.i, align 4, !dbg !807
  %272 = load i32, i32* %_t2334.i, align 4, !dbg !807
  %xor380.i = xor i32 %272, %271, !dbg !807
  store i32 %xor380.i, i32* %_t2334.i, align 4, !dbg !807
  %273 = load i32, i32* %_t2334.i, align 4, !dbg !807
  %274 = load i32, i32* %s0.i, align 4, !dbg !807
  %xor381.i = xor i32 %274, %273, !dbg !807
  store i32 %xor381.i, i32* %s0.i, align 4, !dbg !807
  %275 = load i32, i32* %_t2334.i, align 4, !dbg !807
  %276 = load i32, i32* %s1.i, align 4, !dbg !807
  %xor382.i = xor i32 %276, %275, !dbg !807
  store i32 %xor382.i, i32* %s1.i, align 4, !dbg !807
  %277 = load i32*, i32** %k.i, align 8, !dbg !845
  %add.ptr384.i = getelementptr inbounds i32, i32* %277, i64 12, !dbg !845
  store i32* %add.ptr384.i, i32** %k.i, align 8, !dbg !845
  %278 = load i32*, i32** %k.i, align 8, !dbg !846
  %279 = load i32*, i32** %kend.i, align 8, !dbg !847
  %cmp.i = icmp eq i32* %278, %279, !dbg !848
  br i1 %cmp.i, label %Camellia_EncryptBlock_Rounds.exit, label %if.end.i, !dbg !849

if.end.i:                                         ; preds = %while.body.i
  %280 = load i32, i32* %s0.i, align 4, !dbg !850
  %281 = load i32*, i32** %k.i, align 8, !dbg !850
  %282 = load i32, i32* %281, align 4, !dbg !850
  %and387.i = and i32 %280, %282, !dbg !850
  %shl388.i = shl i32 %and387.i, 1, !dbg !850
  %283 = load i32, i32* %s0.i, align 4, !dbg !850
  %284 = load i32*, i32** %k.i, align 8, !dbg !850
  %285 = load i32, i32* %284, align 4, !dbg !850
  %and390.i = and i32 %283, %285, !dbg !850
  %shr391.i = lshr i32 %and390.i, 31, !dbg !850
  %add392.i = add i32 %shl388.i, %shr391.i, !dbg !850
  %286 = load i32, i32* %s1.i, align 4, !dbg !851
  %xor393.i = xor i32 %286, %add392.i, !dbg !851
  store i32 %xor393.i, i32* %s1.i, align 4, !dbg !851
  %287 = load i32, i32* %s3.i, align 4, !dbg !852
  %288 = load i32*, i32** %k.i, align 8, !dbg !853
  %arrayidx394.i = getelementptr inbounds i32, i32* %288, i64 3, !dbg !853
  %289 = load i32, i32* %arrayidx394.i, align 4, !dbg !853
  %or.i = or i32 %287, %289, !dbg !854
  %290 = load i32, i32* %s2.i, align 4, !dbg !855
  %xor395.i = xor i32 %290, %or.i, !dbg !855
  store i32 %xor395.i, i32* %s2.i, align 4, !dbg !855
  %291 = load i32, i32* %s1.i, align 4, !dbg !856
  %292 = load i32*, i32** %k.i, align 8, !dbg !857
  %arrayidx396.i = getelementptr inbounds i32, i32* %292, i64 1, !dbg !857
  %293 = load i32, i32* %arrayidx396.i, align 4, !dbg !857
  %or397.i = or i32 %291, %293, !dbg !858
  %294 = load i32, i32* %s0.i, align 4, !dbg !859
  %xor398.i = xor i32 %294, %or397.i, !dbg !859
  store i32 %xor398.i, i32* %s0.i, align 4, !dbg !859
  %295 = load i32, i32* %s2.i, align 4, !dbg !860
  %296 = load i32*, i32** %k.i, align 8, !dbg !860
  %arrayidx399.i = getelementptr inbounds i32, i32* %296, i64 2, !dbg !860
  %297 = load i32, i32* %arrayidx399.i, align 4, !dbg !860
  %and400.i = and i32 %295, %297, !dbg !860
  %shl401.i = shl i32 %and400.i, 1, !dbg !860
  %298 = load i32, i32* %s2.i, align 4, !dbg !860
  %299 = load i32*, i32** %k.i, align 8, !dbg !860
  %arrayidx402.i = getelementptr inbounds i32, i32* %299, i64 2, !dbg !860
  %300 = load i32, i32* %arrayidx402.i, align 4, !dbg !860
  %and403.i = and i32 %298, %300, !dbg !860
  %shr404.i = lshr i32 %and403.i, 31, !dbg !860
  %add405.i = add i32 %shl401.i, %shr404.i, !dbg !860
  %301 = load i32, i32* %s3.i, align 4, !dbg !861
  %xor406.i = xor i32 %301, %add405.i, !dbg !861
  store i32 %xor406.i, i32* %s3.i, align 4, !dbg !861
  %302 = load i32*, i32** %k.i, align 8, !dbg !862
  %add.ptr407.i = getelementptr inbounds i32, i32* %302, i64 4, !dbg !862
  store i32* %add.ptr407.i, i32** %k.i, align 8, !dbg !862
  br label %while.body.i, !dbg !844, !llvm.loop !863

Camellia_EncryptBlock_Rounds.exit:                ; preds = %while.body.i
  %303 = load i32*, i32** %k.i, align 8, !dbg !865
  %304 = load i32, i32* %303, align 4, !dbg !865
  %305 = load i32, i32* %s2.i, align 4, !dbg !866
  %xor409.i = xor i32 %305, %304, !dbg !866
  store i32 %xor409.i, i32* %s2.i, align 4, !dbg !866
  %306 = load i32*, i32** %k.i, align 8, !dbg !867
  %arrayidx410.i = getelementptr inbounds i32, i32* %306, i64 1, !dbg !867
  %307 = load i32, i32* %arrayidx410.i, align 4, !dbg !867
  %308 = load i32, i32* %s3.i, align 4, !dbg !868
  %xor411.i = xor i32 %308, %307, !dbg !868
  store i32 %xor411.i, i32* %s3.i, align 4, !dbg !868
  %309 = load i32*, i32** %k.i, align 8, !dbg !869
  %arrayidx412.i = getelementptr inbounds i32, i32* %309, i64 2, !dbg !869
  %310 = load i32, i32* %arrayidx412.i, align 4, !dbg !869
  %311 = load i32, i32* %s0.i, align 4, !dbg !870
  %xor413.i = xor i32 %311, %310, !dbg !870
  store i32 %xor413.i, i32* %s0.i, align 4, !dbg !870
  %312 = load i32*, i32** %k.i, align 8, !dbg !871
  %arrayidx414.i = getelementptr inbounds i32, i32* %312, i64 3, !dbg !871
  %313 = load i32, i32* %arrayidx414.i, align 4, !dbg !871
  %314 = load i32, i32* %s1.i, align 4, !dbg !872
  %xor415.i = xor i32 %314, %313, !dbg !872
  store i32 %xor415.i, i32* %s1.i, align 4, !dbg !872
  %315 = load i32, i32* %s2.i, align 4, !dbg !873
  %shr416.i = lshr i32 %315, 24, !dbg !873
  %conv417.i = trunc i32 %shr416.i to i8, !dbg !873
  %316 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !873
  store i8 %conv417.i, i8* %316, align 1, !dbg !873
  %317 = load i32, i32* %s2.i, align 4, !dbg !873
  %shr419.i = lshr i32 %317, 16, !dbg !873
  %conv420.i = trunc i32 %shr419.i to i8, !dbg !873
  %318 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !873
  %arrayidx421.i = getelementptr inbounds i8, i8* %318, i64 1, !dbg !873
  store i8 %conv420.i, i8* %arrayidx421.i, align 1, !dbg !873
  %319 = load i32, i32* %s2.i, align 4, !dbg !873
  %shr422.i = lshr i32 %319, 8, !dbg !873
  %conv423.i = trunc i32 %shr422.i to i8, !dbg !873
  %320 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !873
  %arrayidx424.i = getelementptr inbounds i8, i8* %320, i64 2, !dbg !873
  store i8 %conv423.i, i8* %arrayidx424.i, align 1, !dbg !873
  %321 = load i32, i32* %s2.i, align 4, !dbg !873
  %conv425.i = trunc i32 %321 to i8, !dbg !873
  %322 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !873
  %arrayidx426.i = getelementptr inbounds i8, i8* %322, i64 3, !dbg !873
  store i8 %conv425.i, i8* %arrayidx426.i, align 1, !dbg !873
  %323 = load i32, i32* %s3.i, align 4, !dbg !874
  %shr427.i = lshr i32 %323, 24, !dbg !874
  %conv428.i = trunc i32 %shr427.i to i8, !dbg !874
  %324 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !874
  %add.ptr429.i = getelementptr inbounds i8, i8* %324, i64 4, !dbg !874
  store i8 %conv428.i, i8* %add.ptr429.i, align 1, !dbg !874
  %325 = load i32, i32* %s3.i, align 4, !dbg !874
  %shr431.i = lshr i32 %325, 16, !dbg !874
  %conv432.i = trunc i32 %shr431.i to i8, !dbg !874
  %326 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !874
  %add.ptr433.i = getelementptr inbounds i8, i8* %326, i64 4, !dbg !874
  %arrayidx434.i = getelementptr inbounds i8, i8* %add.ptr433.i, i64 1, !dbg !874
  store i8 %conv432.i, i8* %arrayidx434.i, align 1, !dbg !874
  %327 = load i32, i32* %s3.i, align 4, !dbg !874
  %shr435.i = lshr i32 %327, 8, !dbg !874
  %conv436.i = trunc i32 %shr435.i to i8, !dbg !874
  %328 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !874
  %add.ptr437.i = getelementptr inbounds i8, i8* %328, i64 4, !dbg !874
  %arrayidx438.i = getelementptr inbounds i8, i8* %add.ptr437.i, i64 2, !dbg !874
  store i8 %conv436.i, i8* %arrayidx438.i, align 1, !dbg !874
  %329 = load i32, i32* %s3.i, align 4, !dbg !874
  %conv439.i = trunc i32 %329 to i8, !dbg !874
  %330 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !874
  %add.ptr440.i = getelementptr inbounds i8, i8* %330, i64 4, !dbg !874
  %arrayidx441.i = getelementptr inbounds i8, i8* %add.ptr440.i, i64 3, !dbg !874
  store i8 %conv439.i, i8* %arrayidx441.i, align 1, !dbg !874
  %331 = load i32, i32* %s0.i, align 4, !dbg !875
  %shr442.i = lshr i32 %331, 24, !dbg !875
  %conv443.i = trunc i32 %shr442.i to i8, !dbg !875
  %332 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !875
  %add.ptr444.i = getelementptr inbounds i8, i8* %332, i64 8, !dbg !875
  store i8 %conv443.i, i8* %add.ptr444.i, align 1, !dbg !875
  %333 = load i32, i32* %s0.i, align 4, !dbg !875
  %shr446.i = lshr i32 %333, 16, !dbg !875
  %conv447.i = trunc i32 %shr446.i to i8, !dbg !875
  %334 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !875
  %add.ptr448.i = getelementptr inbounds i8, i8* %334, i64 8, !dbg !875
  %arrayidx449.i = getelementptr inbounds i8, i8* %add.ptr448.i, i64 1, !dbg !875
  store i8 %conv447.i, i8* %arrayidx449.i, align 1, !dbg !875
  %335 = load i32, i32* %s0.i, align 4, !dbg !875
  %shr450.i = lshr i32 %335, 8, !dbg !875
  %conv451.i = trunc i32 %shr450.i to i8, !dbg !875
  %336 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !875
  %add.ptr452.i = getelementptr inbounds i8, i8* %336, i64 8, !dbg !875
  %arrayidx453.i = getelementptr inbounds i8, i8* %add.ptr452.i, i64 2, !dbg !875
  store i8 %conv451.i, i8* %arrayidx453.i, align 1, !dbg !875
  %337 = load i32, i32* %s0.i, align 4, !dbg !875
  %conv454.i = trunc i32 %337 to i8, !dbg !875
  %338 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !875
  %add.ptr455.i = getelementptr inbounds i8, i8* %338, i64 8, !dbg !875
  %arrayidx456.i = getelementptr inbounds i8, i8* %add.ptr455.i, i64 3, !dbg !875
  store i8 %conv454.i, i8* %arrayidx456.i, align 1, !dbg !875
  %339 = load i32, i32* %s1.i, align 4, !dbg !876
  %shr457.i = lshr i32 %339, 24, !dbg !876
  %conv458.i = trunc i32 %shr457.i to i8, !dbg !876
  %340 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !876
  %add.ptr459.i = getelementptr inbounds i8, i8* %340, i64 12, !dbg !876
  store i8 %conv458.i, i8* %add.ptr459.i, align 1, !dbg !876
  %341 = load i32, i32* %s1.i, align 4, !dbg !876
  %shr461.i = lshr i32 %341, 16, !dbg !876
  %conv462.i = trunc i32 %shr461.i to i8, !dbg !876
  %342 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !876
  %add.ptr463.i = getelementptr inbounds i8, i8* %342, i64 12, !dbg !876
  %arrayidx464.i = getelementptr inbounds i8, i8* %add.ptr463.i, i64 1, !dbg !876
  store i8 %conv462.i, i8* %arrayidx464.i, align 1, !dbg !876
  %343 = load i32, i32* %s1.i, align 4, !dbg !876
  %shr465.i = lshr i32 %343, 8, !dbg !876
  %conv466.i = trunc i32 %shr465.i to i8, !dbg !876
  %344 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !876
  %add.ptr467.i = getelementptr inbounds i8, i8* %344, i64 12, !dbg !876
  %arrayidx468.i = getelementptr inbounds i8, i8* %add.ptr467.i, i64 2, !dbg !876
  store i8 %conv466.i, i8* %arrayidx468.i, align 1, !dbg !876
  %345 = load i32, i32* %s1.i, align 4, !dbg !876
  %conv469.i = trunc i32 %345 to i8, !dbg !876
  %346 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !876
  %add.ptr470.i = getelementptr inbounds i8, i8* %346, i64 12, !dbg !876
  %arrayidx471.i = getelementptr inbounds i8, i8* %add.ptr470.i, i64 3, !dbg !876
  store i8 %conv469.i, i8* %arrayidx471.i, align 1, !dbg !876
  ret void, !dbg !877
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @Camellia_DecryptBlock_Rounds(i32 %grandRounds, i8* %ciphertext, i32* %keyTable, i8* %plaintext) #0 !dbg !878 {
entry:
  %grandRounds.addr = alloca i32, align 4
  %ciphertext.addr = alloca i8*, align 8
  %keyTable.addr = alloca i32*, align 8
  %plaintext.addr = alloca i8*, align 8
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %k = alloca i32*, align 8
  %kend = alloca i32*, align 8
  %_t0 = alloca i32, align 4
  %_t1 = alloca i32, align 4
  %_t2 = alloca i32, align 4
  %_t3 = alloca i32, align 4
  %_t0120 = alloca i32, align 4
  %_t1121 = alloca i32, align 4
  %_t2122 = alloca i32, align 4
  %_t3123 = alloca i32, align 4
  %_t0173 = alloca i32, align 4
  %_t1174 = alloca i32, align 4
  %_t2175 = alloca i32, align 4
  %_t3176 = alloca i32, align 4
  %_t0226 = alloca i32, align 4
  %_t1227 = alloca i32, align 4
  %_t2228 = alloca i32, align 4
  %_t3229 = alloca i32, align 4
  %_t0279 = alloca i32, align 4
  %_t1280 = alloca i32, align 4
  %_t2281 = alloca i32, align 4
  %_t3282 = alloca i32, align 4
  %_t0332 = alloca i32, align 4
  %_t1333 = alloca i32, align 4
  %_t2334 = alloca i32, align 4
  %_t3335 = alloca i32, align 4
  store i32 %grandRounds, i32* %grandRounds.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %grandRounds.addr, metadata !879, metadata !DIExpression()), !dbg !880
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ciphertext.addr, metadata !881, metadata !DIExpression()), !dbg !882
  store i32* %keyTable, i32** %keyTable.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %keyTable.addr, metadata !883, metadata !DIExpression()), !dbg !884
  store i8* %plaintext, i8** %plaintext.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %plaintext.addr, metadata !885, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.declare(metadata i32* %s0, metadata !887, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.declare(metadata i32* %s1, metadata !889, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.declare(metadata i32* %s2, metadata !891, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata i32* %s3, metadata !893, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.declare(metadata i32** %k, metadata !895, metadata !DIExpression()), !dbg !896
  %k1 = bitcast i32** %k to i8*, !dbg !897
  call void @llvm.var.annotation(i8* %k1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 455), !dbg !897
  %0 = load i32*, i32** %keyTable.addr, align 8, !dbg !898
  %1 = load i32, i32* %grandRounds.addr, align 4, !dbg !899
  %mul = mul nsw i32 %1, 16, !dbg !900
  %idx.ext = sext i32 %mul to i64, !dbg !901
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %idx.ext, !dbg !901
  store i32* %add.ptr, i32** %k, align 8, !dbg !896
  call void @llvm.dbg.declare(metadata i32** %kend, metadata !902, metadata !DIExpression()), !dbg !903
  %2 = load i32*, i32** %keyTable.addr, align 8, !dbg !904
  %add.ptr2 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !905
  store i32* %add.ptr2, i32** %kend, align 8, !dbg !903
  %3 = load i8*, i8** %ciphertext.addr, align 8, !dbg !906
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0, !dbg !906
  %4 = load i8, i8* %arrayidx, align 1, !dbg !906
  %conv = zext i8 %4 to i32, !dbg !906
  %shl = shl i32 %conv, 24, !dbg !906
  %5 = load i8*, i8** %ciphertext.addr, align 8, !dbg !906
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !906
  %6 = load i8, i8* %arrayidx3, align 1, !dbg !906
  %conv4 = zext i8 %6 to i32, !dbg !906
  %shl5 = shl i32 %conv4, 16, !dbg !906
  %xor = xor i32 %shl, %shl5, !dbg !906
  %7 = load i8*, i8** %ciphertext.addr, align 8, !dbg !906
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !906
  %8 = load i8, i8* %arrayidx6, align 1, !dbg !906
  %conv7 = zext i8 %8 to i32, !dbg !906
  %shl8 = shl i32 %conv7, 8, !dbg !906
  %xor9 = xor i32 %xor, %shl8, !dbg !906
  %9 = load i8*, i8** %ciphertext.addr, align 8, !dbg !906
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 3, !dbg !906
  %10 = load i8, i8* %arrayidx10, align 1, !dbg !906
  %conv11 = zext i8 %10 to i32, !dbg !906
  %xor12 = xor i32 %xor9, %conv11, !dbg !906
  %11 = load i32*, i32** %k, align 8, !dbg !907
  %arrayidx13 = getelementptr inbounds i32, i32* %11, i64 0, !dbg !907
  %12 = load i32, i32* %arrayidx13, align 4, !dbg !907
  %xor14 = xor i32 %xor12, %12, !dbg !908
  store i32 %xor14, i32* %s0, align 4, !dbg !909
  %13 = load i8*, i8** %ciphertext.addr, align 8, !dbg !910
  %add.ptr15 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !910
  %arrayidx16 = getelementptr inbounds i8, i8* %add.ptr15, i64 0, !dbg !910
  %14 = load i8, i8* %arrayidx16, align 1, !dbg !910
  %conv17 = zext i8 %14 to i32, !dbg !910
  %shl18 = shl i32 %conv17, 24, !dbg !910
  %15 = load i8*, i8** %ciphertext.addr, align 8, !dbg !910
  %add.ptr19 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !910
  %arrayidx20 = getelementptr inbounds i8, i8* %add.ptr19, i64 1, !dbg !910
  %16 = load i8, i8* %arrayidx20, align 1, !dbg !910
  %conv21 = zext i8 %16 to i32, !dbg !910
  %shl22 = shl i32 %conv21, 16, !dbg !910
  %xor23 = xor i32 %shl18, %shl22, !dbg !910
  %17 = load i8*, i8** %ciphertext.addr, align 8, !dbg !910
  %add.ptr24 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !910
  %arrayidx25 = getelementptr inbounds i8, i8* %add.ptr24, i64 2, !dbg !910
  %18 = load i8, i8* %arrayidx25, align 1, !dbg !910
  %conv26 = zext i8 %18 to i32, !dbg !910
  %shl27 = shl i32 %conv26, 8, !dbg !910
  %xor28 = xor i32 %xor23, %shl27, !dbg !910
  %19 = load i8*, i8** %ciphertext.addr, align 8, !dbg !910
  %add.ptr29 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !910
  %arrayidx30 = getelementptr inbounds i8, i8* %add.ptr29, i64 3, !dbg !910
  %20 = load i8, i8* %arrayidx30, align 1, !dbg !910
  %conv31 = zext i8 %20 to i32, !dbg !910
  %xor32 = xor i32 %xor28, %conv31, !dbg !910
  %21 = load i32*, i32** %k, align 8, !dbg !911
  %arrayidx33 = getelementptr inbounds i32, i32* %21, i64 1, !dbg !911
  %22 = load i32, i32* %arrayidx33, align 4, !dbg !911
  %xor34 = xor i32 %xor32, %22, !dbg !912
  store i32 %xor34, i32* %s1, align 4, !dbg !913
  %23 = load i8*, i8** %ciphertext.addr, align 8, !dbg !914
  %add.ptr35 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !914
  %arrayidx36 = getelementptr inbounds i8, i8* %add.ptr35, i64 0, !dbg !914
  %24 = load i8, i8* %arrayidx36, align 1, !dbg !914
  %conv37 = zext i8 %24 to i32, !dbg !914
  %shl38 = shl i32 %conv37, 24, !dbg !914
  %25 = load i8*, i8** %ciphertext.addr, align 8, !dbg !914
  %add.ptr39 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !914
  %arrayidx40 = getelementptr inbounds i8, i8* %add.ptr39, i64 1, !dbg !914
  %26 = load i8, i8* %arrayidx40, align 1, !dbg !914
  %conv41 = zext i8 %26 to i32, !dbg !914
  %shl42 = shl i32 %conv41, 16, !dbg !914
  %xor43 = xor i32 %shl38, %shl42, !dbg !914
  %27 = load i8*, i8** %ciphertext.addr, align 8, !dbg !914
  %add.ptr44 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !914
  %arrayidx45 = getelementptr inbounds i8, i8* %add.ptr44, i64 2, !dbg !914
  %28 = load i8, i8* %arrayidx45, align 1, !dbg !914
  %conv46 = zext i8 %28 to i32, !dbg !914
  %shl47 = shl i32 %conv46, 8, !dbg !914
  %xor48 = xor i32 %xor43, %shl47, !dbg !914
  %29 = load i8*, i8** %ciphertext.addr, align 8, !dbg !914
  %add.ptr49 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !914
  %arrayidx50 = getelementptr inbounds i8, i8* %add.ptr49, i64 3, !dbg !914
  %30 = load i8, i8* %arrayidx50, align 1, !dbg !914
  %conv51 = zext i8 %30 to i32, !dbg !914
  %xor52 = xor i32 %xor48, %conv51, !dbg !914
  %31 = load i32*, i32** %k, align 8, !dbg !915
  %arrayidx53 = getelementptr inbounds i32, i32* %31, i64 2, !dbg !915
  %32 = load i32, i32* %arrayidx53, align 4, !dbg !915
  %xor54 = xor i32 %xor52, %32, !dbg !916
  store i32 %xor54, i32* %s2, align 4, !dbg !917
  %33 = load i8*, i8** %ciphertext.addr, align 8, !dbg !918
  %add.ptr55 = getelementptr inbounds i8, i8* %33, i64 12, !dbg !918
  %arrayidx56 = getelementptr inbounds i8, i8* %add.ptr55, i64 0, !dbg !918
  %34 = load i8, i8* %arrayidx56, align 1, !dbg !918
  %conv57 = zext i8 %34 to i32, !dbg !918
  %shl58 = shl i32 %conv57, 24, !dbg !918
  %35 = load i8*, i8** %ciphertext.addr, align 8, !dbg !918
  %add.ptr59 = getelementptr inbounds i8, i8* %35, i64 12, !dbg !918
  %arrayidx60 = getelementptr inbounds i8, i8* %add.ptr59, i64 1, !dbg !918
  %36 = load i8, i8* %arrayidx60, align 1, !dbg !918
  %conv61 = zext i8 %36 to i32, !dbg !918
  %shl62 = shl i32 %conv61, 16, !dbg !918
  %xor63 = xor i32 %shl58, %shl62, !dbg !918
  %37 = load i8*, i8** %ciphertext.addr, align 8, !dbg !918
  %add.ptr64 = getelementptr inbounds i8, i8* %37, i64 12, !dbg !918
  %arrayidx65 = getelementptr inbounds i8, i8* %add.ptr64, i64 2, !dbg !918
  %38 = load i8, i8* %arrayidx65, align 1, !dbg !918
  %conv66 = zext i8 %38 to i32, !dbg !918
  %shl67 = shl i32 %conv66, 8, !dbg !918
  %xor68 = xor i32 %xor63, %shl67, !dbg !918
  %39 = load i8*, i8** %ciphertext.addr, align 8, !dbg !918
  %add.ptr69 = getelementptr inbounds i8, i8* %39, i64 12, !dbg !918
  %arrayidx70 = getelementptr inbounds i8, i8* %add.ptr69, i64 3, !dbg !918
  %40 = load i8, i8* %arrayidx70, align 1, !dbg !918
  %conv71 = zext i8 %40 to i32, !dbg !918
  %xor72 = xor i32 %xor68, %conv71, !dbg !918
  %41 = load i32*, i32** %k, align 8, !dbg !919
  %arrayidx73 = getelementptr inbounds i32, i32* %41, i64 3, !dbg !919
  %42 = load i32, i32* %arrayidx73, align 4, !dbg !919
  %xor74 = xor i32 %xor72, %42, !dbg !920
  store i32 %xor74, i32* %s3, align 4, !dbg !921
  br label %while.body, !dbg !922

while.body:                                       ; preds = %entry, %if.end
  %43 = load i32*, i32** %k, align 8, !dbg !923
  %add.ptr75 = getelementptr inbounds i32, i32* %43, i64 -12, !dbg !923
  store i32* %add.ptr75, i32** %k, align 8, !dbg !923
  br label %do.body, !dbg !925

do.body:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i32* %_t0, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %_t1, metadata !929, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %_t2, metadata !930, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %_t3, metadata !931, metadata !DIExpression()), !dbg !928
  %44 = load i32, i32* %s0, align 4, !dbg !928
  %45 = load i32*, i32** %k, align 8, !dbg !928
  %add.ptr76 = getelementptr inbounds i32, i32* %45, i64 10, !dbg !928
  %arrayidx77 = getelementptr inbounds i32, i32* %add.ptr76, i64 0, !dbg !928
  %46 = load i32, i32* %arrayidx77, align 4, !dbg !928
  %xor78 = xor i32 %44, %46, !dbg !928
  store i32 %xor78, i32* %_t0, align 4, !dbg !928
  %47 = load i32, i32* %_t0, align 4, !dbg !928
  %and = and i32 %47, 255, !dbg !928
  %idxprom = zext i32 %and to i64, !dbg !928
  %arrayidx79 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom, !dbg !928
  %48 = load i32, i32* %arrayidx79, align 4, !dbg !928
  store i32 %48, i32* %_t3, align 4, !dbg !928
  %49 = load i32, i32* %s1, align 4, !dbg !928
  %50 = load i32*, i32** %k, align 8, !dbg !928
  %add.ptr80 = getelementptr inbounds i32, i32* %50, i64 10, !dbg !928
  %arrayidx81 = getelementptr inbounds i32, i32* %add.ptr80, i64 1, !dbg !928
  %51 = load i32, i32* %arrayidx81, align 4, !dbg !928
  %xor82 = xor i32 %49, %51, !dbg !928
  store i32 %xor82, i32* %_t1, align 4, !dbg !928
  %52 = load i32, i32* %_t0, align 4, !dbg !928
  %shr = lshr i32 %52, 8, !dbg !928
  %and83 = and i32 %shr, 255, !dbg !928
  %idxprom84 = zext i32 %and83 to i64, !dbg !928
  %arrayidx85 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom84, !dbg !928
  %53 = load i32, i32* %arrayidx85, align 4, !dbg !928
  %54 = load i32, i32* %_t3, align 4, !dbg !928
  %xor86 = xor i32 %54, %53, !dbg !928
  store i32 %xor86, i32* %_t3, align 4, !dbg !928
  %55 = load i32, i32* %_t1, align 4, !dbg !928
  %and87 = and i32 %55, 255, !dbg !928
  %idxprom88 = zext i32 %and87 to i64, !dbg !928
  %arrayidx89 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom88, !dbg !928
  %56 = load i32, i32* %arrayidx89, align 4, !dbg !928
  store i32 %56, i32* %_t2, align 4, !dbg !928
  %57 = load i32, i32* %_t0, align 4, !dbg !928
  %shr90 = lshr i32 %57, 16, !dbg !928
  %and91 = and i32 %shr90, 255, !dbg !928
  %idxprom92 = zext i32 %and91 to i64, !dbg !928
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom92, !dbg !928
  %58 = load i32, i32* %arrayidx93, align 4, !dbg !928
  %59 = load i32, i32* %_t3, align 4, !dbg !928
  %xor94 = xor i32 %59, %58, !dbg !928
  store i32 %xor94, i32* %_t3, align 4, !dbg !928
  %60 = load i32, i32* %_t1, align 4, !dbg !928
  %shr95 = lshr i32 %60, 8, !dbg !928
  %and96 = and i32 %shr95, 255, !dbg !928
  %idxprom97 = zext i32 %and96 to i64, !dbg !928
  %arrayidx98 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom97, !dbg !928
  %61 = load i32, i32* %arrayidx98, align 4, !dbg !928
  %62 = load i32, i32* %_t2, align 4, !dbg !928
  %xor99 = xor i32 %62, %61, !dbg !928
  store i32 %xor99, i32* %_t2, align 4, !dbg !928
  %63 = load i32, i32* %_t0, align 4, !dbg !928
  %shr100 = lshr i32 %63, 24, !dbg !928
  %idxprom101 = zext i32 %shr100 to i64, !dbg !928
  %arrayidx102 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom101, !dbg !928
  %64 = load i32, i32* %arrayidx102, align 4, !dbg !928
  %65 = load i32, i32* %_t3, align 4, !dbg !928
  %xor103 = xor i32 %65, %64, !dbg !928
  store i32 %xor103, i32* %_t3, align 4, !dbg !928
  %66 = load i32, i32* %_t3, align 4, !dbg !928
  %67 = load i32, i32* %_t2, align 4, !dbg !928
  %xor104 = xor i32 %67, %66, !dbg !928
  store i32 %xor104, i32* %_t2, align 4, !dbg !928
  %68 = load i32, i32* %_t3, align 4, !dbg !928
  %shr105 = lshr i32 %68, 8, !dbg !928
  %69 = load i32, i32* %_t3, align 4, !dbg !928
  %shl106 = shl i32 %69, 24, !dbg !928
  %add = add i32 %shr105, %shl106, !dbg !928
  store i32 %add, i32* %_t3, align 4, !dbg !928
  %70 = load i32, i32* %_t1, align 4, !dbg !928
  %shr107 = lshr i32 %70, 16, !dbg !928
  %and108 = and i32 %shr107, 255, !dbg !928
  %idxprom109 = zext i32 %and108 to i64, !dbg !928
  %arrayidx110 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom109, !dbg !928
  %71 = load i32, i32* %arrayidx110, align 4, !dbg !928
  %72 = load i32, i32* %_t2, align 4, !dbg !928
  %xor111 = xor i32 %72, %71, !dbg !928
  store i32 %xor111, i32* %_t2, align 4, !dbg !928
  %73 = load i32, i32* %_t3, align 4, !dbg !928
  %74 = load i32, i32* %s3, align 4, !dbg !928
  %xor112 = xor i32 %74, %73, !dbg !928
  store i32 %xor112, i32* %s3, align 4, !dbg !928
  %75 = load i32, i32* %_t1, align 4, !dbg !928
  %shr113 = lshr i32 %75, 24, !dbg !928
  %idxprom114 = zext i32 %shr113 to i64, !dbg !928
  %arrayidx115 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom114, !dbg !928
  %76 = load i32, i32* %arrayidx115, align 4, !dbg !928
  %77 = load i32, i32* %_t2, align 4, !dbg !928
  %xor116 = xor i32 %77, %76, !dbg !928
  store i32 %xor116, i32* %_t2, align 4, !dbg !928
  %78 = load i32, i32* %_t2, align 4, !dbg !928
  %79 = load i32, i32* %s2, align 4, !dbg !928
  %xor117 = xor i32 %79, %78, !dbg !928
  store i32 %xor117, i32* %s2, align 4, !dbg !928
  %80 = load i32, i32* %_t2, align 4, !dbg !928
  %81 = load i32, i32* %s3, align 4, !dbg !928
  %xor118 = xor i32 %81, %80, !dbg !928
  store i32 %xor118, i32* %s3, align 4, !dbg !928
  br label %do.end, !dbg !928

do.end:                                           ; preds = %do.body
  br label %do.body119, !dbg !932

do.body119:                                       ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %_t0120, metadata !933, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %_t1121, metadata !936, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %_t2122, metadata !937, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %_t3123, metadata !938, metadata !DIExpression()), !dbg !935
  %82 = load i32, i32* %s2, align 4, !dbg !935
  %83 = load i32*, i32** %k, align 8, !dbg !935
  %add.ptr124 = getelementptr inbounds i32, i32* %83, i64 8, !dbg !935
  %arrayidx125 = getelementptr inbounds i32, i32* %add.ptr124, i64 0, !dbg !935
  %84 = load i32, i32* %arrayidx125, align 4, !dbg !935
  %xor126 = xor i32 %82, %84, !dbg !935
  store i32 %xor126, i32* %_t0120, align 4, !dbg !935
  %85 = load i32, i32* %_t0120, align 4, !dbg !935
  %and127 = and i32 %85, 255, !dbg !935
  %idxprom128 = zext i32 %and127 to i64, !dbg !935
  %arrayidx129 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom128, !dbg !935
  %86 = load i32, i32* %arrayidx129, align 4, !dbg !935
  store i32 %86, i32* %_t3123, align 4, !dbg !935
  %87 = load i32, i32* %s3, align 4, !dbg !935
  %88 = load i32*, i32** %k, align 8, !dbg !935
  %add.ptr130 = getelementptr inbounds i32, i32* %88, i64 8, !dbg !935
  %arrayidx131 = getelementptr inbounds i32, i32* %add.ptr130, i64 1, !dbg !935
  %89 = load i32, i32* %arrayidx131, align 4, !dbg !935
  %xor132 = xor i32 %87, %89, !dbg !935
  store i32 %xor132, i32* %_t1121, align 4, !dbg !935
  %90 = load i32, i32* %_t0120, align 4, !dbg !935
  %shr133 = lshr i32 %90, 8, !dbg !935
  %and134 = and i32 %shr133, 255, !dbg !935
  %idxprom135 = zext i32 %and134 to i64, !dbg !935
  %arrayidx136 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom135, !dbg !935
  %91 = load i32, i32* %arrayidx136, align 4, !dbg !935
  %92 = load i32, i32* %_t3123, align 4, !dbg !935
  %xor137 = xor i32 %92, %91, !dbg !935
  store i32 %xor137, i32* %_t3123, align 4, !dbg !935
  %93 = load i32, i32* %_t1121, align 4, !dbg !935
  %and138 = and i32 %93, 255, !dbg !935
  %idxprom139 = zext i32 %and138 to i64, !dbg !935
  %arrayidx140 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom139, !dbg !935
  %94 = load i32, i32* %arrayidx140, align 4, !dbg !935
  store i32 %94, i32* %_t2122, align 4, !dbg !935
  %95 = load i32, i32* %_t0120, align 4, !dbg !935
  %shr141 = lshr i32 %95, 16, !dbg !935
  %and142 = and i32 %shr141, 255, !dbg !935
  %idxprom143 = zext i32 %and142 to i64, !dbg !935
  %arrayidx144 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom143, !dbg !935
  %96 = load i32, i32* %arrayidx144, align 4, !dbg !935
  %97 = load i32, i32* %_t3123, align 4, !dbg !935
  %xor145 = xor i32 %97, %96, !dbg !935
  store i32 %xor145, i32* %_t3123, align 4, !dbg !935
  %98 = load i32, i32* %_t1121, align 4, !dbg !935
  %shr146 = lshr i32 %98, 8, !dbg !935
  %and147 = and i32 %shr146, 255, !dbg !935
  %idxprom148 = zext i32 %and147 to i64, !dbg !935
  %arrayidx149 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom148, !dbg !935
  %99 = load i32, i32* %arrayidx149, align 4, !dbg !935
  %100 = load i32, i32* %_t2122, align 4, !dbg !935
  %xor150 = xor i32 %100, %99, !dbg !935
  store i32 %xor150, i32* %_t2122, align 4, !dbg !935
  %101 = load i32, i32* %_t0120, align 4, !dbg !935
  %shr151 = lshr i32 %101, 24, !dbg !935
  %idxprom152 = zext i32 %shr151 to i64, !dbg !935
  %arrayidx153 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom152, !dbg !935
  %102 = load i32, i32* %arrayidx153, align 4, !dbg !935
  %103 = load i32, i32* %_t3123, align 4, !dbg !935
  %xor154 = xor i32 %103, %102, !dbg !935
  store i32 %xor154, i32* %_t3123, align 4, !dbg !935
  %104 = load i32, i32* %_t3123, align 4, !dbg !935
  %105 = load i32, i32* %_t2122, align 4, !dbg !935
  %xor155 = xor i32 %105, %104, !dbg !935
  store i32 %xor155, i32* %_t2122, align 4, !dbg !935
  %106 = load i32, i32* %_t3123, align 4, !dbg !935
  %shr156 = lshr i32 %106, 8, !dbg !935
  %107 = load i32, i32* %_t3123, align 4, !dbg !935
  %shl157 = shl i32 %107, 24, !dbg !935
  %add158 = add i32 %shr156, %shl157, !dbg !935
  store i32 %add158, i32* %_t3123, align 4, !dbg !935
  %108 = load i32, i32* %_t1121, align 4, !dbg !935
  %shr159 = lshr i32 %108, 16, !dbg !935
  %and160 = and i32 %shr159, 255, !dbg !935
  %idxprom161 = zext i32 %and160 to i64, !dbg !935
  %arrayidx162 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom161, !dbg !935
  %109 = load i32, i32* %arrayidx162, align 4, !dbg !935
  %110 = load i32, i32* %_t2122, align 4, !dbg !935
  %xor163 = xor i32 %110, %109, !dbg !935
  store i32 %xor163, i32* %_t2122, align 4, !dbg !935
  %111 = load i32, i32* %_t3123, align 4, !dbg !935
  %112 = load i32, i32* %s1, align 4, !dbg !935
  %xor164 = xor i32 %112, %111, !dbg !935
  store i32 %xor164, i32* %s1, align 4, !dbg !935
  %113 = load i32, i32* %_t1121, align 4, !dbg !935
  %shr165 = lshr i32 %113, 24, !dbg !935
  %idxprom166 = zext i32 %shr165 to i64, !dbg !935
  %arrayidx167 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom166, !dbg !935
  %114 = load i32, i32* %arrayidx167, align 4, !dbg !935
  %115 = load i32, i32* %_t2122, align 4, !dbg !935
  %xor168 = xor i32 %115, %114, !dbg !935
  store i32 %xor168, i32* %_t2122, align 4, !dbg !935
  %116 = load i32, i32* %_t2122, align 4, !dbg !935
  %117 = load i32, i32* %s0, align 4, !dbg !935
  %xor169 = xor i32 %117, %116, !dbg !935
  store i32 %xor169, i32* %s0, align 4, !dbg !935
  %118 = load i32, i32* %_t2122, align 4, !dbg !935
  %119 = load i32, i32* %s1, align 4, !dbg !935
  %xor170 = xor i32 %119, %118, !dbg !935
  store i32 %xor170, i32* %s1, align 4, !dbg !935
  br label %do.end171, !dbg !935

do.end171:                                        ; preds = %do.body119
  br label %do.body172, !dbg !939

do.body172:                                       ; preds = %do.end171
  call void @llvm.dbg.declare(metadata i32* %_t0173, metadata !940, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %_t1174, metadata !943, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %_t2175, metadata !944, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %_t3176, metadata !945, metadata !DIExpression()), !dbg !942
  %120 = load i32, i32* %s0, align 4, !dbg !942
  %121 = load i32*, i32** %k, align 8, !dbg !942
  %add.ptr177 = getelementptr inbounds i32, i32* %121, i64 6, !dbg !942
  %arrayidx178 = getelementptr inbounds i32, i32* %add.ptr177, i64 0, !dbg !942
  %122 = load i32, i32* %arrayidx178, align 4, !dbg !942
  %xor179 = xor i32 %120, %122, !dbg !942
  store i32 %xor179, i32* %_t0173, align 4, !dbg !942
  %123 = load i32, i32* %_t0173, align 4, !dbg !942
  %and180 = and i32 %123, 255, !dbg !942
  %idxprom181 = zext i32 %and180 to i64, !dbg !942
  %arrayidx182 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom181, !dbg !942
  %124 = load i32, i32* %arrayidx182, align 4, !dbg !942
  store i32 %124, i32* %_t3176, align 4, !dbg !942
  %125 = load i32, i32* %s1, align 4, !dbg !942
  %126 = load i32*, i32** %k, align 8, !dbg !942
  %add.ptr183 = getelementptr inbounds i32, i32* %126, i64 6, !dbg !942
  %arrayidx184 = getelementptr inbounds i32, i32* %add.ptr183, i64 1, !dbg !942
  %127 = load i32, i32* %arrayidx184, align 4, !dbg !942
  %xor185 = xor i32 %125, %127, !dbg !942
  store i32 %xor185, i32* %_t1174, align 4, !dbg !942
  %128 = load i32, i32* %_t0173, align 4, !dbg !942
  %shr186 = lshr i32 %128, 8, !dbg !942
  %and187 = and i32 %shr186, 255, !dbg !942
  %idxprom188 = zext i32 %and187 to i64, !dbg !942
  %arrayidx189 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom188, !dbg !942
  %129 = load i32, i32* %arrayidx189, align 4, !dbg !942
  %130 = load i32, i32* %_t3176, align 4, !dbg !942
  %xor190 = xor i32 %130, %129, !dbg !942
  store i32 %xor190, i32* %_t3176, align 4, !dbg !942
  %131 = load i32, i32* %_t1174, align 4, !dbg !942
  %and191 = and i32 %131, 255, !dbg !942
  %idxprom192 = zext i32 %and191 to i64, !dbg !942
  %arrayidx193 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom192, !dbg !942
  %132 = load i32, i32* %arrayidx193, align 4, !dbg !942
  store i32 %132, i32* %_t2175, align 4, !dbg !942
  %133 = load i32, i32* %_t0173, align 4, !dbg !942
  %shr194 = lshr i32 %133, 16, !dbg !942
  %and195 = and i32 %shr194, 255, !dbg !942
  %idxprom196 = zext i32 %and195 to i64, !dbg !942
  %arrayidx197 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom196, !dbg !942
  %134 = load i32, i32* %arrayidx197, align 4, !dbg !942
  %135 = load i32, i32* %_t3176, align 4, !dbg !942
  %xor198 = xor i32 %135, %134, !dbg !942
  store i32 %xor198, i32* %_t3176, align 4, !dbg !942
  %136 = load i32, i32* %_t1174, align 4, !dbg !942
  %shr199 = lshr i32 %136, 8, !dbg !942
  %and200 = and i32 %shr199, 255, !dbg !942
  %idxprom201 = zext i32 %and200 to i64, !dbg !942
  %arrayidx202 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom201, !dbg !942
  %137 = load i32, i32* %arrayidx202, align 4, !dbg !942
  %138 = load i32, i32* %_t2175, align 4, !dbg !942
  %xor203 = xor i32 %138, %137, !dbg !942
  store i32 %xor203, i32* %_t2175, align 4, !dbg !942
  %139 = load i32, i32* %_t0173, align 4, !dbg !942
  %shr204 = lshr i32 %139, 24, !dbg !942
  %idxprom205 = zext i32 %shr204 to i64, !dbg !942
  %arrayidx206 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom205, !dbg !942
  %140 = load i32, i32* %arrayidx206, align 4, !dbg !942
  %141 = load i32, i32* %_t3176, align 4, !dbg !942
  %xor207 = xor i32 %141, %140, !dbg !942
  store i32 %xor207, i32* %_t3176, align 4, !dbg !942
  %142 = load i32, i32* %_t3176, align 4, !dbg !942
  %143 = load i32, i32* %_t2175, align 4, !dbg !942
  %xor208 = xor i32 %143, %142, !dbg !942
  store i32 %xor208, i32* %_t2175, align 4, !dbg !942
  %144 = load i32, i32* %_t3176, align 4, !dbg !942
  %shr209 = lshr i32 %144, 8, !dbg !942
  %145 = load i32, i32* %_t3176, align 4, !dbg !942
  %shl210 = shl i32 %145, 24, !dbg !942
  %add211 = add i32 %shr209, %shl210, !dbg !942
  store i32 %add211, i32* %_t3176, align 4, !dbg !942
  %146 = load i32, i32* %_t1174, align 4, !dbg !942
  %shr212 = lshr i32 %146, 16, !dbg !942
  %and213 = and i32 %shr212, 255, !dbg !942
  %idxprom214 = zext i32 %and213 to i64, !dbg !942
  %arrayidx215 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom214, !dbg !942
  %147 = load i32, i32* %arrayidx215, align 4, !dbg !942
  %148 = load i32, i32* %_t2175, align 4, !dbg !942
  %xor216 = xor i32 %148, %147, !dbg !942
  store i32 %xor216, i32* %_t2175, align 4, !dbg !942
  %149 = load i32, i32* %_t3176, align 4, !dbg !942
  %150 = load i32, i32* %s3, align 4, !dbg !942
  %xor217 = xor i32 %150, %149, !dbg !942
  store i32 %xor217, i32* %s3, align 4, !dbg !942
  %151 = load i32, i32* %_t1174, align 4, !dbg !942
  %shr218 = lshr i32 %151, 24, !dbg !942
  %idxprom219 = zext i32 %shr218 to i64, !dbg !942
  %arrayidx220 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom219, !dbg !942
  %152 = load i32, i32* %arrayidx220, align 4, !dbg !942
  %153 = load i32, i32* %_t2175, align 4, !dbg !942
  %xor221 = xor i32 %153, %152, !dbg !942
  store i32 %xor221, i32* %_t2175, align 4, !dbg !942
  %154 = load i32, i32* %_t2175, align 4, !dbg !942
  %155 = load i32, i32* %s2, align 4, !dbg !942
  %xor222 = xor i32 %155, %154, !dbg !942
  store i32 %xor222, i32* %s2, align 4, !dbg !942
  %156 = load i32, i32* %_t2175, align 4, !dbg !942
  %157 = load i32, i32* %s3, align 4, !dbg !942
  %xor223 = xor i32 %157, %156, !dbg !942
  store i32 %xor223, i32* %s3, align 4, !dbg !942
  br label %do.end224, !dbg !942

do.end224:                                        ; preds = %do.body172
  br label %do.body225, !dbg !946

do.body225:                                       ; preds = %do.end224
  call void @llvm.dbg.declare(metadata i32* %_t0226, metadata !947, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata i32* %_t1227, metadata !950, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata i32* %_t2228, metadata !951, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata i32* %_t3229, metadata !952, metadata !DIExpression()), !dbg !949
  %158 = load i32, i32* %s2, align 4, !dbg !949
  %159 = load i32*, i32** %k, align 8, !dbg !949
  %add.ptr230 = getelementptr inbounds i32, i32* %159, i64 4, !dbg !949
  %arrayidx231 = getelementptr inbounds i32, i32* %add.ptr230, i64 0, !dbg !949
  %160 = load i32, i32* %arrayidx231, align 4, !dbg !949
  %xor232 = xor i32 %158, %160, !dbg !949
  store i32 %xor232, i32* %_t0226, align 4, !dbg !949
  %161 = load i32, i32* %_t0226, align 4, !dbg !949
  %and233 = and i32 %161, 255, !dbg !949
  %idxprom234 = zext i32 %and233 to i64, !dbg !949
  %arrayidx235 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom234, !dbg !949
  %162 = load i32, i32* %arrayidx235, align 4, !dbg !949
  store i32 %162, i32* %_t3229, align 4, !dbg !949
  %163 = load i32, i32* %s3, align 4, !dbg !949
  %164 = load i32*, i32** %k, align 8, !dbg !949
  %add.ptr236 = getelementptr inbounds i32, i32* %164, i64 4, !dbg !949
  %arrayidx237 = getelementptr inbounds i32, i32* %add.ptr236, i64 1, !dbg !949
  %165 = load i32, i32* %arrayidx237, align 4, !dbg !949
  %xor238 = xor i32 %163, %165, !dbg !949
  store i32 %xor238, i32* %_t1227, align 4, !dbg !949
  %166 = load i32, i32* %_t0226, align 4, !dbg !949
  %shr239 = lshr i32 %166, 8, !dbg !949
  %and240 = and i32 %shr239, 255, !dbg !949
  %idxprom241 = zext i32 %and240 to i64, !dbg !949
  %arrayidx242 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom241, !dbg !949
  %167 = load i32, i32* %arrayidx242, align 4, !dbg !949
  %168 = load i32, i32* %_t3229, align 4, !dbg !949
  %xor243 = xor i32 %168, %167, !dbg !949
  store i32 %xor243, i32* %_t3229, align 4, !dbg !949
  %169 = load i32, i32* %_t1227, align 4, !dbg !949
  %and244 = and i32 %169, 255, !dbg !949
  %idxprom245 = zext i32 %and244 to i64, !dbg !949
  %arrayidx246 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom245, !dbg !949
  %170 = load i32, i32* %arrayidx246, align 4, !dbg !949
  store i32 %170, i32* %_t2228, align 4, !dbg !949
  %171 = load i32, i32* %_t0226, align 4, !dbg !949
  %shr247 = lshr i32 %171, 16, !dbg !949
  %and248 = and i32 %shr247, 255, !dbg !949
  %idxprom249 = zext i32 %and248 to i64, !dbg !949
  %arrayidx250 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom249, !dbg !949
  %172 = load i32, i32* %arrayidx250, align 4, !dbg !949
  %173 = load i32, i32* %_t3229, align 4, !dbg !949
  %xor251 = xor i32 %173, %172, !dbg !949
  store i32 %xor251, i32* %_t3229, align 4, !dbg !949
  %174 = load i32, i32* %_t1227, align 4, !dbg !949
  %shr252 = lshr i32 %174, 8, !dbg !949
  %and253 = and i32 %shr252, 255, !dbg !949
  %idxprom254 = zext i32 %and253 to i64, !dbg !949
  %arrayidx255 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom254, !dbg !949
  %175 = load i32, i32* %arrayidx255, align 4, !dbg !949
  %176 = load i32, i32* %_t2228, align 4, !dbg !949
  %xor256 = xor i32 %176, %175, !dbg !949
  store i32 %xor256, i32* %_t2228, align 4, !dbg !949
  %177 = load i32, i32* %_t0226, align 4, !dbg !949
  %shr257 = lshr i32 %177, 24, !dbg !949
  %idxprom258 = zext i32 %shr257 to i64, !dbg !949
  %arrayidx259 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom258, !dbg !949
  %178 = load i32, i32* %arrayidx259, align 4, !dbg !949
  %179 = load i32, i32* %_t3229, align 4, !dbg !949
  %xor260 = xor i32 %179, %178, !dbg !949
  store i32 %xor260, i32* %_t3229, align 4, !dbg !949
  %180 = load i32, i32* %_t3229, align 4, !dbg !949
  %181 = load i32, i32* %_t2228, align 4, !dbg !949
  %xor261 = xor i32 %181, %180, !dbg !949
  store i32 %xor261, i32* %_t2228, align 4, !dbg !949
  %182 = load i32, i32* %_t3229, align 4, !dbg !949
  %shr262 = lshr i32 %182, 8, !dbg !949
  %183 = load i32, i32* %_t3229, align 4, !dbg !949
  %shl263 = shl i32 %183, 24, !dbg !949
  %add264 = add i32 %shr262, %shl263, !dbg !949
  store i32 %add264, i32* %_t3229, align 4, !dbg !949
  %184 = load i32, i32* %_t1227, align 4, !dbg !949
  %shr265 = lshr i32 %184, 16, !dbg !949
  %and266 = and i32 %shr265, 255, !dbg !949
  %idxprom267 = zext i32 %and266 to i64, !dbg !949
  %arrayidx268 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom267, !dbg !949
  %185 = load i32, i32* %arrayidx268, align 4, !dbg !949
  %186 = load i32, i32* %_t2228, align 4, !dbg !949
  %xor269 = xor i32 %186, %185, !dbg !949
  store i32 %xor269, i32* %_t2228, align 4, !dbg !949
  %187 = load i32, i32* %_t3229, align 4, !dbg !949
  %188 = load i32, i32* %s1, align 4, !dbg !949
  %xor270 = xor i32 %188, %187, !dbg !949
  store i32 %xor270, i32* %s1, align 4, !dbg !949
  %189 = load i32, i32* %_t1227, align 4, !dbg !949
  %shr271 = lshr i32 %189, 24, !dbg !949
  %idxprom272 = zext i32 %shr271 to i64, !dbg !949
  %arrayidx273 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom272, !dbg !949
  %190 = load i32, i32* %arrayidx273, align 4, !dbg !949
  %191 = load i32, i32* %_t2228, align 4, !dbg !949
  %xor274 = xor i32 %191, %190, !dbg !949
  store i32 %xor274, i32* %_t2228, align 4, !dbg !949
  %192 = load i32, i32* %_t2228, align 4, !dbg !949
  %193 = load i32, i32* %s0, align 4, !dbg !949
  %xor275 = xor i32 %193, %192, !dbg !949
  store i32 %xor275, i32* %s0, align 4, !dbg !949
  %194 = load i32, i32* %_t2228, align 4, !dbg !949
  %195 = load i32, i32* %s1, align 4, !dbg !949
  %xor276 = xor i32 %195, %194, !dbg !949
  store i32 %xor276, i32* %s1, align 4, !dbg !949
  br label %do.end277, !dbg !949

do.end277:                                        ; preds = %do.body225
  br label %do.body278, !dbg !953

do.body278:                                       ; preds = %do.end277
  call void @llvm.dbg.declare(metadata i32* %_t0279, metadata !954, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %_t1280, metadata !957, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %_t2281, metadata !958, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %_t3282, metadata !959, metadata !DIExpression()), !dbg !956
  %196 = load i32, i32* %s0, align 4, !dbg !956
  %197 = load i32*, i32** %k, align 8, !dbg !956
  %add.ptr283 = getelementptr inbounds i32, i32* %197, i64 2, !dbg !956
  %arrayidx284 = getelementptr inbounds i32, i32* %add.ptr283, i64 0, !dbg !956
  %198 = load i32, i32* %arrayidx284, align 4, !dbg !956
  %xor285 = xor i32 %196, %198, !dbg !956
  store i32 %xor285, i32* %_t0279, align 4, !dbg !956
  %199 = load i32, i32* %_t0279, align 4, !dbg !956
  %and286 = and i32 %199, 255, !dbg !956
  %idxprom287 = zext i32 %and286 to i64, !dbg !956
  %arrayidx288 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom287, !dbg !956
  %200 = load i32, i32* %arrayidx288, align 4, !dbg !956
  store i32 %200, i32* %_t3282, align 4, !dbg !956
  %201 = load i32, i32* %s1, align 4, !dbg !956
  %202 = load i32*, i32** %k, align 8, !dbg !956
  %add.ptr289 = getelementptr inbounds i32, i32* %202, i64 2, !dbg !956
  %arrayidx290 = getelementptr inbounds i32, i32* %add.ptr289, i64 1, !dbg !956
  %203 = load i32, i32* %arrayidx290, align 4, !dbg !956
  %xor291 = xor i32 %201, %203, !dbg !956
  store i32 %xor291, i32* %_t1280, align 4, !dbg !956
  %204 = load i32, i32* %_t0279, align 4, !dbg !956
  %shr292 = lshr i32 %204, 8, !dbg !956
  %and293 = and i32 %shr292, 255, !dbg !956
  %idxprom294 = zext i32 %and293 to i64, !dbg !956
  %arrayidx295 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom294, !dbg !956
  %205 = load i32, i32* %arrayidx295, align 4, !dbg !956
  %206 = load i32, i32* %_t3282, align 4, !dbg !956
  %xor296 = xor i32 %206, %205, !dbg !956
  store i32 %xor296, i32* %_t3282, align 4, !dbg !956
  %207 = load i32, i32* %_t1280, align 4, !dbg !956
  %and297 = and i32 %207, 255, !dbg !956
  %idxprom298 = zext i32 %and297 to i64, !dbg !956
  %arrayidx299 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom298, !dbg !956
  %208 = load i32, i32* %arrayidx299, align 4, !dbg !956
  store i32 %208, i32* %_t2281, align 4, !dbg !956
  %209 = load i32, i32* %_t0279, align 4, !dbg !956
  %shr300 = lshr i32 %209, 16, !dbg !956
  %and301 = and i32 %shr300, 255, !dbg !956
  %idxprom302 = zext i32 %and301 to i64, !dbg !956
  %arrayidx303 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom302, !dbg !956
  %210 = load i32, i32* %arrayidx303, align 4, !dbg !956
  %211 = load i32, i32* %_t3282, align 4, !dbg !956
  %xor304 = xor i32 %211, %210, !dbg !956
  store i32 %xor304, i32* %_t3282, align 4, !dbg !956
  %212 = load i32, i32* %_t1280, align 4, !dbg !956
  %shr305 = lshr i32 %212, 8, !dbg !956
  %and306 = and i32 %shr305, 255, !dbg !956
  %idxprom307 = zext i32 %and306 to i64, !dbg !956
  %arrayidx308 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom307, !dbg !956
  %213 = load i32, i32* %arrayidx308, align 4, !dbg !956
  %214 = load i32, i32* %_t2281, align 4, !dbg !956
  %xor309 = xor i32 %214, %213, !dbg !956
  store i32 %xor309, i32* %_t2281, align 4, !dbg !956
  %215 = load i32, i32* %_t0279, align 4, !dbg !956
  %shr310 = lshr i32 %215, 24, !dbg !956
  %idxprom311 = zext i32 %shr310 to i64, !dbg !956
  %arrayidx312 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom311, !dbg !956
  %216 = load i32, i32* %arrayidx312, align 4, !dbg !956
  %217 = load i32, i32* %_t3282, align 4, !dbg !956
  %xor313 = xor i32 %217, %216, !dbg !956
  store i32 %xor313, i32* %_t3282, align 4, !dbg !956
  %218 = load i32, i32* %_t3282, align 4, !dbg !956
  %219 = load i32, i32* %_t2281, align 4, !dbg !956
  %xor314 = xor i32 %219, %218, !dbg !956
  store i32 %xor314, i32* %_t2281, align 4, !dbg !956
  %220 = load i32, i32* %_t3282, align 4, !dbg !956
  %shr315 = lshr i32 %220, 8, !dbg !956
  %221 = load i32, i32* %_t3282, align 4, !dbg !956
  %shl316 = shl i32 %221, 24, !dbg !956
  %add317 = add i32 %shr315, %shl316, !dbg !956
  store i32 %add317, i32* %_t3282, align 4, !dbg !956
  %222 = load i32, i32* %_t1280, align 4, !dbg !956
  %shr318 = lshr i32 %222, 16, !dbg !956
  %and319 = and i32 %shr318, 255, !dbg !956
  %idxprom320 = zext i32 %and319 to i64, !dbg !956
  %arrayidx321 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom320, !dbg !956
  %223 = load i32, i32* %arrayidx321, align 4, !dbg !956
  %224 = load i32, i32* %_t2281, align 4, !dbg !956
  %xor322 = xor i32 %224, %223, !dbg !956
  store i32 %xor322, i32* %_t2281, align 4, !dbg !956
  %225 = load i32, i32* %_t3282, align 4, !dbg !956
  %226 = load i32, i32* %s3, align 4, !dbg !956
  %xor323 = xor i32 %226, %225, !dbg !956
  store i32 %xor323, i32* %s3, align 4, !dbg !956
  %227 = load i32, i32* %_t1280, align 4, !dbg !956
  %shr324 = lshr i32 %227, 24, !dbg !956
  %idxprom325 = zext i32 %shr324 to i64, !dbg !956
  %arrayidx326 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom325, !dbg !956
  %228 = load i32, i32* %arrayidx326, align 4, !dbg !956
  %229 = load i32, i32* %_t2281, align 4, !dbg !956
  %xor327 = xor i32 %229, %228, !dbg !956
  store i32 %xor327, i32* %_t2281, align 4, !dbg !956
  %230 = load i32, i32* %_t2281, align 4, !dbg !956
  %231 = load i32, i32* %s2, align 4, !dbg !956
  %xor328 = xor i32 %231, %230, !dbg !956
  store i32 %xor328, i32* %s2, align 4, !dbg !956
  %232 = load i32, i32* %_t2281, align 4, !dbg !956
  %233 = load i32, i32* %s3, align 4, !dbg !956
  %xor329 = xor i32 %233, %232, !dbg !956
  store i32 %xor329, i32* %s3, align 4, !dbg !956
  br label %do.end330, !dbg !956

do.end330:                                        ; preds = %do.body278
  br label %do.body331, !dbg !960

do.body331:                                       ; preds = %do.end330
  call void @llvm.dbg.declare(metadata i32* %_t0332, metadata !961, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %_t1333, metadata !964, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %_t2334, metadata !965, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %_t3335, metadata !966, metadata !DIExpression()), !dbg !963
  %234 = load i32, i32* %s2, align 4, !dbg !963
  %235 = load i32*, i32** %k, align 8, !dbg !963
  %add.ptr336 = getelementptr inbounds i32, i32* %235, i64 0, !dbg !963
  %arrayidx337 = getelementptr inbounds i32, i32* %add.ptr336, i64 0, !dbg !963
  %236 = load i32, i32* %arrayidx337, align 4, !dbg !963
  %xor338 = xor i32 %234, %236, !dbg !963
  store i32 %xor338, i32* %_t0332, align 4, !dbg !963
  %237 = load i32, i32* %_t0332, align 4, !dbg !963
  %and339 = and i32 %237, 255, !dbg !963
  %idxprom340 = zext i32 %and339 to i64, !dbg !963
  %arrayidx341 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom340, !dbg !963
  %238 = load i32, i32* %arrayidx341, align 4, !dbg !963
  store i32 %238, i32* %_t3335, align 4, !dbg !963
  %239 = load i32, i32* %s3, align 4, !dbg !963
  %240 = load i32*, i32** %k, align 8, !dbg !963
  %add.ptr342 = getelementptr inbounds i32, i32* %240, i64 0, !dbg !963
  %arrayidx343 = getelementptr inbounds i32, i32* %add.ptr342, i64 1, !dbg !963
  %241 = load i32, i32* %arrayidx343, align 4, !dbg !963
  %xor344 = xor i32 %239, %241, !dbg !963
  store i32 %xor344, i32* %_t1333, align 4, !dbg !963
  %242 = load i32, i32* %_t0332, align 4, !dbg !963
  %shr345 = lshr i32 %242, 8, !dbg !963
  %and346 = and i32 %shr345, 255, !dbg !963
  %idxprom347 = zext i32 %and346 to i64, !dbg !963
  %arrayidx348 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom347, !dbg !963
  %243 = load i32, i32* %arrayidx348, align 4, !dbg !963
  %244 = load i32, i32* %_t3335, align 4, !dbg !963
  %xor349 = xor i32 %244, %243, !dbg !963
  store i32 %xor349, i32* %_t3335, align 4, !dbg !963
  %245 = load i32, i32* %_t1333, align 4, !dbg !963
  %and350 = and i32 %245, 255, !dbg !963
  %idxprom351 = zext i32 %and350 to i64, !dbg !963
  %arrayidx352 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom351, !dbg !963
  %246 = load i32, i32* %arrayidx352, align 4, !dbg !963
  store i32 %246, i32* %_t2334, align 4, !dbg !963
  %247 = load i32, i32* %_t0332, align 4, !dbg !963
  %shr353 = lshr i32 %247, 16, !dbg !963
  %and354 = and i32 %shr353, 255, !dbg !963
  %idxprom355 = zext i32 %and354 to i64, !dbg !963
  %arrayidx356 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom355, !dbg !963
  %248 = load i32, i32* %arrayidx356, align 4, !dbg !963
  %249 = load i32, i32* %_t3335, align 4, !dbg !963
  %xor357 = xor i32 %249, %248, !dbg !963
  store i32 %xor357, i32* %_t3335, align 4, !dbg !963
  %250 = load i32, i32* %_t1333, align 4, !dbg !963
  %shr358 = lshr i32 %250, 8, !dbg !963
  %and359 = and i32 %shr358, 255, !dbg !963
  %idxprom360 = zext i32 %and359 to i64, !dbg !963
  %arrayidx361 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom360, !dbg !963
  %251 = load i32, i32* %arrayidx361, align 4, !dbg !963
  %252 = load i32, i32* %_t2334, align 4, !dbg !963
  %xor362 = xor i32 %252, %251, !dbg !963
  store i32 %xor362, i32* %_t2334, align 4, !dbg !963
  %253 = load i32, i32* %_t0332, align 4, !dbg !963
  %shr363 = lshr i32 %253, 24, !dbg !963
  %idxprom364 = zext i32 %shr363 to i64, !dbg !963
  %arrayidx365 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom364, !dbg !963
  %254 = load i32, i32* %arrayidx365, align 4, !dbg !963
  %255 = load i32, i32* %_t3335, align 4, !dbg !963
  %xor366 = xor i32 %255, %254, !dbg !963
  store i32 %xor366, i32* %_t3335, align 4, !dbg !963
  %256 = load i32, i32* %_t3335, align 4, !dbg !963
  %257 = load i32, i32* %_t2334, align 4, !dbg !963
  %xor367 = xor i32 %257, %256, !dbg !963
  store i32 %xor367, i32* %_t2334, align 4, !dbg !963
  %258 = load i32, i32* %_t3335, align 4, !dbg !963
  %shr368 = lshr i32 %258, 8, !dbg !963
  %259 = load i32, i32* %_t3335, align 4, !dbg !963
  %shl369 = shl i32 %259, 24, !dbg !963
  %add370 = add i32 %shr368, %shl369, !dbg !963
  store i32 %add370, i32* %_t3335, align 4, !dbg !963
  %260 = load i32, i32* %_t1333, align 4, !dbg !963
  %shr371 = lshr i32 %260, 16, !dbg !963
  %and372 = and i32 %shr371, 255, !dbg !963
  %idxprom373 = zext i32 %and372 to i64, !dbg !963
  %arrayidx374 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom373, !dbg !963
  %261 = load i32, i32* %arrayidx374, align 4, !dbg !963
  %262 = load i32, i32* %_t2334, align 4, !dbg !963
  %xor375 = xor i32 %262, %261, !dbg !963
  store i32 %xor375, i32* %_t2334, align 4, !dbg !963
  %263 = load i32, i32* %_t3335, align 4, !dbg !963
  %264 = load i32, i32* %s1, align 4, !dbg !963
  %xor376 = xor i32 %264, %263, !dbg !963
  store i32 %xor376, i32* %s1, align 4, !dbg !963
  %265 = load i32, i32* %_t1333, align 4, !dbg !963
  %shr377 = lshr i32 %265, 24, !dbg !963
  %idxprom378 = zext i32 %shr377 to i64, !dbg !963
  %arrayidx379 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom378, !dbg !963
  %266 = load i32, i32* %arrayidx379, align 4, !dbg !963
  %267 = load i32, i32* %_t2334, align 4, !dbg !963
  %xor380 = xor i32 %267, %266, !dbg !963
  store i32 %xor380, i32* %_t2334, align 4, !dbg !963
  %268 = load i32, i32* %_t2334, align 4, !dbg !963
  %269 = load i32, i32* %s0, align 4, !dbg !963
  %xor381 = xor i32 %269, %268, !dbg !963
  store i32 %xor381, i32* %s0, align 4, !dbg !963
  %270 = load i32, i32* %_t2334, align 4, !dbg !963
  %271 = load i32, i32* %s1, align 4, !dbg !963
  %xor382 = xor i32 %271, %270, !dbg !963
  store i32 %xor382, i32* %s1, align 4, !dbg !963
  br label %do.end383, !dbg !963

do.end383:                                        ; preds = %do.body331
  %272 = load i32*, i32** %k, align 8, !dbg !967
  %273 = load i32*, i32** %kend, align 8, !dbg !969
  %cmp = icmp eq i32* %272, %273, !dbg !970
  br i1 %cmp, label %if.then, label %if.end, !dbg !971

if.then:                                          ; preds = %do.end383
  br label %while.end, !dbg !972

if.end:                                           ; preds = %do.end383
  %274 = load i32*, i32** %k, align 8, !dbg !973
  %add.ptr385 = getelementptr inbounds i32, i32* %274, i64 -4, !dbg !973
  store i32* %add.ptr385, i32** %k, align 8, !dbg !973
  %275 = load i32, i32* %s0, align 4, !dbg !974
  %276 = load i32*, i32** %k, align 8, !dbg !974
  %arrayidx386 = getelementptr inbounds i32, i32* %276, i64 2, !dbg !974
  %277 = load i32, i32* %arrayidx386, align 4, !dbg !974
  %and387 = and i32 %275, %277, !dbg !974
  %shl388 = shl i32 %and387, 1, !dbg !974
  %278 = load i32, i32* %s0, align 4, !dbg !974
  %279 = load i32*, i32** %k, align 8, !dbg !974
  %arrayidx389 = getelementptr inbounds i32, i32* %279, i64 2, !dbg !974
  %280 = load i32, i32* %arrayidx389, align 4, !dbg !974
  %and390 = and i32 %278, %280, !dbg !974
  %shr391 = lshr i32 %and390, 31, !dbg !974
  %add392 = add i32 %shl388, %shr391, !dbg !974
  %281 = load i32, i32* %s1, align 4, !dbg !975
  %xor393 = xor i32 %281, %add392, !dbg !975
  store i32 %xor393, i32* %s1, align 4, !dbg !975
  %282 = load i32, i32* %s3, align 4, !dbg !976
  %283 = load i32*, i32** %k, align 8, !dbg !977
  %arrayidx394 = getelementptr inbounds i32, i32* %283, i64 1, !dbg !977
  %284 = load i32, i32* %arrayidx394, align 4, !dbg !977
  %or = or i32 %282, %284, !dbg !978
  %285 = load i32, i32* %s2, align 4, !dbg !979
  %xor395 = xor i32 %285, %or, !dbg !979
  store i32 %xor395, i32* %s2, align 4, !dbg !979
  %286 = load i32, i32* %s1, align 4, !dbg !980
  %287 = load i32*, i32** %k, align 8, !dbg !981
  %arrayidx396 = getelementptr inbounds i32, i32* %287, i64 3, !dbg !981
  %288 = load i32, i32* %arrayidx396, align 4, !dbg !981
  %or397 = or i32 %286, %288, !dbg !982
  %289 = load i32, i32* %s0, align 4, !dbg !983
  %xor398 = xor i32 %289, %or397, !dbg !983
  store i32 %xor398, i32* %s0, align 4, !dbg !983
  %290 = load i32, i32* %s2, align 4, !dbg !984
  %291 = load i32*, i32** %k, align 8, !dbg !984
  %arrayidx399 = getelementptr inbounds i32, i32* %291, i64 0, !dbg !984
  %292 = load i32, i32* %arrayidx399, align 4, !dbg !984
  %and400 = and i32 %290, %292, !dbg !984
  %shl401 = shl i32 %and400, 1, !dbg !984
  %293 = load i32, i32* %s2, align 4, !dbg !984
  %294 = load i32*, i32** %k, align 8, !dbg !984
  %arrayidx402 = getelementptr inbounds i32, i32* %294, i64 0, !dbg !984
  %295 = load i32, i32* %arrayidx402, align 4, !dbg !984
  %and403 = and i32 %293, %295, !dbg !984
  %shr404 = lshr i32 %and403, 31, !dbg !984
  %add405 = add i32 %shl401, %shr404, !dbg !984
  %296 = load i32, i32* %s3, align 4, !dbg !985
  %xor406 = xor i32 %296, %add405, !dbg !985
  store i32 %xor406, i32* %s3, align 4, !dbg !985
  br label %while.body, !dbg !922, !llvm.loop !986

while.end:                                        ; preds = %if.then
  %297 = load i32*, i32** %k, align 8, !dbg !988
  %add.ptr407 = getelementptr inbounds i32, i32* %297, i64 -4, !dbg !988
  store i32* %add.ptr407, i32** %k, align 8, !dbg !988
  %298 = load i32*, i32** %k, align 8, !dbg !989
  %arrayidx408 = getelementptr inbounds i32, i32* %298, i64 0, !dbg !989
  %299 = load i32, i32* %arrayidx408, align 4, !dbg !989
  %300 = load i32, i32* %s2, align 4, !dbg !990
  %xor409 = xor i32 %300, %299, !dbg !990
  store i32 %xor409, i32* %s2, align 4, !dbg !990
  %301 = load i32*, i32** %k, align 8, !dbg !991
  %arrayidx410 = getelementptr inbounds i32, i32* %301, i64 1, !dbg !991
  %302 = load i32, i32* %arrayidx410, align 4, !dbg !991
  %303 = load i32, i32* %s3, align 4, !dbg !992
  %xor411 = xor i32 %303, %302, !dbg !992
  store i32 %xor411, i32* %s3, align 4, !dbg !992
  %304 = load i32*, i32** %k, align 8, !dbg !993
  %arrayidx412 = getelementptr inbounds i32, i32* %304, i64 2, !dbg !993
  %305 = load i32, i32* %arrayidx412, align 4, !dbg !993
  %306 = load i32, i32* %s0, align 4, !dbg !994
  %xor413 = xor i32 %306, %305, !dbg !994
  store i32 %xor413, i32* %s0, align 4, !dbg !994
  %307 = load i32*, i32** %k, align 8, !dbg !995
  %arrayidx414 = getelementptr inbounds i32, i32* %307, i64 3, !dbg !995
  %308 = load i32, i32* %arrayidx414, align 4, !dbg !995
  %309 = load i32, i32* %s1, align 4, !dbg !996
  %xor415 = xor i32 %309, %308, !dbg !996
  store i32 %xor415, i32* %s1, align 4, !dbg !996
  %310 = load i32, i32* %s2, align 4, !dbg !997
  %shr416 = lshr i32 %310, 24, !dbg !997
  %conv417 = trunc i32 %shr416 to i8, !dbg !997
  %311 = load i8*, i8** %plaintext.addr, align 8, !dbg !997
  %arrayidx418 = getelementptr inbounds i8, i8* %311, i64 0, !dbg !997
  store i8 %conv417, i8* %arrayidx418, align 1, !dbg !997
  %312 = load i32, i32* %s2, align 4, !dbg !997
  %shr419 = lshr i32 %312, 16, !dbg !997
  %conv420 = trunc i32 %shr419 to i8, !dbg !997
  %313 = load i8*, i8** %plaintext.addr, align 8, !dbg !997
  %arrayidx421 = getelementptr inbounds i8, i8* %313, i64 1, !dbg !997
  store i8 %conv420, i8* %arrayidx421, align 1, !dbg !997
  %314 = load i32, i32* %s2, align 4, !dbg !997
  %shr422 = lshr i32 %314, 8, !dbg !997
  %conv423 = trunc i32 %shr422 to i8, !dbg !997
  %315 = load i8*, i8** %plaintext.addr, align 8, !dbg !997
  %arrayidx424 = getelementptr inbounds i8, i8* %315, i64 2, !dbg !997
  store i8 %conv423, i8* %arrayidx424, align 1, !dbg !997
  %316 = load i32, i32* %s2, align 4, !dbg !997
  %conv425 = trunc i32 %316 to i8, !dbg !997
  %317 = load i8*, i8** %plaintext.addr, align 8, !dbg !997
  %arrayidx426 = getelementptr inbounds i8, i8* %317, i64 3, !dbg !997
  store i8 %conv425, i8* %arrayidx426, align 1, !dbg !997
  %318 = load i32, i32* %s3, align 4, !dbg !998
  %shr427 = lshr i32 %318, 24, !dbg !998
  %conv428 = trunc i32 %shr427 to i8, !dbg !998
  %319 = load i8*, i8** %plaintext.addr, align 8, !dbg !998
  %add.ptr429 = getelementptr inbounds i8, i8* %319, i64 4, !dbg !998
  %arrayidx430 = getelementptr inbounds i8, i8* %add.ptr429, i64 0, !dbg !998
  store i8 %conv428, i8* %arrayidx430, align 1, !dbg !998
  %320 = load i32, i32* %s3, align 4, !dbg !998
  %shr431 = lshr i32 %320, 16, !dbg !998
  %conv432 = trunc i32 %shr431 to i8, !dbg !998
  %321 = load i8*, i8** %plaintext.addr, align 8, !dbg !998
  %add.ptr433 = getelementptr inbounds i8, i8* %321, i64 4, !dbg !998
  %arrayidx434 = getelementptr inbounds i8, i8* %add.ptr433, i64 1, !dbg !998
  store i8 %conv432, i8* %arrayidx434, align 1, !dbg !998
  %322 = load i32, i32* %s3, align 4, !dbg !998
  %shr435 = lshr i32 %322, 8, !dbg !998
  %conv436 = trunc i32 %shr435 to i8, !dbg !998
  %323 = load i8*, i8** %plaintext.addr, align 8, !dbg !998
  %add.ptr437 = getelementptr inbounds i8, i8* %323, i64 4, !dbg !998
  %arrayidx438 = getelementptr inbounds i8, i8* %add.ptr437, i64 2, !dbg !998
  store i8 %conv436, i8* %arrayidx438, align 1, !dbg !998
  %324 = load i32, i32* %s3, align 4, !dbg !998
  %conv439 = trunc i32 %324 to i8, !dbg !998
  %325 = load i8*, i8** %plaintext.addr, align 8, !dbg !998
  %add.ptr440 = getelementptr inbounds i8, i8* %325, i64 4, !dbg !998
  %arrayidx441 = getelementptr inbounds i8, i8* %add.ptr440, i64 3, !dbg !998
  store i8 %conv439, i8* %arrayidx441, align 1, !dbg !998
  %326 = load i32, i32* %s0, align 4, !dbg !999
  %shr442 = lshr i32 %326, 24, !dbg !999
  %conv443 = trunc i32 %shr442 to i8, !dbg !999
  %327 = load i8*, i8** %plaintext.addr, align 8, !dbg !999
  %add.ptr444 = getelementptr inbounds i8, i8* %327, i64 8, !dbg !999
  %arrayidx445 = getelementptr inbounds i8, i8* %add.ptr444, i64 0, !dbg !999
  store i8 %conv443, i8* %arrayidx445, align 1, !dbg !999
  %328 = load i32, i32* %s0, align 4, !dbg !999
  %shr446 = lshr i32 %328, 16, !dbg !999
  %conv447 = trunc i32 %shr446 to i8, !dbg !999
  %329 = load i8*, i8** %plaintext.addr, align 8, !dbg !999
  %add.ptr448 = getelementptr inbounds i8, i8* %329, i64 8, !dbg !999
  %arrayidx449 = getelementptr inbounds i8, i8* %add.ptr448, i64 1, !dbg !999
  store i8 %conv447, i8* %arrayidx449, align 1, !dbg !999
  %330 = load i32, i32* %s0, align 4, !dbg !999
  %shr450 = lshr i32 %330, 8, !dbg !999
  %conv451 = trunc i32 %shr450 to i8, !dbg !999
  %331 = load i8*, i8** %plaintext.addr, align 8, !dbg !999
  %add.ptr452 = getelementptr inbounds i8, i8* %331, i64 8, !dbg !999
  %arrayidx453 = getelementptr inbounds i8, i8* %add.ptr452, i64 2, !dbg !999
  store i8 %conv451, i8* %arrayidx453, align 1, !dbg !999
  %332 = load i32, i32* %s0, align 4, !dbg !999
  %conv454 = trunc i32 %332 to i8, !dbg !999
  %333 = load i8*, i8** %plaintext.addr, align 8, !dbg !999
  %add.ptr455 = getelementptr inbounds i8, i8* %333, i64 8, !dbg !999
  %arrayidx456 = getelementptr inbounds i8, i8* %add.ptr455, i64 3, !dbg !999
  store i8 %conv454, i8* %arrayidx456, align 1, !dbg !999
  %334 = load i32, i32* %s1, align 4, !dbg !1000
  %shr457 = lshr i32 %334, 24, !dbg !1000
  %conv458 = trunc i32 %shr457 to i8, !dbg !1000
  %335 = load i8*, i8** %plaintext.addr, align 8, !dbg !1000
  %add.ptr459 = getelementptr inbounds i8, i8* %335, i64 12, !dbg !1000
  %arrayidx460 = getelementptr inbounds i8, i8* %add.ptr459, i64 0, !dbg !1000
  store i8 %conv458, i8* %arrayidx460, align 1, !dbg !1000
  %336 = load i32, i32* %s1, align 4, !dbg !1000
  %shr461 = lshr i32 %336, 16, !dbg !1000
  %conv462 = trunc i32 %shr461 to i8, !dbg !1000
  %337 = load i8*, i8** %plaintext.addr, align 8, !dbg !1000
  %add.ptr463 = getelementptr inbounds i8, i8* %337, i64 12, !dbg !1000
  %arrayidx464 = getelementptr inbounds i8, i8* %add.ptr463, i64 1, !dbg !1000
  store i8 %conv462, i8* %arrayidx464, align 1, !dbg !1000
  %338 = load i32, i32* %s1, align 4, !dbg !1000
  %shr465 = lshr i32 %338, 8, !dbg !1000
  %conv466 = trunc i32 %shr465 to i8, !dbg !1000
  %339 = load i8*, i8** %plaintext.addr, align 8, !dbg !1000
  %add.ptr467 = getelementptr inbounds i8, i8* %339, i64 12, !dbg !1000
  %arrayidx468 = getelementptr inbounds i8, i8* %add.ptr467, i64 2, !dbg !1000
  store i8 %conv466, i8* %arrayidx468, align 1, !dbg !1000
  %340 = load i32, i32* %s1, align 4, !dbg !1000
  %conv469 = trunc i32 %340 to i8, !dbg !1000
  %341 = load i8*, i8** %plaintext.addr, align 8, !dbg !1000
  %add.ptr470 = getelementptr inbounds i8, i8* %341, i64 12, !dbg !1000
  %arrayidx471 = getelementptr inbounds i8, i8* %add.ptr470, i64 3, !dbg !1000
  store i8 %conv469, i8* %arrayidx471, align 1, !dbg !1000
  ret void, !dbg !1001
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @Camellia_DecryptBlock(i32 %keyBitLength, i8* %plaintext, i32* %keyTable, i8* %ciphertext) #0 !dbg !1002 {
entry:
  %grandRounds.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %grandRounds.addr.i, metadata !879, metadata !DIExpression()), !dbg !1003
  %ciphertext.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ciphertext.addr.i, metadata !881, metadata !DIExpression()), !dbg !1005
  %keyTable.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %keyTable.addr.i, metadata !883, metadata !DIExpression()), !dbg !1006
  %plaintext.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %plaintext.addr.i, metadata !885, metadata !DIExpression()), !dbg !1007
  %s0.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s0.i, metadata !887, metadata !DIExpression()), !dbg !1008
  %s1.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s1.i, metadata !889, metadata !DIExpression()), !dbg !1009
  %s2.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s2.i, metadata !891, metadata !DIExpression()), !dbg !1010
  %s3.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s3.i, metadata !893, metadata !DIExpression()), !dbg !1011
  %k.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %k.i, metadata !895, metadata !DIExpression()), !dbg !1012
  %kend.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %kend.i, metadata !902, metadata !DIExpression()), !dbg !1013
  %_t0.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0.i, metadata !926, metadata !DIExpression()), !dbg !1014
  %_t1.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1.i, metadata !929, metadata !DIExpression()), !dbg !1014
  %_t2.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2.i, metadata !930, metadata !DIExpression()), !dbg !1014
  %_t3.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3.i, metadata !931, metadata !DIExpression()), !dbg !1014
  %_t0120.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0120.i, metadata !933, metadata !DIExpression()), !dbg !1015
  %_t1121.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1121.i, metadata !936, metadata !DIExpression()), !dbg !1015
  %_t2122.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2122.i, metadata !937, metadata !DIExpression()), !dbg !1015
  %_t3123.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3123.i, metadata !938, metadata !DIExpression()), !dbg !1015
  %_t0173.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0173.i, metadata !940, metadata !DIExpression()), !dbg !1016
  %_t1174.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1174.i, metadata !943, metadata !DIExpression()), !dbg !1016
  %_t2175.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2175.i, metadata !944, metadata !DIExpression()), !dbg !1016
  %_t3176.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3176.i, metadata !945, metadata !DIExpression()), !dbg !1016
  %_t0226.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0226.i, metadata !947, metadata !DIExpression()), !dbg !1017
  %_t1227.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1227.i, metadata !950, metadata !DIExpression()), !dbg !1017
  %_t2228.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2228.i, metadata !951, metadata !DIExpression()), !dbg !1017
  %_t3229.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3229.i, metadata !952, metadata !DIExpression()), !dbg !1017
  %_t0279.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0279.i, metadata !954, metadata !DIExpression()), !dbg !1018
  %_t1280.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1280.i, metadata !957, metadata !DIExpression()), !dbg !1018
  %_t2281.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2281.i, metadata !958, metadata !DIExpression()), !dbg !1018
  %_t3282.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3282.i, metadata !959, metadata !DIExpression()), !dbg !1018
  %_t0332.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0332.i, metadata !961, metadata !DIExpression()), !dbg !1019
  %_t1333.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1333.i, metadata !964, metadata !DIExpression()), !dbg !1019
  %_t2334.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2334.i, metadata !965, metadata !DIExpression()), !dbg !1019
  %_t3335.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3335.i, metadata !966, metadata !DIExpression()), !dbg !1019
  %keyBitLength.addr = alloca i32, align 4
  %plaintext.addr = alloca i8*, align 8
  %keyTable.addr = alloca i32*, align 8
  %ciphertext.addr = alloca i8*, align 8
  store i32 %keyBitLength, i32* %keyBitLength.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %keyBitLength.addr, metadata !1020, metadata !DIExpression()), !dbg !1021
  store i8* %plaintext, i8** %plaintext.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %plaintext.addr, metadata !1022, metadata !DIExpression()), !dbg !1023
  store i32* %keyTable, i32** %keyTable.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %keyTable.addr, metadata !1024, metadata !DIExpression()), !dbg !1025
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ciphertext.addr, metadata !1026, metadata !DIExpression()), !dbg !1027
  %0 = load i32, i32* %keyBitLength.addr, align 4, !dbg !1028
  %cmp = icmp eq i32 %0, 128, !dbg !1029
  %1 = zext i1 %cmp to i64, !dbg !1028
  %cond = select i1 %cmp, i32 3, i32 4, !dbg !1028
  %2 = load i8*, i8** %plaintext.addr, align 8, !dbg !1030
  %3 = load i32*, i32** %keyTable.addr, align 8, !dbg !1031
  %4 = load i8*, i8** %ciphertext.addr, align 8, !dbg !1032
  store i32 %cond, i32* %grandRounds.addr.i, align 4
  store i8* %2, i8** %ciphertext.addr.i, align 8
  store i32* %3, i32** %keyTable.addr.i, align 8
  store i8* %4, i8** %plaintext.addr.i, align 8
  %k1.i = bitcast i32** %k.i to i8*, !dbg !1033
  call void @llvm.var.annotation(i8* %k1.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 455) #6, !dbg !1033
  %5 = load i32*, i32** %keyTable.addr.i, align 8, !dbg !1034
  %6 = load i32, i32* %grandRounds.addr.i, align 4, !dbg !1035
  %mul.i = mul nsw i32 %6, 16, !dbg !1036
  %idx.ext.i = sext i32 %mul.i to i64, !dbg !1037
  %add.ptr.i = getelementptr inbounds i32, i32* %5, i64 %idx.ext.i, !dbg !1037
  store i32* %add.ptr.i, i32** %k.i, align 8, !dbg !1012
  %7 = load i32*, i32** %keyTable.addr.i, align 8, !dbg !1038
  %add.ptr2.i = getelementptr inbounds i32, i32* %7, i64 4, !dbg !1039
  store i32* %add.ptr2.i, i32** %kend.i, align 8, !dbg !1013
  %8 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1040
  %9 = load i8, i8* %8, align 1, !dbg !1040
  %conv.i = zext i8 %9 to i32, !dbg !1040
  %shl.i = shl i32 %conv.i, 24, !dbg !1040
  %10 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1040
  %arrayidx3.i = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1040
  %11 = load i8, i8* %arrayidx3.i, align 1, !dbg !1040
  %conv4.i = zext i8 %11 to i32, !dbg !1040
  %shl5.i = shl i32 %conv4.i, 16, !dbg !1040
  %xor.i = xor i32 %shl.i, %shl5.i, !dbg !1040
  %12 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1040
  %arrayidx6.i = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1040
  %13 = load i8, i8* %arrayidx6.i, align 1, !dbg !1040
  %conv7.i = zext i8 %13 to i32, !dbg !1040
  %shl8.i = shl i32 %conv7.i, 8, !dbg !1040
  %xor9.i = xor i32 %xor.i, %shl8.i, !dbg !1040
  %14 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1040
  %arrayidx10.i = getelementptr inbounds i8, i8* %14, i64 3, !dbg !1040
  %15 = load i8, i8* %arrayidx10.i, align 1, !dbg !1040
  %conv11.i = zext i8 %15 to i32, !dbg !1040
  %xor12.i = xor i32 %xor9.i, %conv11.i, !dbg !1040
  %16 = load i32*, i32** %k.i, align 8, !dbg !1041
  %17 = load i32, i32* %16, align 4, !dbg !1041
  %xor14.i = xor i32 %xor12.i, %17, !dbg !1042
  store i32 %xor14.i, i32* %s0.i, align 4, !dbg !1043
  %18 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1044
  %add.ptr15.i = getelementptr inbounds i8, i8* %18, i64 4, !dbg !1044
  %19 = load i8, i8* %add.ptr15.i, align 1, !dbg !1044
  %conv17.i = zext i8 %19 to i32, !dbg !1044
  %shl18.i = shl i32 %conv17.i, 24, !dbg !1044
  %20 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1044
  %add.ptr19.i = getelementptr inbounds i8, i8* %20, i64 4, !dbg !1044
  %arrayidx20.i = getelementptr inbounds i8, i8* %add.ptr19.i, i64 1, !dbg !1044
  %21 = load i8, i8* %arrayidx20.i, align 1, !dbg !1044
  %conv21.i = zext i8 %21 to i32, !dbg !1044
  %shl22.i = shl i32 %conv21.i, 16, !dbg !1044
  %xor23.i = xor i32 %shl18.i, %shl22.i, !dbg !1044
  %22 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1044
  %add.ptr24.i = getelementptr inbounds i8, i8* %22, i64 4, !dbg !1044
  %arrayidx25.i = getelementptr inbounds i8, i8* %add.ptr24.i, i64 2, !dbg !1044
  %23 = load i8, i8* %arrayidx25.i, align 1, !dbg !1044
  %conv26.i = zext i8 %23 to i32, !dbg !1044
  %shl27.i = shl i32 %conv26.i, 8, !dbg !1044
  %xor28.i = xor i32 %xor23.i, %shl27.i, !dbg !1044
  %24 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1044
  %add.ptr29.i = getelementptr inbounds i8, i8* %24, i64 4, !dbg !1044
  %arrayidx30.i = getelementptr inbounds i8, i8* %add.ptr29.i, i64 3, !dbg !1044
  %25 = load i8, i8* %arrayidx30.i, align 1, !dbg !1044
  %conv31.i = zext i8 %25 to i32, !dbg !1044
  %xor32.i = xor i32 %xor28.i, %conv31.i, !dbg !1044
  %26 = load i32*, i32** %k.i, align 8, !dbg !1045
  %arrayidx33.i = getelementptr inbounds i32, i32* %26, i64 1, !dbg !1045
  %27 = load i32, i32* %arrayidx33.i, align 4, !dbg !1045
  %xor34.i = xor i32 %xor32.i, %27, !dbg !1046
  store i32 %xor34.i, i32* %s1.i, align 4, !dbg !1047
  %28 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1048
  %add.ptr35.i = getelementptr inbounds i8, i8* %28, i64 8, !dbg !1048
  %29 = load i8, i8* %add.ptr35.i, align 1, !dbg !1048
  %conv37.i = zext i8 %29 to i32, !dbg !1048
  %shl38.i = shl i32 %conv37.i, 24, !dbg !1048
  %30 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1048
  %add.ptr39.i = getelementptr inbounds i8, i8* %30, i64 8, !dbg !1048
  %arrayidx40.i = getelementptr inbounds i8, i8* %add.ptr39.i, i64 1, !dbg !1048
  %31 = load i8, i8* %arrayidx40.i, align 1, !dbg !1048
  %conv41.i = zext i8 %31 to i32, !dbg !1048
  %shl42.i = shl i32 %conv41.i, 16, !dbg !1048
  %xor43.i = xor i32 %shl38.i, %shl42.i, !dbg !1048
  %32 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1048
  %add.ptr44.i = getelementptr inbounds i8, i8* %32, i64 8, !dbg !1048
  %arrayidx45.i = getelementptr inbounds i8, i8* %add.ptr44.i, i64 2, !dbg !1048
  %33 = load i8, i8* %arrayidx45.i, align 1, !dbg !1048
  %conv46.i = zext i8 %33 to i32, !dbg !1048
  %shl47.i = shl i32 %conv46.i, 8, !dbg !1048
  %xor48.i = xor i32 %xor43.i, %shl47.i, !dbg !1048
  %34 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1048
  %add.ptr49.i = getelementptr inbounds i8, i8* %34, i64 8, !dbg !1048
  %arrayidx50.i = getelementptr inbounds i8, i8* %add.ptr49.i, i64 3, !dbg !1048
  %35 = load i8, i8* %arrayidx50.i, align 1, !dbg !1048
  %conv51.i = zext i8 %35 to i32, !dbg !1048
  %xor52.i = xor i32 %xor48.i, %conv51.i, !dbg !1048
  %36 = load i32*, i32** %k.i, align 8, !dbg !1049
  %arrayidx53.i = getelementptr inbounds i32, i32* %36, i64 2, !dbg !1049
  %37 = load i32, i32* %arrayidx53.i, align 4, !dbg !1049
  %xor54.i = xor i32 %xor52.i, %37, !dbg !1050
  store i32 %xor54.i, i32* %s2.i, align 4, !dbg !1051
  %38 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1052
  %add.ptr55.i = getelementptr inbounds i8, i8* %38, i64 12, !dbg !1052
  %39 = load i8, i8* %add.ptr55.i, align 1, !dbg !1052
  %conv57.i = zext i8 %39 to i32, !dbg !1052
  %shl58.i = shl i32 %conv57.i, 24, !dbg !1052
  %40 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1052
  %add.ptr59.i = getelementptr inbounds i8, i8* %40, i64 12, !dbg !1052
  %arrayidx60.i = getelementptr inbounds i8, i8* %add.ptr59.i, i64 1, !dbg !1052
  %41 = load i8, i8* %arrayidx60.i, align 1, !dbg !1052
  %conv61.i = zext i8 %41 to i32, !dbg !1052
  %shl62.i = shl i32 %conv61.i, 16, !dbg !1052
  %xor63.i = xor i32 %shl58.i, %shl62.i, !dbg !1052
  %42 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1052
  %add.ptr64.i = getelementptr inbounds i8, i8* %42, i64 12, !dbg !1052
  %arrayidx65.i = getelementptr inbounds i8, i8* %add.ptr64.i, i64 2, !dbg !1052
  %43 = load i8, i8* %arrayidx65.i, align 1, !dbg !1052
  %conv66.i = zext i8 %43 to i32, !dbg !1052
  %shl67.i = shl i32 %conv66.i, 8, !dbg !1052
  %xor68.i = xor i32 %xor63.i, %shl67.i, !dbg !1052
  %44 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1052
  %add.ptr69.i = getelementptr inbounds i8, i8* %44, i64 12, !dbg !1052
  %arrayidx70.i = getelementptr inbounds i8, i8* %add.ptr69.i, i64 3, !dbg !1052
  %45 = load i8, i8* %arrayidx70.i, align 1, !dbg !1052
  %conv71.i = zext i8 %45 to i32, !dbg !1052
  %xor72.i = xor i32 %xor68.i, %conv71.i, !dbg !1052
  %46 = load i32*, i32** %k.i, align 8, !dbg !1053
  %arrayidx73.i = getelementptr inbounds i32, i32* %46, i64 3, !dbg !1053
  %47 = load i32, i32* %arrayidx73.i, align 4, !dbg !1053
  %xor74.i = xor i32 %xor72.i, %47, !dbg !1054
  store i32 %xor74.i, i32* %s3.i, align 4, !dbg !1055
  br label %while.body.i, !dbg !1056

while.body.i:                                     ; preds = %if.end.i, %entry
  %48 = load i32*, i32** %k.i, align 8, !dbg !1057
  %add.ptr75.i = getelementptr inbounds i32, i32* %48, i64 -12, !dbg !1057
  store i32* %add.ptr75.i, i32** %k.i, align 8, !dbg !1057
  %49 = load i32, i32* %s0.i, align 4, !dbg !1014
  %50 = load i32*, i32** %k.i, align 8, !dbg !1014
  %add.ptr76.i = getelementptr inbounds i32, i32* %50, i64 10, !dbg !1014
  %51 = load i32, i32* %add.ptr76.i, align 4, !dbg !1014
  %xor78.i = xor i32 %49, %51, !dbg !1014
  store i32 %xor78.i, i32* %_t0.i, align 4, !dbg !1014
  %52 = load i32, i32* %_t0.i, align 4, !dbg !1014
  %and.i = and i32 %52, 255, !dbg !1014
  %idxprom.i = zext i32 %and.i to i64, !dbg !1014
  %arrayidx79.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom.i, !dbg !1014
  %53 = load i32, i32* %arrayidx79.i, align 4, !dbg !1014
  store i32 %53, i32* %_t3.i, align 4, !dbg !1014
  %54 = load i32, i32* %s1.i, align 4, !dbg !1014
  %55 = load i32*, i32** %k.i, align 8, !dbg !1014
  %add.ptr80.i = getelementptr inbounds i32, i32* %55, i64 10, !dbg !1014
  %arrayidx81.i = getelementptr inbounds i32, i32* %add.ptr80.i, i64 1, !dbg !1014
  %56 = load i32, i32* %arrayidx81.i, align 4, !dbg !1014
  %xor82.i = xor i32 %54, %56, !dbg !1014
  store i32 %xor82.i, i32* %_t1.i, align 4, !dbg !1014
  %57 = load i32, i32* %_t0.i, align 4, !dbg !1014
  %shr.i = lshr i32 %57, 8, !dbg !1014
  %and83.i = and i32 %shr.i, 255, !dbg !1014
  %idxprom84.i = zext i32 %and83.i to i64, !dbg !1014
  %arrayidx85.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom84.i, !dbg !1014
  %58 = load i32, i32* %arrayidx85.i, align 4, !dbg !1014
  %59 = load i32, i32* %_t3.i, align 4, !dbg !1014
  %xor86.i = xor i32 %59, %58, !dbg !1014
  store i32 %xor86.i, i32* %_t3.i, align 4, !dbg !1014
  %60 = load i32, i32* %_t1.i, align 4, !dbg !1014
  %and87.i = and i32 %60, 255, !dbg !1014
  %idxprom88.i = zext i32 %and87.i to i64, !dbg !1014
  %arrayidx89.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom88.i, !dbg !1014
  %61 = load i32, i32* %arrayidx89.i, align 4, !dbg !1014
  store i32 %61, i32* %_t2.i, align 4, !dbg !1014
  %62 = load i32, i32* %_t0.i, align 4, !dbg !1014
  %shr90.i = lshr i32 %62, 16, !dbg !1014
  %and91.i = and i32 %shr90.i, 255, !dbg !1014
  %idxprom92.i = zext i32 %and91.i to i64, !dbg !1014
  %arrayidx93.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom92.i, !dbg !1014
  %63 = load i32, i32* %arrayidx93.i, align 4, !dbg !1014
  %64 = load i32, i32* %_t3.i, align 4, !dbg !1014
  %xor94.i = xor i32 %64, %63, !dbg !1014
  store i32 %xor94.i, i32* %_t3.i, align 4, !dbg !1014
  %65 = load i32, i32* %_t1.i, align 4, !dbg !1014
  %shr95.i = lshr i32 %65, 8, !dbg !1014
  %and96.i = and i32 %shr95.i, 255, !dbg !1014
  %idxprom97.i = zext i32 %and96.i to i64, !dbg !1014
  %arrayidx98.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom97.i, !dbg !1014
  %66 = load i32, i32* %arrayidx98.i, align 4, !dbg !1014
  %67 = load i32, i32* %_t2.i, align 4, !dbg !1014
  %xor99.i = xor i32 %67, %66, !dbg !1014
  store i32 %xor99.i, i32* %_t2.i, align 4, !dbg !1014
  %68 = load i32, i32* %_t0.i, align 4, !dbg !1014
  %shr100.i = lshr i32 %68, 24, !dbg !1014
  %idxprom101.i = zext i32 %shr100.i to i64, !dbg !1014
  %arrayidx102.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom101.i, !dbg !1014
  %69 = load i32, i32* %arrayidx102.i, align 4, !dbg !1014
  %70 = load i32, i32* %_t3.i, align 4, !dbg !1014
  %xor103.i = xor i32 %70, %69, !dbg !1014
  store i32 %xor103.i, i32* %_t3.i, align 4, !dbg !1014
  %71 = load i32, i32* %_t3.i, align 4, !dbg !1014
  %72 = load i32, i32* %_t2.i, align 4, !dbg !1014
  %xor104.i = xor i32 %72, %71, !dbg !1014
  store i32 %xor104.i, i32* %_t2.i, align 4, !dbg !1014
  %73 = load i32, i32* %_t3.i, align 4, !dbg !1014
  %shr105.i = lshr i32 %73, 8, !dbg !1014
  %74 = load i32, i32* %_t3.i, align 4, !dbg !1014
  %shl106.i = shl i32 %74, 24, !dbg !1014
  %add.i = add i32 %shr105.i, %shl106.i, !dbg !1014
  store i32 %add.i, i32* %_t3.i, align 4, !dbg !1014
  %75 = load i32, i32* %_t1.i, align 4, !dbg !1014
  %shr107.i = lshr i32 %75, 16, !dbg !1014
  %and108.i = and i32 %shr107.i, 255, !dbg !1014
  %idxprom109.i = zext i32 %and108.i to i64, !dbg !1014
  %arrayidx110.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom109.i, !dbg !1014
  %76 = load i32, i32* %arrayidx110.i, align 4, !dbg !1014
  %77 = load i32, i32* %_t2.i, align 4, !dbg !1014
  %xor111.i = xor i32 %77, %76, !dbg !1014
  store i32 %xor111.i, i32* %_t2.i, align 4, !dbg !1014
  %78 = load i32, i32* %_t3.i, align 4, !dbg !1014
  %79 = load i32, i32* %s3.i, align 4, !dbg !1014
  %xor112.i = xor i32 %79, %78, !dbg !1014
  store i32 %xor112.i, i32* %s3.i, align 4, !dbg !1014
  %80 = load i32, i32* %_t1.i, align 4, !dbg !1014
  %shr113.i = lshr i32 %80, 24, !dbg !1014
  %idxprom114.i = zext i32 %shr113.i to i64, !dbg !1014
  %arrayidx115.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom114.i, !dbg !1014
  %81 = load i32, i32* %arrayidx115.i, align 4, !dbg !1014
  %82 = load i32, i32* %_t2.i, align 4, !dbg !1014
  %xor116.i = xor i32 %82, %81, !dbg !1014
  store i32 %xor116.i, i32* %_t2.i, align 4, !dbg !1014
  %83 = load i32, i32* %_t2.i, align 4, !dbg !1014
  %84 = load i32, i32* %s2.i, align 4, !dbg !1014
  %xor117.i = xor i32 %84, %83, !dbg !1014
  store i32 %xor117.i, i32* %s2.i, align 4, !dbg !1014
  %85 = load i32, i32* %_t2.i, align 4, !dbg !1014
  %86 = load i32, i32* %s3.i, align 4, !dbg !1014
  %xor118.i = xor i32 %86, %85, !dbg !1014
  store i32 %xor118.i, i32* %s3.i, align 4, !dbg !1014
  %87 = load i32, i32* %s2.i, align 4, !dbg !1015
  %88 = load i32*, i32** %k.i, align 8, !dbg !1015
  %add.ptr124.i = getelementptr inbounds i32, i32* %88, i64 8, !dbg !1015
  %89 = load i32, i32* %add.ptr124.i, align 4, !dbg !1015
  %xor126.i = xor i32 %87, %89, !dbg !1015
  store i32 %xor126.i, i32* %_t0120.i, align 4, !dbg !1015
  %90 = load i32, i32* %_t0120.i, align 4, !dbg !1015
  %and127.i = and i32 %90, 255, !dbg !1015
  %idxprom128.i = zext i32 %and127.i to i64, !dbg !1015
  %arrayidx129.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom128.i, !dbg !1015
  %91 = load i32, i32* %arrayidx129.i, align 4, !dbg !1015
  store i32 %91, i32* %_t3123.i, align 4, !dbg !1015
  %92 = load i32, i32* %s3.i, align 4, !dbg !1015
  %93 = load i32*, i32** %k.i, align 8, !dbg !1015
  %add.ptr130.i = getelementptr inbounds i32, i32* %93, i64 8, !dbg !1015
  %arrayidx131.i = getelementptr inbounds i32, i32* %add.ptr130.i, i64 1, !dbg !1015
  %94 = load i32, i32* %arrayidx131.i, align 4, !dbg !1015
  %xor132.i = xor i32 %92, %94, !dbg !1015
  store i32 %xor132.i, i32* %_t1121.i, align 4, !dbg !1015
  %95 = load i32, i32* %_t0120.i, align 4, !dbg !1015
  %shr133.i = lshr i32 %95, 8, !dbg !1015
  %and134.i = and i32 %shr133.i, 255, !dbg !1015
  %idxprom135.i = zext i32 %and134.i to i64, !dbg !1015
  %arrayidx136.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom135.i, !dbg !1015
  %96 = load i32, i32* %arrayidx136.i, align 4, !dbg !1015
  %97 = load i32, i32* %_t3123.i, align 4, !dbg !1015
  %xor137.i = xor i32 %97, %96, !dbg !1015
  store i32 %xor137.i, i32* %_t3123.i, align 4, !dbg !1015
  %98 = load i32, i32* %_t1121.i, align 4, !dbg !1015
  %and138.i = and i32 %98, 255, !dbg !1015
  %idxprom139.i = zext i32 %and138.i to i64, !dbg !1015
  %arrayidx140.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom139.i, !dbg !1015
  %99 = load i32, i32* %arrayidx140.i, align 4, !dbg !1015
  store i32 %99, i32* %_t2122.i, align 4, !dbg !1015
  %100 = load i32, i32* %_t0120.i, align 4, !dbg !1015
  %shr141.i = lshr i32 %100, 16, !dbg !1015
  %and142.i = and i32 %shr141.i, 255, !dbg !1015
  %idxprom143.i = zext i32 %and142.i to i64, !dbg !1015
  %arrayidx144.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom143.i, !dbg !1015
  %101 = load i32, i32* %arrayidx144.i, align 4, !dbg !1015
  %102 = load i32, i32* %_t3123.i, align 4, !dbg !1015
  %xor145.i = xor i32 %102, %101, !dbg !1015
  store i32 %xor145.i, i32* %_t3123.i, align 4, !dbg !1015
  %103 = load i32, i32* %_t1121.i, align 4, !dbg !1015
  %shr146.i = lshr i32 %103, 8, !dbg !1015
  %and147.i = and i32 %shr146.i, 255, !dbg !1015
  %idxprom148.i = zext i32 %and147.i to i64, !dbg !1015
  %arrayidx149.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom148.i, !dbg !1015
  %104 = load i32, i32* %arrayidx149.i, align 4, !dbg !1015
  %105 = load i32, i32* %_t2122.i, align 4, !dbg !1015
  %xor150.i = xor i32 %105, %104, !dbg !1015
  store i32 %xor150.i, i32* %_t2122.i, align 4, !dbg !1015
  %106 = load i32, i32* %_t0120.i, align 4, !dbg !1015
  %shr151.i = lshr i32 %106, 24, !dbg !1015
  %idxprom152.i = zext i32 %shr151.i to i64, !dbg !1015
  %arrayidx153.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom152.i, !dbg !1015
  %107 = load i32, i32* %arrayidx153.i, align 4, !dbg !1015
  %108 = load i32, i32* %_t3123.i, align 4, !dbg !1015
  %xor154.i = xor i32 %108, %107, !dbg !1015
  store i32 %xor154.i, i32* %_t3123.i, align 4, !dbg !1015
  %109 = load i32, i32* %_t3123.i, align 4, !dbg !1015
  %110 = load i32, i32* %_t2122.i, align 4, !dbg !1015
  %xor155.i = xor i32 %110, %109, !dbg !1015
  store i32 %xor155.i, i32* %_t2122.i, align 4, !dbg !1015
  %111 = load i32, i32* %_t3123.i, align 4, !dbg !1015
  %shr156.i = lshr i32 %111, 8, !dbg !1015
  %112 = load i32, i32* %_t3123.i, align 4, !dbg !1015
  %shl157.i = shl i32 %112, 24, !dbg !1015
  %add158.i = add i32 %shr156.i, %shl157.i, !dbg !1015
  store i32 %add158.i, i32* %_t3123.i, align 4, !dbg !1015
  %113 = load i32, i32* %_t1121.i, align 4, !dbg !1015
  %shr159.i = lshr i32 %113, 16, !dbg !1015
  %and160.i = and i32 %shr159.i, 255, !dbg !1015
  %idxprom161.i = zext i32 %and160.i to i64, !dbg !1015
  %arrayidx162.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom161.i, !dbg !1015
  %114 = load i32, i32* %arrayidx162.i, align 4, !dbg !1015
  %115 = load i32, i32* %_t2122.i, align 4, !dbg !1015
  %xor163.i = xor i32 %115, %114, !dbg !1015
  store i32 %xor163.i, i32* %_t2122.i, align 4, !dbg !1015
  %116 = load i32, i32* %_t3123.i, align 4, !dbg !1015
  %117 = load i32, i32* %s1.i, align 4, !dbg !1015
  %xor164.i = xor i32 %117, %116, !dbg !1015
  store i32 %xor164.i, i32* %s1.i, align 4, !dbg !1015
  %118 = load i32, i32* %_t1121.i, align 4, !dbg !1015
  %shr165.i = lshr i32 %118, 24, !dbg !1015
  %idxprom166.i = zext i32 %shr165.i to i64, !dbg !1015
  %arrayidx167.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom166.i, !dbg !1015
  %119 = load i32, i32* %arrayidx167.i, align 4, !dbg !1015
  %120 = load i32, i32* %_t2122.i, align 4, !dbg !1015
  %xor168.i = xor i32 %120, %119, !dbg !1015
  store i32 %xor168.i, i32* %_t2122.i, align 4, !dbg !1015
  %121 = load i32, i32* %_t2122.i, align 4, !dbg !1015
  %122 = load i32, i32* %s0.i, align 4, !dbg !1015
  %xor169.i = xor i32 %122, %121, !dbg !1015
  store i32 %xor169.i, i32* %s0.i, align 4, !dbg !1015
  %123 = load i32, i32* %_t2122.i, align 4, !dbg !1015
  %124 = load i32, i32* %s1.i, align 4, !dbg !1015
  %xor170.i = xor i32 %124, %123, !dbg !1015
  store i32 %xor170.i, i32* %s1.i, align 4, !dbg !1015
  %125 = load i32, i32* %s0.i, align 4, !dbg !1016
  %126 = load i32*, i32** %k.i, align 8, !dbg !1016
  %add.ptr177.i = getelementptr inbounds i32, i32* %126, i64 6, !dbg !1016
  %127 = load i32, i32* %add.ptr177.i, align 4, !dbg !1016
  %xor179.i = xor i32 %125, %127, !dbg !1016
  store i32 %xor179.i, i32* %_t0173.i, align 4, !dbg !1016
  %128 = load i32, i32* %_t0173.i, align 4, !dbg !1016
  %and180.i = and i32 %128, 255, !dbg !1016
  %idxprom181.i = zext i32 %and180.i to i64, !dbg !1016
  %arrayidx182.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom181.i, !dbg !1016
  %129 = load i32, i32* %arrayidx182.i, align 4, !dbg !1016
  store i32 %129, i32* %_t3176.i, align 4, !dbg !1016
  %130 = load i32, i32* %s1.i, align 4, !dbg !1016
  %131 = load i32*, i32** %k.i, align 8, !dbg !1016
  %add.ptr183.i = getelementptr inbounds i32, i32* %131, i64 6, !dbg !1016
  %arrayidx184.i = getelementptr inbounds i32, i32* %add.ptr183.i, i64 1, !dbg !1016
  %132 = load i32, i32* %arrayidx184.i, align 4, !dbg !1016
  %xor185.i = xor i32 %130, %132, !dbg !1016
  store i32 %xor185.i, i32* %_t1174.i, align 4, !dbg !1016
  %133 = load i32, i32* %_t0173.i, align 4, !dbg !1016
  %shr186.i = lshr i32 %133, 8, !dbg !1016
  %and187.i = and i32 %shr186.i, 255, !dbg !1016
  %idxprom188.i = zext i32 %and187.i to i64, !dbg !1016
  %arrayidx189.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom188.i, !dbg !1016
  %134 = load i32, i32* %arrayidx189.i, align 4, !dbg !1016
  %135 = load i32, i32* %_t3176.i, align 4, !dbg !1016
  %xor190.i = xor i32 %135, %134, !dbg !1016
  store i32 %xor190.i, i32* %_t3176.i, align 4, !dbg !1016
  %136 = load i32, i32* %_t1174.i, align 4, !dbg !1016
  %and191.i = and i32 %136, 255, !dbg !1016
  %idxprom192.i = zext i32 %and191.i to i64, !dbg !1016
  %arrayidx193.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom192.i, !dbg !1016
  %137 = load i32, i32* %arrayidx193.i, align 4, !dbg !1016
  store i32 %137, i32* %_t2175.i, align 4, !dbg !1016
  %138 = load i32, i32* %_t0173.i, align 4, !dbg !1016
  %shr194.i = lshr i32 %138, 16, !dbg !1016
  %and195.i = and i32 %shr194.i, 255, !dbg !1016
  %idxprom196.i = zext i32 %and195.i to i64, !dbg !1016
  %arrayidx197.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom196.i, !dbg !1016
  %139 = load i32, i32* %arrayidx197.i, align 4, !dbg !1016
  %140 = load i32, i32* %_t3176.i, align 4, !dbg !1016
  %xor198.i = xor i32 %140, %139, !dbg !1016
  store i32 %xor198.i, i32* %_t3176.i, align 4, !dbg !1016
  %141 = load i32, i32* %_t1174.i, align 4, !dbg !1016
  %shr199.i = lshr i32 %141, 8, !dbg !1016
  %and200.i = and i32 %shr199.i, 255, !dbg !1016
  %idxprom201.i = zext i32 %and200.i to i64, !dbg !1016
  %arrayidx202.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom201.i, !dbg !1016
  %142 = load i32, i32* %arrayidx202.i, align 4, !dbg !1016
  %143 = load i32, i32* %_t2175.i, align 4, !dbg !1016
  %xor203.i = xor i32 %143, %142, !dbg !1016
  store i32 %xor203.i, i32* %_t2175.i, align 4, !dbg !1016
  %144 = load i32, i32* %_t0173.i, align 4, !dbg !1016
  %shr204.i = lshr i32 %144, 24, !dbg !1016
  %idxprom205.i = zext i32 %shr204.i to i64, !dbg !1016
  %arrayidx206.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom205.i, !dbg !1016
  %145 = load i32, i32* %arrayidx206.i, align 4, !dbg !1016
  %146 = load i32, i32* %_t3176.i, align 4, !dbg !1016
  %xor207.i = xor i32 %146, %145, !dbg !1016
  store i32 %xor207.i, i32* %_t3176.i, align 4, !dbg !1016
  %147 = load i32, i32* %_t3176.i, align 4, !dbg !1016
  %148 = load i32, i32* %_t2175.i, align 4, !dbg !1016
  %xor208.i = xor i32 %148, %147, !dbg !1016
  store i32 %xor208.i, i32* %_t2175.i, align 4, !dbg !1016
  %149 = load i32, i32* %_t3176.i, align 4, !dbg !1016
  %shr209.i = lshr i32 %149, 8, !dbg !1016
  %150 = load i32, i32* %_t3176.i, align 4, !dbg !1016
  %shl210.i = shl i32 %150, 24, !dbg !1016
  %add211.i = add i32 %shr209.i, %shl210.i, !dbg !1016
  store i32 %add211.i, i32* %_t3176.i, align 4, !dbg !1016
  %151 = load i32, i32* %_t1174.i, align 4, !dbg !1016
  %shr212.i = lshr i32 %151, 16, !dbg !1016
  %and213.i = and i32 %shr212.i, 255, !dbg !1016
  %idxprom214.i = zext i32 %and213.i to i64, !dbg !1016
  %arrayidx215.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom214.i, !dbg !1016
  %152 = load i32, i32* %arrayidx215.i, align 4, !dbg !1016
  %153 = load i32, i32* %_t2175.i, align 4, !dbg !1016
  %xor216.i = xor i32 %153, %152, !dbg !1016
  store i32 %xor216.i, i32* %_t2175.i, align 4, !dbg !1016
  %154 = load i32, i32* %_t3176.i, align 4, !dbg !1016
  %155 = load i32, i32* %s3.i, align 4, !dbg !1016
  %xor217.i = xor i32 %155, %154, !dbg !1016
  store i32 %xor217.i, i32* %s3.i, align 4, !dbg !1016
  %156 = load i32, i32* %_t1174.i, align 4, !dbg !1016
  %shr218.i = lshr i32 %156, 24, !dbg !1016
  %idxprom219.i = zext i32 %shr218.i to i64, !dbg !1016
  %arrayidx220.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom219.i, !dbg !1016
  %157 = load i32, i32* %arrayidx220.i, align 4, !dbg !1016
  %158 = load i32, i32* %_t2175.i, align 4, !dbg !1016
  %xor221.i = xor i32 %158, %157, !dbg !1016
  store i32 %xor221.i, i32* %_t2175.i, align 4, !dbg !1016
  %159 = load i32, i32* %_t2175.i, align 4, !dbg !1016
  %160 = load i32, i32* %s2.i, align 4, !dbg !1016
  %xor222.i = xor i32 %160, %159, !dbg !1016
  store i32 %xor222.i, i32* %s2.i, align 4, !dbg !1016
  %161 = load i32, i32* %_t2175.i, align 4, !dbg !1016
  %162 = load i32, i32* %s3.i, align 4, !dbg !1016
  %xor223.i = xor i32 %162, %161, !dbg !1016
  store i32 %xor223.i, i32* %s3.i, align 4, !dbg !1016
  %163 = load i32, i32* %s2.i, align 4, !dbg !1017
  %164 = load i32*, i32** %k.i, align 8, !dbg !1017
  %add.ptr230.i = getelementptr inbounds i32, i32* %164, i64 4, !dbg !1017
  %165 = load i32, i32* %add.ptr230.i, align 4, !dbg !1017
  %xor232.i = xor i32 %163, %165, !dbg !1017
  store i32 %xor232.i, i32* %_t0226.i, align 4, !dbg !1017
  %166 = load i32, i32* %_t0226.i, align 4, !dbg !1017
  %and233.i = and i32 %166, 255, !dbg !1017
  %idxprom234.i = zext i32 %and233.i to i64, !dbg !1017
  %arrayidx235.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom234.i, !dbg !1017
  %167 = load i32, i32* %arrayidx235.i, align 4, !dbg !1017
  store i32 %167, i32* %_t3229.i, align 4, !dbg !1017
  %168 = load i32, i32* %s3.i, align 4, !dbg !1017
  %169 = load i32*, i32** %k.i, align 8, !dbg !1017
  %add.ptr236.i = getelementptr inbounds i32, i32* %169, i64 4, !dbg !1017
  %arrayidx237.i = getelementptr inbounds i32, i32* %add.ptr236.i, i64 1, !dbg !1017
  %170 = load i32, i32* %arrayidx237.i, align 4, !dbg !1017
  %xor238.i = xor i32 %168, %170, !dbg !1017
  store i32 %xor238.i, i32* %_t1227.i, align 4, !dbg !1017
  %171 = load i32, i32* %_t0226.i, align 4, !dbg !1017
  %shr239.i = lshr i32 %171, 8, !dbg !1017
  %and240.i = and i32 %shr239.i, 255, !dbg !1017
  %idxprom241.i = zext i32 %and240.i to i64, !dbg !1017
  %arrayidx242.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom241.i, !dbg !1017
  %172 = load i32, i32* %arrayidx242.i, align 4, !dbg !1017
  %173 = load i32, i32* %_t3229.i, align 4, !dbg !1017
  %xor243.i = xor i32 %173, %172, !dbg !1017
  store i32 %xor243.i, i32* %_t3229.i, align 4, !dbg !1017
  %174 = load i32, i32* %_t1227.i, align 4, !dbg !1017
  %and244.i = and i32 %174, 255, !dbg !1017
  %idxprom245.i = zext i32 %and244.i to i64, !dbg !1017
  %arrayidx246.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom245.i, !dbg !1017
  %175 = load i32, i32* %arrayidx246.i, align 4, !dbg !1017
  store i32 %175, i32* %_t2228.i, align 4, !dbg !1017
  %176 = load i32, i32* %_t0226.i, align 4, !dbg !1017
  %shr247.i = lshr i32 %176, 16, !dbg !1017
  %and248.i = and i32 %shr247.i, 255, !dbg !1017
  %idxprom249.i = zext i32 %and248.i to i64, !dbg !1017
  %arrayidx250.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom249.i, !dbg !1017
  %177 = load i32, i32* %arrayidx250.i, align 4, !dbg !1017
  %178 = load i32, i32* %_t3229.i, align 4, !dbg !1017
  %xor251.i = xor i32 %178, %177, !dbg !1017
  store i32 %xor251.i, i32* %_t3229.i, align 4, !dbg !1017
  %179 = load i32, i32* %_t1227.i, align 4, !dbg !1017
  %shr252.i = lshr i32 %179, 8, !dbg !1017
  %and253.i = and i32 %shr252.i, 255, !dbg !1017
  %idxprom254.i = zext i32 %and253.i to i64, !dbg !1017
  %arrayidx255.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom254.i, !dbg !1017
  %180 = load i32, i32* %arrayidx255.i, align 4, !dbg !1017
  %181 = load i32, i32* %_t2228.i, align 4, !dbg !1017
  %xor256.i = xor i32 %181, %180, !dbg !1017
  store i32 %xor256.i, i32* %_t2228.i, align 4, !dbg !1017
  %182 = load i32, i32* %_t0226.i, align 4, !dbg !1017
  %shr257.i = lshr i32 %182, 24, !dbg !1017
  %idxprom258.i = zext i32 %shr257.i to i64, !dbg !1017
  %arrayidx259.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom258.i, !dbg !1017
  %183 = load i32, i32* %arrayidx259.i, align 4, !dbg !1017
  %184 = load i32, i32* %_t3229.i, align 4, !dbg !1017
  %xor260.i = xor i32 %184, %183, !dbg !1017
  store i32 %xor260.i, i32* %_t3229.i, align 4, !dbg !1017
  %185 = load i32, i32* %_t3229.i, align 4, !dbg !1017
  %186 = load i32, i32* %_t2228.i, align 4, !dbg !1017
  %xor261.i = xor i32 %186, %185, !dbg !1017
  store i32 %xor261.i, i32* %_t2228.i, align 4, !dbg !1017
  %187 = load i32, i32* %_t3229.i, align 4, !dbg !1017
  %shr262.i = lshr i32 %187, 8, !dbg !1017
  %188 = load i32, i32* %_t3229.i, align 4, !dbg !1017
  %shl263.i = shl i32 %188, 24, !dbg !1017
  %add264.i = add i32 %shr262.i, %shl263.i, !dbg !1017
  store i32 %add264.i, i32* %_t3229.i, align 4, !dbg !1017
  %189 = load i32, i32* %_t1227.i, align 4, !dbg !1017
  %shr265.i = lshr i32 %189, 16, !dbg !1017
  %and266.i = and i32 %shr265.i, 255, !dbg !1017
  %idxprom267.i = zext i32 %and266.i to i64, !dbg !1017
  %arrayidx268.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom267.i, !dbg !1017
  %190 = load i32, i32* %arrayidx268.i, align 4, !dbg !1017
  %191 = load i32, i32* %_t2228.i, align 4, !dbg !1017
  %xor269.i = xor i32 %191, %190, !dbg !1017
  store i32 %xor269.i, i32* %_t2228.i, align 4, !dbg !1017
  %192 = load i32, i32* %_t3229.i, align 4, !dbg !1017
  %193 = load i32, i32* %s1.i, align 4, !dbg !1017
  %xor270.i = xor i32 %193, %192, !dbg !1017
  store i32 %xor270.i, i32* %s1.i, align 4, !dbg !1017
  %194 = load i32, i32* %_t1227.i, align 4, !dbg !1017
  %shr271.i = lshr i32 %194, 24, !dbg !1017
  %idxprom272.i = zext i32 %shr271.i to i64, !dbg !1017
  %arrayidx273.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom272.i, !dbg !1017
  %195 = load i32, i32* %arrayidx273.i, align 4, !dbg !1017
  %196 = load i32, i32* %_t2228.i, align 4, !dbg !1017
  %xor274.i = xor i32 %196, %195, !dbg !1017
  store i32 %xor274.i, i32* %_t2228.i, align 4, !dbg !1017
  %197 = load i32, i32* %_t2228.i, align 4, !dbg !1017
  %198 = load i32, i32* %s0.i, align 4, !dbg !1017
  %xor275.i = xor i32 %198, %197, !dbg !1017
  store i32 %xor275.i, i32* %s0.i, align 4, !dbg !1017
  %199 = load i32, i32* %_t2228.i, align 4, !dbg !1017
  %200 = load i32, i32* %s1.i, align 4, !dbg !1017
  %xor276.i = xor i32 %200, %199, !dbg !1017
  store i32 %xor276.i, i32* %s1.i, align 4, !dbg !1017
  %201 = load i32, i32* %s0.i, align 4, !dbg !1018
  %202 = load i32*, i32** %k.i, align 8, !dbg !1018
  %add.ptr283.i = getelementptr inbounds i32, i32* %202, i64 2, !dbg !1018
  %203 = load i32, i32* %add.ptr283.i, align 4, !dbg !1018
  %xor285.i = xor i32 %201, %203, !dbg !1018
  store i32 %xor285.i, i32* %_t0279.i, align 4, !dbg !1018
  %204 = load i32, i32* %_t0279.i, align 4, !dbg !1018
  %and286.i = and i32 %204, 255, !dbg !1018
  %idxprom287.i = zext i32 %and286.i to i64, !dbg !1018
  %arrayidx288.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom287.i, !dbg !1018
  %205 = load i32, i32* %arrayidx288.i, align 4, !dbg !1018
  store i32 %205, i32* %_t3282.i, align 4, !dbg !1018
  %206 = load i32, i32* %s1.i, align 4, !dbg !1018
  %207 = load i32*, i32** %k.i, align 8, !dbg !1018
  %add.ptr289.i = getelementptr inbounds i32, i32* %207, i64 2, !dbg !1018
  %arrayidx290.i = getelementptr inbounds i32, i32* %add.ptr289.i, i64 1, !dbg !1018
  %208 = load i32, i32* %arrayidx290.i, align 4, !dbg !1018
  %xor291.i = xor i32 %206, %208, !dbg !1018
  store i32 %xor291.i, i32* %_t1280.i, align 4, !dbg !1018
  %209 = load i32, i32* %_t0279.i, align 4, !dbg !1018
  %shr292.i = lshr i32 %209, 8, !dbg !1018
  %and293.i = and i32 %shr292.i, 255, !dbg !1018
  %idxprom294.i = zext i32 %and293.i to i64, !dbg !1018
  %arrayidx295.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom294.i, !dbg !1018
  %210 = load i32, i32* %arrayidx295.i, align 4, !dbg !1018
  %211 = load i32, i32* %_t3282.i, align 4, !dbg !1018
  %xor296.i = xor i32 %211, %210, !dbg !1018
  store i32 %xor296.i, i32* %_t3282.i, align 4, !dbg !1018
  %212 = load i32, i32* %_t1280.i, align 4, !dbg !1018
  %and297.i = and i32 %212, 255, !dbg !1018
  %idxprom298.i = zext i32 %and297.i to i64, !dbg !1018
  %arrayidx299.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom298.i, !dbg !1018
  %213 = load i32, i32* %arrayidx299.i, align 4, !dbg !1018
  store i32 %213, i32* %_t2281.i, align 4, !dbg !1018
  %214 = load i32, i32* %_t0279.i, align 4, !dbg !1018
  %shr300.i = lshr i32 %214, 16, !dbg !1018
  %and301.i = and i32 %shr300.i, 255, !dbg !1018
  %idxprom302.i = zext i32 %and301.i to i64, !dbg !1018
  %arrayidx303.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom302.i, !dbg !1018
  %215 = load i32, i32* %arrayidx303.i, align 4, !dbg !1018
  %216 = load i32, i32* %_t3282.i, align 4, !dbg !1018
  %xor304.i = xor i32 %216, %215, !dbg !1018
  store i32 %xor304.i, i32* %_t3282.i, align 4, !dbg !1018
  %217 = load i32, i32* %_t1280.i, align 4, !dbg !1018
  %shr305.i = lshr i32 %217, 8, !dbg !1018
  %and306.i = and i32 %shr305.i, 255, !dbg !1018
  %idxprom307.i = zext i32 %and306.i to i64, !dbg !1018
  %arrayidx308.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom307.i, !dbg !1018
  %218 = load i32, i32* %arrayidx308.i, align 4, !dbg !1018
  %219 = load i32, i32* %_t2281.i, align 4, !dbg !1018
  %xor309.i = xor i32 %219, %218, !dbg !1018
  store i32 %xor309.i, i32* %_t2281.i, align 4, !dbg !1018
  %220 = load i32, i32* %_t0279.i, align 4, !dbg !1018
  %shr310.i = lshr i32 %220, 24, !dbg !1018
  %idxprom311.i = zext i32 %shr310.i to i64, !dbg !1018
  %arrayidx312.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom311.i, !dbg !1018
  %221 = load i32, i32* %arrayidx312.i, align 4, !dbg !1018
  %222 = load i32, i32* %_t3282.i, align 4, !dbg !1018
  %xor313.i = xor i32 %222, %221, !dbg !1018
  store i32 %xor313.i, i32* %_t3282.i, align 4, !dbg !1018
  %223 = load i32, i32* %_t3282.i, align 4, !dbg !1018
  %224 = load i32, i32* %_t2281.i, align 4, !dbg !1018
  %xor314.i = xor i32 %224, %223, !dbg !1018
  store i32 %xor314.i, i32* %_t2281.i, align 4, !dbg !1018
  %225 = load i32, i32* %_t3282.i, align 4, !dbg !1018
  %shr315.i = lshr i32 %225, 8, !dbg !1018
  %226 = load i32, i32* %_t3282.i, align 4, !dbg !1018
  %shl316.i = shl i32 %226, 24, !dbg !1018
  %add317.i = add i32 %shr315.i, %shl316.i, !dbg !1018
  store i32 %add317.i, i32* %_t3282.i, align 4, !dbg !1018
  %227 = load i32, i32* %_t1280.i, align 4, !dbg !1018
  %shr318.i = lshr i32 %227, 16, !dbg !1018
  %and319.i = and i32 %shr318.i, 255, !dbg !1018
  %idxprom320.i = zext i32 %and319.i to i64, !dbg !1018
  %arrayidx321.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom320.i, !dbg !1018
  %228 = load i32, i32* %arrayidx321.i, align 4, !dbg !1018
  %229 = load i32, i32* %_t2281.i, align 4, !dbg !1018
  %xor322.i = xor i32 %229, %228, !dbg !1018
  store i32 %xor322.i, i32* %_t2281.i, align 4, !dbg !1018
  %230 = load i32, i32* %_t3282.i, align 4, !dbg !1018
  %231 = load i32, i32* %s3.i, align 4, !dbg !1018
  %xor323.i = xor i32 %231, %230, !dbg !1018
  store i32 %xor323.i, i32* %s3.i, align 4, !dbg !1018
  %232 = load i32, i32* %_t1280.i, align 4, !dbg !1018
  %shr324.i = lshr i32 %232, 24, !dbg !1018
  %idxprom325.i = zext i32 %shr324.i to i64, !dbg !1018
  %arrayidx326.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom325.i, !dbg !1018
  %233 = load i32, i32* %arrayidx326.i, align 4, !dbg !1018
  %234 = load i32, i32* %_t2281.i, align 4, !dbg !1018
  %xor327.i = xor i32 %234, %233, !dbg !1018
  store i32 %xor327.i, i32* %_t2281.i, align 4, !dbg !1018
  %235 = load i32, i32* %_t2281.i, align 4, !dbg !1018
  %236 = load i32, i32* %s2.i, align 4, !dbg !1018
  %xor328.i = xor i32 %236, %235, !dbg !1018
  store i32 %xor328.i, i32* %s2.i, align 4, !dbg !1018
  %237 = load i32, i32* %_t2281.i, align 4, !dbg !1018
  %238 = load i32, i32* %s3.i, align 4, !dbg !1018
  %xor329.i = xor i32 %238, %237, !dbg !1018
  store i32 %xor329.i, i32* %s3.i, align 4, !dbg !1018
  %239 = load i32, i32* %s2.i, align 4, !dbg !1019
  %240 = load i32*, i32** %k.i, align 8, !dbg !1019
  %241 = load i32, i32* %240, align 4, !dbg !1019
  %xor338.i = xor i32 %239, %241, !dbg !1019
  store i32 %xor338.i, i32* %_t0332.i, align 4, !dbg !1019
  %242 = load i32, i32* %_t0332.i, align 4, !dbg !1019
  %and339.i = and i32 %242, 255, !dbg !1019
  %idxprom340.i = zext i32 %and339.i to i64, !dbg !1019
  %arrayidx341.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom340.i, !dbg !1019
  %243 = load i32, i32* %arrayidx341.i, align 4, !dbg !1019
  store i32 %243, i32* %_t3335.i, align 4, !dbg !1019
  %244 = load i32, i32* %s3.i, align 4, !dbg !1019
  %245 = load i32*, i32** %k.i, align 8, !dbg !1019
  %arrayidx343.i = getelementptr inbounds i32, i32* %245, i64 1, !dbg !1019
  %246 = load i32, i32* %arrayidx343.i, align 4, !dbg !1019
  %xor344.i = xor i32 %244, %246, !dbg !1019
  store i32 %xor344.i, i32* %_t1333.i, align 4, !dbg !1019
  %247 = load i32, i32* %_t0332.i, align 4, !dbg !1019
  %shr345.i = lshr i32 %247, 8, !dbg !1019
  %and346.i = and i32 %shr345.i, 255, !dbg !1019
  %idxprom347.i = zext i32 %and346.i to i64, !dbg !1019
  %arrayidx348.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom347.i, !dbg !1019
  %248 = load i32, i32* %arrayidx348.i, align 4, !dbg !1019
  %249 = load i32, i32* %_t3335.i, align 4, !dbg !1019
  %xor349.i = xor i32 %249, %248, !dbg !1019
  store i32 %xor349.i, i32* %_t3335.i, align 4, !dbg !1019
  %250 = load i32, i32* %_t1333.i, align 4, !dbg !1019
  %and350.i = and i32 %250, 255, !dbg !1019
  %idxprom351.i = zext i32 %and350.i to i64, !dbg !1019
  %arrayidx352.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom351.i, !dbg !1019
  %251 = load i32, i32* %arrayidx352.i, align 4, !dbg !1019
  store i32 %251, i32* %_t2334.i, align 4, !dbg !1019
  %252 = load i32, i32* %_t0332.i, align 4, !dbg !1019
  %shr353.i = lshr i32 %252, 16, !dbg !1019
  %and354.i = and i32 %shr353.i, 255, !dbg !1019
  %idxprom355.i = zext i32 %and354.i to i64, !dbg !1019
  %arrayidx356.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom355.i, !dbg !1019
  %253 = load i32, i32* %arrayidx356.i, align 4, !dbg !1019
  %254 = load i32, i32* %_t3335.i, align 4, !dbg !1019
  %xor357.i = xor i32 %254, %253, !dbg !1019
  store i32 %xor357.i, i32* %_t3335.i, align 4, !dbg !1019
  %255 = load i32, i32* %_t1333.i, align 4, !dbg !1019
  %shr358.i = lshr i32 %255, 8, !dbg !1019
  %and359.i = and i32 %shr358.i, 255, !dbg !1019
  %idxprom360.i = zext i32 %and359.i to i64, !dbg !1019
  %arrayidx361.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom360.i, !dbg !1019
  %256 = load i32, i32* %arrayidx361.i, align 4, !dbg !1019
  %257 = load i32, i32* %_t2334.i, align 4, !dbg !1019
  %xor362.i = xor i32 %257, %256, !dbg !1019
  store i32 %xor362.i, i32* %_t2334.i, align 4, !dbg !1019
  %258 = load i32, i32* %_t0332.i, align 4, !dbg !1019
  %shr363.i = lshr i32 %258, 24, !dbg !1019
  %idxprom364.i = zext i32 %shr363.i to i64, !dbg !1019
  %arrayidx365.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom364.i, !dbg !1019
  %259 = load i32, i32* %arrayidx365.i, align 4, !dbg !1019
  %260 = load i32, i32* %_t3335.i, align 4, !dbg !1019
  %xor366.i = xor i32 %260, %259, !dbg !1019
  store i32 %xor366.i, i32* %_t3335.i, align 4, !dbg !1019
  %261 = load i32, i32* %_t3335.i, align 4, !dbg !1019
  %262 = load i32, i32* %_t2334.i, align 4, !dbg !1019
  %xor367.i = xor i32 %262, %261, !dbg !1019
  store i32 %xor367.i, i32* %_t2334.i, align 4, !dbg !1019
  %263 = load i32, i32* %_t3335.i, align 4, !dbg !1019
  %shr368.i = lshr i32 %263, 8, !dbg !1019
  %264 = load i32, i32* %_t3335.i, align 4, !dbg !1019
  %shl369.i = shl i32 %264, 24, !dbg !1019
  %add370.i = add i32 %shr368.i, %shl369.i, !dbg !1019
  store i32 %add370.i, i32* %_t3335.i, align 4, !dbg !1019
  %265 = load i32, i32* %_t1333.i, align 4, !dbg !1019
  %shr371.i = lshr i32 %265, 16, !dbg !1019
  %and372.i = and i32 %shr371.i, 255, !dbg !1019
  %idxprom373.i = zext i32 %and372.i to i64, !dbg !1019
  %arrayidx374.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom373.i, !dbg !1019
  %266 = load i32, i32* %arrayidx374.i, align 4, !dbg !1019
  %267 = load i32, i32* %_t2334.i, align 4, !dbg !1019
  %xor375.i = xor i32 %267, %266, !dbg !1019
  store i32 %xor375.i, i32* %_t2334.i, align 4, !dbg !1019
  %268 = load i32, i32* %_t3335.i, align 4, !dbg !1019
  %269 = load i32, i32* %s1.i, align 4, !dbg !1019
  %xor376.i = xor i32 %269, %268, !dbg !1019
  store i32 %xor376.i, i32* %s1.i, align 4, !dbg !1019
  %270 = load i32, i32* %_t1333.i, align 4, !dbg !1019
  %shr377.i = lshr i32 %270, 24, !dbg !1019
  %idxprom378.i = zext i32 %shr377.i to i64, !dbg !1019
  %arrayidx379.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom378.i, !dbg !1019
  %271 = load i32, i32* %arrayidx379.i, align 4, !dbg !1019
  %272 = load i32, i32* %_t2334.i, align 4, !dbg !1019
  %xor380.i = xor i32 %272, %271, !dbg !1019
  store i32 %xor380.i, i32* %_t2334.i, align 4, !dbg !1019
  %273 = load i32, i32* %_t2334.i, align 4, !dbg !1019
  %274 = load i32, i32* %s0.i, align 4, !dbg !1019
  %xor381.i = xor i32 %274, %273, !dbg !1019
  store i32 %xor381.i, i32* %s0.i, align 4, !dbg !1019
  %275 = load i32, i32* %_t2334.i, align 4, !dbg !1019
  %276 = load i32, i32* %s1.i, align 4, !dbg !1019
  %xor382.i = xor i32 %276, %275, !dbg !1019
  store i32 %xor382.i, i32* %s1.i, align 4, !dbg !1019
  %277 = load i32*, i32** %k.i, align 8, !dbg !1058
  %278 = load i32*, i32** %kend.i, align 8, !dbg !1059
  %cmp.i = icmp eq i32* %277, %278, !dbg !1060
  br i1 %cmp.i, label %Camellia_DecryptBlock_Rounds.exit, label %if.end.i, !dbg !1061

if.end.i:                                         ; preds = %while.body.i
  %279 = load i32*, i32** %k.i, align 8, !dbg !1062
  %add.ptr385.i = getelementptr inbounds i32, i32* %279, i64 -4, !dbg !1062
  store i32* %add.ptr385.i, i32** %k.i, align 8, !dbg !1062
  %280 = load i32, i32* %s0.i, align 4, !dbg !1063
  %281 = load i32*, i32** %k.i, align 8, !dbg !1063
  %arrayidx386.i = getelementptr inbounds i32, i32* %281, i64 2, !dbg !1063
  %282 = load i32, i32* %arrayidx386.i, align 4, !dbg !1063
  %and387.i = and i32 %280, %282, !dbg !1063
  %shl388.i = shl i32 %and387.i, 1, !dbg !1063
  %283 = load i32, i32* %s0.i, align 4, !dbg !1063
  %284 = load i32*, i32** %k.i, align 8, !dbg !1063
  %arrayidx389.i = getelementptr inbounds i32, i32* %284, i64 2, !dbg !1063
  %285 = load i32, i32* %arrayidx389.i, align 4, !dbg !1063
  %and390.i = and i32 %283, %285, !dbg !1063
  %shr391.i = lshr i32 %and390.i, 31, !dbg !1063
  %add392.i = add i32 %shl388.i, %shr391.i, !dbg !1063
  %286 = load i32, i32* %s1.i, align 4, !dbg !1064
  %xor393.i = xor i32 %286, %add392.i, !dbg !1064
  store i32 %xor393.i, i32* %s1.i, align 4, !dbg !1064
  %287 = load i32, i32* %s3.i, align 4, !dbg !1065
  %288 = load i32*, i32** %k.i, align 8, !dbg !1066
  %arrayidx394.i = getelementptr inbounds i32, i32* %288, i64 1, !dbg !1066
  %289 = load i32, i32* %arrayidx394.i, align 4, !dbg !1066
  %or.i = or i32 %287, %289, !dbg !1067
  %290 = load i32, i32* %s2.i, align 4, !dbg !1068
  %xor395.i = xor i32 %290, %or.i, !dbg !1068
  store i32 %xor395.i, i32* %s2.i, align 4, !dbg !1068
  %291 = load i32, i32* %s1.i, align 4, !dbg !1069
  %292 = load i32*, i32** %k.i, align 8, !dbg !1070
  %arrayidx396.i = getelementptr inbounds i32, i32* %292, i64 3, !dbg !1070
  %293 = load i32, i32* %arrayidx396.i, align 4, !dbg !1070
  %or397.i = or i32 %291, %293, !dbg !1071
  %294 = load i32, i32* %s0.i, align 4, !dbg !1072
  %xor398.i = xor i32 %294, %or397.i, !dbg !1072
  store i32 %xor398.i, i32* %s0.i, align 4, !dbg !1072
  %295 = load i32, i32* %s2.i, align 4, !dbg !1073
  %296 = load i32*, i32** %k.i, align 8, !dbg !1073
  %297 = load i32, i32* %296, align 4, !dbg !1073
  %and400.i = and i32 %295, %297, !dbg !1073
  %shl401.i = shl i32 %and400.i, 1, !dbg !1073
  %298 = load i32, i32* %s2.i, align 4, !dbg !1073
  %299 = load i32*, i32** %k.i, align 8, !dbg !1073
  %300 = load i32, i32* %299, align 4, !dbg !1073
  %and403.i = and i32 %298, %300, !dbg !1073
  %shr404.i = lshr i32 %and403.i, 31, !dbg !1073
  %add405.i = add i32 %shl401.i, %shr404.i, !dbg !1073
  %301 = load i32, i32* %s3.i, align 4, !dbg !1074
  %xor406.i = xor i32 %301, %add405.i, !dbg !1074
  store i32 %xor406.i, i32* %s3.i, align 4, !dbg !1074
  br label %while.body.i, !dbg !1056, !llvm.loop !1075

Camellia_DecryptBlock_Rounds.exit:                ; preds = %while.body.i
  %302 = load i32*, i32** %k.i, align 8, !dbg !1077
  %add.ptr407.i = getelementptr inbounds i32, i32* %302, i64 -4, !dbg !1077
  store i32* %add.ptr407.i, i32** %k.i, align 8, !dbg !1077
  %303 = load i32*, i32** %k.i, align 8, !dbg !1078
  %304 = load i32, i32* %303, align 4, !dbg !1078
  %305 = load i32, i32* %s2.i, align 4, !dbg !1079
  %xor409.i = xor i32 %305, %304, !dbg !1079
  store i32 %xor409.i, i32* %s2.i, align 4, !dbg !1079
  %306 = load i32*, i32** %k.i, align 8, !dbg !1080
  %arrayidx410.i = getelementptr inbounds i32, i32* %306, i64 1, !dbg !1080
  %307 = load i32, i32* %arrayidx410.i, align 4, !dbg !1080
  %308 = load i32, i32* %s3.i, align 4, !dbg !1081
  %xor411.i = xor i32 %308, %307, !dbg !1081
  store i32 %xor411.i, i32* %s3.i, align 4, !dbg !1081
  %309 = load i32*, i32** %k.i, align 8, !dbg !1082
  %arrayidx412.i = getelementptr inbounds i32, i32* %309, i64 2, !dbg !1082
  %310 = load i32, i32* %arrayidx412.i, align 4, !dbg !1082
  %311 = load i32, i32* %s0.i, align 4, !dbg !1083
  %xor413.i = xor i32 %311, %310, !dbg !1083
  store i32 %xor413.i, i32* %s0.i, align 4, !dbg !1083
  %312 = load i32*, i32** %k.i, align 8, !dbg !1084
  %arrayidx414.i = getelementptr inbounds i32, i32* %312, i64 3, !dbg !1084
  %313 = load i32, i32* %arrayidx414.i, align 4, !dbg !1084
  %314 = load i32, i32* %s1.i, align 4, !dbg !1085
  %xor415.i = xor i32 %314, %313, !dbg !1085
  store i32 %xor415.i, i32* %s1.i, align 4, !dbg !1085
  %315 = load i32, i32* %s2.i, align 4, !dbg !1086
  %shr416.i = lshr i32 %315, 24, !dbg !1086
  %conv417.i = trunc i32 %shr416.i to i8, !dbg !1086
  %316 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1086
  store i8 %conv417.i, i8* %316, align 1, !dbg !1086
  %317 = load i32, i32* %s2.i, align 4, !dbg !1086
  %shr419.i = lshr i32 %317, 16, !dbg !1086
  %conv420.i = trunc i32 %shr419.i to i8, !dbg !1086
  %318 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1086
  %arrayidx421.i = getelementptr inbounds i8, i8* %318, i64 1, !dbg !1086
  store i8 %conv420.i, i8* %arrayidx421.i, align 1, !dbg !1086
  %319 = load i32, i32* %s2.i, align 4, !dbg !1086
  %shr422.i = lshr i32 %319, 8, !dbg !1086
  %conv423.i = trunc i32 %shr422.i to i8, !dbg !1086
  %320 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1086
  %arrayidx424.i = getelementptr inbounds i8, i8* %320, i64 2, !dbg !1086
  store i8 %conv423.i, i8* %arrayidx424.i, align 1, !dbg !1086
  %321 = load i32, i32* %s2.i, align 4, !dbg !1086
  %conv425.i = trunc i32 %321 to i8, !dbg !1086
  %322 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1086
  %arrayidx426.i = getelementptr inbounds i8, i8* %322, i64 3, !dbg !1086
  store i8 %conv425.i, i8* %arrayidx426.i, align 1, !dbg !1086
  %323 = load i32, i32* %s3.i, align 4, !dbg !1087
  %shr427.i = lshr i32 %323, 24, !dbg !1087
  %conv428.i = trunc i32 %shr427.i to i8, !dbg !1087
  %324 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1087
  %add.ptr429.i = getelementptr inbounds i8, i8* %324, i64 4, !dbg !1087
  store i8 %conv428.i, i8* %add.ptr429.i, align 1, !dbg !1087
  %325 = load i32, i32* %s3.i, align 4, !dbg !1087
  %shr431.i = lshr i32 %325, 16, !dbg !1087
  %conv432.i = trunc i32 %shr431.i to i8, !dbg !1087
  %326 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1087
  %add.ptr433.i = getelementptr inbounds i8, i8* %326, i64 4, !dbg !1087
  %arrayidx434.i = getelementptr inbounds i8, i8* %add.ptr433.i, i64 1, !dbg !1087
  store i8 %conv432.i, i8* %arrayidx434.i, align 1, !dbg !1087
  %327 = load i32, i32* %s3.i, align 4, !dbg !1087
  %shr435.i = lshr i32 %327, 8, !dbg !1087
  %conv436.i = trunc i32 %shr435.i to i8, !dbg !1087
  %328 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1087
  %add.ptr437.i = getelementptr inbounds i8, i8* %328, i64 4, !dbg !1087
  %arrayidx438.i = getelementptr inbounds i8, i8* %add.ptr437.i, i64 2, !dbg !1087
  store i8 %conv436.i, i8* %arrayidx438.i, align 1, !dbg !1087
  %329 = load i32, i32* %s3.i, align 4, !dbg !1087
  %conv439.i = trunc i32 %329 to i8, !dbg !1087
  %330 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1087
  %add.ptr440.i = getelementptr inbounds i8, i8* %330, i64 4, !dbg !1087
  %arrayidx441.i = getelementptr inbounds i8, i8* %add.ptr440.i, i64 3, !dbg !1087
  store i8 %conv439.i, i8* %arrayidx441.i, align 1, !dbg !1087
  %331 = load i32, i32* %s0.i, align 4, !dbg !1088
  %shr442.i = lshr i32 %331, 24, !dbg !1088
  %conv443.i = trunc i32 %shr442.i to i8, !dbg !1088
  %332 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1088
  %add.ptr444.i = getelementptr inbounds i8, i8* %332, i64 8, !dbg !1088
  store i8 %conv443.i, i8* %add.ptr444.i, align 1, !dbg !1088
  %333 = load i32, i32* %s0.i, align 4, !dbg !1088
  %shr446.i = lshr i32 %333, 16, !dbg !1088
  %conv447.i = trunc i32 %shr446.i to i8, !dbg !1088
  %334 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1088
  %add.ptr448.i = getelementptr inbounds i8, i8* %334, i64 8, !dbg !1088
  %arrayidx449.i = getelementptr inbounds i8, i8* %add.ptr448.i, i64 1, !dbg !1088
  store i8 %conv447.i, i8* %arrayidx449.i, align 1, !dbg !1088
  %335 = load i32, i32* %s0.i, align 4, !dbg !1088
  %shr450.i = lshr i32 %335, 8, !dbg !1088
  %conv451.i = trunc i32 %shr450.i to i8, !dbg !1088
  %336 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1088
  %add.ptr452.i = getelementptr inbounds i8, i8* %336, i64 8, !dbg !1088
  %arrayidx453.i = getelementptr inbounds i8, i8* %add.ptr452.i, i64 2, !dbg !1088
  store i8 %conv451.i, i8* %arrayidx453.i, align 1, !dbg !1088
  %337 = load i32, i32* %s0.i, align 4, !dbg !1088
  %conv454.i = trunc i32 %337 to i8, !dbg !1088
  %338 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1088
  %add.ptr455.i = getelementptr inbounds i8, i8* %338, i64 8, !dbg !1088
  %arrayidx456.i = getelementptr inbounds i8, i8* %add.ptr455.i, i64 3, !dbg !1088
  store i8 %conv454.i, i8* %arrayidx456.i, align 1, !dbg !1088
  %339 = load i32, i32* %s1.i, align 4, !dbg !1089
  %shr457.i = lshr i32 %339, 24, !dbg !1089
  %conv458.i = trunc i32 %shr457.i to i8, !dbg !1089
  %340 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1089
  %add.ptr459.i = getelementptr inbounds i8, i8* %340, i64 12, !dbg !1089
  store i8 %conv458.i, i8* %add.ptr459.i, align 1, !dbg !1089
  %341 = load i32, i32* %s1.i, align 4, !dbg !1089
  %shr461.i = lshr i32 %341, 16, !dbg !1089
  %conv462.i = trunc i32 %shr461.i to i8, !dbg !1089
  %342 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1089
  %add.ptr463.i = getelementptr inbounds i8, i8* %342, i64 12, !dbg !1089
  %arrayidx464.i = getelementptr inbounds i8, i8* %add.ptr463.i, i64 1, !dbg !1089
  store i8 %conv462.i, i8* %arrayidx464.i, align 1, !dbg !1089
  %343 = load i32, i32* %s1.i, align 4, !dbg !1089
  %shr465.i = lshr i32 %343, 8, !dbg !1089
  %conv466.i = trunc i32 %shr465.i to i8, !dbg !1089
  %344 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1089
  %add.ptr467.i = getelementptr inbounds i8, i8* %344, i64 12, !dbg !1089
  %arrayidx468.i = getelementptr inbounds i8, i8* %add.ptr467.i, i64 2, !dbg !1089
  store i8 %conv466.i, i8* %arrayidx468.i, align 1, !dbg !1089
  %345 = load i32, i32* %s1.i, align 4, !dbg !1089
  %conv469.i = trunc i32 %345 to i8, !dbg !1089
  %346 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1089
  %add.ptr470.i = getelementptr inbounds i8, i8* %346, i64 12, !dbg !1089
  %arrayidx471.i = getelementptr inbounds i8, i8* %add.ptr470.i, i64 3, !dbg !1089
  store i8 %conv469.i, i8* %arrayidx471.i, align 1, !dbg !1089
  ret void, !dbg !1090
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #3 !dbg !1091 {
entry:
  %grandRounds.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %grandRounds.addr.i.i, metadata !667, metadata !DIExpression()), !dbg !1094
  %plaintext.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %plaintext.addr.i.i, metadata !669, metadata !DIExpression()), !dbg !1098
  %keyTable.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %keyTable.addr.i.i, metadata !671, metadata !DIExpression()), !dbg !1099
  %ciphertext.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ciphertext.addr.i.i, metadata !673, metadata !DIExpression()), !dbg !1100
  %s0.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s0.i.i, metadata !675, metadata !DIExpression()), !dbg !1101
  %s1.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s1.i.i, metadata !677, metadata !DIExpression()), !dbg !1102
  %s2.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s2.i.i, metadata !679, metadata !DIExpression()), !dbg !1103
  %s3.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s3.i.i, metadata !681, metadata !DIExpression()), !dbg !1104
  %k.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %k.i.i, metadata !683, metadata !DIExpression()), !dbg !1105
  %kend.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %kend.i.i, metadata !688, metadata !DIExpression()), !dbg !1106
  %_t0.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0.i.i, metadata !714, metadata !DIExpression()), !dbg !1107
  %_t1.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1.i.i, metadata !717, metadata !DIExpression()), !dbg !1107
  %_t2.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2.i.i, metadata !718, metadata !DIExpression()), !dbg !1107
  %_t3.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3.i.i, metadata !719, metadata !DIExpression()), !dbg !1107
  %_t0120.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0120.i.i, metadata !721, metadata !DIExpression()), !dbg !1108
  %_t1121.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1121.i.i, metadata !724, metadata !DIExpression()), !dbg !1108
  %_t2122.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2122.i.i, metadata !725, metadata !DIExpression()), !dbg !1108
  %_t3123.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3123.i.i, metadata !726, metadata !DIExpression()), !dbg !1108
  %_t0173.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0173.i.i, metadata !728, metadata !DIExpression()), !dbg !1109
  %_t1174.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1174.i.i, metadata !731, metadata !DIExpression()), !dbg !1109
  %_t2175.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2175.i.i, metadata !732, metadata !DIExpression()), !dbg !1109
  %_t3176.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3176.i.i, metadata !733, metadata !DIExpression()), !dbg !1109
  %_t0226.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0226.i.i, metadata !735, metadata !DIExpression()), !dbg !1110
  %_t1227.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1227.i.i, metadata !738, metadata !DIExpression()), !dbg !1110
  %_t2228.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2228.i.i, metadata !739, metadata !DIExpression()), !dbg !1110
  %_t3229.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3229.i.i, metadata !740, metadata !DIExpression()), !dbg !1110
  %_t0279.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0279.i.i, metadata !742, metadata !DIExpression()), !dbg !1111
  %_t1280.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1280.i.i, metadata !745, metadata !DIExpression()), !dbg !1111
  %_t2281.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2281.i.i, metadata !746, metadata !DIExpression()), !dbg !1111
  %_t3282.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3282.i.i, metadata !747, metadata !DIExpression()), !dbg !1111
  %_t0332.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0332.i.i, metadata !749, metadata !DIExpression()), !dbg !1112
  %_t1333.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1333.i.i, metadata !752, metadata !DIExpression()), !dbg !1112
  %_t2334.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2334.i.i, metadata !753, metadata !DIExpression()), !dbg !1112
  %_t3335.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3335.i.i, metadata !754, metadata !DIExpression()), !dbg !1112
  %keyBitLength.addr.i33 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %keyBitLength.addr.i33, metadata !808, metadata !DIExpression()), !dbg !1113
  %plaintext.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %plaintext.addr.i, metadata !810, metadata !DIExpression()), !dbg !1114
  %keyTable.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %keyTable.addr.i, metadata !812, metadata !DIExpression()), !dbg !1115
  %ciphertext.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ciphertext.addr.i, metadata !814, metadata !DIExpression()), !dbg !1116
  %retval.i = alloca i32, align 4
  %keyBitLength.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %keyBitLength.addr.i, metadata !33, metadata !DIExpression()), !dbg !1117
  %rawKey.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %rawKey.addr.i, metadata !35, metadata !DIExpression()), !dbg !1119
  %k.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %k.addr.i, metadata !37, metadata !DIExpression()), !dbg !1120
  %s0.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s0.i, metadata !39, metadata !DIExpression()), !dbg !1121
  %s1.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s1.i, metadata !41, metadata !DIExpression()), !dbg !1122
  %s2.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s2.i, metadata !43, metadata !DIExpression()), !dbg !1123
  %s3.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %s3.i, metadata !45, metadata !DIExpression()), !dbg !1124
  %_t0.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0.i, metadata !111, metadata !DIExpression()), !dbg !1125
  %_t1.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1.i, metadata !114, metadata !DIExpression()), !dbg !1125
  %_t2.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2.i, metadata !115, metadata !DIExpression()), !dbg !1125
  %_t3.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3.i, metadata !116, metadata !DIExpression()), !dbg !1125
  %_t0201.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0201.i, metadata !118, metadata !DIExpression()), !dbg !1126
  %_t1202.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1202.i, metadata !121, metadata !DIExpression()), !dbg !1126
  %_t2203.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2203.i, metadata !122, metadata !DIExpression()), !dbg !1126
  %_t3204.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3204.i, metadata !123, metadata !DIExpression()), !dbg !1126
  %_t0258.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0258.i, metadata !133, metadata !DIExpression()), !dbg !1127
  %_t1259.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1259.i, metadata !136, metadata !DIExpression()), !dbg !1127
  %_t2260.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2260.i, metadata !137, metadata !DIExpression()), !dbg !1127
  %_t3261.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3261.i, metadata !138, metadata !DIExpression()), !dbg !1127
  %_t0307.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0307.i, metadata !140, metadata !DIExpression()), !dbg !1128
  %_t1308.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1308.i, metadata !143, metadata !DIExpression()), !dbg !1128
  %_t2309.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2309.i, metadata !144, metadata !DIExpression()), !dbg !1128
  %_t3310.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3310.i, metadata !145, metadata !DIExpression()), !dbg !1128
  %_t0363.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0363.i, metadata !164, metadata !DIExpression()), !dbg !1129
  %_t0381.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0381.i, metadata !180, metadata !DIExpression()), !dbg !1130
  %_t0400.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0400.i, metadata !196, metadata !DIExpression()), !dbg !1131
  %_t0417.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0417.i, metadata !206, metadata !DIExpression()), !dbg !1132
  %_t0436.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0436.i, metadata !222, metadata !DIExpression()), !dbg !1133
  %_t0455.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0455.i, metadata !238, metadata !DIExpression()), !dbg !1134
  %_t0478.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0478.i, metadata !262, metadata !DIExpression()), !dbg !1135
  %_t0497.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0497.i, metadata !278, metadata !DIExpression()), !dbg !1136
  %_t0516.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0516.i, metadata !294, metadata !DIExpression()), !dbg !1137
  %_t0533.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0533.i, metadata !304, metadata !DIExpression()), !dbg !1138
  %_t0552.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0552.i, metadata !320, metadata !DIExpression()), !dbg !1139
  %_t0571.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0571.i, metadata !336, metadata !DIExpression()), !dbg !1140
  %_t0603.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0603.i, metadata !374, metadata !DIExpression()), !dbg !1141
  %_t1604.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1604.i, metadata !377, metadata !DIExpression()), !dbg !1141
  %_t2605.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2605.i, metadata !378, metadata !DIExpression()), !dbg !1141
  %_t3606.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3606.i, metadata !379, metadata !DIExpression()), !dbg !1141
  %_t0652.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0652.i, metadata !381, metadata !DIExpression()), !dbg !1142
  %_t1653.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t1653.i, metadata !384, metadata !DIExpression()), !dbg !1142
  %_t2654.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t2654.i, metadata !385, metadata !DIExpression()), !dbg !1142
  %_t3655.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t3655.i, metadata !386, metadata !DIExpression()), !dbg !1142
  %_t0705.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0705.i, metadata !400, metadata !DIExpression()), !dbg !1143
  %_t0724.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0724.i, metadata !416, metadata !DIExpression()), !dbg !1144
  %_t0743.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0743.i, metadata !432, metadata !DIExpression()), !dbg !1145
  %_t0766.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0766.i, metadata !456, metadata !DIExpression()), !dbg !1146
  %_t0785.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0785.i, metadata !472, metadata !DIExpression()), !dbg !1147
  %_t0804.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0804.i, metadata !488, metadata !DIExpression()), !dbg !1148
  %_t0823.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0823.i, metadata !504, metadata !DIExpression()), !dbg !1149
  %_t0846.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0846.i, metadata !528, metadata !DIExpression()), !dbg !1150
  %_t0865.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0865.i, metadata !544, metadata !DIExpression()), !dbg !1151
  %_t0888.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0888.i, metadata !572, metadata !DIExpression()), !dbg !1152
  %_t0911.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0911.i, metadata !596, metadata !DIExpression()), !dbg !1153
  %_t0930.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0930.i, metadata !612, metadata !DIExpression()), !dbg !1154
  %_t0949.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0949.i, metadata !628, metadata !DIExpression()), !dbg !1155
  %_t0968.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %_t0968.i, metadata !644, metadata !DIExpression()), !dbg !1156
  %retval = alloca i32, align 4
  %Key = alloca [17 x i8], align 16
  %rawKey = alloca i8*, align 8
  %k = alloca [68 x i32], align 16
  %ciphertext = alloca i8, align 1
  %charset = alloca [94 x i8], align 16
  %length = alloca i64, align 8
  %size = alloca i32, align 4
  %round = alloca i64, align 8
  %i = alloca i32, align 4
  %buff = alloca i8*, align 8
  %key = alloca i32, align 4
  %input = alloca i8*, align 8
  %n = alloca i64, align 8
  %key16 = alloca i32, align 4
  %in = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [17 x i8]* %Key, metadata !1157, metadata !DIExpression()), !dbg !1161
  %0 = bitcast [17 x i8]* %Key to i8*, !dbg !1161
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.main.Key, i32 0, i32 0), i64 17, i1 false), !dbg !1161
  call void @llvm.dbg.declare(metadata i8** %rawKey, metadata !1162, metadata !DIExpression()), !dbg !1163
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %Key, i64 0, i64 0, !dbg !1164
  store i8* %arraydecay, i8** %rawKey, align 8, !dbg !1163
  call void @llvm.dbg.declare(metadata [68 x i32]* %k, metadata !1165, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.declare(metadata i8* %ciphertext, metadata !1172, metadata !DIExpression()), !dbg !1173
  %1 = load i8*, i8** %rawKey, align 8, !dbg !1174
  %arraydecay1 = getelementptr inbounds [68 x i32], [68 x i32]* %k, i64 0, i64 0, !dbg !1175
  store i32 128, i32* %keyBitLength.addr.i, align 4
  store i8* %1, i8** %rawKey.addr.i, align 8
  %rawKey.addr1.i = bitcast i8** %rawKey.addr.i to i8*
  call void @llvm.var.annotation(i8* %rawKey.addr1.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 280) #6
  store i32* %arraydecay1, i32** %k.addr.i, align 8
  %2 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1176
  %3 = load i8, i8* %2, align 1, !dbg !1176
  %conv.i = zext i8 %3 to i32, !dbg !1176
  %shl.i = shl i32 %conv.i, 24, !dbg !1176
  %4 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1176
  %arrayidx2.i = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1176
  %5 = load i8, i8* %arrayidx2.i, align 1, !dbg !1176
  %conv3.i = zext i8 %5 to i32, !dbg !1176
  %shl4.i = shl i32 %conv3.i, 16, !dbg !1176
  %xor.i = xor i32 %shl.i, %shl4.i, !dbg !1176
  %6 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1176
  %arrayidx5.i = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1176
  %7 = load i8, i8* %arrayidx5.i, align 1, !dbg !1176
  %conv6.i = zext i8 %7 to i32, !dbg !1176
  %shl7.i = shl i32 %conv6.i, 8, !dbg !1176
  %xor8.i = xor i32 %xor.i, %shl7.i, !dbg !1176
  %8 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1176
  %arrayidx9.i = getelementptr inbounds i8, i8* %8, i64 3, !dbg !1176
  %9 = load i8, i8* %arrayidx9.i, align 1, !dbg !1176
  %conv10.i = zext i8 %9 to i32, !dbg !1176
  %xor11.i = xor i32 %xor8.i, %conv10.i, !dbg !1176
  store i32 %xor11.i, i32* %s0.i, align 4, !dbg !1177
  %10 = load i32*, i32** %k.addr.i, align 8, !dbg !1178
  store i32 %xor11.i, i32* %10, align 4, !dbg !1179
  %11 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1180
  %add.ptr.i = getelementptr inbounds i8, i8* %11, i64 4, !dbg !1180
  %12 = load i8, i8* %add.ptr.i, align 1, !dbg !1180
  %conv14.i = zext i8 %12 to i32, !dbg !1180
  %shl15.i = shl i32 %conv14.i, 24, !dbg !1180
  %13 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1180
  %add.ptr16.i = getelementptr inbounds i8, i8* %13, i64 4, !dbg !1180
  %arrayidx17.i = getelementptr inbounds i8, i8* %add.ptr16.i, i64 1, !dbg !1180
  %14 = load i8, i8* %arrayidx17.i, align 1, !dbg !1180
  %conv18.i = zext i8 %14 to i32, !dbg !1180
  %shl19.i = shl i32 %conv18.i, 16, !dbg !1180
  %xor20.i = xor i32 %shl15.i, %shl19.i, !dbg !1180
  %15 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1180
  %add.ptr21.i = getelementptr inbounds i8, i8* %15, i64 4, !dbg !1180
  %arrayidx22.i = getelementptr inbounds i8, i8* %add.ptr21.i, i64 2, !dbg !1180
  %16 = load i8, i8* %arrayidx22.i, align 1, !dbg !1180
  %conv23.i = zext i8 %16 to i32, !dbg !1180
  %shl24.i = shl i32 %conv23.i, 8, !dbg !1180
  %xor25.i = xor i32 %xor20.i, %shl24.i, !dbg !1180
  %17 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1180
  %add.ptr26.i = getelementptr inbounds i8, i8* %17, i64 4, !dbg !1180
  %arrayidx27.i = getelementptr inbounds i8, i8* %add.ptr26.i, i64 3, !dbg !1180
  %18 = load i8, i8* %arrayidx27.i, align 1, !dbg !1180
  %conv28.i = zext i8 %18 to i32, !dbg !1180
  %xor29.i = xor i32 %xor25.i, %conv28.i, !dbg !1180
  store i32 %xor29.i, i32* %s1.i, align 4, !dbg !1181
  %19 = load i32*, i32** %k.addr.i, align 8, !dbg !1182
  %arrayidx30.i = getelementptr inbounds i32, i32* %19, i64 1, !dbg !1182
  store i32 %xor29.i, i32* %arrayidx30.i, align 4, !dbg !1183
  %20 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1184
  %add.ptr31.i = getelementptr inbounds i8, i8* %20, i64 8, !dbg !1184
  %21 = load i8, i8* %add.ptr31.i, align 1, !dbg !1184
  %conv33.i = zext i8 %21 to i32, !dbg !1184
  %shl34.i = shl i32 %conv33.i, 24, !dbg !1184
  %22 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1184
  %add.ptr35.i = getelementptr inbounds i8, i8* %22, i64 8, !dbg !1184
  %arrayidx36.i = getelementptr inbounds i8, i8* %add.ptr35.i, i64 1, !dbg !1184
  %23 = load i8, i8* %arrayidx36.i, align 1, !dbg !1184
  %conv37.i = zext i8 %23 to i32, !dbg !1184
  %shl38.i = shl i32 %conv37.i, 16, !dbg !1184
  %xor39.i = xor i32 %shl34.i, %shl38.i, !dbg !1184
  %24 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1184
  %add.ptr40.i = getelementptr inbounds i8, i8* %24, i64 8, !dbg !1184
  %arrayidx41.i = getelementptr inbounds i8, i8* %add.ptr40.i, i64 2, !dbg !1184
  %25 = load i8, i8* %arrayidx41.i, align 1, !dbg !1184
  %conv42.i = zext i8 %25 to i32, !dbg !1184
  %shl43.i = shl i32 %conv42.i, 8, !dbg !1184
  %xor44.i = xor i32 %xor39.i, %shl43.i, !dbg !1184
  %26 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1184
  %add.ptr45.i = getelementptr inbounds i8, i8* %26, i64 8, !dbg !1184
  %arrayidx46.i = getelementptr inbounds i8, i8* %add.ptr45.i, i64 3, !dbg !1184
  %27 = load i8, i8* %arrayidx46.i, align 1, !dbg !1184
  %conv47.i = zext i8 %27 to i32, !dbg !1184
  %xor48.i = xor i32 %xor44.i, %conv47.i, !dbg !1184
  store i32 %xor48.i, i32* %s2.i, align 4, !dbg !1185
  %28 = load i32*, i32** %k.addr.i, align 8, !dbg !1186
  %arrayidx49.i = getelementptr inbounds i32, i32* %28, i64 2, !dbg !1186
  store i32 %xor48.i, i32* %arrayidx49.i, align 4, !dbg !1187
  %29 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1188
  %add.ptr50.i = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1188
  %30 = load i8, i8* %add.ptr50.i, align 1, !dbg !1188
  %conv52.i = zext i8 %30 to i32, !dbg !1188
  %shl53.i = shl i32 %conv52.i, 24, !dbg !1188
  %31 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1188
  %add.ptr54.i = getelementptr inbounds i8, i8* %31, i64 12, !dbg !1188
  %arrayidx55.i = getelementptr inbounds i8, i8* %add.ptr54.i, i64 1, !dbg !1188
  %32 = load i8, i8* %arrayidx55.i, align 1, !dbg !1188
  %conv56.i = zext i8 %32 to i32, !dbg !1188
  %shl57.i = shl i32 %conv56.i, 16, !dbg !1188
  %xor58.i = xor i32 %shl53.i, %shl57.i, !dbg !1188
  %33 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1188
  %add.ptr59.i = getelementptr inbounds i8, i8* %33, i64 12, !dbg !1188
  %arrayidx60.i = getelementptr inbounds i8, i8* %add.ptr59.i, i64 2, !dbg !1188
  %34 = load i8, i8* %arrayidx60.i, align 1, !dbg !1188
  %conv61.i = zext i8 %34 to i32, !dbg !1188
  %shl62.i = shl i32 %conv61.i, 8, !dbg !1188
  %xor63.i = xor i32 %xor58.i, %shl62.i, !dbg !1188
  %35 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1188
  %add.ptr64.i = getelementptr inbounds i8, i8* %35, i64 12, !dbg !1188
  %arrayidx65.i = getelementptr inbounds i8, i8* %add.ptr64.i, i64 3, !dbg !1188
  %36 = load i8, i8* %arrayidx65.i, align 1, !dbg !1188
  %conv66.i = zext i8 %36 to i32, !dbg !1188
  %xor67.i = xor i32 %xor63.i, %conv66.i, !dbg !1188
  store i32 %xor67.i, i32* %s3.i, align 4, !dbg !1189
  %37 = load i32*, i32** %k.addr.i, align 8, !dbg !1190
  %arrayidx68.i = getelementptr inbounds i32, i32* %37, i64 3, !dbg !1190
  store i32 %xor67.i, i32* %arrayidx68.i, align 4, !dbg !1191
  %38 = load i32, i32* %keyBitLength.addr.i, align 4, !dbg !1192
  %cmp.i = icmp ne i32 %38, 128, !dbg !1193
  br i1 %cmp.i, label %if.then.i, label %if.end160.i, !dbg !1194

if.then.i:                                        ; preds = %entry
  %39 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1195
  %add.ptr70.i = getelementptr inbounds i8, i8* %39, i64 16, !dbg !1195
  %40 = load i8, i8* %add.ptr70.i, align 1, !dbg !1195
  %conv72.i = zext i8 %40 to i32, !dbg !1195
  %shl73.i = shl i32 %conv72.i, 24, !dbg !1195
  %41 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1195
  %add.ptr74.i = getelementptr inbounds i8, i8* %41, i64 16, !dbg !1195
  %arrayidx75.i = getelementptr inbounds i8, i8* %add.ptr74.i, i64 1, !dbg !1195
  %42 = load i8, i8* %arrayidx75.i, align 1, !dbg !1195
  %conv76.i = zext i8 %42 to i32, !dbg !1195
  %shl77.i = shl i32 %conv76.i, 16, !dbg !1195
  %xor78.i = xor i32 %shl73.i, %shl77.i, !dbg !1195
  %43 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1195
  %add.ptr79.i = getelementptr inbounds i8, i8* %43, i64 16, !dbg !1195
  %arrayidx80.i = getelementptr inbounds i8, i8* %add.ptr79.i, i64 2, !dbg !1195
  %44 = load i8, i8* %arrayidx80.i, align 1, !dbg !1195
  %conv81.i = zext i8 %44 to i32, !dbg !1195
  %shl82.i = shl i32 %conv81.i, 8, !dbg !1195
  %xor83.i = xor i32 %xor78.i, %shl82.i, !dbg !1195
  %45 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1195
  %add.ptr84.i = getelementptr inbounds i8, i8* %45, i64 16, !dbg !1195
  %arrayidx85.i = getelementptr inbounds i8, i8* %add.ptr84.i, i64 3, !dbg !1195
  %46 = load i8, i8* %arrayidx85.i, align 1, !dbg !1195
  %conv86.i = zext i8 %46 to i32, !dbg !1195
  %xor87.i = xor i32 %xor83.i, %conv86.i, !dbg !1195
  store i32 %xor87.i, i32* %s0.i, align 4, !dbg !1196
  %47 = load i32*, i32** %k.addr.i, align 8, !dbg !1197
  %arrayidx88.i = getelementptr inbounds i32, i32* %47, i64 8, !dbg !1197
  store i32 %xor87.i, i32* %arrayidx88.i, align 4, !dbg !1198
  %48 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1199
  %add.ptr89.i = getelementptr inbounds i8, i8* %48, i64 20, !dbg !1199
  %49 = load i8, i8* %add.ptr89.i, align 1, !dbg !1199
  %conv91.i = zext i8 %49 to i32, !dbg !1199
  %shl92.i = shl i32 %conv91.i, 24, !dbg !1199
  %50 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1199
  %add.ptr93.i = getelementptr inbounds i8, i8* %50, i64 20, !dbg !1199
  %arrayidx94.i = getelementptr inbounds i8, i8* %add.ptr93.i, i64 1, !dbg !1199
  %51 = load i8, i8* %arrayidx94.i, align 1, !dbg !1199
  %conv95.i = zext i8 %51 to i32, !dbg !1199
  %shl96.i = shl i32 %conv95.i, 16, !dbg !1199
  %xor97.i = xor i32 %shl92.i, %shl96.i, !dbg !1199
  %52 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1199
  %add.ptr98.i = getelementptr inbounds i8, i8* %52, i64 20, !dbg !1199
  %arrayidx99.i = getelementptr inbounds i8, i8* %add.ptr98.i, i64 2, !dbg !1199
  %53 = load i8, i8* %arrayidx99.i, align 1, !dbg !1199
  %conv100.i = zext i8 %53 to i32, !dbg !1199
  %shl101.i = shl i32 %conv100.i, 8, !dbg !1199
  %xor102.i = xor i32 %xor97.i, %shl101.i, !dbg !1199
  %54 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1199
  %add.ptr103.i = getelementptr inbounds i8, i8* %54, i64 20, !dbg !1199
  %arrayidx104.i = getelementptr inbounds i8, i8* %add.ptr103.i, i64 3, !dbg !1199
  %55 = load i8, i8* %arrayidx104.i, align 1, !dbg !1199
  %conv105.i = zext i8 %55 to i32, !dbg !1199
  %xor106.i = xor i32 %xor102.i, %conv105.i, !dbg !1199
  store i32 %xor106.i, i32* %s1.i, align 4, !dbg !1200
  %56 = load i32*, i32** %k.addr.i, align 8, !dbg !1201
  %arrayidx107.i = getelementptr inbounds i32, i32* %56, i64 9, !dbg !1201
  store i32 %xor106.i, i32* %arrayidx107.i, align 4, !dbg !1202
  %57 = load i32, i32* %keyBitLength.addr.i, align 4, !dbg !1203
  %cmp108.i = icmp eq i32 %57, 192, !dbg !1204
  br i1 %cmp108.i, label %if.then110.i, label %if.else.i, !dbg !1205

if.then110.i:                                     ; preds = %if.then.i
  %58 = load i32, i32* %s0.i, align 4, !dbg !1206
  %neg.i = xor i32 %58, -1, !dbg !1207
  store i32 %neg.i, i32* %s2.i, align 4, !dbg !1208
  %59 = load i32*, i32** %k.addr.i, align 8, !dbg !1209
  %arrayidx111.i = getelementptr inbounds i32, i32* %59, i64 10, !dbg !1209
  store i32 %neg.i, i32* %arrayidx111.i, align 4, !dbg !1210
  %60 = load i32, i32* %s1.i, align 4, !dbg !1211
  %neg112.i = xor i32 %60, -1, !dbg !1212
  store i32 %neg112.i, i32* %s3.i, align 4, !dbg !1213
  %61 = load i32*, i32** %k.addr.i, align 8, !dbg !1214
  %arrayidx113.i = getelementptr inbounds i32, i32* %61, i64 11, !dbg !1214
  store i32 %neg112.i, i32* %arrayidx113.i, align 4, !dbg !1215
  br label %if.end.i, !dbg !1216

if.else.i:                                        ; preds = %if.then.i
  %62 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1217
  %add.ptr114.i = getelementptr inbounds i8, i8* %62, i64 24, !dbg !1217
  %63 = load i8, i8* %add.ptr114.i, align 1, !dbg !1217
  %conv116.i = zext i8 %63 to i32, !dbg !1217
  %shl117.i = shl i32 %conv116.i, 24, !dbg !1217
  %64 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1217
  %add.ptr118.i = getelementptr inbounds i8, i8* %64, i64 24, !dbg !1217
  %arrayidx119.i = getelementptr inbounds i8, i8* %add.ptr118.i, i64 1, !dbg !1217
  %65 = load i8, i8* %arrayidx119.i, align 1, !dbg !1217
  %conv120.i = zext i8 %65 to i32, !dbg !1217
  %shl121.i = shl i32 %conv120.i, 16, !dbg !1217
  %xor122.i = xor i32 %shl117.i, %shl121.i, !dbg !1217
  %66 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1217
  %add.ptr123.i = getelementptr inbounds i8, i8* %66, i64 24, !dbg !1217
  %arrayidx124.i = getelementptr inbounds i8, i8* %add.ptr123.i, i64 2, !dbg !1217
  %67 = load i8, i8* %arrayidx124.i, align 1, !dbg !1217
  %conv125.i = zext i8 %67 to i32, !dbg !1217
  %shl126.i = shl i32 %conv125.i, 8, !dbg !1217
  %xor127.i = xor i32 %xor122.i, %shl126.i, !dbg !1217
  %68 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1217
  %add.ptr128.i = getelementptr inbounds i8, i8* %68, i64 24, !dbg !1217
  %arrayidx129.i = getelementptr inbounds i8, i8* %add.ptr128.i, i64 3, !dbg !1217
  %69 = load i8, i8* %arrayidx129.i, align 1, !dbg !1217
  %conv130.i = zext i8 %69 to i32, !dbg !1217
  %xor131.i = xor i32 %xor127.i, %conv130.i, !dbg !1217
  store i32 %xor131.i, i32* %s2.i, align 4, !dbg !1218
  %70 = load i32*, i32** %k.addr.i, align 8, !dbg !1219
  %arrayidx132.i = getelementptr inbounds i32, i32* %70, i64 10, !dbg !1219
  store i32 %xor131.i, i32* %arrayidx132.i, align 4, !dbg !1220
  %71 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1221
  %add.ptr133.i = getelementptr inbounds i8, i8* %71, i64 28, !dbg !1221
  %72 = load i8, i8* %add.ptr133.i, align 1, !dbg !1221
  %conv135.i = zext i8 %72 to i32, !dbg !1221
  %shl136.i = shl i32 %conv135.i, 24, !dbg !1221
  %73 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1221
  %add.ptr137.i = getelementptr inbounds i8, i8* %73, i64 28, !dbg !1221
  %arrayidx138.i = getelementptr inbounds i8, i8* %add.ptr137.i, i64 1, !dbg !1221
  %74 = load i8, i8* %arrayidx138.i, align 1, !dbg !1221
  %conv139.i = zext i8 %74 to i32, !dbg !1221
  %shl140.i = shl i32 %conv139.i, 16, !dbg !1221
  %xor141.i = xor i32 %shl136.i, %shl140.i, !dbg !1221
  %75 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1221
  %add.ptr142.i = getelementptr inbounds i8, i8* %75, i64 28, !dbg !1221
  %arrayidx143.i = getelementptr inbounds i8, i8* %add.ptr142.i, i64 2, !dbg !1221
  %76 = load i8, i8* %arrayidx143.i, align 1, !dbg !1221
  %conv144.i = zext i8 %76 to i32, !dbg !1221
  %shl145.i = shl i32 %conv144.i, 8, !dbg !1221
  %xor146.i = xor i32 %xor141.i, %shl145.i, !dbg !1221
  %77 = load i8*, i8** %rawKey.addr.i, align 8, !dbg !1221
  %add.ptr147.i = getelementptr inbounds i8, i8* %77, i64 28, !dbg !1221
  %arrayidx148.i = getelementptr inbounds i8, i8* %add.ptr147.i, i64 3, !dbg !1221
  %78 = load i8, i8* %arrayidx148.i, align 1, !dbg !1221
  %conv149.i = zext i8 %78 to i32, !dbg !1221
  %xor150.i = xor i32 %xor146.i, %conv149.i, !dbg !1221
  store i32 %xor150.i, i32* %s3.i, align 4, !dbg !1222
  %79 = load i32*, i32** %k.addr.i, align 8, !dbg !1223
  %arrayidx151.i = getelementptr inbounds i32, i32* %79, i64 11, !dbg !1223
  store i32 %xor150.i, i32* %arrayidx151.i, align 4, !dbg !1224
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then110.i
  %80 = load i32*, i32** %k.addr.i, align 8, !dbg !1225
  %81 = load i32, i32* %80, align 4, !dbg !1225
  %82 = load i32, i32* %s0.i, align 4, !dbg !1226
  %xor153.i = xor i32 %82, %81, !dbg !1226
  store i32 %xor153.i, i32* %s0.i, align 4, !dbg !1226
  %83 = load i32*, i32** %k.addr.i, align 8, !dbg !1227
  %arrayidx154.i = getelementptr inbounds i32, i32* %83, i64 1, !dbg !1227
  %84 = load i32, i32* %arrayidx154.i, align 4, !dbg !1227
  %85 = load i32, i32* %s1.i, align 4, !dbg !1228
  %xor155.i = xor i32 %85, %84, !dbg !1228
  store i32 %xor155.i, i32* %s1.i, align 4, !dbg !1228
  %86 = load i32*, i32** %k.addr.i, align 8, !dbg !1229
  %arrayidx156.i = getelementptr inbounds i32, i32* %86, i64 2, !dbg !1229
  %87 = load i32, i32* %arrayidx156.i, align 4, !dbg !1229
  %88 = load i32, i32* %s2.i, align 4, !dbg !1230
  %xor157.i = xor i32 %88, %87, !dbg !1230
  store i32 %xor157.i, i32* %s2.i, align 4, !dbg !1230
  %89 = load i32*, i32** %k.addr.i, align 8, !dbg !1231
  %arrayidx158.i = getelementptr inbounds i32, i32* %89, i64 3, !dbg !1231
  %90 = load i32, i32* %arrayidx158.i, align 4, !dbg !1231
  %91 = load i32, i32* %s3.i, align 4, !dbg !1232
  %xor159.i = xor i32 %91, %90, !dbg !1232
  store i32 %xor159.i, i32* %s3.i, align 4, !dbg !1232
  br label %if.end160.i, !dbg !1233

if.end160.i:                                      ; preds = %if.end.i, %entry
  %92 = load i32, i32* %s0.i, align 4, !dbg !1125
  %xor161.i = xor i32 %92, -1600231809, !dbg !1125
  store i32 %xor161.i, i32* %_t0.i, align 4, !dbg !1125
  %93 = load i32, i32* %_t0.i, align 4, !dbg !1125
  %and.i = and i32 %93, 255, !dbg !1125
  %idxprom.i = zext i32 %and.i to i64, !dbg !1125
  %arrayidx162.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom.i, !dbg !1125
  %94 = load i32, i32* %arrayidx162.i, align 4, !dbg !1125
  store i32 %94, i32* %_t3.i, align 4, !dbg !1125
  %95 = load i32, i32* %s1.i, align 4, !dbg !1125
  %xor163.i = xor i32 %95, 1003262091, !dbg !1125
  store i32 %xor163.i, i32* %_t1.i, align 4, !dbg !1125
  %96 = load i32, i32* %_t0.i, align 4, !dbg !1125
  %shr.i = lshr i32 %96, 8, !dbg !1125
  %and164.i = and i32 %shr.i, 255, !dbg !1125
  %idxprom165.i = zext i32 %and164.i to i64, !dbg !1125
  %arrayidx166.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom165.i, !dbg !1125
  %97 = load i32, i32* %arrayidx166.i, align 4, !dbg !1125
  %98 = load i32, i32* %_t3.i, align 4, !dbg !1125
  %xor167.i = xor i32 %98, %97, !dbg !1125
  store i32 %xor167.i, i32* %_t3.i, align 4, !dbg !1125
  %99 = load i32, i32* %_t1.i, align 4, !dbg !1125
  %and168.i = and i32 %99, 255, !dbg !1125
  %idxprom169.i = zext i32 %and168.i to i64, !dbg !1125
  %arrayidx170.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom169.i, !dbg !1125
  %100 = load i32, i32* %arrayidx170.i, align 4, !dbg !1125
  store i32 %100, i32* %_t2.i, align 4, !dbg !1125
  %101 = load i32, i32* %_t0.i, align 4, !dbg !1125
  %shr171.i = lshr i32 %101, 16, !dbg !1125
  %and172.i = and i32 %shr171.i, 255, !dbg !1125
  %idxprom173.i = zext i32 %and172.i to i64, !dbg !1125
  %arrayidx174.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom173.i, !dbg !1125
  %102 = load i32, i32* %arrayidx174.i, align 4, !dbg !1125
  %103 = load i32, i32* %_t3.i, align 4, !dbg !1125
  %xor175.i = xor i32 %103, %102, !dbg !1125
  store i32 %xor175.i, i32* %_t3.i, align 4, !dbg !1125
  %104 = load i32, i32* %_t1.i, align 4, !dbg !1125
  %shr176.i = lshr i32 %104, 8, !dbg !1125
  %and177.i = and i32 %shr176.i, 255, !dbg !1125
  %idxprom178.i = zext i32 %and177.i to i64, !dbg !1125
  %arrayidx179.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom178.i, !dbg !1125
  %105 = load i32, i32* %arrayidx179.i, align 4, !dbg !1125
  %106 = load i32, i32* %_t2.i, align 4, !dbg !1125
  %xor180.i = xor i32 %106, %105, !dbg !1125
  store i32 %xor180.i, i32* %_t2.i, align 4, !dbg !1125
  %107 = load i32, i32* %_t0.i, align 4, !dbg !1125
  %shr181.i = lshr i32 %107, 24, !dbg !1125
  %idxprom182.i = zext i32 %shr181.i to i64, !dbg !1125
  %arrayidx183.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom182.i, !dbg !1125
  %108 = load i32, i32* %arrayidx183.i, align 4, !dbg !1125
  %109 = load i32, i32* %_t3.i, align 4, !dbg !1125
  %xor184.i = xor i32 %109, %108, !dbg !1125
  store i32 %xor184.i, i32* %_t3.i, align 4, !dbg !1125
  %110 = load i32, i32* %_t3.i, align 4, !dbg !1125
  %111 = load i32, i32* %_t2.i, align 4, !dbg !1125
  %xor185.i = xor i32 %111, %110, !dbg !1125
  store i32 %xor185.i, i32* %_t2.i, align 4, !dbg !1125
  %112 = load i32, i32* %_t3.i, align 4, !dbg !1125
  %shr186.i = lshr i32 %112, 8, !dbg !1125
  %113 = load i32, i32* %_t3.i, align 4, !dbg !1125
  %shl187.i = shl i32 %113, 24, !dbg !1125
  %add.i = add i32 %shr186.i, %shl187.i, !dbg !1125
  store i32 %add.i, i32* %_t3.i, align 4, !dbg !1125
  %114 = load i32, i32* %_t1.i, align 4, !dbg !1125
  %shr188.i = lshr i32 %114, 16, !dbg !1125
  %and189.i = and i32 %shr188.i, 255, !dbg !1125
  %idxprom190.i = zext i32 %and189.i to i64, !dbg !1125
  %arrayidx191.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom190.i, !dbg !1125
  %115 = load i32, i32* %arrayidx191.i, align 4, !dbg !1125
  %116 = load i32, i32* %_t2.i, align 4, !dbg !1125
  %xor192.i = xor i32 %116, %115, !dbg !1125
  store i32 %xor192.i, i32* %_t2.i, align 4, !dbg !1125
  %117 = load i32, i32* %_t3.i, align 4, !dbg !1125
  %118 = load i32, i32* %s3.i, align 4, !dbg !1125
  %xor193.i = xor i32 %118, %117, !dbg !1125
  store i32 %xor193.i, i32* %s3.i, align 4, !dbg !1125
  %119 = load i32, i32* %_t1.i, align 4, !dbg !1125
  %shr194.i = lshr i32 %119, 24, !dbg !1125
  %idxprom195.i = zext i32 %shr194.i to i64, !dbg !1125
  %arrayidx196.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom195.i, !dbg !1125
  %120 = load i32, i32* %arrayidx196.i, align 4, !dbg !1125
  %121 = load i32, i32* %_t2.i, align 4, !dbg !1125
  %xor197.i = xor i32 %121, %120, !dbg !1125
  store i32 %xor197.i, i32* %_t2.i, align 4, !dbg !1125
  %122 = load i32, i32* %_t2.i, align 4, !dbg !1125
  %123 = load i32, i32* %s2.i, align 4, !dbg !1125
  %xor198.i = xor i32 %123, %122, !dbg !1125
  store i32 %xor198.i, i32* %s2.i, align 4, !dbg !1125
  %124 = load i32, i32* %_t2.i, align 4, !dbg !1125
  %125 = load i32, i32* %s3.i, align 4, !dbg !1125
  %xor199.i = xor i32 %125, %124, !dbg !1125
  store i32 %xor199.i, i32* %s3.i, align 4, !dbg !1125
  %126 = load i32, i32* %s2.i, align 4, !dbg !1126
  %xor205.i = xor i32 %126, -1233459112, !dbg !1126
  store i32 %xor205.i, i32* %_t0201.i, align 4, !dbg !1126
  %127 = load i32, i32* %_t0201.i, align 4, !dbg !1126
  %and206.i = and i32 %127, 255, !dbg !1126
  %idxprom207.i = zext i32 %and206.i to i64, !dbg !1126
  %arrayidx208.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom207.i, !dbg !1126
  %128 = load i32, i32* %arrayidx208.i, align 4, !dbg !1126
  store i32 %128, i32* %_t3204.i, align 4, !dbg !1126
  %129 = load i32, i32* %s3.i, align 4, !dbg !1126
  %xor209.i = xor i32 %129, 1286239154, !dbg !1126
  store i32 %xor209.i, i32* %_t1202.i, align 4, !dbg !1126
  %130 = load i32, i32* %_t0201.i, align 4, !dbg !1126
  %shr210.i = lshr i32 %130, 8, !dbg !1126
  %and211.i = and i32 %shr210.i, 255, !dbg !1126
  %idxprom212.i = zext i32 %and211.i to i64, !dbg !1126
  %arrayidx213.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom212.i, !dbg !1126
  %131 = load i32, i32* %arrayidx213.i, align 4, !dbg !1126
  %132 = load i32, i32* %_t3204.i, align 4, !dbg !1126
  %xor214.i = xor i32 %132, %131, !dbg !1126
  store i32 %xor214.i, i32* %_t3204.i, align 4, !dbg !1126
  %133 = load i32, i32* %_t1202.i, align 4, !dbg !1126
  %and215.i = and i32 %133, 255, !dbg !1126
  %idxprom216.i = zext i32 %and215.i to i64, !dbg !1126
  %arrayidx217.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom216.i, !dbg !1126
  %134 = load i32, i32* %arrayidx217.i, align 4, !dbg !1126
  store i32 %134, i32* %_t2203.i, align 4, !dbg !1126
  %135 = load i32, i32* %_t0201.i, align 4, !dbg !1126
  %shr218.i = lshr i32 %135, 16, !dbg !1126
  %and219.i = and i32 %shr218.i, 255, !dbg !1126
  %idxprom220.i = zext i32 %and219.i to i64, !dbg !1126
  %arrayidx221.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom220.i, !dbg !1126
  %136 = load i32, i32* %arrayidx221.i, align 4, !dbg !1126
  %137 = load i32, i32* %_t3204.i, align 4, !dbg !1126
  %xor222.i = xor i32 %137, %136, !dbg !1126
  store i32 %xor222.i, i32* %_t3204.i, align 4, !dbg !1126
  %138 = load i32, i32* %_t1202.i, align 4, !dbg !1126
  %shr223.i = lshr i32 %138, 8, !dbg !1126
  %and224.i = and i32 %shr223.i, 255, !dbg !1126
  %idxprom225.i = zext i32 %and224.i to i64, !dbg !1126
  %arrayidx226.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom225.i, !dbg !1126
  %139 = load i32, i32* %arrayidx226.i, align 4, !dbg !1126
  %140 = load i32, i32* %_t2203.i, align 4, !dbg !1126
  %xor227.i = xor i32 %140, %139, !dbg !1126
  store i32 %xor227.i, i32* %_t2203.i, align 4, !dbg !1126
  %141 = load i32, i32* %_t0201.i, align 4, !dbg !1126
  %shr228.i = lshr i32 %141, 24, !dbg !1126
  %idxprom229.i = zext i32 %shr228.i to i64, !dbg !1126
  %arrayidx230.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom229.i, !dbg !1126
  %142 = load i32, i32* %arrayidx230.i, align 4, !dbg !1126
  %143 = load i32, i32* %_t3204.i, align 4, !dbg !1126
  %xor231.i = xor i32 %143, %142, !dbg !1126
  store i32 %xor231.i, i32* %_t3204.i, align 4, !dbg !1126
  %144 = load i32, i32* %_t3204.i, align 4, !dbg !1126
  %145 = load i32, i32* %_t2203.i, align 4, !dbg !1126
  %xor232.i = xor i32 %145, %144, !dbg !1126
  store i32 %xor232.i, i32* %_t2203.i, align 4, !dbg !1126
  %146 = load i32, i32* %_t3204.i, align 4, !dbg !1126
  %shr233.i = lshr i32 %146, 8, !dbg !1126
  %147 = load i32, i32* %_t3204.i, align 4, !dbg !1126
  %shl234.i = shl i32 %147, 24, !dbg !1126
  %add235.i = add i32 %shr233.i, %shl234.i, !dbg !1126
  store i32 %add235.i, i32* %_t3204.i, align 4, !dbg !1126
  %148 = load i32, i32* %_t1202.i, align 4, !dbg !1126
  %shr236.i = lshr i32 %148, 16, !dbg !1126
  %and237.i = and i32 %shr236.i, 255, !dbg !1126
  %idxprom238.i = zext i32 %and237.i to i64, !dbg !1126
  %arrayidx239.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom238.i, !dbg !1126
  %149 = load i32, i32* %arrayidx239.i, align 4, !dbg !1126
  %150 = load i32, i32* %_t2203.i, align 4, !dbg !1126
  %xor240.i = xor i32 %150, %149, !dbg !1126
  store i32 %xor240.i, i32* %_t2203.i, align 4, !dbg !1126
  %151 = load i32, i32* %_t3204.i, align 4, !dbg !1126
  %152 = load i32, i32* %s1.i, align 4, !dbg !1126
  %xor241.i = xor i32 %152, %151, !dbg !1126
  store i32 %xor241.i, i32* %s1.i, align 4, !dbg !1126
  %153 = load i32, i32* %_t1202.i, align 4, !dbg !1126
  %shr242.i = lshr i32 %153, 24, !dbg !1126
  %idxprom243.i = zext i32 %shr242.i to i64, !dbg !1126
  %arrayidx244.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom243.i, !dbg !1126
  %154 = load i32, i32* %arrayidx244.i, align 4, !dbg !1126
  %155 = load i32, i32* %_t2203.i, align 4, !dbg !1126
  %xor245.i = xor i32 %155, %154, !dbg !1126
  store i32 %xor245.i, i32* %_t2203.i, align 4, !dbg !1126
  %156 = load i32, i32* %_t2203.i, align 4, !dbg !1126
  %157 = load i32, i32* %s0.i, align 4, !dbg !1126
  %xor246.i = xor i32 %157, %156, !dbg !1126
  store i32 %xor246.i, i32* %s0.i, align 4, !dbg !1126
  %158 = load i32, i32* %_t2203.i, align 4, !dbg !1126
  %159 = load i32, i32* %s1.i, align 4, !dbg !1126
  %xor247.i = xor i32 %159, %158, !dbg !1126
  store i32 %xor247.i, i32* %s1.i, align 4, !dbg !1126
  %160 = load i32*, i32** %k.addr.i, align 8, !dbg !1234
  %161 = load i32, i32* %160, align 4, !dbg !1234
  %162 = load i32, i32* %s0.i, align 4, !dbg !1235
  %xor250.i = xor i32 %162, %161, !dbg !1235
  store i32 %xor250.i, i32* %s0.i, align 4, !dbg !1235
  %163 = load i32*, i32** %k.addr.i, align 8, !dbg !1236
  %arrayidx251.i = getelementptr inbounds i32, i32* %163, i64 1, !dbg !1236
  %164 = load i32, i32* %arrayidx251.i, align 4, !dbg !1236
  %165 = load i32, i32* %s1.i, align 4, !dbg !1237
  %xor252.i = xor i32 %165, %164, !dbg !1237
  store i32 %xor252.i, i32* %s1.i, align 4, !dbg !1237
  %166 = load i32*, i32** %k.addr.i, align 8, !dbg !1238
  %arrayidx253.i = getelementptr inbounds i32, i32* %166, i64 2, !dbg !1238
  %167 = load i32, i32* %arrayidx253.i, align 4, !dbg !1238
  %168 = load i32, i32* %s2.i, align 4, !dbg !1239
  %xor254.i = xor i32 %168, %167, !dbg !1239
  store i32 %xor254.i, i32* %s2.i, align 4, !dbg !1239
  %169 = load i32*, i32** %k.addr.i, align 8, !dbg !1240
  %arrayidx255.i = getelementptr inbounds i32, i32* %169, i64 3, !dbg !1240
  %170 = load i32, i32* %arrayidx255.i, align 4, !dbg !1240
  %171 = load i32, i32* %s3.i, align 4, !dbg !1241
  %xor256.i = xor i32 %171, %170, !dbg !1241
  store i32 %xor256.i, i32* %s3.i, align 4, !dbg !1241
  %172 = load i32, i32* %s0.i, align 4, !dbg !1127
  %xor262.i = xor i32 %172, -957401297, !dbg !1127
  store i32 %xor262.i, i32* %_t0258.i, align 4, !dbg !1127
  %173 = load i32, i32* %_t0258.i, align 4, !dbg !1127
  %and263.i = and i32 %173, 255, !dbg !1127
  %idxprom264.i = zext i32 %and263.i to i64, !dbg !1127
  %arrayidx265.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom264.i, !dbg !1127
  %174 = load i32, i32* %arrayidx265.i, align 4, !dbg !1127
  store i32 %174, i32* %_t3261.i, align 4, !dbg !1127
  %175 = load i32, i32* %s1.i, align 4, !dbg !1127
  %xor266.i = xor i32 %175, -380665154, !dbg !1127
  store i32 %xor266.i, i32* %_t1259.i, align 4, !dbg !1127
  %176 = load i32, i32* %_t0258.i, align 4, !dbg !1127
  %shr267.i = lshr i32 %176, 8, !dbg !1127
  %and268.i = and i32 %shr267.i, 255, !dbg !1127
  %idxprom269.i = zext i32 %and268.i to i64, !dbg !1127
  %arrayidx270.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom269.i, !dbg !1127
  %177 = load i32, i32* %arrayidx270.i, align 4, !dbg !1127
  %178 = load i32, i32* %_t3261.i, align 4, !dbg !1127
  %xor271.i = xor i32 %178, %177, !dbg !1127
  store i32 %xor271.i, i32* %_t3261.i, align 4, !dbg !1127
  %179 = load i32, i32* %_t1259.i, align 4, !dbg !1127
  %and272.i = and i32 %179, 255, !dbg !1127
  %idxprom273.i = zext i32 %and272.i to i64, !dbg !1127
  %arrayidx274.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom273.i, !dbg !1127
  %180 = load i32, i32* %arrayidx274.i, align 4, !dbg !1127
  store i32 %180, i32* %_t2260.i, align 4, !dbg !1127
  %181 = load i32, i32* %_t0258.i, align 4, !dbg !1127
  %shr275.i = lshr i32 %181, 16, !dbg !1127
  %and276.i = and i32 %shr275.i, 255, !dbg !1127
  %idxprom277.i = zext i32 %and276.i to i64, !dbg !1127
  %arrayidx278.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom277.i, !dbg !1127
  %182 = load i32, i32* %arrayidx278.i, align 4, !dbg !1127
  %183 = load i32, i32* %_t3261.i, align 4, !dbg !1127
  %xor279.i = xor i32 %183, %182, !dbg !1127
  store i32 %xor279.i, i32* %_t3261.i, align 4, !dbg !1127
  %184 = load i32, i32* %_t1259.i, align 4, !dbg !1127
  %shr280.i = lshr i32 %184, 8, !dbg !1127
  %and281.i = and i32 %shr280.i, 255, !dbg !1127
  %idxprom282.i = zext i32 %and281.i to i64, !dbg !1127
  %arrayidx283.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom282.i, !dbg !1127
  %185 = load i32, i32* %arrayidx283.i, align 4, !dbg !1127
  %186 = load i32, i32* %_t2260.i, align 4, !dbg !1127
  %xor284.i = xor i32 %186, %185, !dbg !1127
  store i32 %xor284.i, i32* %_t2260.i, align 4, !dbg !1127
  %187 = load i32, i32* %_t0258.i, align 4, !dbg !1127
  %shr285.i = lshr i32 %187, 24, !dbg !1127
  %idxprom286.i = zext i32 %shr285.i to i64, !dbg !1127
  %arrayidx287.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom286.i, !dbg !1127
  %188 = load i32, i32* %arrayidx287.i, align 4, !dbg !1127
  %189 = load i32, i32* %_t3261.i, align 4, !dbg !1127
  %xor288.i = xor i32 %189, %188, !dbg !1127
  store i32 %xor288.i, i32* %_t3261.i, align 4, !dbg !1127
  %190 = load i32, i32* %_t3261.i, align 4, !dbg !1127
  %191 = load i32, i32* %_t2260.i, align 4, !dbg !1127
  %xor289.i = xor i32 %191, %190, !dbg !1127
  store i32 %xor289.i, i32* %_t2260.i, align 4, !dbg !1127
  %192 = load i32, i32* %_t3261.i, align 4, !dbg !1127
  %shr290.i = lshr i32 %192, 8, !dbg !1127
  %193 = load i32, i32* %_t3261.i, align 4, !dbg !1127
  %shl291.i = shl i32 %193, 24, !dbg !1127
  %add292.i = add i32 %shr290.i, %shl291.i, !dbg !1127
  store i32 %add292.i, i32* %_t3261.i, align 4, !dbg !1127
  %194 = load i32, i32* %_t1259.i, align 4, !dbg !1127
  %shr293.i = lshr i32 %194, 16, !dbg !1127
  %and294.i = and i32 %shr293.i, 255, !dbg !1127
  %idxprom295.i = zext i32 %and294.i to i64, !dbg !1127
  %arrayidx296.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom295.i, !dbg !1127
  %195 = load i32, i32* %arrayidx296.i, align 4, !dbg !1127
  %196 = load i32, i32* %_t2260.i, align 4, !dbg !1127
  %xor297.i = xor i32 %196, %195, !dbg !1127
  store i32 %xor297.i, i32* %_t2260.i, align 4, !dbg !1127
  %197 = load i32, i32* %_t3261.i, align 4, !dbg !1127
  %198 = load i32, i32* %s3.i, align 4, !dbg !1127
  %xor298.i = xor i32 %198, %197, !dbg !1127
  store i32 %xor298.i, i32* %s3.i, align 4, !dbg !1127
  %199 = load i32, i32* %_t1259.i, align 4, !dbg !1127
  %shr299.i = lshr i32 %199, 24, !dbg !1127
  %idxprom300.i = zext i32 %shr299.i to i64, !dbg !1127
  %arrayidx301.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom300.i, !dbg !1127
  %200 = load i32, i32* %arrayidx301.i, align 4, !dbg !1127
  %201 = load i32, i32* %_t2260.i, align 4, !dbg !1127
  %xor302.i = xor i32 %201, %200, !dbg !1127
  store i32 %xor302.i, i32* %_t2260.i, align 4, !dbg !1127
  %202 = load i32, i32* %_t2260.i, align 4, !dbg !1127
  %203 = load i32, i32* %s2.i, align 4, !dbg !1127
  %xor303.i = xor i32 %203, %202, !dbg !1127
  store i32 %xor303.i, i32* %s2.i, align 4, !dbg !1127
  %204 = load i32, i32* %_t2260.i, align 4, !dbg !1127
  %205 = load i32, i32* %s3.i, align 4, !dbg !1127
  %xor304.i = xor i32 %205, %204, !dbg !1127
  store i32 %xor304.i, i32* %s3.i, align 4, !dbg !1127
  %206 = load i32, i32* %s2.i, align 4, !dbg !1128
  %xor311.i = xor i32 %206, 1426019237, !dbg !1128
  store i32 %xor311.i, i32* %_t0307.i, align 4, !dbg !1128
  %207 = load i32, i32* %_t0307.i, align 4, !dbg !1128
  %and312.i = and i32 %207, 255, !dbg !1128
  %idxprom313.i = zext i32 %and312.i to i64, !dbg !1128
  %arrayidx314.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom313.i, !dbg !1128
  %208 = load i32, i32* %arrayidx314.i, align 4, !dbg !1128
  store i32 %208, i32* %_t3310.i, align 4, !dbg !1128
  %209 = load i32, i32* %s3.i, align 4, !dbg !1128
  %xor315.i = xor i32 %209, -237801700, !dbg !1128
  store i32 %xor315.i, i32* %_t1308.i, align 4, !dbg !1128
  %210 = load i32, i32* %_t0307.i, align 4, !dbg !1128
  %shr316.i = lshr i32 %210, 8, !dbg !1128
  %and317.i = and i32 %shr316.i, 255, !dbg !1128
  %idxprom318.i = zext i32 %and317.i to i64, !dbg !1128
  %arrayidx319.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom318.i, !dbg !1128
  %211 = load i32, i32* %arrayidx319.i, align 4, !dbg !1128
  %212 = load i32, i32* %_t3310.i, align 4, !dbg !1128
  %xor320.i = xor i32 %212, %211, !dbg !1128
  store i32 %xor320.i, i32* %_t3310.i, align 4, !dbg !1128
  %213 = load i32, i32* %_t1308.i, align 4, !dbg !1128
  %and321.i = and i32 %213, 255, !dbg !1128
  %idxprom322.i = zext i32 %and321.i to i64, !dbg !1128
  %arrayidx323.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom322.i, !dbg !1128
  %214 = load i32, i32* %arrayidx323.i, align 4, !dbg !1128
  store i32 %214, i32* %_t2309.i, align 4, !dbg !1128
  %215 = load i32, i32* %_t0307.i, align 4, !dbg !1128
  %shr324.i = lshr i32 %215, 16, !dbg !1128
  %and325.i = and i32 %shr324.i, 255, !dbg !1128
  %idxprom326.i = zext i32 %and325.i to i64, !dbg !1128
  %arrayidx327.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom326.i, !dbg !1128
  %216 = load i32, i32* %arrayidx327.i, align 4, !dbg !1128
  %217 = load i32, i32* %_t3310.i, align 4, !dbg !1128
  %xor328.i = xor i32 %217, %216, !dbg !1128
  store i32 %xor328.i, i32* %_t3310.i, align 4, !dbg !1128
  %218 = load i32, i32* %_t1308.i, align 4, !dbg !1128
  %shr329.i = lshr i32 %218, 8, !dbg !1128
  %and330.i = and i32 %shr329.i, 255, !dbg !1128
  %idxprom331.i = zext i32 %and330.i to i64, !dbg !1128
  %arrayidx332.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom331.i, !dbg !1128
  %219 = load i32, i32* %arrayidx332.i, align 4, !dbg !1128
  %220 = load i32, i32* %_t2309.i, align 4, !dbg !1128
  %xor333.i = xor i32 %220, %219, !dbg !1128
  store i32 %xor333.i, i32* %_t2309.i, align 4, !dbg !1128
  %221 = load i32, i32* %_t0307.i, align 4, !dbg !1128
  %shr334.i = lshr i32 %221, 24, !dbg !1128
  %idxprom335.i = zext i32 %shr334.i to i64, !dbg !1128
  %arrayidx336.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom335.i, !dbg !1128
  %222 = load i32, i32* %arrayidx336.i, align 4, !dbg !1128
  %223 = load i32, i32* %_t3310.i, align 4, !dbg !1128
  %xor337.i = xor i32 %223, %222, !dbg !1128
  store i32 %xor337.i, i32* %_t3310.i, align 4, !dbg !1128
  %224 = load i32, i32* %_t3310.i, align 4, !dbg !1128
  %225 = load i32, i32* %_t2309.i, align 4, !dbg !1128
  %xor338.i = xor i32 %225, %224, !dbg !1128
  store i32 %xor338.i, i32* %_t2309.i, align 4, !dbg !1128
  %226 = load i32, i32* %_t3310.i, align 4, !dbg !1128
  %shr339.i = lshr i32 %226, 8, !dbg !1128
  %227 = load i32, i32* %_t3310.i, align 4, !dbg !1128
  %shl340.i = shl i32 %227, 24, !dbg !1128
  %add341.i = add i32 %shr339.i, %shl340.i, !dbg !1128
  store i32 %add341.i, i32* %_t3310.i, align 4, !dbg !1128
  %228 = load i32, i32* %_t1308.i, align 4, !dbg !1128
  %shr342.i = lshr i32 %228, 16, !dbg !1128
  %and343.i = and i32 %shr342.i, 255, !dbg !1128
  %idxprom344.i = zext i32 %and343.i to i64, !dbg !1128
  %arrayidx345.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom344.i, !dbg !1128
  %229 = load i32, i32* %arrayidx345.i, align 4, !dbg !1128
  %230 = load i32, i32* %_t2309.i, align 4, !dbg !1128
  %xor346.i = xor i32 %230, %229, !dbg !1128
  store i32 %xor346.i, i32* %_t2309.i, align 4, !dbg !1128
  %231 = load i32, i32* %_t3310.i, align 4, !dbg !1128
  %232 = load i32, i32* %s1.i, align 4, !dbg !1128
  %xor347.i = xor i32 %232, %231, !dbg !1128
  store i32 %xor347.i, i32* %s1.i, align 4, !dbg !1128
  %233 = load i32, i32* %_t1308.i, align 4, !dbg !1128
  %shr348.i = lshr i32 %233, 24, !dbg !1128
  %idxprom349.i = zext i32 %shr348.i to i64, !dbg !1128
  %arrayidx350.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom349.i, !dbg !1128
  %234 = load i32, i32* %arrayidx350.i, align 4, !dbg !1128
  %235 = load i32, i32* %_t2309.i, align 4, !dbg !1128
  %xor351.i = xor i32 %235, %234, !dbg !1128
  store i32 %xor351.i, i32* %_t2309.i, align 4, !dbg !1128
  %236 = load i32, i32* %_t2309.i, align 4, !dbg !1128
  %237 = load i32, i32* %s0.i, align 4, !dbg !1128
  %xor352.i = xor i32 %237, %236, !dbg !1128
  store i32 %xor352.i, i32* %s0.i, align 4, !dbg !1128
  %238 = load i32, i32* %_t2309.i, align 4, !dbg !1128
  %239 = load i32, i32* %s1.i, align 4, !dbg !1128
  %xor353.i = xor i32 %239, %238, !dbg !1128
  store i32 %xor353.i, i32* %s1.i, align 4, !dbg !1128
  %240 = load i32, i32* %keyBitLength.addr.i, align 4, !dbg !1242
  %cmp355.i = icmp eq i32 %240, 128, !dbg !1243
  br i1 %cmp355.i, label %if.then357.i, label %if.else589.i, !dbg !1244

if.then357.i:                                     ; preds = %if.end160.i
  %241 = load i32, i32* %s0.i, align 4, !dbg !1245
  %242 = load i32*, i32** %k.addr.i, align 8, !dbg !1246
  %arrayidx358.i = getelementptr inbounds i32, i32* %242, i64 4, !dbg !1246
  store i32 %241, i32* %arrayidx358.i, align 4, !dbg !1247
  %243 = load i32, i32* %s1.i, align 4, !dbg !1248
  %244 = load i32*, i32** %k.addr.i, align 8, !dbg !1249
  %arrayidx359.i = getelementptr inbounds i32, i32* %244, i64 5, !dbg !1249
  store i32 %243, i32* %arrayidx359.i, align 4, !dbg !1250
  %245 = load i32, i32* %s2.i, align 4, !dbg !1251
  %246 = load i32*, i32** %k.addr.i, align 8, !dbg !1252
  %arrayidx360.i = getelementptr inbounds i32, i32* %246, i64 6, !dbg !1252
  store i32 %245, i32* %arrayidx360.i, align 4, !dbg !1253
  %247 = load i32, i32* %s3.i, align 4, !dbg !1254
  %248 = load i32*, i32** %k.addr.i, align 8, !dbg !1255
  %arrayidx361.i = getelementptr inbounds i32, i32* %248, i64 7, !dbg !1255
  store i32 %247, i32* %arrayidx361.i, align 4, !dbg !1256
  %249 = load i32, i32* %s0.i, align 4, !dbg !1129
  %shr364.i = lshr i32 %249, 17, !dbg !1129
  store i32 %shr364.i, i32* %_t0363.i, align 4, !dbg !1129
  %250 = load i32, i32* %s0.i, align 4, !dbg !1129
  %shl365.i = shl i32 %250, 15, !dbg !1129
  %251 = load i32, i32* %s1.i, align 4, !dbg !1129
  %shr366.i = lshr i32 %251, 17, !dbg !1129
  %or.i = or i32 %shl365.i, %shr366.i, !dbg !1129
  store i32 %or.i, i32* %s0.i, align 4, !dbg !1129
  %252 = load i32, i32* %s1.i, align 4, !dbg !1129
  %shl367.i = shl i32 %252, 15, !dbg !1129
  %253 = load i32, i32* %s2.i, align 4, !dbg !1129
  %shr368.i = lshr i32 %253, 17, !dbg !1129
  %or369.i = or i32 %shl367.i, %shr368.i, !dbg !1129
  store i32 %or369.i, i32* %s1.i, align 4, !dbg !1129
  %254 = load i32, i32* %s2.i, align 4, !dbg !1129
  %shl370.i = shl i32 %254, 15, !dbg !1129
  %255 = load i32, i32* %s3.i, align 4, !dbg !1129
  %shr371.i = lshr i32 %255, 17, !dbg !1129
  %or372.i = or i32 %shl370.i, %shr371.i, !dbg !1129
  store i32 %or372.i, i32* %s2.i, align 4, !dbg !1129
  %256 = load i32, i32* %s3.i, align 4, !dbg !1129
  %shl373.i = shl i32 %256, 15, !dbg !1129
  %257 = load i32, i32* %_t0363.i, align 4, !dbg !1129
  %or374.i = or i32 %shl373.i, %257, !dbg !1129
  store i32 %or374.i, i32* %s3.i, align 4, !dbg !1129
  %258 = load i32, i32* %s0.i, align 4, !dbg !1257
  %259 = load i32*, i32** %k.addr.i, align 8, !dbg !1258
  %arrayidx376.i = getelementptr inbounds i32, i32* %259, i64 12, !dbg !1258
  store i32 %258, i32* %arrayidx376.i, align 4, !dbg !1259
  %260 = load i32, i32* %s1.i, align 4, !dbg !1260
  %261 = load i32*, i32** %k.addr.i, align 8, !dbg !1261
  %arrayidx377.i = getelementptr inbounds i32, i32* %261, i64 13, !dbg !1261
  store i32 %260, i32* %arrayidx377.i, align 4, !dbg !1262
  %262 = load i32, i32* %s2.i, align 4, !dbg !1263
  %263 = load i32*, i32** %k.addr.i, align 8, !dbg !1264
  %arrayidx378.i = getelementptr inbounds i32, i32* %263, i64 14, !dbg !1264
  store i32 %262, i32* %arrayidx378.i, align 4, !dbg !1265
  %264 = load i32, i32* %s3.i, align 4, !dbg !1266
  %265 = load i32*, i32** %k.addr.i, align 8, !dbg !1267
  %arrayidx379.i = getelementptr inbounds i32, i32* %265, i64 15, !dbg !1267
  store i32 %264, i32* %arrayidx379.i, align 4, !dbg !1268
  %266 = load i32, i32* %s0.i, align 4, !dbg !1130
  %shr382.i = lshr i32 %266, 17, !dbg !1130
  store i32 %shr382.i, i32* %_t0381.i, align 4, !dbg !1130
  %267 = load i32, i32* %s0.i, align 4, !dbg !1130
  %shl383.i = shl i32 %267, 15, !dbg !1130
  %268 = load i32, i32* %s1.i, align 4, !dbg !1130
  %shr384.i = lshr i32 %268, 17, !dbg !1130
  %or385.i = or i32 %shl383.i, %shr384.i, !dbg !1130
  store i32 %or385.i, i32* %s0.i, align 4, !dbg !1130
  %269 = load i32, i32* %s1.i, align 4, !dbg !1130
  %shl386.i = shl i32 %269, 15, !dbg !1130
  %270 = load i32, i32* %s2.i, align 4, !dbg !1130
  %shr387.i = lshr i32 %270, 17, !dbg !1130
  %or388.i = or i32 %shl386.i, %shr387.i, !dbg !1130
  store i32 %or388.i, i32* %s1.i, align 4, !dbg !1130
  %271 = load i32, i32* %s2.i, align 4, !dbg !1130
  %shl389.i = shl i32 %271, 15, !dbg !1130
  %272 = load i32, i32* %s3.i, align 4, !dbg !1130
  %shr390.i = lshr i32 %272, 17, !dbg !1130
  %or391.i = or i32 %shl389.i, %shr390.i, !dbg !1130
  store i32 %or391.i, i32* %s2.i, align 4, !dbg !1130
  %273 = load i32, i32* %s3.i, align 4, !dbg !1130
  %shl392.i = shl i32 %273, 15, !dbg !1130
  %274 = load i32, i32* %_t0381.i, align 4, !dbg !1130
  %or393.i = or i32 %shl392.i, %274, !dbg !1130
  store i32 %or393.i, i32* %s3.i, align 4, !dbg !1130
  %275 = load i32, i32* %s0.i, align 4, !dbg !1269
  %276 = load i32*, i32** %k.addr.i, align 8, !dbg !1270
  %arrayidx395.i = getelementptr inbounds i32, i32* %276, i64 16, !dbg !1270
  store i32 %275, i32* %arrayidx395.i, align 4, !dbg !1271
  %277 = load i32, i32* %s1.i, align 4, !dbg !1272
  %278 = load i32*, i32** %k.addr.i, align 8, !dbg !1273
  %arrayidx396.i = getelementptr inbounds i32, i32* %278, i64 17, !dbg !1273
  store i32 %277, i32* %arrayidx396.i, align 4, !dbg !1274
  %279 = load i32, i32* %s2.i, align 4, !dbg !1275
  %280 = load i32*, i32** %k.addr.i, align 8, !dbg !1276
  %arrayidx397.i = getelementptr inbounds i32, i32* %280, i64 18, !dbg !1276
  store i32 %279, i32* %arrayidx397.i, align 4, !dbg !1277
  %281 = load i32, i32* %s3.i, align 4, !dbg !1278
  %282 = load i32*, i32** %k.addr.i, align 8, !dbg !1279
  %arrayidx398.i = getelementptr inbounds i32, i32* %282, i64 19, !dbg !1279
  store i32 %281, i32* %arrayidx398.i, align 4, !dbg !1280
  %283 = load i32, i32* %s0.i, align 4, !dbg !1131
  %shr401.i = lshr i32 %283, 17, !dbg !1131
  store i32 %shr401.i, i32* %_t0400.i, align 4, !dbg !1131
  %284 = load i32, i32* %s0.i, align 4, !dbg !1131
  %shl402.i = shl i32 %284, 15, !dbg !1131
  %285 = load i32, i32* %s1.i, align 4, !dbg !1131
  %shr403.i = lshr i32 %285, 17, !dbg !1131
  %or404.i = or i32 %shl402.i, %shr403.i, !dbg !1131
  store i32 %or404.i, i32* %s0.i, align 4, !dbg !1131
  %286 = load i32, i32* %s1.i, align 4, !dbg !1131
  %shl405.i = shl i32 %286, 15, !dbg !1131
  %287 = load i32, i32* %s2.i, align 4, !dbg !1131
  %shr406.i = lshr i32 %287, 17, !dbg !1131
  %or407.i = or i32 %shl405.i, %shr406.i, !dbg !1131
  store i32 %or407.i, i32* %s1.i, align 4, !dbg !1131
  %288 = load i32, i32* %s2.i, align 4, !dbg !1131
  %shl408.i = shl i32 %288, 15, !dbg !1131
  %289 = load i32, i32* %s3.i, align 4, !dbg !1131
  %shr409.i = lshr i32 %289, 17, !dbg !1131
  %or410.i = or i32 %shl408.i, %shr409.i, !dbg !1131
  store i32 %or410.i, i32* %s2.i, align 4, !dbg !1131
  %290 = load i32, i32* %s3.i, align 4, !dbg !1131
  %shl411.i = shl i32 %290, 15, !dbg !1131
  %291 = load i32, i32* %_t0400.i, align 4, !dbg !1131
  %or412.i = or i32 %shl411.i, %291, !dbg !1131
  store i32 %or412.i, i32* %s3.i, align 4, !dbg !1131
  %292 = load i32, i32* %s0.i, align 4, !dbg !1281
  %293 = load i32*, i32** %k.addr.i, align 8, !dbg !1282
  %arrayidx414.i = getelementptr inbounds i32, i32* %293, i64 24, !dbg !1282
  store i32 %292, i32* %arrayidx414.i, align 4, !dbg !1283
  %294 = load i32, i32* %s1.i, align 4, !dbg !1284
  %295 = load i32*, i32** %k.addr.i, align 8, !dbg !1285
  %arrayidx415.i = getelementptr inbounds i32, i32* %295, i64 25, !dbg !1285
  store i32 %294, i32* %arrayidx415.i, align 4, !dbg !1286
  %296 = load i32, i32* %s0.i, align 4, !dbg !1132
  %shr418.i = lshr i32 %296, 17, !dbg !1132
  store i32 %shr418.i, i32* %_t0417.i, align 4, !dbg !1132
  %297 = load i32, i32* %s0.i, align 4, !dbg !1132
  %shl419.i = shl i32 %297, 15, !dbg !1132
  %298 = load i32, i32* %s1.i, align 4, !dbg !1132
  %shr420.i = lshr i32 %298, 17, !dbg !1132
  %or421.i = or i32 %shl419.i, %shr420.i, !dbg !1132
  store i32 %or421.i, i32* %s0.i, align 4, !dbg !1132
  %299 = load i32, i32* %s1.i, align 4, !dbg !1132
  %shl422.i = shl i32 %299, 15, !dbg !1132
  %300 = load i32, i32* %s2.i, align 4, !dbg !1132
  %shr423.i = lshr i32 %300, 17, !dbg !1132
  %or424.i = or i32 %shl422.i, %shr423.i, !dbg !1132
  store i32 %or424.i, i32* %s1.i, align 4, !dbg !1132
  %301 = load i32, i32* %s2.i, align 4, !dbg !1132
  %shl425.i = shl i32 %301, 15, !dbg !1132
  %302 = load i32, i32* %s3.i, align 4, !dbg !1132
  %shr426.i = lshr i32 %302, 17, !dbg !1132
  %or427.i = or i32 %shl425.i, %shr426.i, !dbg !1132
  store i32 %or427.i, i32* %s2.i, align 4, !dbg !1132
  %303 = load i32, i32* %s3.i, align 4, !dbg !1132
  %shl428.i = shl i32 %303, 15, !dbg !1132
  %304 = load i32, i32* %_t0417.i, align 4, !dbg !1132
  %or429.i = or i32 %shl428.i, %304, !dbg !1132
  store i32 %or429.i, i32* %s3.i, align 4, !dbg !1132
  %305 = load i32, i32* %s0.i, align 4, !dbg !1287
  %306 = load i32*, i32** %k.addr.i, align 8, !dbg !1288
  %arrayidx431.i = getelementptr inbounds i32, i32* %306, i64 28, !dbg !1288
  store i32 %305, i32* %arrayidx431.i, align 4, !dbg !1289
  %307 = load i32, i32* %s1.i, align 4, !dbg !1290
  %308 = load i32*, i32** %k.addr.i, align 8, !dbg !1291
  %arrayidx432.i = getelementptr inbounds i32, i32* %308, i64 29, !dbg !1291
  store i32 %307, i32* %arrayidx432.i, align 4, !dbg !1292
  %309 = load i32, i32* %s2.i, align 4, !dbg !1293
  %310 = load i32*, i32** %k.addr.i, align 8, !dbg !1294
  %arrayidx433.i = getelementptr inbounds i32, i32* %310, i64 30, !dbg !1294
  store i32 %309, i32* %arrayidx433.i, align 4, !dbg !1295
  %311 = load i32, i32* %s3.i, align 4, !dbg !1296
  %312 = load i32*, i32** %k.addr.i, align 8, !dbg !1297
  %arrayidx434.i = getelementptr inbounds i32, i32* %312, i64 31, !dbg !1297
  store i32 %311, i32* %arrayidx434.i, align 4, !dbg !1298
  %313 = load i32, i32* %s1.i, align 4, !dbg !1133
  %shr437.i = lshr i32 %313, 30, !dbg !1133
  store i32 %shr437.i, i32* %_t0436.i, align 4, !dbg !1133
  %314 = load i32, i32* %s1.i, align 4, !dbg !1133
  %shl438.i = shl i32 %314, 2, !dbg !1133
  %315 = load i32, i32* %s2.i, align 4, !dbg !1133
  %shr439.i = lshr i32 %315, 30, !dbg !1133
  %or440.i = or i32 %shl438.i, %shr439.i, !dbg !1133
  store i32 %or440.i, i32* %s1.i, align 4, !dbg !1133
  %316 = load i32, i32* %s2.i, align 4, !dbg !1133
  %shl441.i = shl i32 %316, 2, !dbg !1133
  %317 = load i32, i32* %s3.i, align 4, !dbg !1133
  %shr442.i = lshr i32 %317, 30, !dbg !1133
  %or443.i = or i32 %shl441.i, %shr442.i, !dbg !1133
  store i32 %or443.i, i32* %s2.i, align 4, !dbg !1133
  %318 = load i32, i32* %s3.i, align 4, !dbg !1133
  %shl444.i = shl i32 %318, 2, !dbg !1133
  %319 = load i32, i32* %s0.i, align 4, !dbg !1133
  %shr445.i = lshr i32 %319, 30, !dbg !1133
  %or446.i = or i32 %shl444.i, %shr445.i, !dbg !1133
  store i32 %or446.i, i32* %s3.i, align 4, !dbg !1133
  %320 = load i32, i32* %s0.i, align 4, !dbg !1133
  %shl447.i = shl i32 %320, 2, !dbg !1133
  %321 = load i32, i32* %_t0436.i, align 4, !dbg !1133
  %or448.i = or i32 %shl447.i, %321, !dbg !1133
  store i32 %or448.i, i32* %s0.i, align 4, !dbg !1133
  %322 = load i32, i32* %s1.i, align 4, !dbg !1299
  %323 = load i32*, i32** %k.addr.i, align 8, !dbg !1300
  %arrayidx450.i = getelementptr inbounds i32, i32* %323, i64 40, !dbg !1300
  store i32 %322, i32* %arrayidx450.i, align 4, !dbg !1301
  %324 = load i32, i32* %s2.i, align 4, !dbg !1302
  %325 = load i32*, i32** %k.addr.i, align 8, !dbg !1303
  %arrayidx451.i = getelementptr inbounds i32, i32* %325, i64 41, !dbg !1303
  store i32 %324, i32* %arrayidx451.i, align 4, !dbg !1304
  %326 = load i32, i32* %s3.i, align 4, !dbg !1305
  %327 = load i32*, i32** %k.addr.i, align 8, !dbg !1306
  %arrayidx452.i = getelementptr inbounds i32, i32* %327, i64 42, !dbg !1306
  store i32 %326, i32* %arrayidx452.i, align 4, !dbg !1307
  %328 = load i32, i32* %s0.i, align 4, !dbg !1308
  %329 = load i32*, i32** %k.addr.i, align 8, !dbg !1309
  %arrayidx453.i = getelementptr inbounds i32, i32* %329, i64 43, !dbg !1309
  store i32 %328, i32* %arrayidx453.i, align 4, !dbg !1310
  %330 = load i32, i32* %s1.i, align 4, !dbg !1134
  %shr456.i = lshr i32 %330, 15, !dbg !1134
  store i32 %shr456.i, i32* %_t0455.i, align 4, !dbg !1134
  %331 = load i32, i32* %s1.i, align 4, !dbg !1134
  %shl457.i = shl i32 %331, 17, !dbg !1134
  %332 = load i32, i32* %s2.i, align 4, !dbg !1134
  %shr458.i = lshr i32 %332, 15, !dbg !1134
  %or459.i = or i32 %shl457.i, %shr458.i, !dbg !1134
  store i32 %or459.i, i32* %s1.i, align 4, !dbg !1134
  %333 = load i32, i32* %s2.i, align 4, !dbg !1134
  %shl460.i = shl i32 %333, 17, !dbg !1134
  %334 = load i32, i32* %s3.i, align 4, !dbg !1134
  %shr461.i = lshr i32 %334, 15, !dbg !1134
  %or462.i = or i32 %shl460.i, %shr461.i, !dbg !1134
  store i32 %or462.i, i32* %s2.i, align 4, !dbg !1134
  %335 = load i32, i32* %s3.i, align 4, !dbg !1134
  %shl463.i = shl i32 %335, 17, !dbg !1134
  %336 = load i32, i32* %s0.i, align 4, !dbg !1134
  %shr464.i = lshr i32 %336, 15, !dbg !1134
  %or465.i = or i32 %shl463.i, %shr464.i, !dbg !1134
  store i32 %or465.i, i32* %s3.i, align 4, !dbg !1134
  %337 = load i32, i32* %s0.i, align 4, !dbg !1134
  %shl466.i = shl i32 %337, 17, !dbg !1134
  %338 = load i32, i32* %_t0455.i, align 4, !dbg !1134
  %or467.i = or i32 %shl466.i, %338, !dbg !1134
  store i32 %or467.i, i32* %s0.i, align 4, !dbg !1134
  %339 = load i32, i32* %s1.i, align 4, !dbg !1311
  %340 = load i32*, i32** %k.addr.i, align 8, !dbg !1312
  %arrayidx469.i = getelementptr inbounds i32, i32* %340, i64 48, !dbg !1312
  store i32 %339, i32* %arrayidx469.i, align 4, !dbg !1313
  %341 = load i32, i32* %s2.i, align 4, !dbg !1314
  %342 = load i32*, i32** %k.addr.i, align 8, !dbg !1315
  %arrayidx470.i = getelementptr inbounds i32, i32* %342, i64 49, !dbg !1315
  store i32 %341, i32* %arrayidx470.i, align 4, !dbg !1316
  %343 = load i32, i32* %s3.i, align 4, !dbg !1317
  %344 = load i32*, i32** %k.addr.i, align 8, !dbg !1318
  %arrayidx471.i = getelementptr inbounds i32, i32* %344, i64 50, !dbg !1318
  store i32 %343, i32* %arrayidx471.i, align 4, !dbg !1319
  %345 = load i32, i32* %s0.i, align 4, !dbg !1320
  %346 = load i32*, i32** %k.addr.i, align 8, !dbg !1321
  %arrayidx472.i = getelementptr inbounds i32, i32* %346, i64 51, !dbg !1321
  store i32 %345, i32* %arrayidx472.i, align 4, !dbg !1322
  %347 = load i32*, i32** %k.addr.i, align 8, !dbg !1323
  %348 = load i32, i32* %347, align 4, !dbg !1323
  store i32 %348, i32* %s0.i, align 4, !dbg !1324
  %349 = load i32*, i32** %k.addr.i, align 8, !dbg !1325
  %arrayidx474.i = getelementptr inbounds i32, i32* %349, i64 1, !dbg !1325
  %350 = load i32, i32* %arrayidx474.i, align 4, !dbg !1325
  store i32 %350, i32* %s1.i, align 4, !dbg !1326
  %351 = load i32*, i32** %k.addr.i, align 8, !dbg !1327
  %arrayidx475.i = getelementptr inbounds i32, i32* %351, i64 2, !dbg !1327
  %352 = load i32, i32* %arrayidx475.i, align 4, !dbg !1327
  store i32 %352, i32* %s2.i, align 4, !dbg !1328
  %353 = load i32*, i32** %k.addr.i, align 8, !dbg !1329
  %arrayidx476.i = getelementptr inbounds i32, i32* %353, i64 3, !dbg !1329
  %354 = load i32, i32* %arrayidx476.i, align 4, !dbg !1329
  store i32 %354, i32* %s3.i, align 4, !dbg !1330
  %355 = load i32, i32* %s0.i, align 4, !dbg !1135
  %shr479.i = lshr i32 %355, 17, !dbg !1135
  store i32 %shr479.i, i32* %_t0478.i, align 4, !dbg !1135
  %356 = load i32, i32* %s0.i, align 4, !dbg !1135
  %shl480.i = shl i32 %356, 15, !dbg !1135
  %357 = load i32, i32* %s1.i, align 4, !dbg !1135
  %shr481.i = lshr i32 %357, 17, !dbg !1135
  %or482.i = or i32 %shl480.i, %shr481.i, !dbg !1135
  store i32 %or482.i, i32* %s0.i, align 4, !dbg !1135
  %358 = load i32, i32* %s1.i, align 4, !dbg !1135
  %shl483.i = shl i32 %358, 15, !dbg !1135
  %359 = load i32, i32* %s2.i, align 4, !dbg !1135
  %shr484.i = lshr i32 %359, 17, !dbg !1135
  %or485.i = or i32 %shl483.i, %shr484.i, !dbg !1135
  store i32 %or485.i, i32* %s1.i, align 4, !dbg !1135
  %360 = load i32, i32* %s2.i, align 4, !dbg !1135
  %shl486.i = shl i32 %360, 15, !dbg !1135
  %361 = load i32, i32* %s3.i, align 4, !dbg !1135
  %shr487.i = lshr i32 %361, 17, !dbg !1135
  %or488.i = or i32 %shl486.i, %shr487.i, !dbg !1135
  store i32 %or488.i, i32* %s2.i, align 4, !dbg !1135
  %362 = load i32, i32* %s3.i, align 4, !dbg !1135
  %shl489.i = shl i32 %362, 15, !dbg !1135
  %363 = load i32, i32* %_t0478.i, align 4, !dbg !1135
  %or490.i = or i32 %shl489.i, %363, !dbg !1135
  store i32 %or490.i, i32* %s3.i, align 4, !dbg !1135
  %364 = load i32, i32* %s0.i, align 4, !dbg !1331
  %365 = load i32*, i32** %k.addr.i, align 8, !dbg !1332
  %arrayidx492.i = getelementptr inbounds i32, i32* %365, i64 8, !dbg !1332
  store i32 %364, i32* %arrayidx492.i, align 4, !dbg !1333
  %366 = load i32, i32* %s1.i, align 4, !dbg !1334
  %367 = load i32*, i32** %k.addr.i, align 8, !dbg !1335
  %arrayidx493.i = getelementptr inbounds i32, i32* %367, i64 9, !dbg !1335
  store i32 %366, i32* %arrayidx493.i, align 4, !dbg !1336
  %368 = load i32, i32* %s2.i, align 4, !dbg !1337
  %369 = load i32*, i32** %k.addr.i, align 8, !dbg !1338
  %arrayidx494.i = getelementptr inbounds i32, i32* %369, i64 10, !dbg !1338
  store i32 %368, i32* %arrayidx494.i, align 4, !dbg !1339
  %370 = load i32, i32* %s3.i, align 4, !dbg !1340
  %371 = load i32*, i32** %k.addr.i, align 8, !dbg !1341
  %arrayidx495.i = getelementptr inbounds i32, i32* %371, i64 11, !dbg !1341
  store i32 %370, i32* %arrayidx495.i, align 4, !dbg !1342
  %372 = load i32, i32* %s0.i, align 4, !dbg !1136
  %shr498.i = lshr i32 %372, 2, !dbg !1136
  store i32 %shr498.i, i32* %_t0497.i, align 4, !dbg !1136
  %373 = load i32, i32* %s0.i, align 4, !dbg !1136
  %shl499.i = shl i32 %373, 30, !dbg !1136
  %374 = load i32, i32* %s1.i, align 4, !dbg !1136
  %shr500.i = lshr i32 %374, 2, !dbg !1136
  %or501.i = or i32 %shl499.i, %shr500.i, !dbg !1136
  store i32 %or501.i, i32* %s0.i, align 4, !dbg !1136
  %375 = load i32, i32* %s1.i, align 4, !dbg !1136
  %shl502.i = shl i32 %375, 30, !dbg !1136
  %376 = load i32, i32* %s2.i, align 4, !dbg !1136
  %shr503.i = lshr i32 %376, 2, !dbg !1136
  %or504.i = or i32 %shl502.i, %shr503.i, !dbg !1136
  store i32 %or504.i, i32* %s1.i, align 4, !dbg !1136
  %377 = load i32, i32* %s2.i, align 4, !dbg !1136
  %shl505.i = shl i32 %377, 30, !dbg !1136
  %378 = load i32, i32* %s3.i, align 4, !dbg !1136
  %shr506.i = lshr i32 %378, 2, !dbg !1136
  %or507.i = or i32 %shl505.i, %shr506.i, !dbg !1136
  store i32 %or507.i, i32* %s2.i, align 4, !dbg !1136
  %379 = load i32, i32* %s3.i, align 4, !dbg !1136
  %shl508.i = shl i32 %379, 30, !dbg !1136
  %380 = load i32, i32* %_t0497.i, align 4, !dbg !1136
  %or509.i = or i32 %shl508.i, %380, !dbg !1136
  store i32 %or509.i, i32* %s3.i, align 4, !dbg !1136
  %381 = load i32, i32* %s0.i, align 4, !dbg !1343
  %382 = load i32*, i32** %k.addr.i, align 8, !dbg !1344
  %arrayidx511.i = getelementptr inbounds i32, i32* %382, i64 20, !dbg !1344
  store i32 %381, i32* %arrayidx511.i, align 4, !dbg !1345
  %383 = load i32, i32* %s1.i, align 4, !dbg !1346
  %384 = load i32*, i32** %k.addr.i, align 8, !dbg !1347
  %arrayidx512.i = getelementptr inbounds i32, i32* %384, i64 21, !dbg !1347
  store i32 %383, i32* %arrayidx512.i, align 4, !dbg !1348
  %385 = load i32, i32* %s2.i, align 4, !dbg !1349
  %386 = load i32*, i32** %k.addr.i, align 8, !dbg !1350
  %arrayidx513.i = getelementptr inbounds i32, i32* %386, i64 22, !dbg !1350
  store i32 %385, i32* %arrayidx513.i, align 4, !dbg !1351
  %387 = load i32, i32* %s3.i, align 4, !dbg !1352
  %388 = load i32*, i32** %k.addr.i, align 8, !dbg !1353
  %arrayidx514.i = getelementptr inbounds i32, i32* %388, i64 23, !dbg !1353
  store i32 %387, i32* %arrayidx514.i, align 4, !dbg !1354
  %389 = load i32, i32* %s0.i, align 4, !dbg !1137
  %shr517.i = lshr i32 %389, 17, !dbg !1137
  store i32 %shr517.i, i32* %_t0516.i, align 4, !dbg !1137
  %390 = load i32, i32* %s0.i, align 4, !dbg !1137
  %shl518.i = shl i32 %390, 15, !dbg !1137
  %391 = load i32, i32* %s1.i, align 4, !dbg !1137
  %shr519.i = lshr i32 %391, 17, !dbg !1137
  %or520.i = or i32 %shl518.i, %shr519.i, !dbg !1137
  store i32 %or520.i, i32* %s0.i, align 4, !dbg !1137
  %392 = load i32, i32* %s1.i, align 4, !dbg !1137
  %shl521.i = shl i32 %392, 15, !dbg !1137
  %393 = load i32, i32* %s2.i, align 4, !dbg !1137
  %shr522.i = lshr i32 %393, 17, !dbg !1137
  %or523.i = or i32 %shl521.i, %shr522.i, !dbg !1137
  store i32 %or523.i, i32* %s1.i, align 4, !dbg !1137
  %394 = load i32, i32* %s2.i, align 4, !dbg !1137
  %shl524.i = shl i32 %394, 15, !dbg !1137
  %395 = load i32, i32* %s3.i, align 4, !dbg !1137
  %shr525.i = lshr i32 %395, 17, !dbg !1137
  %or526.i = or i32 %shl524.i, %shr525.i, !dbg !1137
  store i32 %or526.i, i32* %s2.i, align 4, !dbg !1137
  %396 = load i32, i32* %s3.i, align 4, !dbg !1137
  %shl527.i = shl i32 %396, 15, !dbg !1137
  %397 = load i32, i32* %_t0516.i, align 4, !dbg !1137
  %or528.i = or i32 %shl527.i, %397, !dbg !1137
  store i32 %or528.i, i32* %s3.i, align 4, !dbg !1137
  %398 = load i32, i32* %s2.i, align 4, !dbg !1355
  %399 = load i32*, i32** %k.addr.i, align 8, !dbg !1356
  %arrayidx530.i = getelementptr inbounds i32, i32* %399, i64 26, !dbg !1356
  store i32 %398, i32* %arrayidx530.i, align 4, !dbg !1357
  %400 = load i32, i32* %s3.i, align 4, !dbg !1358
  %401 = load i32*, i32** %k.addr.i, align 8, !dbg !1359
  %arrayidx531.i = getelementptr inbounds i32, i32* %401, i64 27, !dbg !1359
  store i32 %400, i32* %arrayidx531.i, align 4, !dbg !1360
  %402 = load i32, i32* %s0.i, align 4, !dbg !1138
  %shr534.i = lshr i32 %402, 15, !dbg !1138
  store i32 %shr534.i, i32* %_t0533.i, align 4, !dbg !1138
  %403 = load i32, i32* %s0.i, align 4, !dbg !1138
  %shl535.i = shl i32 %403, 17, !dbg !1138
  %404 = load i32, i32* %s1.i, align 4, !dbg !1138
  %shr536.i = lshr i32 %404, 15, !dbg !1138
  %or537.i = or i32 %shl535.i, %shr536.i, !dbg !1138
  store i32 %or537.i, i32* %s0.i, align 4, !dbg !1138
  %405 = load i32, i32* %s1.i, align 4, !dbg !1138
  %shl538.i = shl i32 %405, 17, !dbg !1138
  %406 = load i32, i32* %s2.i, align 4, !dbg !1138
  %shr539.i = lshr i32 %406, 15, !dbg !1138
  %or540.i = or i32 %shl538.i, %shr539.i, !dbg !1138
  store i32 %or540.i, i32* %s1.i, align 4, !dbg !1138
  %407 = load i32, i32* %s2.i, align 4, !dbg !1138
  %shl541.i = shl i32 %407, 17, !dbg !1138
  %408 = load i32, i32* %s3.i, align 4, !dbg !1138
  %shr542.i = lshr i32 %408, 15, !dbg !1138
  %or543.i = or i32 %shl541.i, %shr542.i, !dbg !1138
  store i32 %or543.i, i32* %s2.i, align 4, !dbg !1138
  %409 = load i32, i32* %s3.i, align 4, !dbg !1138
  %shl544.i = shl i32 %409, 17, !dbg !1138
  %410 = load i32, i32* %_t0533.i, align 4, !dbg !1138
  %or545.i = or i32 %shl544.i, %410, !dbg !1138
  store i32 %or545.i, i32* %s3.i, align 4, !dbg !1138
  %411 = load i32, i32* %s0.i, align 4, !dbg !1361
  %412 = load i32*, i32** %k.addr.i, align 8, !dbg !1362
  %arrayidx547.i = getelementptr inbounds i32, i32* %412, i64 32, !dbg !1362
  store i32 %411, i32* %arrayidx547.i, align 4, !dbg !1363
  %413 = load i32, i32* %s1.i, align 4, !dbg !1364
  %414 = load i32*, i32** %k.addr.i, align 8, !dbg !1365
  %arrayidx548.i = getelementptr inbounds i32, i32* %414, i64 33, !dbg !1365
  store i32 %413, i32* %arrayidx548.i, align 4, !dbg !1366
  %415 = load i32, i32* %s2.i, align 4, !dbg !1367
  %416 = load i32*, i32** %k.addr.i, align 8, !dbg !1368
  %arrayidx549.i = getelementptr inbounds i32, i32* %416, i64 34, !dbg !1368
  store i32 %415, i32* %arrayidx549.i, align 4, !dbg !1369
  %417 = load i32, i32* %s3.i, align 4, !dbg !1370
  %418 = load i32*, i32** %k.addr.i, align 8, !dbg !1371
  %arrayidx550.i = getelementptr inbounds i32, i32* %418, i64 35, !dbg !1371
  store i32 %417, i32* %arrayidx550.i, align 4, !dbg !1372
  %419 = load i32, i32* %s0.i, align 4, !dbg !1139
  %shr553.i = lshr i32 %419, 15, !dbg !1139
  store i32 %shr553.i, i32* %_t0552.i, align 4, !dbg !1139
  %420 = load i32, i32* %s0.i, align 4, !dbg !1139
  %shl554.i = shl i32 %420, 17, !dbg !1139
  %421 = load i32, i32* %s1.i, align 4, !dbg !1139
  %shr555.i = lshr i32 %421, 15, !dbg !1139
  %or556.i = or i32 %shl554.i, %shr555.i, !dbg !1139
  store i32 %or556.i, i32* %s0.i, align 4, !dbg !1139
  %422 = load i32, i32* %s1.i, align 4, !dbg !1139
  %shl557.i = shl i32 %422, 17, !dbg !1139
  %423 = load i32, i32* %s2.i, align 4, !dbg !1139
  %shr558.i = lshr i32 %423, 15, !dbg !1139
  %or559.i = or i32 %shl557.i, %shr558.i, !dbg !1139
  store i32 %or559.i, i32* %s1.i, align 4, !dbg !1139
  %424 = load i32, i32* %s2.i, align 4, !dbg !1139
  %shl560.i = shl i32 %424, 17, !dbg !1139
  %425 = load i32, i32* %s3.i, align 4, !dbg !1139
  %shr561.i = lshr i32 %425, 15, !dbg !1139
  %or562.i = or i32 %shl560.i, %shr561.i, !dbg !1139
  store i32 %or562.i, i32* %s2.i, align 4, !dbg !1139
  %426 = load i32, i32* %s3.i, align 4, !dbg !1139
  %shl563.i = shl i32 %426, 17, !dbg !1139
  %427 = load i32, i32* %_t0552.i, align 4, !dbg !1139
  %or564.i = or i32 %shl563.i, %427, !dbg !1139
  store i32 %or564.i, i32* %s3.i, align 4, !dbg !1139
  %428 = load i32, i32* %s0.i, align 4, !dbg !1373
  %429 = load i32*, i32** %k.addr.i, align 8, !dbg !1374
  %arrayidx566.i = getelementptr inbounds i32, i32* %429, i64 36, !dbg !1374
  store i32 %428, i32* %arrayidx566.i, align 4, !dbg !1375
  %430 = load i32, i32* %s1.i, align 4, !dbg !1376
  %431 = load i32*, i32** %k.addr.i, align 8, !dbg !1377
  %arrayidx567.i = getelementptr inbounds i32, i32* %431, i64 37, !dbg !1377
  store i32 %430, i32* %arrayidx567.i, align 4, !dbg !1378
  %432 = load i32, i32* %s2.i, align 4, !dbg !1379
  %433 = load i32*, i32** %k.addr.i, align 8, !dbg !1380
  %arrayidx568.i = getelementptr inbounds i32, i32* %433, i64 38, !dbg !1380
  store i32 %432, i32* %arrayidx568.i, align 4, !dbg !1381
  %434 = load i32, i32* %s3.i, align 4, !dbg !1382
  %435 = load i32*, i32** %k.addr.i, align 8, !dbg !1383
  %arrayidx569.i = getelementptr inbounds i32, i32* %435, i64 39, !dbg !1383
  store i32 %434, i32* %arrayidx569.i, align 4, !dbg !1384
  %436 = load i32, i32* %s0.i, align 4, !dbg !1140
  %shr572.i = lshr i32 %436, 15, !dbg !1140
  store i32 %shr572.i, i32* %_t0571.i, align 4, !dbg !1140
  %437 = load i32, i32* %s0.i, align 4, !dbg !1140
  %shl573.i = shl i32 %437, 17, !dbg !1140
  %438 = load i32, i32* %s1.i, align 4, !dbg !1140
  %shr574.i = lshr i32 %438, 15, !dbg !1140
  %or575.i = or i32 %shl573.i, %shr574.i, !dbg !1140
  store i32 %or575.i, i32* %s0.i, align 4, !dbg !1140
  %439 = load i32, i32* %s1.i, align 4, !dbg !1140
  %shl576.i = shl i32 %439, 17, !dbg !1140
  %440 = load i32, i32* %s2.i, align 4, !dbg !1140
  %shr577.i = lshr i32 %440, 15, !dbg !1140
  %or578.i = or i32 %shl576.i, %shr577.i, !dbg !1140
  store i32 %or578.i, i32* %s1.i, align 4, !dbg !1140
  %441 = load i32, i32* %s2.i, align 4, !dbg !1140
  %shl579.i = shl i32 %441, 17, !dbg !1140
  %442 = load i32, i32* %s3.i, align 4, !dbg !1140
  %shr580.i = lshr i32 %442, 15, !dbg !1140
  %or581.i = or i32 %shl579.i, %shr580.i, !dbg !1140
  store i32 %or581.i, i32* %s2.i, align 4, !dbg !1140
  %443 = load i32, i32* %s3.i, align 4, !dbg !1140
  %shl582.i = shl i32 %443, 17, !dbg !1140
  %444 = load i32, i32* %_t0571.i, align 4, !dbg !1140
  %or583.i = or i32 %shl582.i, %444, !dbg !1140
  store i32 %or583.i, i32* %s3.i, align 4, !dbg !1140
  %445 = load i32, i32* %s0.i, align 4, !dbg !1385
  %446 = load i32*, i32** %k.addr.i, align 8, !dbg !1386
  %arrayidx585.i = getelementptr inbounds i32, i32* %446, i64 44, !dbg !1386
  store i32 %445, i32* %arrayidx585.i, align 4, !dbg !1387
  %447 = load i32, i32* %s1.i, align 4, !dbg !1388
  %448 = load i32*, i32** %k.addr.i, align 8, !dbg !1389
  %arrayidx586.i = getelementptr inbounds i32, i32* %448, i64 45, !dbg !1389
  store i32 %447, i32* %arrayidx586.i, align 4, !dbg !1390
  %449 = load i32, i32* %s2.i, align 4, !dbg !1391
  %450 = load i32*, i32** %k.addr.i, align 8, !dbg !1392
  %arrayidx587.i = getelementptr inbounds i32, i32* %450, i64 46, !dbg !1392
  store i32 %449, i32* %arrayidx587.i, align 4, !dbg !1393
  %451 = load i32, i32* %s3.i, align 4, !dbg !1394
  %452 = load i32*, i32** %k.addr.i, align 8, !dbg !1395
  %arrayidx588.i = getelementptr inbounds i32, i32* %452, i64 47, !dbg !1395
  store i32 %451, i32* %arrayidx588.i, align 4, !dbg !1396
  store i32 3, i32* %retval.i, align 4, !dbg !1397
  br label %Camellia_Ekeygen.exit, !dbg !1397

if.else589.i:                                     ; preds = %if.end160.i
  %453 = load i32, i32* %s0.i, align 4, !dbg !1398
  %454 = load i32*, i32** %k.addr.i, align 8, !dbg !1399
  %arrayidx590.i = getelementptr inbounds i32, i32* %454, i64 12, !dbg !1399
  store i32 %453, i32* %arrayidx590.i, align 4, !dbg !1400
  %455 = load i32, i32* %s1.i, align 4, !dbg !1401
  %456 = load i32*, i32** %k.addr.i, align 8, !dbg !1402
  %arrayidx591.i = getelementptr inbounds i32, i32* %456, i64 13, !dbg !1402
  store i32 %455, i32* %arrayidx591.i, align 4, !dbg !1403
  %457 = load i32, i32* %s2.i, align 4, !dbg !1404
  %458 = load i32*, i32** %k.addr.i, align 8, !dbg !1405
  %arrayidx592.i = getelementptr inbounds i32, i32* %458, i64 14, !dbg !1405
  store i32 %457, i32* %arrayidx592.i, align 4, !dbg !1406
  %459 = load i32, i32* %s3.i, align 4, !dbg !1407
  %460 = load i32*, i32** %k.addr.i, align 8, !dbg !1408
  %arrayidx593.i = getelementptr inbounds i32, i32* %460, i64 15, !dbg !1408
  store i32 %459, i32* %arrayidx593.i, align 4, !dbg !1409
  %461 = load i32*, i32** %k.addr.i, align 8, !dbg !1410
  %arrayidx594.i = getelementptr inbounds i32, i32* %461, i64 8, !dbg !1410
  %462 = load i32, i32* %arrayidx594.i, align 4, !dbg !1410
  %463 = load i32, i32* %s0.i, align 4, !dbg !1411
  %xor595.i = xor i32 %463, %462, !dbg !1411
  store i32 %xor595.i, i32* %s0.i, align 4, !dbg !1411
  %464 = load i32*, i32** %k.addr.i, align 8, !dbg !1412
  %arrayidx596.i = getelementptr inbounds i32, i32* %464, i64 9, !dbg !1412
  %465 = load i32, i32* %arrayidx596.i, align 4, !dbg !1412
  %466 = load i32, i32* %s1.i, align 4, !dbg !1413
  %xor597.i = xor i32 %466, %465, !dbg !1413
  store i32 %xor597.i, i32* %s1.i, align 4, !dbg !1413
  %467 = load i32*, i32** %k.addr.i, align 8, !dbg !1414
  %arrayidx598.i = getelementptr inbounds i32, i32* %467, i64 10, !dbg !1414
  %468 = load i32, i32* %arrayidx598.i, align 4, !dbg !1414
  %469 = load i32, i32* %s2.i, align 4, !dbg !1415
  %xor599.i = xor i32 %469, %468, !dbg !1415
  store i32 %xor599.i, i32* %s2.i, align 4, !dbg !1415
  %470 = load i32*, i32** %k.addr.i, align 8, !dbg !1416
  %arrayidx600.i = getelementptr inbounds i32, i32* %470, i64 11, !dbg !1416
  %471 = load i32, i32* %arrayidx600.i, align 4, !dbg !1416
  %472 = load i32, i32* %s3.i, align 4, !dbg !1417
  %xor601.i = xor i32 %472, %471, !dbg !1417
  store i32 %xor601.i, i32* %s3.i, align 4, !dbg !1417
  %473 = load i32, i32* %s0.i, align 4, !dbg !1141
  %xor607.i = xor i32 %473, 283453434, !dbg !1141
  store i32 %xor607.i, i32* %_t0603.i, align 4, !dbg !1141
  %474 = load i32, i32* %_t0603.i, align 4, !dbg !1141
  %and608.i = and i32 %474, 255, !dbg !1141
  %idxprom609.i = zext i32 %and608.i to i64, !dbg !1141
  %arrayidx610.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom609.i, !dbg !1141
  %475 = load i32, i32* %arrayidx610.i, align 4, !dbg !1141
  store i32 %475, i32* %_t3606.i, align 4, !dbg !1141
  %476 = load i32, i32* %s1.i, align 4, !dbg !1141
  %xor611.i = xor i32 %476, -563598051, !dbg !1141
  store i32 %xor611.i, i32* %_t1604.i, align 4, !dbg !1141
  %477 = load i32, i32* %_t0603.i, align 4, !dbg !1141
  %shr612.i = lshr i32 %477, 8, !dbg !1141
  %and613.i = and i32 %shr612.i, 255, !dbg !1141
  %idxprom614.i = zext i32 %and613.i to i64, !dbg !1141
  %arrayidx615.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom614.i, !dbg !1141
  %478 = load i32, i32* %arrayidx615.i, align 4, !dbg !1141
  %479 = load i32, i32* %_t3606.i, align 4, !dbg !1141
  %xor616.i = xor i32 %479, %478, !dbg !1141
  store i32 %xor616.i, i32* %_t3606.i, align 4, !dbg !1141
  %480 = load i32, i32* %_t1604.i, align 4, !dbg !1141
  %and617.i = and i32 %480, 255, !dbg !1141
  %idxprom618.i = zext i32 %and617.i to i64, !dbg !1141
  %arrayidx619.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom618.i, !dbg !1141
  %481 = load i32, i32* %arrayidx619.i, align 4, !dbg !1141
  store i32 %481, i32* %_t2605.i, align 4, !dbg !1141
  %482 = load i32, i32* %_t0603.i, align 4, !dbg !1141
  %shr620.i = lshr i32 %482, 16, !dbg !1141
  %and621.i = and i32 %shr620.i, 255, !dbg !1141
  %idxprom622.i = zext i32 %and621.i to i64, !dbg !1141
  %arrayidx623.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom622.i, !dbg !1141
  %483 = load i32, i32* %arrayidx623.i, align 4, !dbg !1141
  %484 = load i32, i32* %_t3606.i, align 4, !dbg !1141
  %xor624.i = xor i32 %484, %483, !dbg !1141
  store i32 %xor624.i, i32* %_t3606.i, align 4, !dbg !1141
  %485 = load i32, i32* %_t1604.i, align 4, !dbg !1141
  %shr625.i = lshr i32 %485, 8, !dbg !1141
  %and626.i = and i32 %shr625.i, 255, !dbg !1141
  %idxprom627.i = zext i32 %and626.i to i64, !dbg !1141
  %arrayidx628.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom627.i, !dbg !1141
  %486 = load i32, i32* %arrayidx628.i, align 4, !dbg !1141
  %487 = load i32, i32* %_t2605.i, align 4, !dbg !1141
  %xor629.i = xor i32 %487, %486, !dbg !1141
  store i32 %xor629.i, i32* %_t2605.i, align 4, !dbg !1141
  %488 = load i32, i32* %_t0603.i, align 4, !dbg !1141
  %shr630.i = lshr i32 %488, 24, !dbg !1141
  %idxprom631.i = zext i32 %shr630.i to i64, !dbg !1141
  %arrayidx632.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom631.i, !dbg !1141
  %489 = load i32, i32* %arrayidx632.i, align 4, !dbg !1141
  %490 = load i32, i32* %_t3606.i, align 4, !dbg !1141
  %xor633.i = xor i32 %490, %489, !dbg !1141
  store i32 %xor633.i, i32* %_t3606.i, align 4, !dbg !1141
  %491 = load i32, i32* %_t3606.i, align 4, !dbg !1141
  %492 = load i32, i32* %_t2605.i, align 4, !dbg !1141
  %xor634.i = xor i32 %492, %491, !dbg !1141
  store i32 %xor634.i, i32* %_t2605.i, align 4, !dbg !1141
  %493 = load i32, i32* %_t3606.i, align 4, !dbg !1141
  %shr635.i = lshr i32 %493, 8, !dbg !1141
  %494 = load i32, i32* %_t3606.i, align 4, !dbg !1141
  %shl636.i = shl i32 %494, 24, !dbg !1141
  %add637.i = add i32 %shr635.i, %shl636.i, !dbg !1141
  store i32 %add637.i, i32* %_t3606.i, align 4, !dbg !1141
  %495 = load i32, i32* %_t1604.i, align 4, !dbg !1141
  %shr638.i = lshr i32 %495, 16, !dbg !1141
  %and639.i = and i32 %shr638.i, 255, !dbg !1141
  %idxprom640.i = zext i32 %and639.i to i64, !dbg !1141
  %arrayidx641.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom640.i, !dbg !1141
  %496 = load i32, i32* %arrayidx641.i, align 4, !dbg !1141
  %497 = load i32, i32* %_t2605.i, align 4, !dbg !1141
  %xor642.i = xor i32 %497, %496, !dbg !1141
  store i32 %xor642.i, i32* %_t2605.i, align 4, !dbg !1141
  %498 = load i32, i32* %_t3606.i, align 4, !dbg !1141
  %499 = load i32, i32* %s3.i, align 4, !dbg !1141
  %xor643.i = xor i32 %499, %498, !dbg !1141
  store i32 %xor643.i, i32* %s3.i, align 4, !dbg !1141
  %500 = load i32, i32* %_t1604.i, align 4, !dbg !1141
  %shr644.i = lshr i32 %500, 24, !dbg !1141
  %idxprom645.i = zext i32 %shr644.i to i64, !dbg !1141
  %arrayidx646.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom645.i, !dbg !1141
  %501 = load i32, i32* %arrayidx646.i, align 4, !dbg !1141
  %502 = load i32, i32* %_t2605.i, align 4, !dbg !1141
  %xor647.i = xor i32 %502, %501, !dbg !1141
  store i32 %xor647.i, i32* %_t2605.i, align 4, !dbg !1141
  %503 = load i32, i32* %_t2605.i, align 4, !dbg !1141
  %504 = load i32, i32* %s2.i, align 4, !dbg !1141
  %xor648.i = xor i32 %504, %503, !dbg !1141
  store i32 %xor648.i, i32* %s2.i, align 4, !dbg !1141
  %505 = load i32, i32* %_t2605.i, align 4, !dbg !1141
  %506 = load i32, i32* %s3.i, align 4, !dbg !1141
  %xor649.i = xor i32 %506, %505, !dbg !1141
  store i32 %xor649.i, i32* %s3.i, align 4, !dbg !1141
  %507 = load i32, i32* %s2.i, align 4, !dbg !1142
  %xor656.i = xor i32 %507, -1336506174, !dbg !1142
  store i32 %xor656.i, i32* %_t0652.i, align 4, !dbg !1142
  %508 = load i32, i32* %_t0652.i, align 4, !dbg !1142
  %and657.i = and i32 %508, 255, !dbg !1142
  %idxprom658.i = zext i32 %and657.i to i64, !dbg !1142
  %arrayidx659.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom658.i, !dbg !1142
  %509 = load i32, i32* %arrayidx659.i, align 4, !dbg !1142
  store i32 %509, i32* %_t3655.i, align 4, !dbg !1142
  %510 = load i32, i32* %s3.i, align 4, !dbg !1142
  %xor660.i = xor i32 %510, -1276722691, !dbg !1142
  store i32 %xor660.i, i32* %_t1653.i, align 4, !dbg !1142
  %511 = load i32, i32* %_t0652.i, align 4, !dbg !1142
  %shr661.i = lshr i32 %511, 8, !dbg !1142
  %and662.i = and i32 %shr661.i, 255, !dbg !1142
  %idxprom663.i = zext i32 %and662.i to i64, !dbg !1142
  %arrayidx664.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom663.i, !dbg !1142
  %512 = load i32, i32* %arrayidx664.i, align 4, !dbg !1142
  %513 = load i32, i32* %_t3655.i, align 4, !dbg !1142
  %xor665.i = xor i32 %513, %512, !dbg !1142
  store i32 %xor665.i, i32* %_t3655.i, align 4, !dbg !1142
  %514 = load i32, i32* %_t1653.i, align 4, !dbg !1142
  %and666.i = and i32 %514, 255, !dbg !1142
  %idxprom667.i = zext i32 %and666.i to i64, !dbg !1142
  %arrayidx668.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom667.i, !dbg !1142
  %515 = load i32, i32* %arrayidx668.i, align 4, !dbg !1142
  store i32 %515, i32* %_t2654.i, align 4, !dbg !1142
  %516 = load i32, i32* %_t0652.i, align 4, !dbg !1142
  %shr669.i = lshr i32 %516, 16, !dbg !1142
  %and670.i = and i32 %shr669.i, 255, !dbg !1142
  %idxprom671.i = zext i32 %and670.i to i64, !dbg !1142
  %arrayidx672.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom671.i, !dbg !1142
  %517 = load i32, i32* %arrayidx672.i, align 4, !dbg !1142
  %518 = load i32, i32* %_t3655.i, align 4, !dbg !1142
  %xor673.i = xor i32 %518, %517, !dbg !1142
  store i32 %xor673.i, i32* %_t3655.i, align 4, !dbg !1142
  %519 = load i32, i32* %_t1653.i, align 4, !dbg !1142
  %shr674.i = lshr i32 %519, 8, !dbg !1142
  %and675.i = and i32 %shr674.i, 255, !dbg !1142
  %idxprom676.i = zext i32 %and675.i to i64, !dbg !1142
  %arrayidx677.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom676.i, !dbg !1142
  %520 = load i32, i32* %arrayidx677.i, align 4, !dbg !1142
  %521 = load i32, i32* %_t2654.i, align 4, !dbg !1142
  %xor678.i = xor i32 %521, %520, !dbg !1142
  store i32 %xor678.i, i32* %_t2654.i, align 4, !dbg !1142
  %522 = load i32, i32* %_t0652.i, align 4, !dbg !1142
  %shr679.i = lshr i32 %522, 24, !dbg !1142
  %idxprom680.i = zext i32 %shr679.i to i64, !dbg !1142
  %arrayidx681.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom680.i, !dbg !1142
  %523 = load i32, i32* %arrayidx681.i, align 4, !dbg !1142
  %524 = load i32, i32* %_t3655.i, align 4, !dbg !1142
  %xor682.i = xor i32 %524, %523, !dbg !1142
  store i32 %xor682.i, i32* %_t3655.i, align 4, !dbg !1142
  %525 = load i32, i32* %_t3655.i, align 4, !dbg !1142
  %526 = load i32, i32* %_t2654.i, align 4, !dbg !1142
  %xor683.i = xor i32 %526, %525, !dbg !1142
  store i32 %xor683.i, i32* %_t2654.i, align 4, !dbg !1142
  %527 = load i32, i32* %_t3655.i, align 4, !dbg !1142
  %shr684.i = lshr i32 %527, 8, !dbg !1142
  %528 = load i32, i32* %_t3655.i, align 4, !dbg !1142
  %shl685.i = shl i32 %528, 24, !dbg !1142
  %add686.i = add i32 %shr684.i, %shl685.i, !dbg !1142
  store i32 %add686.i, i32* %_t3655.i, align 4, !dbg !1142
  %529 = load i32, i32* %_t1653.i, align 4, !dbg !1142
  %shr687.i = lshr i32 %529, 16, !dbg !1142
  %and688.i = and i32 %shr687.i, 255, !dbg !1142
  %idxprom689.i = zext i32 %and688.i to i64, !dbg !1142
  %arrayidx690.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom689.i, !dbg !1142
  %530 = load i32, i32* %arrayidx690.i, align 4, !dbg !1142
  %531 = load i32, i32* %_t2654.i, align 4, !dbg !1142
  %xor691.i = xor i32 %531, %530, !dbg !1142
  store i32 %xor691.i, i32* %_t2654.i, align 4, !dbg !1142
  %532 = load i32, i32* %_t3655.i, align 4, !dbg !1142
  %533 = load i32, i32* %s1.i, align 4, !dbg !1142
  %xor692.i = xor i32 %533, %532, !dbg !1142
  store i32 %xor692.i, i32* %s1.i, align 4, !dbg !1142
  %534 = load i32, i32* %_t1653.i, align 4, !dbg !1142
  %shr693.i = lshr i32 %534, 24, !dbg !1142
  %idxprom694.i = zext i32 %shr693.i to i64, !dbg !1142
  %arrayidx695.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom694.i, !dbg !1142
  %535 = load i32, i32* %arrayidx695.i, align 4, !dbg !1142
  %536 = load i32, i32* %_t2654.i, align 4, !dbg !1142
  %xor696.i = xor i32 %536, %535, !dbg !1142
  store i32 %xor696.i, i32* %_t2654.i, align 4, !dbg !1142
  %537 = load i32, i32* %_t2654.i, align 4, !dbg !1142
  %538 = load i32, i32* %s0.i, align 4, !dbg !1142
  %xor697.i = xor i32 %538, %537, !dbg !1142
  store i32 %xor697.i, i32* %s0.i, align 4, !dbg !1142
  %539 = load i32, i32* %_t2654.i, align 4, !dbg !1142
  %540 = load i32, i32* %s1.i, align 4, !dbg !1142
  %xor698.i = xor i32 %540, %539, !dbg !1142
  store i32 %xor698.i, i32* %s1.i, align 4, !dbg !1142
  %541 = load i32, i32* %s0.i, align 4, !dbg !1418
  %542 = load i32*, i32** %k.addr.i, align 8, !dbg !1419
  %arrayidx700.i = getelementptr inbounds i32, i32* %542, i64 4, !dbg !1419
  store i32 %541, i32* %arrayidx700.i, align 4, !dbg !1420
  %543 = load i32, i32* %s1.i, align 4, !dbg !1421
  %544 = load i32*, i32** %k.addr.i, align 8, !dbg !1422
  %arrayidx701.i = getelementptr inbounds i32, i32* %544, i64 5, !dbg !1422
  store i32 %543, i32* %arrayidx701.i, align 4, !dbg !1423
  %545 = load i32, i32* %s2.i, align 4, !dbg !1424
  %546 = load i32*, i32** %k.addr.i, align 8, !dbg !1425
  %arrayidx702.i = getelementptr inbounds i32, i32* %546, i64 6, !dbg !1425
  store i32 %545, i32* %arrayidx702.i, align 4, !dbg !1426
  %547 = load i32, i32* %s3.i, align 4, !dbg !1427
  %548 = load i32*, i32** %k.addr.i, align 8, !dbg !1428
  %arrayidx703.i = getelementptr inbounds i32, i32* %548, i64 7, !dbg !1428
  store i32 %547, i32* %arrayidx703.i, align 4, !dbg !1429
  %549 = load i32, i32* %s0.i, align 4, !dbg !1143
  %shr706.i = lshr i32 %549, 2, !dbg !1143
  store i32 %shr706.i, i32* %_t0705.i, align 4, !dbg !1143
  %550 = load i32, i32* %s0.i, align 4, !dbg !1143
  %shl707.i = shl i32 %550, 30, !dbg !1143
  %551 = load i32, i32* %s1.i, align 4, !dbg !1143
  %shr708.i = lshr i32 %551, 2, !dbg !1143
  %or709.i = or i32 %shl707.i, %shr708.i, !dbg !1143
  store i32 %or709.i, i32* %s0.i, align 4, !dbg !1143
  %552 = load i32, i32* %s1.i, align 4, !dbg !1143
  %shl710.i = shl i32 %552, 30, !dbg !1143
  %553 = load i32, i32* %s2.i, align 4, !dbg !1143
  %shr711.i = lshr i32 %553, 2, !dbg !1143
  %or712.i = or i32 %shl710.i, %shr711.i, !dbg !1143
  store i32 %or712.i, i32* %s1.i, align 4, !dbg !1143
  %554 = load i32, i32* %s2.i, align 4, !dbg !1143
  %shl713.i = shl i32 %554, 30, !dbg !1143
  %555 = load i32, i32* %s3.i, align 4, !dbg !1143
  %shr714.i = lshr i32 %555, 2, !dbg !1143
  %or715.i = or i32 %shl713.i, %shr714.i, !dbg !1143
  store i32 %or715.i, i32* %s2.i, align 4, !dbg !1143
  %556 = load i32, i32* %s3.i, align 4, !dbg !1143
  %shl716.i = shl i32 %556, 30, !dbg !1143
  %557 = load i32, i32* %_t0705.i, align 4, !dbg !1143
  %or717.i = or i32 %shl716.i, %557, !dbg !1143
  store i32 %or717.i, i32* %s3.i, align 4, !dbg !1143
  %558 = load i32, i32* %s0.i, align 4, !dbg !1430
  %559 = load i32*, i32** %k.addr.i, align 8, !dbg !1431
  %arrayidx719.i = getelementptr inbounds i32, i32* %559, i64 20, !dbg !1431
  store i32 %558, i32* %arrayidx719.i, align 4, !dbg !1432
  %560 = load i32, i32* %s1.i, align 4, !dbg !1433
  %561 = load i32*, i32** %k.addr.i, align 8, !dbg !1434
  %arrayidx720.i = getelementptr inbounds i32, i32* %561, i64 21, !dbg !1434
  store i32 %560, i32* %arrayidx720.i, align 4, !dbg !1435
  %562 = load i32, i32* %s2.i, align 4, !dbg !1436
  %563 = load i32*, i32** %k.addr.i, align 8, !dbg !1437
  %arrayidx721.i = getelementptr inbounds i32, i32* %563, i64 22, !dbg !1437
  store i32 %562, i32* %arrayidx721.i, align 4, !dbg !1438
  %564 = load i32, i32* %s3.i, align 4, !dbg !1439
  %565 = load i32*, i32** %k.addr.i, align 8, !dbg !1440
  %arrayidx722.i = getelementptr inbounds i32, i32* %565, i64 23, !dbg !1440
  store i32 %564, i32* %arrayidx722.i, align 4, !dbg !1441
  %566 = load i32, i32* %s0.i, align 4, !dbg !1144
  %shr725.i = lshr i32 %566, 2, !dbg !1144
  store i32 %shr725.i, i32* %_t0724.i, align 4, !dbg !1144
  %567 = load i32, i32* %s0.i, align 4, !dbg !1144
  %shl726.i = shl i32 %567, 30, !dbg !1144
  %568 = load i32, i32* %s1.i, align 4, !dbg !1144
  %shr727.i = lshr i32 %568, 2, !dbg !1144
  %or728.i = or i32 %shl726.i, %shr727.i, !dbg !1144
  store i32 %or728.i, i32* %s0.i, align 4, !dbg !1144
  %569 = load i32, i32* %s1.i, align 4, !dbg !1144
  %shl729.i = shl i32 %569, 30, !dbg !1144
  %570 = load i32, i32* %s2.i, align 4, !dbg !1144
  %shr730.i = lshr i32 %570, 2, !dbg !1144
  %or731.i = or i32 %shl729.i, %shr730.i, !dbg !1144
  store i32 %or731.i, i32* %s1.i, align 4, !dbg !1144
  %571 = load i32, i32* %s2.i, align 4, !dbg !1144
  %shl732.i = shl i32 %571, 30, !dbg !1144
  %572 = load i32, i32* %s3.i, align 4, !dbg !1144
  %shr733.i = lshr i32 %572, 2, !dbg !1144
  %or734.i = or i32 %shl732.i, %shr733.i, !dbg !1144
  store i32 %or734.i, i32* %s2.i, align 4, !dbg !1144
  %573 = load i32, i32* %s3.i, align 4, !dbg !1144
  %shl735.i = shl i32 %573, 30, !dbg !1144
  %574 = load i32, i32* %_t0724.i, align 4, !dbg !1144
  %or736.i = or i32 %shl735.i, %574, !dbg !1144
  store i32 %or736.i, i32* %s3.i, align 4, !dbg !1144
  %575 = load i32, i32* %s0.i, align 4, !dbg !1442
  %576 = load i32*, i32** %k.addr.i, align 8, !dbg !1443
  %arrayidx738.i = getelementptr inbounds i32, i32* %576, i64 40, !dbg !1443
  store i32 %575, i32* %arrayidx738.i, align 4, !dbg !1444
  %577 = load i32, i32* %s1.i, align 4, !dbg !1445
  %578 = load i32*, i32** %k.addr.i, align 8, !dbg !1446
  %arrayidx739.i = getelementptr inbounds i32, i32* %578, i64 41, !dbg !1446
  store i32 %577, i32* %arrayidx739.i, align 4, !dbg !1447
  %579 = load i32, i32* %s2.i, align 4, !dbg !1448
  %580 = load i32*, i32** %k.addr.i, align 8, !dbg !1449
  %arrayidx740.i = getelementptr inbounds i32, i32* %580, i64 42, !dbg !1449
  store i32 %579, i32* %arrayidx740.i, align 4, !dbg !1450
  %581 = load i32, i32* %s3.i, align 4, !dbg !1451
  %582 = load i32*, i32** %k.addr.i, align 8, !dbg !1452
  %arrayidx741.i = getelementptr inbounds i32, i32* %582, i64 43, !dbg !1452
  store i32 %581, i32* %arrayidx741.i, align 4, !dbg !1453
  %583 = load i32, i32* %s1.i, align 4, !dbg !1145
  %shr744.i = lshr i32 %583, 13, !dbg !1145
  store i32 %shr744.i, i32* %_t0743.i, align 4, !dbg !1145
  %584 = load i32, i32* %s1.i, align 4, !dbg !1145
  %shl745.i = shl i32 %584, 19, !dbg !1145
  %585 = load i32, i32* %s2.i, align 4, !dbg !1145
  %shr746.i = lshr i32 %585, 13, !dbg !1145
  %or747.i = or i32 %shl745.i, %shr746.i, !dbg !1145
  store i32 %or747.i, i32* %s1.i, align 4, !dbg !1145
  %586 = load i32, i32* %s2.i, align 4, !dbg !1145
  %shl748.i = shl i32 %586, 19, !dbg !1145
  %587 = load i32, i32* %s3.i, align 4, !dbg !1145
  %shr749.i = lshr i32 %587, 13, !dbg !1145
  %or750.i = or i32 %shl748.i, %shr749.i, !dbg !1145
  store i32 %or750.i, i32* %s2.i, align 4, !dbg !1145
  %588 = load i32, i32* %s3.i, align 4, !dbg !1145
  %shl751.i = shl i32 %588, 19, !dbg !1145
  %589 = load i32, i32* %s0.i, align 4, !dbg !1145
  %shr752.i = lshr i32 %589, 13, !dbg !1145
  %or753.i = or i32 %shl751.i, %shr752.i, !dbg !1145
  store i32 %or753.i, i32* %s3.i, align 4, !dbg !1145
  %590 = load i32, i32* %s0.i, align 4, !dbg !1145
  %shl754.i = shl i32 %590, 19, !dbg !1145
  %591 = load i32, i32* %_t0743.i, align 4, !dbg !1145
  %or755.i = or i32 %shl754.i, %591, !dbg !1145
  store i32 %or755.i, i32* %s0.i, align 4, !dbg !1145
  %592 = load i32, i32* %s1.i, align 4, !dbg !1454
  %593 = load i32*, i32** %k.addr.i, align 8, !dbg !1455
  %arrayidx757.i = getelementptr inbounds i32, i32* %593, i64 64, !dbg !1455
  store i32 %592, i32* %arrayidx757.i, align 4, !dbg !1456
  %594 = load i32, i32* %s2.i, align 4, !dbg !1457
  %595 = load i32*, i32** %k.addr.i, align 8, !dbg !1458
  %arrayidx758.i = getelementptr inbounds i32, i32* %595, i64 65, !dbg !1458
  store i32 %594, i32* %arrayidx758.i, align 4, !dbg !1459
  %596 = load i32, i32* %s3.i, align 4, !dbg !1460
  %597 = load i32*, i32** %k.addr.i, align 8, !dbg !1461
  %arrayidx759.i = getelementptr inbounds i32, i32* %597, i64 66, !dbg !1461
  store i32 %596, i32* %arrayidx759.i, align 4, !dbg !1462
  %598 = load i32, i32* %s0.i, align 4, !dbg !1463
  %599 = load i32*, i32** %k.addr.i, align 8, !dbg !1464
  %arrayidx760.i = getelementptr inbounds i32, i32* %599, i64 67, !dbg !1464
  store i32 %598, i32* %arrayidx760.i, align 4, !dbg !1465
  %600 = load i32*, i32** %k.addr.i, align 8, !dbg !1466
  %arrayidx761.i = getelementptr inbounds i32, i32* %600, i64 8, !dbg !1466
  %601 = load i32, i32* %arrayidx761.i, align 4, !dbg !1466
  store i32 %601, i32* %s0.i, align 4, !dbg !1467
  %602 = load i32*, i32** %k.addr.i, align 8, !dbg !1468
  %arrayidx762.i = getelementptr inbounds i32, i32* %602, i64 9, !dbg !1468
  %603 = load i32, i32* %arrayidx762.i, align 4, !dbg !1468
  store i32 %603, i32* %s1.i, align 4, !dbg !1469
  %604 = load i32*, i32** %k.addr.i, align 8, !dbg !1470
  %arrayidx763.i = getelementptr inbounds i32, i32* %604, i64 10, !dbg !1470
  %605 = load i32, i32* %arrayidx763.i, align 4, !dbg !1470
  store i32 %605, i32* %s2.i, align 4, !dbg !1471
  %606 = load i32*, i32** %k.addr.i, align 8, !dbg !1472
  %arrayidx764.i = getelementptr inbounds i32, i32* %606, i64 11, !dbg !1472
  %607 = load i32, i32* %arrayidx764.i, align 4, !dbg !1472
  store i32 %607, i32* %s3.i, align 4, !dbg !1473
  %608 = load i32, i32* %s0.i, align 4, !dbg !1146
  %shr767.i = lshr i32 %608, 17, !dbg !1146
  store i32 %shr767.i, i32* %_t0766.i, align 4, !dbg !1146
  %609 = load i32, i32* %s0.i, align 4, !dbg !1146
  %shl768.i = shl i32 %609, 15, !dbg !1146
  %610 = load i32, i32* %s1.i, align 4, !dbg !1146
  %shr769.i = lshr i32 %610, 17, !dbg !1146
  %or770.i = or i32 %shl768.i, %shr769.i, !dbg !1146
  store i32 %or770.i, i32* %s0.i, align 4, !dbg !1146
  %611 = load i32, i32* %s1.i, align 4, !dbg !1146
  %shl771.i = shl i32 %611, 15, !dbg !1146
  %612 = load i32, i32* %s2.i, align 4, !dbg !1146
  %shr772.i = lshr i32 %612, 17, !dbg !1146
  %or773.i = or i32 %shl771.i, %shr772.i, !dbg !1146
  store i32 %or773.i, i32* %s1.i, align 4, !dbg !1146
  %613 = load i32, i32* %s2.i, align 4, !dbg !1146
  %shl774.i = shl i32 %613, 15, !dbg !1146
  %614 = load i32, i32* %s3.i, align 4, !dbg !1146
  %shr775.i = lshr i32 %614, 17, !dbg !1146
  %or776.i = or i32 %shl774.i, %shr775.i, !dbg !1146
  store i32 %or776.i, i32* %s2.i, align 4, !dbg !1146
  %615 = load i32, i32* %s3.i, align 4, !dbg !1146
  %shl777.i = shl i32 %615, 15, !dbg !1146
  %616 = load i32, i32* %_t0766.i, align 4, !dbg !1146
  %or778.i = or i32 %shl777.i, %616, !dbg !1146
  store i32 %or778.i, i32* %s3.i, align 4, !dbg !1146
  %617 = load i32, i32* %s0.i, align 4, !dbg !1474
  %618 = load i32*, i32** %k.addr.i, align 8, !dbg !1475
  %arrayidx780.i = getelementptr inbounds i32, i32* %618, i64 8, !dbg !1475
  store i32 %617, i32* %arrayidx780.i, align 4, !dbg !1476
  %619 = load i32, i32* %s1.i, align 4, !dbg !1477
  %620 = load i32*, i32** %k.addr.i, align 8, !dbg !1478
  %arrayidx781.i = getelementptr inbounds i32, i32* %620, i64 9, !dbg !1478
  store i32 %619, i32* %arrayidx781.i, align 4, !dbg !1479
  %621 = load i32, i32* %s2.i, align 4, !dbg !1480
  %622 = load i32*, i32** %k.addr.i, align 8, !dbg !1481
  %arrayidx782.i = getelementptr inbounds i32, i32* %622, i64 10, !dbg !1481
  store i32 %621, i32* %arrayidx782.i, align 4, !dbg !1482
  %623 = load i32, i32* %s3.i, align 4, !dbg !1483
  %624 = load i32*, i32** %k.addr.i, align 8, !dbg !1484
  %arrayidx783.i = getelementptr inbounds i32, i32* %624, i64 11, !dbg !1484
  store i32 %623, i32* %arrayidx783.i, align 4, !dbg !1485
  %625 = load i32, i32* %s0.i, align 4, !dbg !1147
  %shr786.i = lshr i32 %625, 17, !dbg !1147
  store i32 %shr786.i, i32* %_t0785.i, align 4, !dbg !1147
  %626 = load i32, i32* %s0.i, align 4, !dbg !1147
  %shl787.i = shl i32 %626, 15, !dbg !1147
  %627 = load i32, i32* %s1.i, align 4, !dbg !1147
  %shr788.i = lshr i32 %627, 17, !dbg !1147
  %or789.i = or i32 %shl787.i, %shr788.i, !dbg !1147
  store i32 %or789.i, i32* %s0.i, align 4, !dbg !1147
  %628 = load i32, i32* %s1.i, align 4, !dbg !1147
  %shl790.i = shl i32 %628, 15, !dbg !1147
  %629 = load i32, i32* %s2.i, align 4, !dbg !1147
  %shr791.i = lshr i32 %629, 17, !dbg !1147
  %or792.i = or i32 %shl790.i, %shr791.i, !dbg !1147
  store i32 %or792.i, i32* %s1.i, align 4, !dbg !1147
  %630 = load i32, i32* %s2.i, align 4, !dbg !1147
  %shl793.i = shl i32 %630, 15, !dbg !1147
  %631 = load i32, i32* %s3.i, align 4, !dbg !1147
  %shr794.i = lshr i32 %631, 17, !dbg !1147
  %or795.i = or i32 %shl793.i, %shr794.i, !dbg !1147
  store i32 %or795.i, i32* %s2.i, align 4, !dbg !1147
  %632 = load i32, i32* %s3.i, align 4, !dbg !1147
  %shl796.i = shl i32 %632, 15, !dbg !1147
  %633 = load i32, i32* %_t0785.i, align 4, !dbg !1147
  %or797.i = or i32 %shl796.i, %633, !dbg !1147
  store i32 %or797.i, i32* %s3.i, align 4, !dbg !1147
  %634 = load i32, i32* %s0.i, align 4, !dbg !1486
  %635 = load i32*, i32** %k.addr.i, align 8, !dbg !1487
  %arrayidx799.i = getelementptr inbounds i32, i32* %635, i64 16, !dbg !1487
  store i32 %634, i32* %arrayidx799.i, align 4, !dbg !1488
  %636 = load i32, i32* %s1.i, align 4, !dbg !1489
  %637 = load i32*, i32** %k.addr.i, align 8, !dbg !1490
  %arrayidx800.i = getelementptr inbounds i32, i32* %637, i64 17, !dbg !1490
  store i32 %636, i32* %arrayidx800.i, align 4, !dbg !1491
  %638 = load i32, i32* %s2.i, align 4, !dbg !1492
  %639 = load i32*, i32** %k.addr.i, align 8, !dbg !1493
  %arrayidx801.i = getelementptr inbounds i32, i32* %639, i64 18, !dbg !1493
  store i32 %638, i32* %arrayidx801.i, align 4, !dbg !1494
  %640 = load i32, i32* %s3.i, align 4, !dbg !1495
  %641 = load i32*, i32** %k.addr.i, align 8, !dbg !1496
  %arrayidx802.i = getelementptr inbounds i32, i32* %641, i64 19, !dbg !1496
  store i32 %640, i32* %arrayidx802.i, align 4, !dbg !1497
  %642 = load i32, i32* %s0.i, align 4, !dbg !1148
  %shr805.i = lshr i32 %642, 2, !dbg !1148
  store i32 %shr805.i, i32* %_t0804.i, align 4, !dbg !1148
  %643 = load i32, i32* %s0.i, align 4, !dbg !1148
  %shl806.i = shl i32 %643, 30, !dbg !1148
  %644 = load i32, i32* %s1.i, align 4, !dbg !1148
  %shr807.i = lshr i32 %644, 2, !dbg !1148
  %or808.i = or i32 %shl806.i, %shr807.i, !dbg !1148
  store i32 %or808.i, i32* %s0.i, align 4, !dbg !1148
  %645 = load i32, i32* %s1.i, align 4, !dbg !1148
  %shl809.i = shl i32 %645, 30, !dbg !1148
  %646 = load i32, i32* %s2.i, align 4, !dbg !1148
  %shr810.i = lshr i32 %646, 2, !dbg !1148
  %or811.i = or i32 %shl809.i, %shr810.i, !dbg !1148
  store i32 %or811.i, i32* %s1.i, align 4, !dbg !1148
  %647 = load i32, i32* %s2.i, align 4, !dbg !1148
  %shl812.i = shl i32 %647, 30, !dbg !1148
  %648 = load i32, i32* %s3.i, align 4, !dbg !1148
  %shr813.i = lshr i32 %648, 2, !dbg !1148
  %or814.i = or i32 %shl812.i, %shr813.i, !dbg !1148
  store i32 %or814.i, i32* %s2.i, align 4, !dbg !1148
  %649 = load i32, i32* %s3.i, align 4, !dbg !1148
  %shl815.i = shl i32 %649, 30, !dbg !1148
  %650 = load i32, i32* %_t0804.i, align 4, !dbg !1148
  %or816.i = or i32 %shl815.i, %650, !dbg !1148
  store i32 %or816.i, i32* %s3.i, align 4, !dbg !1148
  %651 = load i32, i32* %s0.i, align 4, !dbg !1498
  %652 = load i32*, i32** %k.addr.i, align 8, !dbg !1499
  %arrayidx818.i = getelementptr inbounds i32, i32* %652, i64 36, !dbg !1499
  store i32 %651, i32* %arrayidx818.i, align 4, !dbg !1500
  %653 = load i32, i32* %s1.i, align 4, !dbg !1501
  %654 = load i32*, i32** %k.addr.i, align 8, !dbg !1502
  %arrayidx819.i = getelementptr inbounds i32, i32* %654, i64 37, !dbg !1502
  store i32 %653, i32* %arrayidx819.i, align 4, !dbg !1503
  %655 = load i32, i32* %s2.i, align 4, !dbg !1504
  %656 = load i32*, i32** %k.addr.i, align 8, !dbg !1505
  %arrayidx820.i = getelementptr inbounds i32, i32* %656, i64 38, !dbg !1505
  store i32 %655, i32* %arrayidx820.i, align 4, !dbg !1506
  %657 = load i32, i32* %s3.i, align 4, !dbg !1507
  %658 = load i32*, i32** %k.addr.i, align 8, !dbg !1508
  %arrayidx821.i = getelementptr inbounds i32, i32* %658, i64 39, !dbg !1508
  store i32 %657, i32* %arrayidx821.i, align 4, !dbg !1509
  %659 = load i32, i32* %s1.i, align 4, !dbg !1149
  %shr824.i = lshr i32 %659, 30, !dbg !1149
  store i32 %shr824.i, i32* %_t0823.i, align 4, !dbg !1149
  %660 = load i32, i32* %s1.i, align 4, !dbg !1149
  %shl825.i = shl i32 %660, 2, !dbg !1149
  %661 = load i32, i32* %s2.i, align 4, !dbg !1149
  %shr826.i = lshr i32 %661, 30, !dbg !1149
  %or827.i = or i32 %shl825.i, %shr826.i, !dbg !1149
  store i32 %or827.i, i32* %s1.i, align 4, !dbg !1149
  %662 = load i32, i32* %s2.i, align 4, !dbg !1149
  %shl828.i = shl i32 %662, 2, !dbg !1149
  %663 = load i32, i32* %s3.i, align 4, !dbg !1149
  %shr829.i = lshr i32 %663, 30, !dbg !1149
  %or830.i = or i32 %shl828.i, %shr829.i, !dbg !1149
  store i32 %or830.i, i32* %s2.i, align 4, !dbg !1149
  %664 = load i32, i32* %s3.i, align 4, !dbg !1149
  %shl831.i = shl i32 %664, 2, !dbg !1149
  %665 = load i32, i32* %s0.i, align 4, !dbg !1149
  %shr832.i = lshr i32 %665, 30, !dbg !1149
  %or833.i = or i32 %shl831.i, %shr832.i, !dbg !1149
  store i32 %or833.i, i32* %s3.i, align 4, !dbg !1149
  %666 = load i32, i32* %s0.i, align 4, !dbg !1149
  %shl834.i = shl i32 %666, 2, !dbg !1149
  %667 = load i32, i32* %_t0823.i, align 4, !dbg !1149
  %or835.i = or i32 %shl834.i, %667, !dbg !1149
  store i32 %or835.i, i32* %s0.i, align 4, !dbg !1149
  %668 = load i32, i32* %s1.i, align 4, !dbg !1510
  %669 = load i32*, i32** %k.addr.i, align 8, !dbg !1511
  %arrayidx837.i = getelementptr inbounds i32, i32* %669, i64 52, !dbg !1511
  store i32 %668, i32* %arrayidx837.i, align 4, !dbg !1512
  %670 = load i32, i32* %s2.i, align 4, !dbg !1513
  %671 = load i32*, i32** %k.addr.i, align 8, !dbg !1514
  %arrayidx838.i = getelementptr inbounds i32, i32* %671, i64 53, !dbg !1514
  store i32 %670, i32* %arrayidx838.i, align 4, !dbg !1515
  %672 = load i32, i32* %s3.i, align 4, !dbg !1516
  %673 = load i32*, i32** %k.addr.i, align 8, !dbg !1517
  %arrayidx839.i = getelementptr inbounds i32, i32* %673, i64 54, !dbg !1517
  store i32 %672, i32* %arrayidx839.i, align 4, !dbg !1518
  %674 = load i32, i32* %s0.i, align 4, !dbg !1519
  %675 = load i32*, i32** %k.addr.i, align 8, !dbg !1520
  %arrayidx840.i = getelementptr inbounds i32, i32* %675, i64 55, !dbg !1520
  store i32 %674, i32* %arrayidx840.i, align 4, !dbg !1521
  %676 = load i32*, i32** %k.addr.i, align 8, !dbg !1522
  %arrayidx841.i = getelementptr inbounds i32, i32* %676, i64 12, !dbg !1522
  %677 = load i32, i32* %arrayidx841.i, align 4, !dbg !1522
  store i32 %677, i32* %s0.i, align 4, !dbg !1523
  %678 = load i32*, i32** %k.addr.i, align 8, !dbg !1524
  %arrayidx842.i = getelementptr inbounds i32, i32* %678, i64 13, !dbg !1524
  %679 = load i32, i32* %arrayidx842.i, align 4, !dbg !1524
  store i32 %679, i32* %s1.i, align 4, !dbg !1525
  %680 = load i32*, i32** %k.addr.i, align 8, !dbg !1526
  %arrayidx843.i = getelementptr inbounds i32, i32* %680, i64 14, !dbg !1526
  %681 = load i32, i32* %arrayidx843.i, align 4, !dbg !1526
  store i32 %681, i32* %s2.i, align 4, !dbg !1527
  %682 = load i32*, i32** %k.addr.i, align 8, !dbg !1528
  %arrayidx844.i = getelementptr inbounds i32, i32* %682, i64 15, !dbg !1528
  %683 = load i32, i32* %arrayidx844.i, align 4, !dbg !1528
  store i32 %683, i32* %s3.i, align 4, !dbg !1529
  %684 = load i32, i32* %s0.i, align 4, !dbg !1150
  %shr847.i = lshr i32 %684, 17, !dbg !1150
  store i32 %shr847.i, i32* %_t0846.i, align 4, !dbg !1150
  %685 = load i32, i32* %s0.i, align 4, !dbg !1150
  %shl848.i = shl i32 %685, 15, !dbg !1150
  %686 = load i32, i32* %s1.i, align 4, !dbg !1150
  %shr849.i = lshr i32 %686, 17, !dbg !1150
  %or850.i = or i32 %shl848.i, %shr849.i, !dbg !1150
  store i32 %or850.i, i32* %s0.i, align 4, !dbg !1150
  %687 = load i32, i32* %s1.i, align 4, !dbg !1150
  %shl851.i = shl i32 %687, 15, !dbg !1150
  %688 = load i32, i32* %s2.i, align 4, !dbg !1150
  %shr852.i = lshr i32 %688, 17, !dbg !1150
  %or853.i = or i32 %shl851.i, %shr852.i, !dbg !1150
  store i32 %or853.i, i32* %s1.i, align 4, !dbg !1150
  %689 = load i32, i32* %s2.i, align 4, !dbg !1150
  %shl854.i = shl i32 %689, 15, !dbg !1150
  %690 = load i32, i32* %s3.i, align 4, !dbg !1150
  %shr855.i = lshr i32 %690, 17, !dbg !1150
  %or856.i = or i32 %shl854.i, %shr855.i, !dbg !1150
  store i32 %or856.i, i32* %s2.i, align 4, !dbg !1150
  %691 = load i32, i32* %s3.i, align 4, !dbg !1150
  %shl857.i = shl i32 %691, 15, !dbg !1150
  %692 = load i32, i32* %_t0846.i, align 4, !dbg !1150
  %or858.i = or i32 %shl857.i, %692, !dbg !1150
  store i32 %or858.i, i32* %s3.i, align 4, !dbg !1150
  %693 = load i32, i32* %s0.i, align 4, !dbg !1530
  %694 = load i32*, i32** %k.addr.i, align 8, !dbg !1531
  %arrayidx860.i = getelementptr inbounds i32, i32* %694, i64 12, !dbg !1531
  store i32 %693, i32* %arrayidx860.i, align 4, !dbg !1532
  %695 = load i32, i32* %s1.i, align 4, !dbg !1533
  %696 = load i32*, i32** %k.addr.i, align 8, !dbg !1534
  %arrayidx861.i = getelementptr inbounds i32, i32* %696, i64 13, !dbg !1534
  store i32 %695, i32* %arrayidx861.i, align 4, !dbg !1535
  %697 = load i32, i32* %s2.i, align 4, !dbg !1536
  %698 = load i32*, i32** %k.addr.i, align 8, !dbg !1537
  %arrayidx862.i = getelementptr inbounds i32, i32* %698, i64 14, !dbg !1537
  store i32 %697, i32* %arrayidx862.i, align 4, !dbg !1538
  %699 = load i32, i32* %s3.i, align 4, !dbg !1539
  %700 = load i32*, i32** %k.addr.i, align 8, !dbg !1540
  %arrayidx863.i = getelementptr inbounds i32, i32* %700, i64 15, !dbg !1540
  store i32 %699, i32* %arrayidx863.i, align 4, !dbg !1541
  %701 = load i32, i32* %s0.i, align 4, !dbg !1151
  %shr866.i = lshr i32 %701, 2, !dbg !1151
  store i32 %shr866.i, i32* %_t0865.i, align 4, !dbg !1151
  %702 = load i32, i32* %s0.i, align 4, !dbg !1151
  %shl867.i = shl i32 %702, 30, !dbg !1151
  %703 = load i32, i32* %s1.i, align 4, !dbg !1151
  %shr868.i = lshr i32 %703, 2, !dbg !1151
  %or869.i = or i32 %shl867.i, %shr868.i, !dbg !1151
  store i32 %or869.i, i32* %s0.i, align 4, !dbg !1151
  %704 = load i32, i32* %s1.i, align 4, !dbg !1151
  %shl870.i = shl i32 %704, 30, !dbg !1151
  %705 = load i32, i32* %s2.i, align 4, !dbg !1151
  %shr871.i = lshr i32 %705, 2, !dbg !1151
  %or872.i = or i32 %shl870.i, %shr871.i, !dbg !1151
  store i32 %or872.i, i32* %s1.i, align 4, !dbg !1151
  %706 = load i32, i32* %s2.i, align 4, !dbg !1151
  %shl873.i = shl i32 %706, 30, !dbg !1151
  %707 = load i32, i32* %s3.i, align 4, !dbg !1151
  %shr874.i = lshr i32 %707, 2, !dbg !1151
  %or875.i = or i32 %shl873.i, %shr874.i, !dbg !1151
  store i32 %or875.i, i32* %s2.i, align 4, !dbg !1151
  %708 = load i32, i32* %s3.i, align 4, !dbg !1151
  %shl876.i = shl i32 %708, 30, !dbg !1151
  %709 = load i32, i32* %_t0865.i, align 4, !dbg !1151
  %or877.i = or i32 %shl876.i, %709, !dbg !1151
  store i32 %or877.i, i32* %s3.i, align 4, !dbg !1151
  %710 = load i32, i32* %s0.i, align 4, !dbg !1542
  %711 = load i32*, i32** %k.addr.i, align 8, !dbg !1543
  %arrayidx879.i = getelementptr inbounds i32, i32* %711, i64 28, !dbg !1543
  store i32 %710, i32* %arrayidx879.i, align 4, !dbg !1544
  %712 = load i32, i32* %s1.i, align 4, !dbg !1545
  %713 = load i32*, i32** %k.addr.i, align 8, !dbg !1546
  %arrayidx880.i = getelementptr inbounds i32, i32* %713, i64 29, !dbg !1546
  store i32 %712, i32* %arrayidx880.i, align 4, !dbg !1547
  %714 = load i32, i32* %s2.i, align 4, !dbg !1548
  %715 = load i32*, i32** %k.addr.i, align 8, !dbg !1549
  %arrayidx881.i = getelementptr inbounds i32, i32* %715, i64 30, !dbg !1549
  store i32 %714, i32* %arrayidx881.i, align 4, !dbg !1550
  %716 = load i32, i32* %s3.i, align 4, !dbg !1551
  %717 = load i32*, i32** %k.addr.i, align 8, !dbg !1552
  %arrayidx882.i = getelementptr inbounds i32, i32* %717, i64 31, !dbg !1552
  store i32 %716, i32* %arrayidx882.i, align 4, !dbg !1553
  %718 = load i32, i32* %s1.i, align 4, !dbg !1554
  %719 = load i32*, i32** %k.addr.i, align 8, !dbg !1555
  %arrayidx883.i = getelementptr inbounds i32, i32* %719, i64 48, !dbg !1555
  store i32 %718, i32* %arrayidx883.i, align 4, !dbg !1556
  %720 = load i32, i32* %s2.i, align 4, !dbg !1557
  %721 = load i32*, i32** %k.addr.i, align 8, !dbg !1558
  %arrayidx884.i = getelementptr inbounds i32, i32* %721, i64 49, !dbg !1558
  store i32 %720, i32* %arrayidx884.i, align 4, !dbg !1559
  %722 = load i32, i32* %s3.i, align 4, !dbg !1560
  %723 = load i32*, i32** %k.addr.i, align 8, !dbg !1561
  %arrayidx885.i = getelementptr inbounds i32, i32* %723, i64 50, !dbg !1561
  store i32 %722, i32* %arrayidx885.i, align 4, !dbg !1562
  %724 = load i32, i32* %s0.i, align 4, !dbg !1563
  %725 = load i32*, i32** %k.addr.i, align 8, !dbg !1564
  %arrayidx886.i = getelementptr inbounds i32, i32* %725, i64 51, !dbg !1564
  store i32 %724, i32* %arrayidx886.i, align 4, !dbg !1565
  %726 = load i32, i32* %s1.i, align 4, !dbg !1152
  %shr889.i = lshr i32 %726, 15, !dbg !1152
  store i32 %shr889.i, i32* %_t0888.i, align 4, !dbg !1152
  %727 = load i32, i32* %s1.i, align 4, !dbg !1152
  %shl890.i = shl i32 %727, 17, !dbg !1152
  %728 = load i32, i32* %s2.i, align 4, !dbg !1152
  %shr891.i = lshr i32 %728, 15, !dbg !1152
  %or892.i = or i32 %shl890.i, %shr891.i, !dbg !1152
  store i32 %or892.i, i32* %s1.i, align 4, !dbg !1152
  %729 = load i32, i32* %s2.i, align 4, !dbg !1152
  %shl893.i = shl i32 %729, 17, !dbg !1152
  %730 = load i32, i32* %s3.i, align 4, !dbg !1152
  %shr894.i = lshr i32 %730, 15, !dbg !1152
  %or895.i = or i32 %shl893.i, %shr894.i, !dbg !1152
  store i32 %or895.i, i32* %s2.i, align 4, !dbg !1152
  %731 = load i32, i32* %s3.i, align 4, !dbg !1152
  %shl896.i = shl i32 %731, 17, !dbg !1152
  %732 = load i32, i32* %s0.i, align 4, !dbg !1152
  %shr897.i = lshr i32 %732, 15, !dbg !1152
  %or898.i = or i32 %shl896.i, %shr897.i, !dbg !1152
  store i32 %or898.i, i32* %s3.i, align 4, !dbg !1152
  %733 = load i32, i32* %s0.i, align 4, !dbg !1152
  %shl899.i = shl i32 %733, 17, !dbg !1152
  %734 = load i32, i32* %_t0888.i, align 4, !dbg !1152
  %or900.i = or i32 %shl899.i, %734, !dbg !1152
  store i32 %or900.i, i32* %s0.i, align 4, !dbg !1152
  %735 = load i32, i32* %s1.i, align 4, !dbg !1566
  %736 = load i32*, i32** %k.addr.i, align 8, !dbg !1567
  %arrayidx902.i = getelementptr inbounds i32, i32* %736, i64 56, !dbg !1567
  store i32 %735, i32* %arrayidx902.i, align 4, !dbg !1568
  %737 = load i32, i32* %s2.i, align 4, !dbg !1569
  %738 = load i32*, i32** %k.addr.i, align 8, !dbg !1570
  %arrayidx903.i = getelementptr inbounds i32, i32* %738, i64 57, !dbg !1570
  store i32 %737, i32* %arrayidx903.i, align 4, !dbg !1571
  %739 = load i32, i32* %s3.i, align 4, !dbg !1572
  %740 = load i32*, i32** %k.addr.i, align 8, !dbg !1573
  %arrayidx904.i = getelementptr inbounds i32, i32* %740, i64 58, !dbg !1573
  store i32 %739, i32* %arrayidx904.i, align 4, !dbg !1574
  %741 = load i32, i32* %s0.i, align 4, !dbg !1575
  %742 = load i32*, i32** %k.addr.i, align 8, !dbg !1576
  %arrayidx905.i = getelementptr inbounds i32, i32* %742, i64 59, !dbg !1576
  store i32 %741, i32* %arrayidx905.i, align 4, !dbg !1577
  %743 = load i32*, i32** %k.addr.i, align 8, !dbg !1578
  %744 = load i32, i32* %743, align 4, !dbg !1578
  store i32 %744, i32* %s0.i, align 4, !dbg !1579
  %745 = load i32*, i32** %k.addr.i, align 8, !dbg !1580
  %arrayidx907.i = getelementptr inbounds i32, i32* %745, i64 1, !dbg !1580
  %746 = load i32, i32* %arrayidx907.i, align 4, !dbg !1580
  store i32 %746, i32* %s1.i, align 4, !dbg !1581
  %747 = load i32*, i32** %k.addr.i, align 8, !dbg !1582
  %arrayidx908.i = getelementptr inbounds i32, i32* %747, i64 2, !dbg !1582
  %748 = load i32, i32* %arrayidx908.i, align 4, !dbg !1582
  store i32 %748, i32* %s2.i, align 4, !dbg !1583
  %749 = load i32*, i32** %k.addr.i, align 8, !dbg !1584
  %arrayidx909.i = getelementptr inbounds i32, i32* %749, i64 3, !dbg !1584
  %750 = load i32, i32* %arrayidx909.i, align 4, !dbg !1584
  store i32 %750, i32* %s3.i, align 4, !dbg !1585
  %751 = load i32, i32* %s1.i, align 4, !dbg !1153
  %shr912.i = lshr i32 %751, 19, !dbg !1153
  store i32 %shr912.i, i32* %_t0911.i, align 4, !dbg !1153
  %752 = load i32, i32* %s1.i, align 4, !dbg !1153
  %shl913.i = shl i32 %752, 13, !dbg !1153
  %753 = load i32, i32* %s2.i, align 4, !dbg !1153
  %shr914.i = lshr i32 %753, 19, !dbg !1153
  %or915.i = or i32 %shl913.i, %shr914.i, !dbg !1153
  store i32 %or915.i, i32* %s1.i, align 4, !dbg !1153
  %754 = load i32, i32* %s2.i, align 4, !dbg !1153
  %shl916.i = shl i32 %754, 13, !dbg !1153
  %755 = load i32, i32* %s3.i, align 4, !dbg !1153
  %shr917.i = lshr i32 %755, 19, !dbg !1153
  %or918.i = or i32 %shl916.i, %shr917.i, !dbg !1153
  store i32 %or918.i, i32* %s2.i, align 4, !dbg !1153
  %756 = load i32, i32* %s3.i, align 4, !dbg !1153
  %shl919.i = shl i32 %756, 13, !dbg !1153
  %757 = load i32, i32* %s0.i, align 4, !dbg !1153
  %shr920.i = lshr i32 %757, 19, !dbg !1153
  %or921.i = or i32 %shl919.i, %shr920.i, !dbg !1153
  store i32 %or921.i, i32* %s3.i, align 4, !dbg !1153
  %758 = load i32, i32* %s0.i, align 4, !dbg !1153
  %shl922.i = shl i32 %758, 13, !dbg !1153
  %759 = load i32, i32* %_t0911.i, align 4, !dbg !1153
  %or923.i = or i32 %shl922.i, %759, !dbg !1153
  store i32 %or923.i, i32* %s0.i, align 4, !dbg !1153
  %760 = load i32, i32* %s1.i, align 4, !dbg !1586
  %761 = load i32*, i32** %k.addr.i, align 8, !dbg !1587
  %arrayidx925.i = getelementptr inbounds i32, i32* %761, i64 24, !dbg !1587
  store i32 %760, i32* %arrayidx925.i, align 4, !dbg !1588
  %762 = load i32, i32* %s2.i, align 4, !dbg !1589
  %763 = load i32*, i32** %k.addr.i, align 8, !dbg !1590
  %arrayidx926.i = getelementptr inbounds i32, i32* %763, i64 25, !dbg !1590
  store i32 %762, i32* %arrayidx926.i, align 4, !dbg !1591
  %764 = load i32, i32* %s3.i, align 4, !dbg !1592
  %765 = load i32*, i32** %k.addr.i, align 8, !dbg !1593
  %arrayidx927.i = getelementptr inbounds i32, i32* %765, i64 26, !dbg !1593
  store i32 %764, i32* %arrayidx927.i, align 4, !dbg !1594
  %766 = load i32, i32* %s0.i, align 4, !dbg !1595
  %767 = load i32*, i32** %k.addr.i, align 8, !dbg !1596
  %arrayidx928.i = getelementptr inbounds i32, i32* %767, i64 27, !dbg !1596
  store i32 %766, i32* %arrayidx928.i, align 4, !dbg !1597
  %768 = load i32, i32* %s1.i, align 4, !dbg !1154
  %shr931.i = lshr i32 %768, 17, !dbg !1154
  store i32 %shr931.i, i32* %_t0930.i, align 4, !dbg !1154
  %769 = load i32, i32* %s1.i, align 4, !dbg !1154
  %shl932.i = shl i32 %769, 15, !dbg !1154
  %770 = load i32, i32* %s2.i, align 4, !dbg !1154
  %shr933.i = lshr i32 %770, 17, !dbg !1154
  %or934.i = or i32 %shl932.i, %shr933.i, !dbg !1154
  store i32 %or934.i, i32* %s1.i, align 4, !dbg !1154
  %771 = load i32, i32* %s2.i, align 4, !dbg !1154
  %shl935.i = shl i32 %771, 15, !dbg !1154
  %772 = load i32, i32* %s3.i, align 4, !dbg !1154
  %shr936.i = lshr i32 %772, 17, !dbg !1154
  %or937.i = or i32 %shl935.i, %shr936.i, !dbg !1154
  store i32 %or937.i, i32* %s2.i, align 4, !dbg !1154
  %773 = load i32, i32* %s3.i, align 4, !dbg !1154
  %shl938.i = shl i32 %773, 15, !dbg !1154
  %774 = load i32, i32* %s0.i, align 4, !dbg !1154
  %shr939.i = lshr i32 %774, 17, !dbg !1154
  %or940.i = or i32 %shl938.i, %shr939.i, !dbg !1154
  store i32 %or940.i, i32* %s3.i, align 4, !dbg !1154
  %775 = load i32, i32* %s0.i, align 4, !dbg !1154
  %shl941.i = shl i32 %775, 15, !dbg !1154
  %776 = load i32, i32* %_t0930.i, align 4, !dbg !1154
  %or942.i = or i32 %shl941.i, %776, !dbg !1154
  store i32 %or942.i, i32* %s0.i, align 4, !dbg !1154
  %777 = load i32, i32* %s1.i, align 4, !dbg !1598
  %778 = load i32*, i32** %k.addr.i, align 8, !dbg !1599
  %arrayidx944.i = getelementptr inbounds i32, i32* %778, i64 32, !dbg !1599
  store i32 %777, i32* %arrayidx944.i, align 4, !dbg !1600
  %779 = load i32, i32* %s2.i, align 4, !dbg !1601
  %780 = load i32*, i32** %k.addr.i, align 8, !dbg !1602
  %arrayidx945.i = getelementptr inbounds i32, i32* %780, i64 33, !dbg !1602
  store i32 %779, i32* %arrayidx945.i, align 4, !dbg !1603
  %781 = load i32, i32* %s3.i, align 4, !dbg !1604
  %782 = load i32*, i32** %k.addr.i, align 8, !dbg !1605
  %arrayidx946.i = getelementptr inbounds i32, i32* %782, i64 34, !dbg !1605
  store i32 %781, i32* %arrayidx946.i, align 4, !dbg !1606
  %783 = load i32, i32* %s0.i, align 4, !dbg !1607
  %784 = load i32*, i32** %k.addr.i, align 8, !dbg !1608
  %arrayidx947.i = getelementptr inbounds i32, i32* %784, i64 35, !dbg !1608
  store i32 %783, i32* %arrayidx947.i, align 4, !dbg !1609
  %785 = load i32, i32* %s1.i, align 4, !dbg !1155
  %shr950.i = lshr i32 %785, 15, !dbg !1155
  store i32 %shr950.i, i32* %_t0949.i, align 4, !dbg !1155
  %786 = load i32, i32* %s1.i, align 4, !dbg !1155
  %shl951.i = shl i32 %786, 17, !dbg !1155
  %787 = load i32, i32* %s2.i, align 4, !dbg !1155
  %shr952.i = lshr i32 %787, 15, !dbg !1155
  %or953.i = or i32 %shl951.i, %shr952.i, !dbg !1155
  store i32 %or953.i, i32* %s1.i, align 4, !dbg !1155
  %788 = load i32, i32* %s2.i, align 4, !dbg !1155
  %shl954.i = shl i32 %788, 17, !dbg !1155
  %789 = load i32, i32* %s3.i, align 4, !dbg !1155
  %shr955.i = lshr i32 %789, 15, !dbg !1155
  %or956.i = or i32 %shl954.i, %shr955.i, !dbg !1155
  store i32 %or956.i, i32* %s2.i, align 4, !dbg !1155
  %790 = load i32, i32* %s3.i, align 4, !dbg !1155
  %shl957.i = shl i32 %790, 17, !dbg !1155
  %791 = load i32, i32* %s0.i, align 4, !dbg !1155
  %shr958.i = lshr i32 %791, 15, !dbg !1155
  %or959.i = or i32 %shl957.i, %shr958.i, !dbg !1155
  store i32 %or959.i, i32* %s3.i, align 4, !dbg !1155
  %792 = load i32, i32* %s0.i, align 4, !dbg !1155
  %shl960.i = shl i32 %792, 17, !dbg !1155
  %793 = load i32, i32* %_t0949.i, align 4, !dbg !1155
  %or961.i = or i32 %shl960.i, %793, !dbg !1155
  store i32 %or961.i, i32* %s0.i, align 4, !dbg !1155
  %794 = load i32, i32* %s1.i, align 4, !dbg !1610
  %795 = load i32*, i32** %k.addr.i, align 8, !dbg !1611
  %arrayidx963.i = getelementptr inbounds i32, i32* %795, i64 44, !dbg !1611
  store i32 %794, i32* %arrayidx963.i, align 4, !dbg !1612
  %796 = load i32, i32* %s2.i, align 4, !dbg !1613
  %797 = load i32*, i32** %k.addr.i, align 8, !dbg !1614
  %arrayidx964.i = getelementptr inbounds i32, i32* %797, i64 45, !dbg !1614
  store i32 %796, i32* %arrayidx964.i, align 4, !dbg !1615
  %798 = load i32, i32* %s3.i, align 4, !dbg !1616
  %799 = load i32*, i32** %k.addr.i, align 8, !dbg !1617
  %arrayidx965.i = getelementptr inbounds i32, i32* %799, i64 46, !dbg !1617
  store i32 %798, i32* %arrayidx965.i, align 4, !dbg !1618
  %800 = load i32, i32* %s0.i, align 4, !dbg !1619
  %801 = load i32*, i32** %k.addr.i, align 8, !dbg !1620
  %arrayidx966.i = getelementptr inbounds i32, i32* %801, i64 47, !dbg !1620
  store i32 %800, i32* %arrayidx966.i, align 4, !dbg !1621
  %802 = load i32, i32* %s2.i, align 4, !dbg !1156
  %shr969.i = lshr i32 %802, 30, !dbg !1156
  store i32 %shr969.i, i32* %_t0968.i, align 4, !dbg !1156
  %803 = load i32, i32* %s2.i, align 4, !dbg !1156
  %shl970.i = shl i32 %803, 2, !dbg !1156
  %804 = load i32, i32* %s3.i, align 4, !dbg !1156
  %shr971.i = lshr i32 %804, 30, !dbg !1156
  %or972.i = or i32 %shl970.i, %shr971.i, !dbg !1156
  store i32 %or972.i, i32* %s2.i, align 4, !dbg !1156
  %805 = load i32, i32* %s3.i, align 4, !dbg !1156
  %shl973.i = shl i32 %805, 2, !dbg !1156
  %806 = load i32, i32* %s0.i, align 4, !dbg !1156
  %shr974.i = lshr i32 %806, 30, !dbg !1156
  %or975.i = or i32 %shl973.i, %shr974.i, !dbg !1156
  store i32 %or975.i, i32* %s3.i, align 4, !dbg !1156
  %807 = load i32, i32* %s0.i, align 4, !dbg !1156
  %shl976.i = shl i32 %807, 2, !dbg !1156
  %808 = load i32, i32* %s1.i, align 4, !dbg !1156
  %shr977.i = lshr i32 %808, 30, !dbg !1156
  %or978.i = or i32 %shl976.i, %shr977.i, !dbg !1156
  store i32 %or978.i, i32* %s0.i, align 4, !dbg !1156
  %809 = load i32, i32* %s1.i, align 4, !dbg !1156
  %shl979.i = shl i32 %809, 2, !dbg !1156
  %810 = load i32, i32* %_t0968.i, align 4, !dbg !1156
  %or980.i = or i32 %shl979.i, %810, !dbg !1156
  store i32 %or980.i, i32* %s1.i, align 4, !dbg !1156
  %811 = load i32, i32* %s2.i, align 4, !dbg !1622
  %812 = load i32*, i32** %k.addr.i, align 8, !dbg !1623
  %arrayidx982.i = getelementptr inbounds i32, i32* %812, i64 60, !dbg !1623
  store i32 %811, i32* %arrayidx982.i, align 4, !dbg !1624
  %813 = load i32, i32* %s3.i, align 4, !dbg !1625
  %814 = load i32*, i32** %k.addr.i, align 8, !dbg !1626
  %arrayidx983.i = getelementptr inbounds i32, i32* %814, i64 61, !dbg !1626
  store i32 %813, i32* %arrayidx983.i, align 4, !dbg !1627
  %815 = load i32, i32* %s0.i, align 4, !dbg !1628
  %816 = load i32*, i32** %k.addr.i, align 8, !dbg !1629
  %arrayidx984.i = getelementptr inbounds i32, i32* %816, i64 62, !dbg !1629
  store i32 %815, i32* %arrayidx984.i, align 4, !dbg !1630
  %817 = load i32, i32* %s1.i, align 4, !dbg !1631
  %818 = load i32*, i32** %k.addr.i, align 8, !dbg !1632
  %arrayidx985.i = getelementptr inbounds i32, i32* %818, i64 63, !dbg !1632
  store i32 %817, i32* %arrayidx985.i, align 4, !dbg !1633
  store i32 4, i32* %retval.i, align 4, !dbg !1634
  br label %Camellia_Ekeygen.exit, !dbg !1634

Camellia_Ekeygen.exit:                            ; preds = %if.then357.i, %if.else589.i
  %819 = load i32, i32* %retval.i, align 4, !dbg !1635
  call void @llvm.dbg.declare(metadata [94 x i8]* %charset, metadata !1636, metadata !DIExpression()), !dbg !1642
  %820 = bitcast [94 x i8]* %charset to i8*, !dbg !1642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %820, i8* align 16 getelementptr inbounds ([94 x i8], [94 x i8]* @__const.main.charset, i32 0, i32 0), i64 94, i1 false), !dbg !1642
  call void @llvm.dbg.declare(metadata i64* %length, metadata !1643, metadata !DIExpression()), !dbg !1647
  store i64 94, i64* %length, align 8, !dbg !1647
  call void @llvm.dbg.declare(metadata i32* %size, metadata !1648, metadata !DIExpression()), !dbg !1649
  store i32 16, i32* %size, align 4, !dbg !1649
  call void @llvm.dbg.declare(metadata i64* %round, metadata !1650, metadata !DIExpression()), !dbg !1651
  store i64 10, i64* %round, align 8, !dbg !1651
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.declare(metadata i8** %buff, metadata !1654, metadata !DIExpression()), !dbg !1656
  %call2 = call noalias i8* @malloc(i64 2896) #6, !dbg !1657
  store i8* %call2, i8** %buff, align 8, !dbg !1656
  store i32 0, i32* %i, align 4, !dbg !1658
  br label %for.cond, !dbg !1660

for.cond:                                         ; preds = %for.inc, %Camellia_Ekeygen.exit
  %821 = load i32, i32* %i, align 4, !dbg !1661
  %cmp = icmp slt i32 %821, 2896, !dbg !1663
  br i1 %cmp, label %for.body, label %for.end, !dbg !1664

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %key, metadata !1665, metadata !DIExpression()), !dbg !1667
  %call3 = call i32 @rand() #6, !dbg !1668
  %conv = sext i32 %call3 to i64, !dbg !1668
  %822 = load i64, i64* %length, align 8, !dbg !1669
  %rem = urem i64 %conv, %822, !dbg !1670
  %conv4 = trunc i64 %rem to i32, !dbg !1668
  store i32 %conv4, i32* %key, align 4, !dbg !1667
  %823 = load i32, i32* %key, align 4, !dbg !1671
  %idxprom = sext i32 %823 to i64, !dbg !1672
  %arrayidx = getelementptr inbounds [94 x i8], [94 x i8]* %charset, i64 0, i64 %idxprom, !dbg !1672
  %824 = load i8, i8* %arrayidx, align 1, !dbg !1672
  %825 = load i8*, i8** %buff, align 8, !dbg !1673
  %826 = load i32, i32* %i, align 4, !dbg !1674
  %idxprom5 = sext i32 %826 to i64, !dbg !1673
  %arrayidx6 = getelementptr inbounds i8, i8* %825, i64 %idxprom5, !dbg !1673
  store i8 %824, i8* %arrayidx6, align 1, !dbg !1675
  br label %for.inc, !dbg !1676

for.inc:                                          ; preds = %for.body
  %827 = load i32, i32* %i, align 4, !dbg !1677
  %add = add nsw i32 %827, 64, !dbg !1677
  store i32 %add, i32* %i, align 4, !dbg !1677
  br label %for.cond, !dbg !1678, !llvm.loop !1679

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %input, metadata !1681, metadata !DIExpression()), !dbg !1682
  %828 = load i32, i32* %size, align 4, !dbg !1683
  %conv7 = sext i32 %828 to i64, !dbg !1683
  %mul = mul i64 1, %conv7, !dbg !1684
  %829 = load i64, i64* %round, align 8, !dbg !1685
  %mul8 = mul i64 %mul, %829, !dbg !1686
  %call9 = call noalias i8* @malloc(i64 %mul8) #6, !dbg !1687
  store i8* %call9, i8** %input, align 8, !dbg !1682
  call void @llvm.dbg.declare(metadata i64* %n, metadata !1688, metadata !DIExpression()), !dbg !1690
  store i64 0, i64* %n, align 8, !dbg !1690
  br label %for.cond10, !dbg !1691

for.cond10:                                       ; preds = %for.inc24, %for.end
  %830 = load i64, i64* %n, align 8, !dbg !1692
  %831 = load i32, i32* %size, align 4, !dbg !1694
  %conv11 = sext i32 %831 to i64, !dbg !1694
  %832 = load i64, i64* %round, align 8, !dbg !1695
  %mul12 = mul i64 %conv11, %832, !dbg !1696
  %cmp13 = icmp ult i64 %830, %mul12, !dbg !1697
  br i1 %cmp13, label %for.body15, label %for.end25, !dbg !1698

for.body15:                                       ; preds = %for.cond10
  call void @llvm.dbg.declare(metadata i32* %key16, metadata !1699, metadata !DIExpression()), !dbg !1701
  %call17 = call i32 @rand() #6, !dbg !1702
  %conv18 = sext i32 %call17 to i64, !dbg !1702
  %833 = load i64, i64* %length, align 8, !dbg !1703
  %rem19 = urem i64 %conv18, %833, !dbg !1704
  %conv20 = trunc i64 %rem19 to i32, !dbg !1702
  store i32 %conv20, i32* %key16, align 4, !dbg !1701
  %834 = load i32, i32* %key16, align 4, !dbg !1705
  %idxprom21 = sext i32 %834 to i64, !dbg !1706
  %arrayidx22 = getelementptr inbounds [94 x i8], [94 x i8]* %charset, i64 0, i64 %idxprom21, !dbg !1706
  %835 = load i8, i8* %arrayidx22, align 1, !dbg !1706
  %836 = load i8*, i8** %input, align 8, !dbg !1707
  %837 = load i64, i64* %n, align 8, !dbg !1708
  %arrayidx23 = getelementptr inbounds i8, i8* %836, i64 %837, !dbg !1707
  store i8 %835, i8* %arrayidx23, align 1, !dbg !1709
  br label %for.inc24, !dbg !1710

for.inc24:                                        ; preds = %for.body15
  %838 = load i64, i64* %n, align 8, !dbg !1711
  %inc = add i64 %838, 1, !dbg !1711
  store i64 %inc, i64* %n, align 8, !dbg !1711
  br label %for.cond10, !dbg !1712, !llvm.loop !1713

for.end25:                                        ; preds = %for.cond10
  br label %while.cond, !dbg !1715

while.cond:                                       ; preds = %Camellia_EncryptBlock.exit, %for.end25
  %839 = load i64, i64* %round, align 8, !dbg !1716
  %tobool = icmp ne i64 %839, 0, !dbg !1715
  br i1 %tobool, label %while.body, label %while.end, !dbg !1715

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %in, metadata !1717, metadata !DIExpression()), !dbg !1718
  %840 = load i32, i32* %size, align 4, !dbg !1719
  %conv26 = sext i32 %840 to i64, !dbg !1719
  %call27 = call noalias i8* @malloc(i64 %conv26) #6, !dbg !1720
  store i8* %call27, i8** %in, align 8, !dbg !1718
  %841 = load i8*, i8** %in, align 8, !dbg !1721
  %842 = load i8*, i8** %input, align 8, !dbg !1722
  %843 = load i64, i64* %round, align 8, !dbg !1723
  %sub = sub i64 %843, 1, !dbg !1724
  %844 = load i32, i32* %size, align 4, !dbg !1725
  %conv28 = sext i32 %844 to i64, !dbg !1725
  %mul29 = mul i64 %sub, %conv28, !dbg !1726
  %add.ptr = getelementptr inbounds i8, i8* %842, i64 %mul29, !dbg !1727
  %845 = load i32, i32* %size, align 4, !dbg !1728
  %conv30 = sext i32 %845 to i64, !dbg !1728
  %call31 = call i8* @strncpy(i8* %841, i8* %add.ptr, i64 %conv30) #6, !dbg !1729
  %846 = load i8*, i8** %in, align 8, !dbg !1730
  %arraydecay32 = getelementptr inbounds [68 x i32], [68 x i32]* %k, i64 0, i64 0, !dbg !1731
  store i32 128, i32* %keyBitLength.addr.i33, align 4
  store i8* %846, i8** %plaintext.addr.i, align 8
  store i32* %arraydecay32, i32** %keyTable.addr.i, align 8
  %keyTable.addr1.i = bitcast i32** %keyTable.addr.i to i8*
  call void @llvm.var.annotation(i8* %keyTable.addr1.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 444) #6
  store i8* %ciphertext, i8** %ciphertext.addr.i, align 8
  %847 = load i32, i32* %keyBitLength.addr.i33, align 4, !dbg !1732
  %cmp.i34 = icmp eq i32 %847, 128, !dbg !1733
  %848 = zext i1 %cmp.i34 to i64, !dbg !1732
  %cond.i = select i1 %cmp.i34, i32 3, i32 4, !dbg !1732
  %849 = load i8*, i8** %plaintext.addr.i, align 8, !dbg !1734
  %850 = load i32*, i32** %keyTable.addr.i, align 8, !dbg !1735
  %851 = load i8*, i8** %ciphertext.addr.i, align 8, !dbg !1736
  store i32 %cond.i, i32* %grandRounds.addr.i.i, align 4
  store i8* %849, i8** %plaintext.addr.i.i, align 8
  store i32* %850, i32** %keyTable.addr.i.i, align 8
  %keyTable.addr1.i.i = bitcast i32** %keyTable.addr.i.i to i8*
  call void @llvm.var.annotation(i8* %keyTable.addr1.i.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 398) #6
  store i8* %851, i8** %ciphertext.addr.i.i, align 8
  %k2.i.i = bitcast i32** %k.i.i to i8*, !dbg !1737
  call void @llvm.var.annotation(i8* %k2.i.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 402) #6, !dbg !1737
  %852 = load i32*, i32** %keyTable.addr.i.i, align 8, !dbg !1738
  store i32* %852, i32** %k.i.i, align 8, !dbg !1105
  %853 = load i32*, i32** %keyTable.addr.i.i, align 8, !dbg !1739
  %854 = load i32, i32* %grandRounds.addr.i.i, align 4, !dbg !1740
  %mul.i.i = mul nsw i32 %854, 16, !dbg !1741
  %idx.ext.i.i = sext i32 %mul.i.i to i64, !dbg !1742
  %add.ptr.i.i = getelementptr inbounds i32, i32* %853, i64 %idx.ext.i.i, !dbg !1742
  store i32* %add.ptr.i.i, i32** %kend.i.i, align 8, !dbg !1106
  %855 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1743
  %856 = load i8, i8* %855, align 1, !dbg !1743
  %conv.i.i = zext i8 %856 to i32, !dbg !1743
  %shl.i.i = shl i32 %conv.i.i, 24, !dbg !1743
  %857 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1743
  %arrayidx3.i.i = getelementptr inbounds i8, i8* %857, i64 1, !dbg !1743
  %858 = load i8, i8* %arrayidx3.i.i, align 1, !dbg !1743
  %conv4.i.i = zext i8 %858 to i32, !dbg !1743
  %shl5.i.i = shl i32 %conv4.i.i, 16, !dbg !1743
  %xor.i.i = xor i32 %shl.i.i, %shl5.i.i, !dbg !1743
  %859 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1743
  %arrayidx6.i.i = getelementptr inbounds i8, i8* %859, i64 2, !dbg !1743
  %860 = load i8, i8* %arrayidx6.i.i, align 1, !dbg !1743
  %conv7.i.i = zext i8 %860 to i32, !dbg !1743
  %shl8.i.i = shl i32 %conv7.i.i, 8, !dbg !1743
  %xor9.i.i = xor i32 %xor.i.i, %shl8.i.i, !dbg !1743
  %861 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1743
  %arrayidx10.i.i = getelementptr inbounds i8, i8* %861, i64 3, !dbg !1743
  %862 = load i8, i8* %arrayidx10.i.i, align 1, !dbg !1743
  %conv11.i.i = zext i8 %862 to i32, !dbg !1743
  %xor12.i.i = xor i32 %xor9.i.i, %conv11.i.i, !dbg !1743
  %863 = load i32*, i32** %k.i.i, align 8, !dbg !1744
  %864 = load i32, i32* %863, align 4, !dbg !1744
  %xor14.i.i = xor i32 %xor12.i.i, %864, !dbg !1745
  store i32 %xor14.i.i, i32* %s0.i.i, align 4, !dbg !1746
  %865 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1747
  %add.ptr15.i.i = getelementptr inbounds i8, i8* %865, i64 4, !dbg !1747
  %866 = load i8, i8* %add.ptr15.i.i, align 1, !dbg !1747
  %conv17.i.i = zext i8 %866 to i32, !dbg !1747
  %shl18.i.i = shl i32 %conv17.i.i, 24, !dbg !1747
  %867 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1747
  %add.ptr19.i.i = getelementptr inbounds i8, i8* %867, i64 4, !dbg !1747
  %arrayidx20.i.i = getelementptr inbounds i8, i8* %add.ptr19.i.i, i64 1, !dbg !1747
  %868 = load i8, i8* %arrayidx20.i.i, align 1, !dbg !1747
  %conv21.i.i = zext i8 %868 to i32, !dbg !1747
  %shl22.i.i = shl i32 %conv21.i.i, 16, !dbg !1747
  %xor23.i.i = xor i32 %shl18.i.i, %shl22.i.i, !dbg !1747
  %869 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1747
  %add.ptr24.i.i = getelementptr inbounds i8, i8* %869, i64 4, !dbg !1747
  %arrayidx25.i.i = getelementptr inbounds i8, i8* %add.ptr24.i.i, i64 2, !dbg !1747
  %870 = load i8, i8* %arrayidx25.i.i, align 1, !dbg !1747
  %conv26.i.i = zext i8 %870 to i32, !dbg !1747
  %shl27.i.i = shl i32 %conv26.i.i, 8, !dbg !1747
  %xor28.i.i = xor i32 %xor23.i.i, %shl27.i.i, !dbg !1747
  %871 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1747
  %add.ptr29.i.i = getelementptr inbounds i8, i8* %871, i64 4, !dbg !1747
  %arrayidx30.i.i = getelementptr inbounds i8, i8* %add.ptr29.i.i, i64 3, !dbg !1747
  %872 = load i8, i8* %arrayidx30.i.i, align 1, !dbg !1747
  %conv31.i.i = zext i8 %872 to i32, !dbg !1747
  %xor32.i.i = xor i32 %xor28.i.i, %conv31.i.i, !dbg !1747
  %873 = load i32*, i32** %k.i.i, align 8, !dbg !1748
  %arrayidx33.i.i = getelementptr inbounds i32, i32* %873, i64 1, !dbg !1748
  %874 = load i32, i32* %arrayidx33.i.i, align 4, !dbg !1748
  %xor34.i.i = xor i32 %xor32.i.i, %874, !dbg !1749
  store i32 %xor34.i.i, i32* %s1.i.i, align 4, !dbg !1750
  %875 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1751
  %add.ptr35.i.i = getelementptr inbounds i8, i8* %875, i64 8, !dbg !1751
  %876 = load i8, i8* %add.ptr35.i.i, align 1, !dbg !1751
  %conv37.i.i = zext i8 %876 to i32, !dbg !1751
  %shl38.i.i = shl i32 %conv37.i.i, 24, !dbg !1751
  %877 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1751
  %add.ptr39.i.i = getelementptr inbounds i8, i8* %877, i64 8, !dbg !1751
  %arrayidx40.i.i = getelementptr inbounds i8, i8* %add.ptr39.i.i, i64 1, !dbg !1751
  %878 = load i8, i8* %arrayidx40.i.i, align 1, !dbg !1751
  %conv41.i.i = zext i8 %878 to i32, !dbg !1751
  %shl42.i.i = shl i32 %conv41.i.i, 16, !dbg !1751
  %xor43.i.i = xor i32 %shl38.i.i, %shl42.i.i, !dbg !1751
  %879 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1751
  %add.ptr44.i.i = getelementptr inbounds i8, i8* %879, i64 8, !dbg !1751
  %arrayidx45.i.i = getelementptr inbounds i8, i8* %add.ptr44.i.i, i64 2, !dbg !1751
  %880 = load i8, i8* %arrayidx45.i.i, align 1, !dbg !1751
  %conv46.i.i = zext i8 %880 to i32, !dbg !1751
  %shl47.i.i = shl i32 %conv46.i.i, 8, !dbg !1751
  %xor48.i.i = xor i32 %xor43.i.i, %shl47.i.i, !dbg !1751
  %881 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1751
  %add.ptr49.i.i = getelementptr inbounds i8, i8* %881, i64 8, !dbg !1751
  %arrayidx50.i.i = getelementptr inbounds i8, i8* %add.ptr49.i.i, i64 3, !dbg !1751
  %882 = load i8, i8* %arrayidx50.i.i, align 1, !dbg !1751
  %conv51.i.i = zext i8 %882 to i32, !dbg !1751
  %xor52.i.i = xor i32 %xor48.i.i, %conv51.i.i, !dbg !1751
  %883 = load i32*, i32** %k.i.i, align 8, !dbg !1752
  %arrayidx53.i.i = getelementptr inbounds i32, i32* %883, i64 2, !dbg !1752
  %884 = load i32, i32* %arrayidx53.i.i, align 4, !dbg !1752
  %xor54.i.i = xor i32 %xor52.i.i, %884, !dbg !1753
  store i32 %xor54.i.i, i32* %s2.i.i, align 4, !dbg !1754
  %885 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1755
  %add.ptr55.i.i = getelementptr inbounds i8, i8* %885, i64 12, !dbg !1755
  %886 = load i8, i8* %add.ptr55.i.i, align 1, !dbg !1755
  %conv57.i.i = zext i8 %886 to i32, !dbg !1755
  %shl58.i.i = shl i32 %conv57.i.i, 24, !dbg !1755
  %887 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1755
  %add.ptr59.i.i = getelementptr inbounds i8, i8* %887, i64 12, !dbg !1755
  %arrayidx60.i.i = getelementptr inbounds i8, i8* %add.ptr59.i.i, i64 1, !dbg !1755
  %888 = load i8, i8* %arrayidx60.i.i, align 1, !dbg !1755
  %conv61.i.i = zext i8 %888 to i32, !dbg !1755
  %shl62.i.i = shl i32 %conv61.i.i, 16, !dbg !1755
  %xor63.i.i = xor i32 %shl58.i.i, %shl62.i.i, !dbg !1755
  %889 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1755
  %add.ptr64.i.i = getelementptr inbounds i8, i8* %889, i64 12, !dbg !1755
  %arrayidx65.i.i = getelementptr inbounds i8, i8* %add.ptr64.i.i, i64 2, !dbg !1755
  %890 = load i8, i8* %arrayidx65.i.i, align 1, !dbg !1755
  %conv66.i.i = zext i8 %890 to i32, !dbg !1755
  %shl67.i.i = shl i32 %conv66.i.i, 8, !dbg !1755
  %xor68.i.i = xor i32 %xor63.i.i, %shl67.i.i, !dbg !1755
  %891 = load i8*, i8** %plaintext.addr.i.i, align 8, !dbg !1755
  %add.ptr69.i.i = getelementptr inbounds i8, i8* %891, i64 12, !dbg !1755
  %arrayidx70.i.i = getelementptr inbounds i8, i8* %add.ptr69.i.i, i64 3, !dbg !1755
  %892 = load i8, i8* %arrayidx70.i.i, align 1, !dbg !1755
  %conv71.i.i = zext i8 %892 to i32, !dbg !1755
  %xor72.i.i = xor i32 %xor68.i.i, %conv71.i.i, !dbg !1755
  %893 = load i32*, i32** %k.i.i, align 8, !dbg !1756
  %arrayidx73.i.i = getelementptr inbounds i32, i32* %893, i64 3, !dbg !1756
  %894 = load i32, i32* %arrayidx73.i.i, align 4, !dbg !1756
  %xor74.i.i = xor i32 %xor72.i.i, %894, !dbg !1757
  store i32 %xor74.i.i, i32* %s3.i.i, align 4, !dbg !1758
  %895 = load i32*, i32** %k.i.i, align 8, !dbg !1759
  %add.ptr75.i.i = getelementptr inbounds i32, i32* %895, i64 4, !dbg !1759
  store i32* %add.ptr75.i.i, i32** %k.i.i, align 8, !dbg !1759
  br label %while.body.i.i, !dbg !1760

while.body.i.i:                                   ; preds = %if.end.i.i, %while.body
  %896 = load i32, i32* %s0.i.i, align 4, !dbg !1107
  %897 = load i32*, i32** %k.i.i, align 8, !dbg !1107
  %898 = load i32, i32* %897, align 4, !dbg !1107
  %xor78.i.i = xor i32 %896, %898, !dbg !1107
  store i32 %xor78.i.i, i32* %_t0.i.i, align 4, !dbg !1107
  %899 = load i32, i32* %_t0.i.i, align 4, !dbg !1107
  %and.i.i = and i32 %899, 255, !dbg !1107
  %idxprom.i.i = zext i32 %and.i.i to i64, !dbg !1107
  %arrayidx79.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom.i.i, !dbg !1107
  %900 = load i32, i32* %arrayidx79.i.i, align 4, !dbg !1107
  store i32 %900, i32* %_t3.i.i, align 4, !dbg !1107
  %901 = load i32, i32* %s1.i.i, align 4, !dbg !1107
  %902 = load i32*, i32** %k.i.i, align 8, !dbg !1107
  %arrayidx81.i.i = getelementptr inbounds i32, i32* %902, i64 1, !dbg !1107
  %903 = load i32, i32* %arrayidx81.i.i, align 4, !dbg !1107
  %xor82.i.i = xor i32 %901, %903, !dbg !1107
  store i32 %xor82.i.i, i32* %_t1.i.i, align 4, !dbg !1107
  %904 = load i32, i32* %_t0.i.i, align 4, !dbg !1107
  %shr.i.i = lshr i32 %904, 8, !dbg !1107
  %and83.i.i = and i32 %shr.i.i, 255, !dbg !1107
  %idxprom84.i.i = zext i32 %and83.i.i to i64, !dbg !1107
  %arrayidx85.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom84.i.i, !dbg !1107
  %905 = load i32, i32* %arrayidx85.i.i, align 4, !dbg !1107
  %906 = load i32, i32* %_t3.i.i, align 4, !dbg !1107
  %xor86.i.i = xor i32 %906, %905, !dbg !1107
  store i32 %xor86.i.i, i32* %_t3.i.i, align 4, !dbg !1107
  %907 = load i32, i32* %_t1.i.i, align 4, !dbg !1107
  %and87.i.i = and i32 %907, 255, !dbg !1107
  %idxprom88.i.i = zext i32 %and87.i.i to i64, !dbg !1107
  %arrayidx89.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom88.i.i, !dbg !1107
  %908 = load i32, i32* %arrayidx89.i.i, align 4, !dbg !1107
  store i32 %908, i32* %_t2.i.i, align 4, !dbg !1107
  %909 = load i32, i32* %_t0.i.i, align 4, !dbg !1107
  %shr90.i.i = lshr i32 %909, 16, !dbg !1107
  %and91.i.i = and i32 %shr90.i.i, 255, !dbg !1107
  %idxprom92.i.i = zext i32 %and91.i.i to i64, !dbg !1107
  %arrayidx93.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom92.i.i, !dbg !1107
  %910 = load i32, i32* %arrayidx93.i.i, align 4, !dbg !1107
  %911 = load i32, i32* %_t3.i.i, align 4, !dbg !1107
  %xor94.i.i = xor i32 %911, %910, !dbg !1107
  store i32 %xor94.i.i, i32* %_t3.i.i, align 4, !dbg !1107
  %912 = load i32, i32* %_t1.i.i, align 4, !dbg !1107
  %shr95.i.i = lshr i32 %912, 8, !dbg !1107
  %and96.i.i = and i32 %shr95.i.i, 255, !dbg !1107
  %idxprom97.i.i = zext i32 %and96.i.i to i64, !dbg !1107
  %arrayidx98.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom97.i.i, !dbg !1107
  %913 = load i32, i32* %arrayidx98.i.i, align 4, !dbg !1107
  %914 = load i32, i32* %_t2.i.i, align 4, !dbg !1107
  %xor99.i.i = xor i32 %914, %913, !dbg !1107
  store i32 %xor99.i.i, i32* %_t2.i.i, align 4, !dbg !1107
  %915 = load i32, i32* %_t0.i.i, align 4, !dbg !1107
  %shr100.i.i = lshr i32 %915, 24, !dbg !1107
  %idxprom101.i.i = zext i32 %shr100.i.i to i64, !dbg !1107
  %arrayidx102.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom101.i.i, !dbg !1107
  %916 = load i32, i32* %arrayidx102.i.i, align 4, !dbg !1107
  %917 = load i32, i32* %_t3.i.i, align 4, !dbg !1107
  %xor103.i.i = xor i32 %917, %916, !dbg !1107
  store i32 %xor103.i.i, i32* %_t3.i.i, align 4, !dbg !1107
  %918 = load i32, i32* %_t3.i.i, align 4, !dbg !1107
  %919 = load i32, i32* %_t2.i.i, align 4, !dbg !1107
  %xor104.i.i = xor i32 %919, %918, !dbg !1107
  store i32 %xor104.i.i, i32* %_t2.i.i, align 4, !dbg !1107
  %920 = load i32, i32* %_t3.i.i, align 4, !dbg !1107
  %shr105.i.i = lshr i32 %920, 8, !dbg !1107
  %921 = load i32, i32* %_t3.i.i, align 4, !dbg !1107
  %shl106.i.i = shl i32 %921, 24, !dbg !1107
  %add.i.i = add i32 %shr105.i.i, %shl106.i.i, !dbg !1107
  store i32 %add.i.i, i32* %_t3.i.i, align 4, !dbg !1107
  %922 = load i32, i32* %_t1.i.i, align 4, !dbg !1107
  %shr107.i.i = lshr i32 %922, 16, !dbg !1107
  %and108.i.i = and i32 %shr107.i.i, 255, !dbg !1107
  %idxprom109.i.i = zext i32 %and108.i.i to i64, !dbg !1107
  %arrayidx110.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom109.i.i, !dbg !1107
  %923 = load i32, i32* %arrayidx110.i.i, align 4, !dbg !1107
  %924 = load i32, i32* %_t2.i.i, align 4, !dbg !1107
  %xor111.i.i = xor i32 %924, %923, !dbg !1107
  store i32 %xor111.i.i, i32* %_t2.i.i, align 4, !dbg !1107
  %925 = load i32, i32* %_t3.i.i, align 4, !dbg !1107
  %926 = load i32, i32* %s3.i.i, align 4, !dbg !1107
  %xor112.i.i = xor i32 %926, %925, !dbg !1107
  store i32 %xor112.i.i, i32* %s3.i.i, align 4, !dbg !1107
  %927 = load i32, i32* %_t1.i.i, align 4, !dbg !1107
  %shr113.i.i = lshr i32 %927, 24, !dbg !1107
  %idxprom114.i.i = zext i32 %shr113.i.i to i64, !dbg !1107
  %arrayidx115.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom114.i.i, !dbg !1107
  %928 = load i32, i32* %arrayidx115.i.i, align 4, !dbg !1107
  %929 = load i32, i32* %_t2.i.i, align 4, !dbg !1107
  %xor116.i.i = xor i32 %929, %928, !dbg !1107
  store i32 %xor116.i.i, i32* %_t2.i.i, align 4, !dbg !1107
  %930 = load i32, i32* %_t2.i.i, align 4, !dbg !1107
  %931 = load i32, i32* %s2.i.i, align 4, !dbg !1107
  %xor117.i.i = xor i32 %931, %930, !dbg !1107
  store i32 %xor117.i.i, i32* %s2.i.i, align 4, !dbg !1107
  %932 = load i32, i32* %_t2.i.i, align 4, !dbg !1107
  %933 = load i32, i32* %s3.i.i, align 4, !dbg !1107
  %xor118.i.i = xor i32 %933, %932, !dbg !1107
  store i32 %xor118.i.i, i32* %s3.i.i, align 4, !dbg !1107
  %934 = load i32, i32* %s2.i.i, align 4, !dbg !1108
  %935 = load i32*, i32** %k.i.i, align 8, !dbg !1108
  %add.ptr124.i.i = getelementptr inbounds i32, i32* %935, i64 2, !dbg !1108
  %936 = load i32, i32* %add.ptr124.i.i, align 4, !dbg !1108
  %xor126.i.i = xor i32 %934, %936, !dbg !1108
  store i32 %xor126.i.i, i32* %_t0120.i.i, align 4, !dbg !1108
  %937 = load i32, i32* %_t0120.i.i, align 4, !dbg !1108
  %and127.i.i = and i32 %937, 255, !dbg !1108
  %idxprom128.i.i = zext i32 %and127.i.i to i64, !dbg !1108
  %arrayidx129.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom128.i.i, !dbg !1108
  %938 = load i32, i32* %arrayidx129.i.i, align 4, !dbg !1108
  store i32 %938, i32* %_t3123.i.i, align 4, !dbg !1108
  %939 = load i32, i32* %s3.i.i, align 4, !dbg !1108
  %940 = load i32*, i32** %k.i.i, align 8, !dbg !1108
  %add.ptr130.i.i = getelementptr inbounds i32, i32* %940, i64 2, !dbg !1108
  %arrayidx131.i.i = getelementptr inbounds i32, i32* %add.ptr130.i.i, i64 1, !dbg !1108
  %941 = load i32, i32* %arrayidx131.i.i, align 4, !dbg !1108
  %xor132.i.i = xor i32 %939, %941, !dbg !1108
  store i32 %xor132.i.i, i32* %_t1121.i.i, align 4, !dbg !1108
  %942 = load i32, i32* %_t0120.i.i, align 4, !dbg !1108
  %shr133.i.i = lshr i32 %942, 8, !dbg !1108
  %and134.i.i = and i32 %shr133.i.i, 255, !dbg !1108
  %idxprom135.i.i = zext i32 %and134.i.i to i64, !dbg !1108
  %arrayidx136.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom135.i.i, !dbg !1108
  %943 = load i32, i32* %arrayidx136.i.i, align 4, !dbg !1108
  %944 = load i32, i32* %_t3123.i.i, align 4, !dbg !1108
  %xor137.i.i = xor i32 %944, %943, !dbg !1108
  store i32 %xor137.i.i, i32* %_t3123.i.i, align 4, !dbg !1108
  %945 = load i32, i32* %_t1121.i.i, align 4, !dbg !1108
  %and138.i.i = and i32 %945, 255, !dbg !1108
  %idxprom139.i.i = zext i32 %and138.i.i to i64, !dbg !1108
  %arrayidx140.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom139.i.i, !dbg !1108
  %946 = load i32, i32* %arrayidx140.i.i, align 4, !dbg !1108
  store i32 %946, i32* %_t2122.i.i, align 4, !dbg !1108
  %947 = load i32, i32* %_t0120.i.i, align 4, !dbg !1108
  %shr141.i.i = lshr i32 %947, 16, !dbg !1108
  %and142.i.i = and i32 %shr141.i.i, 255, !dbg !1108
  %idxprom143.i.i = zext i32 %and142.i.i to i64, !dbg !1108
  %arrayidx144.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom143.i.i, !dbg !1108
  %948 = load i32, i32* %arrayidx144.i.i, align 4, !dbg !1108
  %949 = load i32, i32* %_t3123.i.i, align 4, !dbg !1108
  %xor145.i.i = xor i32 %949, %948, !dbg !1108
  store i32 %xor145.i.i, i32* %_t3123.i.i, align 4, !dbg !1108
  %950 = load i32, i32* %_t1121.i.i, align 4, !dbg !1108
  %shr146.i.i = lshr i32 %950, 8, !dbg !1108
  %and147.i.i = and i32 %shr146.i.i, 255, !dbg !1108
  %idxprom148.i.i = zext i32 %and147.i.i to i64, !dbg !1108
  %arrayidx149.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom148.i.i, !dbg !1108
  %951 = load i32, i32* %arrayidx149.i.i, align 4, !dbg !1108
  %952 = load i32, i32* %_t2122.i.i, align 4, !dbg !1108
  %xor150.i.i = xor i32 %952, %951, !dbg !1108
  store i32 %xor150.i.i, i32* %_t2122.i.i, align 4, !dbg !1108
  %953 = load i32, i32* %_t0120.i.i, align 4, !dbg !1108
  %shr151.i.i = lshr i32 %953, 24, !dbg !1108
  %idxprom152.i.i = zext i32 %shr151.i.i to i64, !dbg !1108
  %arrayidx153.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom152.i.i, !dbg !1108
  %954 = load i32, i32* %arrayidx153.i.i, align 4, !dbg !1108
  %955 = load i32, i32* %_t3123.i.i, align 4, !dbg !1108
  %xor154.i.i = xor i32 %955, %954, !dbg !1108
  store i32 %xor154.i.i, i32* %_t3123.i.i, align 4, !dbg !1108
  %956 = load i32, i32* %_t3123.i.i, align 4, !dbg !1108
  %957 = load i32, i32* %_t2122.i.i, align 4, !dbg !1108
  %xor155.i.i = xor i32 %957, %956, !dbg !1108
  store i32 %xor155.i.i, i32* %_t2122.i.i, align 4, !dbg !1108
  %958 = load i32, i32* %_t3123.i.i, align 4, !dbg !1108
  %shr156.i.i = lshr i32 %958, 8, !dbg !1108
  %959 = load i32, i32* %_t3123.i.i, align 4, !dbg !1108
  %shl157.i.i = shl i32 %959, 24, !dbg !1108
  %add158.i.i = add i32 %shr156.i.i, %shl157.i.i, !dbg !1108
  store i32 %add158.i.i, i32* %_t3123.i.i, align 4, !dbg !1108
  %960 = load i32, i32* %_t1121.i.i, align 4, !dbg !1108
  %shr159.i.i = lshr i32 %960, 16, !dbg !1108
  %and160.i.i = and i32 %shr159.i.i, 255, !dbg !1108
  %idxprom161.i.i = zext i32 %and160.i.i to i64, !dbg !1108
  %arrayidx162.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom161.i.i, !dbg !1108
  %961 = load i32, i32* %arrayidx162.i.i, align 4, !dbg !1108
  %962 = load i32, i32* %_t2122.i.i, align 4, !dbg !1108
  %xor163.i.i = xor i32 %962, %961, !dbg !1108
  store i32 %xor163.i.i, i32* %_t2122.i.i, align 4, !dbg !1108
  %963 = load i32, i32* %_t3123.i.i, align 4, !dbg !1108
  %964 = load i32, i32* %s1.i.i, align 4, !dbg !1108
  %xor164.i.i = xor i32 %964, %963, !dbg !1108
  store i32 %xor164.i.i, i32* %s1.i.i, align 4, !dbg !1108
  %965 = load i32, i32* %_t1121.i.i, align 4, !dbg !1108
  %shr165.i.i = lshr i32 %965, 24, !dbg !1108
  %idxprom166.i.i = zext i32 %shr165.i.i to i64, !dbg !1108
  %arrayidx167.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom166.i.i, !dbg !1108
  %966 = load i32, i32* %arrayidx167.i.i, align 4, !dbg !1108
  %967 = load i32, i32* %_t2122.i.i, align 4, !dbg !1108
  %xor168.i.i = xor i32 %967, %966, !dbg !1108
  store i32 %xor168.i.i, i32* %_t2122.i.i, align 4, !dbg !1108
  %968 = load i32, i32* %_t2122.i.i, align 4, !dbg !1108
  %969 = load i32, i32* %s0.i.i, align 4, !dbg !1108
  %xor169.i.i = xor i32 %969, %968, !dbg !1108
  store i32 %xor169.i.i, i32* %s0.i.i, align 4, !dbg !1108
  %970 = load i32, i32* %_t2122.i.i, align 4, !dbg !1108
  %971 = load i32, i32* %s1.i.i, align 4, !dbg !1108
  %xor170.i.i = xor i32 %971, %970, !dbg !1108
  store i32 %xor170.i.i, i32* %s1.i.i, align 4, !dbg !1108
  %972 = load i32, i32* %s0.i.i, align 4, !dbg !1109
  %973 = load i32*, i32** %k.i.i, align 8, !dbg !1109
  %add.ptr177.i.i = getelementptr inbounds i32, i32* %973, i64 4, !dbg !1109
  %974 = load i32, i32* %add.ptr177.i.i, align 4, !dbg !1109
  %xor179.i.i = xor i32 %972, %974, !dbg !1109
  store i32 %xor179.i.i, i32* %_t0173.i.i, align 4, !dbg !1109
  %975 = load i32, i32* %_t0173.i.i, align 4, !dbg !1109
  %and180.i.i = and i32 %975, 255, !dbg !1109
  %idxprom181.i.i = zext i32 %and180.i.i to i64, !dbg !1109
  %arrayidx182.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom181.i.i, !dbg !1109
  %976 = load i32, i32* %arrayidx182.i.i, align 4, !dbg !1109
  store i32 %976, i32* %_t3176.i.i, align 4, !dbg !1109
  %977 = load i32, i32* %s1.i.i, align 4, !dbg !1109
  %978 = load i32*, i32** %k.i.i, align 8, !dbg !1109
  %add.ptr183.i.i = getelementptr inbounds i32, i32* %978, i64 4, !dbg !1109
  %arrayidx184.i.i = getelementptr inbounds i32, i32* %add.ptr183.i.i, i64 1, !dbg !1109
  %979 = load i32, i32* %arrayidx184.i.i, align 4, !dbg !1109
  %xor185.i.i = xor i32 %977, %979, !dbg !1109
  store i32 %xor185.i.i, i32* %_t1174.i.i, align 4, !dbg !1109
  %980 = load i32, i32* %_t0173.i.i, align 4, !dbg !1109
  %shr186.i.i = lshr i32 %980, 8, !dbg !1109
  %and187.i.i = and i32 %shr186.i.i, 255, !dbg !1109
  %idxprom188.i.i = zext i32 %and187.i.i to i64, !dbg !1109
  %arrayidx189.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom188.i.i, !dbg !1109
  %981 = load i32, i32* %arrayidx189.i.i, align 4, !dbg !1109
  %982 = load i32, i32* %_t3176.i.i, align 4, !dbg !1109
  %xor190.i.i = xor i32 %982, %981, !dbg !1109
  store i32 %xor190.i.i, i32* %_t3176.i.i, align 4, !dbg !1109
  %983 = load i32, i32* %_t1174.i.i, align 4, !dbg !1109
  %and191.i.i = and i32 %983, 255, !dbg !1109
  %idxprom192.i.i = zext i32 %and191.i.i to i64, !dbg !1109
  %arrayidx193.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom192.i.i, !dbg !1109
  %984 = load i32, i32* %arrayidx193.i.i, align 4, !dbg !1109
  store i32 %984, i32* %_t2175.i.i, align 4, !dbg !1109
  %985 = load i32, i32* %_t0173.i.i, align 4, !dbg !1109
  %shr194.i.i = lshr i32 %985, 16, !dbg !1109
  %and195.i.i = and i32 %shr194.i.i, 255, !dbg !1109
  %idxprom196.i.i = zext i32 %and195.i.i to i64, !dbg !1109
  %arrayidx197.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom196.i.i, !dbg !1109
  %986 = load i32, i32* %arrayidx197.i.i, align 4, !dbg !1109
  %987 = load i32, i32* %_t3176.i.i, align 4, !dbg !1109
  %xor198.i.i = xor i32 %987, %986, !dbg !1109
  store i32 %xor198.i.i, i32* %_t3176.i.i, align 4, !dbg !1109
  %988 = load i32, i32* %_t1174.i.i, align 4, !dbg !1109
  %shr199.i.i = lshr i32 %988, 8, !dbg !1109
  %and200.i.i = and i32 %shr199.i.i, 255, !dbg !1109
  %idxprom201.i.i = zext i32 %and200.i.i to i64, !dbg !1109
  %arrayidx202.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom201.i.i, !dbg !1109
  %989 = load i32, i32* %arrayidx202.i.i, align 4, !dbg !1109
  %990 = load i32, i32* %_t2175.i.i, align 4, !dbg !1109
  %xor203.i.i = xor i32 %990, %989, !dbg !1109
  store i32 %xor203.i.i, i32* %_t2175.i.i, align 4, !dbg !1109
  %991 = load i32, i32* %_t0173.i.i, align 4, !dbg !1109
  %shr204.i.i = lshr i32 %991, 24, !dbg !1109
  %idxprom205.i.i = zext i32 %shr204.i.i to i64, !dbg !1109
  %arrayidx206.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom205.i.i, !dbg !1109
  %992 = load i32, i32* %arrayidx206.i.i, align 4, !dbg !1109
  %993 = load i32, i32* %_t3176.i.i, align 4, !dbg !1109
  %xor207.i.i = xor i32 %993, %992, !dbg !1109
  store i32 %xor207.i.i, i32* %_t3176.i.i, align 4, !dbg !1109
  %994 = load i32, i32* %_t3176.i.i, align 4, !dbg !1109
  %995 = load i32, i32* %_t2175.i.i, align 4, !dbg !1109
  %xor208.i.i = xor i32 %995, %994, !dbg !1109
  store i32 %xor208.i.i, i32* %_t2175.i.i, align 4, !dbg !1109
  %996 = load i32, i32* %_t3176.i.i, align 4, !dbg !1109
  %shr209.i.i = lshr i32 %996, 8, !dbg !1109
  %997 = load i32, i32* %_t3176.i.i, align 4, !dbg !1109
  %shl210.i.i = shl i32 %997, 24, !dbg !1109
  %add211.i.i = add i32 %shr209.i.i, %shl210.i.i, !dbg !1109
  store i32 %add211.i.i, i32* %_t3176.i.i, align 4, !dbg !1109
  %998 = load i32, i32* %_t1174.i.i, align 4, !dbg !1109
  %shr212.i.i = lshr i32 %998, 16, !dbg !1109
  %and213.i.i = and i32 %shr212.i.i, 255, !dbg !1109
  %idxprom214.i.i = zext i32 %and213.i.i to i64, !dbg !1109
  %arrayidx215.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom214.i.i, !dbg !1109
  %999 = load i32, i32* %arrayidx215.i.i, align 4, !dbg !1109
  %1000 = load i32, i32* %_t2175.i.i, align 4, !dbg !1109
  %xor216.i.i = xor i32 %1000, %999, !dbg !1109
  store i32 %xor216.i.i, i32* %_t2175.i.i, align 4, !dbg !1109
  %1001 = load i32, i32* %_t3176.i.i, align 4, !dbg !1109
  %1002 = load i32, i32* %s3.i.i, align 4, !dbg !1109
  %xor217.i.i = xor i32 %1002, %1001, !dbg !1109
  store i32 %xor217.i.i, i32* %s3.i.i, align 4, !dbg !1109
  %1003 = load i32, i32* %_t1174.i.i, align 4, !dbg !1109
  %shr218.i.i = lshr i32 %1003, 24, !dbg !1109
  %idxprom219.i.i = zext i32 %shr218.i.i to i64, !dbg !1109
  %arrayidx220.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom219.i.i, !dbg !1109
  %1004 = load i32, i32* %arrayidx220.i.i, align 4, !dbg !1109
  %1005 = load i32, i32* %_t2175.i.i, align 4, !dbg !1109
  %xor221.i.i = xor i32 %1005, %1004, !dbg !1109
  store i32 %xor221.i.i, i32* %_t2175.i.i, align 4, !dbg !1109
  %1006 = load i32, i32* %_t2175.i.i, align 4, !dbg !1109
  %1007 = load i32, i32* %s2.i.i, align 4, !dbg !1109
  %xor222.i.i = xor i32 %1007, %1006, !dbg !1109
  store i32 %xor222.i.i, i32* %s2.i.i, align 4, !dbg !1109
  %1008 = load i32, i32* %_t2175.i.i, align 4, !dbg !1109
  %1009 = load i32, i32* %s3.i.i, align 4, !dbg !1109
  %xor223.i.i = xor i32 %1009, %1008, !dbg !1109
  store i32 %xor223.i.i, i32* %s3.i.i, align 4, !dbg !1109
  %1010 = load i32, i32* %s2.i.i, align 4, !dbg !1110
  %1011 = load i32*, i32** %k.i.i, align 8, !dbg !1110
  %add.ptr230.i.i = getelementptr inbounds i32, i32* %1011, i64 6, !dbg !1110
  %1012 = load i32, i32* %add.ptr230.i.i, align 4, !dbg !1110
  %xor232.i.i = xor i32 %1010, %1012, !dbg !1110
  store i32 %xor232.i.i, i32* %_t0226.i.i, align 4, !dbg !1110
  %1013 = load i32, i32* %_t0226.i.i, align 4, !dbg !1110
  %and233.i.i = and i32 %1013, 255, !dbg !1110
  %idxprom234.i.i = zext i32 %and233.i.i to i64, !dbg !1110
  %arrayidx235.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom234.i.i, !dbg !1110
  %1014 = load i32, i32* %arrayidx235.i.i, align 4, !dbg !1110
  store i32 %1014, i32* %_t3229.i.i, align 4, !dbg !1110
  %1015 = load i32, i32* %s3.i.i, align 4, !dbg !1110
  %1016 = load i32*, i32** %k.i.i, align 8, !dbg !1110
  %add.ptr236.i.i = getelementptr inbounds i32, i32* %1016, i64 6, !dbg !1110
  %arrayidx237.i.i = getelementptr inbounds i32, i32* %add.ptr236.i.i, i64 1, !dbg !1110
  %1017 = load i32, i32* %arrayidx237.i.i, align 4, !dbg !1110
  %xor238.i.i = xor i32 %1015, %1017, !dbg !1110
  store i32 %xor238.i.i, i32* %_t1227.i.i, align 4, !dbg !1110
  %1018 = load i32, i32* %_t0226.i.i, align 4, !dbg !1110
  %shr239.i.i = lshr i32 %1018, 8, !dbg !1110
  %and240.i.i = and i32 %shr239.i.i, 255, !dbg !1110
  %idxprom241.i.i = zext i32 %and240.i.i to i64, !dbg !1110
  %arrayidx242.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom241.i.i, !dbg !1110
  %1019 = load i32, i32* %arrayidx242.i.i, align 4, !dbg !1110
  %1020 = load i32, i32* %_t3229.i.i, align 4, !dbg !1110
  %xor243.i.i = xor i32 %1020, %1019, !dbg !1110
  store i32 %xor243.i.i, i32* %_t3229.i.i, align 4, !dbg !1110
  %1021 = load i32, i32* %_t1227.i.i, align 4, !dbg !1110
  %and244.i.i = and i32 %1021, 255, !dbg !1110
  %idxprom245.i.i = zext i32 %and244.i.i to i64, !dbg !1110
  %arrayidx246.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom245.i.i, !dbg !1110
  %1022 = load i32, i32* %arrayidx246.i.i, align 4, !dbg !1110
  store i32 %1022, i32* %_t2228.i.i, align 4, !dbg !1110
  %1023 = load i32, i32* %_t0226.i.i, align 4, !dbg !1110
  %shr247.i.i = lshr i32 %1023, 16, !dbg !1110
  %and248.i.i = and i32 %shr247.i.i, 255, !dbg !1110
  %idxprom249.i.i = zext i32 %and248.i.i to i64, !dbg !1110
  %arrayidx250.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom249.i.i, !dbg !1110
  %1024 = load i32, i32* %arrayidx250.i.i, align 4, !dbg !1110
  %1025 = load i32, i32* %_t3229.i.i, align 4, !dbg !1110
  %xor251.i.i = xor i32 %1025, %1024, !dbg !1110
  store i32 %xor251.i.i, i32* %_t3229.i.i, align 4, !dbg !1110
  %1026 = load i32, i32* %_t1227.i.i, align 4, !dbg !1110
  %shr252.i.i = lshr i32 %1026, 8, !dbg !1110
  %and253.i.i = and i32 %shr252.i.i, 255, !dbg !1110
  %idxprom254.i.i = zext i32 %and253.i.i to i64, !dbg !1110
  %arrayidx255.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom254.i.i, !dbg !1110
  %1027 = load i32, i32* %arrayidx255.i.i, align 4, !dbg !1110
  %1028 = load i32, i32* %_t2228.i.i, align 4, !dbg !1110
  %xor256.i.i = xor i32 %1028, %1027, !dbg !1110
  store i32 %xor256.i.i, i32* %_t2228.i.i, align 4, !dbg !1110
  %1029 = load i32, i32* %_t0226.i.i, align 4, !dbg !1110
  %shr257.i.i = lshr i32 %1029, 24, !dbg !1110
  %idxprom258.i.i = zext i32 %shr257.i.i to i64, !dbg !1110
  %arrayidx259.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom258.i.i, !dbg !1110
  %1030 = load i32, i32* %arrayidx259.i.i, align 4, !dbg !1110
  %1031 = load i32, i32* %_t3229.i.i, align 4, !dbg !1110
  %xor260.i.i = xor i32 %1031, %1030, !dbg !1110
  store i32 %xor260.i.i, i32* %_t3229.i.i, align 4, !dbg !1110
  %1032 = load i32, i32* %_t3229.i.i, align 4, !dbg !1110
  %1033 = load i32, i32* %_t2228.i.i, align 4, !dbg !1110
  %xor261.i.i = xor i32 %1033, %1032, !dbg !1110
  store i32 %xor261.i.i, i32* %_t2228.i.i, align 4, !dbg !1110
  %1034 = load i32, i32* %_t3229.i.i, align 4, !dbg !1110
  %shr262.i.i = lshr i32 %1034, 8, !dbg !1110
  %1035 = load i32, i32* %_t3229.i.i, align 4, !dbg !1110
  %shl263.i.i = shl i32 %1035, 24, !dbg !1110
  %add264.i.i = add i32 %shr262.i.i, %shl263.i.i, !dbg !1110
  store i32 %add264.i.i, i32* %_t3229.i.i, align 4, !dbg !1110
  %1036 = load i32, i32* %_t1227.i.i, align 4, !dbg !1110
  %shr265.i.i = lshr i32 %1036, 16, !dbg !1110
  %and266.i.i = and i32 %shr265.i.i, 255, !dbg !1110
  %idxprom267.i.i = zext i32 %and266.i.i to i64, !dbg !1110
  %arrayidx268.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom267.i.i, !dbg !1110
  %1037 = load i32, i32* %arrayidx268.i.i, align 4, !dbg !1110
  %1038 = load i32, i32* %_t2228.i.i, align 4, !dbg !1110
  %xor269.i.i = xor i32 %1038, %1037, !dbg !1110
  store i32 %xor269.i.i, i32* %_t2228.i.i, align 4, !dbg !1110
  %1039 = load i32, i32* %_t3229.i.i, align 4, !dbg !1110
  %1040 = load i32, i32* %s1.i.i, align 4, !dbg !1110
  %xor270.i.i = xor i32 %1040, %1039, !dbg !1110
  store i32 %xor270.i.i, i32* %s1.i.i, align 4, !dbg !1110
  %1041 = load i32, i32* %_t1227.i.i, align 4, !dbg !1110
  %shr271.i.i = lshr i32 %1041, 24, !dbg !1110
  %idxprom272.i.i = zext i32 %shr271.i.i to i64, !dbg !1110
  %arrayidx273.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom272.i.i, !dbg !1110
  %1042 = load i32, i32* %arrayidx273.i.i, align 4, !dbg !1110
  %1043 = load i32, i32* %_t2228.i.i, align 4, !dbg !1110
  %xor274.i.i = xor i32 %1043, %1042, !dbg !1110
  store i32 %xor274.i.i, i32* %_t2228.i.i, align 4, !dbg !1110
  %1044 = load i32, i32* %_t2228.i.i, align 4, !dbg !1110
  %1045 = load i32, i32* %s0.i.i, align 4, !dbg !1110
  %xor275.i.i = xor i32 %1045, %1044, !dbg !1110
  store i32 %xor275.i.i, i32* %s0.i.i, align 4, !dbg !1110
  %1046 = load i32, i32* %_t2228.i.i, align 4, !dbg !1110
  %1047 = load i32, i32* %s1.i.i, align 4, !dbg !1110
  %xor276.i.i = xor i32 %1047, %1046, !dbg !1110
  store i32 %xor276.i.i, i32* %s1.i.i, align 4, !dbg !1110
  %1048 = load i32, i32* %s0.i.i, align 4, !dbg !1111
  %1049 = load i32*, i32** %k.i.i, align 8, !dbg !1111
  %add.ptr283.i.i = getelementptr inbounds i32, i32* %1049, i64 8, !dbg !1111
  %1050 = load i32, i32* %add.ptr283.i.i, align 4, !dbg !1111
  %xor285.i.i = xor i32 %1048, %1050, !dbg !1111
  store i32 %xor285.i.i, i32* %_t0279.i.i, align 4, !dbg !1111
  %1051 = load i32, i32* %_t0279.i.i, align 4, !dbg !1111
  %and286.i.i = and i32 %1051, 255, !dbg !1111
  %idxprom287.i.i = zext i32 %and286.i.i to i64, !dbg !1111
  %arrayidx288.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom287.i.i, !dbg !1111
  %1052 = load i32, i32* %arrayidx288.i.i, align 4, !dbg !1111
  store i32 %1052, i32* %_t3282.i.i, align 4, !dbg !1111
  %1053 = load i32, i32* %s1.i.i, align 4, !dbg !1111
  %1054 = load i32*, i32** %k.i.i, align 8, !dbg !1111
  %add.ptr289.i.i = getelementptr inbounds i32, i32* %1054, i64 8, !dbg !1111
  %arrayidx290.i.i = getelementptr inbounds i32, i32* %add.ptr289.i.i, i64 1, !dbg !1111
  %1055 = load i32, i32* %arrayidx290.i.i, align 4, !dbg !1111
  %xor291.i.i = xor i32 %1053, %1055, !dbg !1111
  store i32 %xor291.i.i, i32* %_t1280.i.i, align 4, !dbg !1111
  %1056 = load i32, i32* %_t0279.i.i, align 4, !dbg !1111
  %shr292.i.i = lshr i32 %1056, 8, !dbg !1111
  %and293.i.i = and i32 %shr292.i.i, 255, !dbg !1111
  %idxprom294.i.i = zext i32 %and293.i.i to i64, !dbg !1111
  %arrayidx295.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom294.i.i, !dbg !1111
  %1057 = load i32, i32* %arrayidx295.i.i, align 4, !dbg !1111
  %1058 = load i32, i32* %_t3282.i.i, align 4, !dbg !1111
  %xor296.i.i = xor i32 %1058, %1057, !dbg !1111
  store i32 %xor296.i.i, i32* %_t3282.i.i, align 4, !dbg !1111
  %1059 = load i32, i32* %_t1280.i.i, align 4, !dbg !1111
  %and297.i.i = and i32 %1059, 255, !dbg !1111
  %idxprom298.i.i = zext i32 %and297.i.i to i64, !dbg !1111
  %arrayidx299.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom298.i.i, !dbg !1111
  %1060 = load i32, i32* %arrayidx299.i.i, align 4, !dbg !1111
  store i32 %1060, i32* %_t2281.i.i, align 4, !dbg !1111
  %1061 = load i32, i32* %_t0279.i.i, align 4, !dbg !1111
  %shr300.i.i = lshr i32 %1061, 16, !dbg !1111
  %and301.i.i = and i32 %shr300.i.i, 255, !dbg !1111
  %idxprom302.i.i = zext i32 %and301.i.i to i64, !dbg !1111
  %arrayidx303.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom302.i.i, !dbg !1111
  %1062 = load i32, i32* %arrayidx303.i.i, align 4, !dbg !1111
  %1063 = load i32, i32* %_t3282.i.i, align 4, !dbg !1111
  %xor304.i.i = xor i32 %1063, %1062, !dbg !1111
  store i32 %xor304.i.i, i32* %_t3282.i.i, align 4, !dbg !1111
  %1064 = load i32, i32* %_t1280.i.i, align 4, !dbg !1111
  %shr305.i.i = lshr i32 %1064, 8, !dbg !1111
  %and306.i.i = and i32 %shr305.i.i, 255, !dbg !1111
  %idxprom307.i.i = zext i32 %and306.i.i to i64, !dbg !1111
  %arrayidx308.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom307.i.i, !dbg !1111
  %1065 = load i32, i32* %arrayidx308.i.i, align 4, !dbg !1111
  %1066 = load i32, i32* %_t2281.i.i, align 4, !dbg !1111
  %xor309.i.i = xor i32 %1066, %1065, !dbg !1111
  store i32 %xor309.i.i, i32* %_t2281.i.i, align 4, !dbg !1111
  %1067 = load i32, i32* %_t0279.i.i, align 4, !dbg !1111
  %shr310.i.i = lshr i32 %1067, 24, !dbg !1111
  %idxprom311.i.i = zext i32 %shr310.i.i to i64, !dbg !1111
  %arrayidx312.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom311.i.i, !dbg !1111
  %1068 = load i32, i32* %arrayidx312.i.i, align 4, !dbg !1111
  %1069 = load i32, i32* %_t3282.i.i, align 4, !dbg !1111
  %xor313.i.i = xor i32 %1069, %1068, !dbg !1111
  store i32 %xor313.i.i, i32* %_t3282.i.i, align 4, !dbg !1111
  %1070 = load i32, i32* %_t3282.i.i, align 4, !dbg !1111
  %1071 = load i32, i32* %_t2281.i.i, align 4, !dbg !1111
  %xor314.i.i = xor i32 %1071, %1070, !dbg !1111
  store i32 %xor314.i.i, i32* %_t2281.i.i, align 4, !dbg !1111
  %1072 = load i32, i32* %_t3282.i.i, align 4, !dbg !1111
  %shr315.i.i = lshr i32 %1072, 8, !dbg !1111
  %1073 = load i32, i32* %_t3282.i.i, align 4, !dbg !1111
  %shl316.i.i = shl i32 %1073, 24, !dbg !1111
  %add317.i.i = add i32 %shr315.i.i, %shl316.i.i, !dbg !1111
  store i32 %add317.i.i, i32* %_t3282.i.i, align 4, !dbg !1111
  %1074 = load i32, i32* %_t1280.i.i, align 4, !dbg !1111
  %shr318.i.i = lshr i32 %1074, 16, !dbg !1111
  %and319.i.i = and i32 %shr318.i.i, 255, !dbg !1111
  %idxprom320.i.i = zext i32 %and319.i.i to i64, !dbg !1111
  %arrayidx321.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom320.i.i, !dbg !1111
  %1075 = load i32, i32* %arrayidx321.i.i, align 4, !dbg !1111
  %1076 = load i32, i32* %_t2281.i.i, align 4, !dbg !1111
  %xor322.i.i = xor i32 %1076, %1075, !dbg !1111
  store i32 %xor322.i.i, i32* %_t2281.i.i, align 4, !dbg !1111
  %1077 = load i32, i32* %_t3282.i.i, align 4, !dbg !1111
  %1078 = load i32, i32* %s3.i.i, align 4, !dbg !1111
  %xor323.i.i = xor i32 %1078, %1077, !dbg !1111
  store i32 %xor323.i.i, i32* %s3.i.i, align 4, !dbg !1111
  %1079 = load i32, i32* %_t1280.i.i, align 4, !dbg !1111
  %shr324.i.i = lshr i32 %1079, 24, !dbg !1111
  %idxprom325.i.i = zext i32 %shr324.i.i to i64, !dbg !1111
  %arrayidx326.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom325.i.i, !dbg !1111
  %1080 = load i32, i32* %arrayidx326.i.i, align 4, !dbg !1111
  %1081 = load i32, i32* %_t2281.i.i, align 4, !dbg !1111
  %xor327.i.i = xor i32 %1081, %1080, !dbg !1111
  store i32 %xor327.i.i, i32* %_t2281.i.i, align 4, !dbg !1111
  %1082 = load i32, i32* %_t2281.i.i, align 4, !dbg !1111
  %1083 = load i32, i32* %s2.i.i, align 4, !dbg !1111
  %xor328.i.i = xor i32 %1083, %1082, !dbg !1111
  store i32 %xor328.i.i, i32* %s2.i.i, align 4, !dbg !1111
  %1084 = load i32, i32* %_t2281.i.i, align 4, !dbg !1111
  %1085 = load i32, i32* %s3.i.i, align 4, !dbg !1111
  %xor329.i.i = xor i32 %1085, %1084, !dbg !1111
  store i32 %xor329.i.i, i32* %s3.i.i, align 4, !dbg !1111
  %1086 = load i32, i32* %s2.i.i, align 4, !dbg !1112
  %1087 = load i32*, i32** %k.i.i, align 8, !dbg !1112
  %add.ptr336.i.i = getelementptr inbounds i32, i32* %1087, i64 10, !dbg !1112
  %1088 = load i32, i32* %add.ptr336.i.i, align 4, !dbg !1112
  %xor338.i.i = xor i32 %1086, %1088, !dbg !1112
  store i32 %xor338.i.i, i32* %_t0332.i.i, align 4, !dbg !1112
  %1089 = load i32, i32* %_t0332.i.i, align 4, !dbg !1112
  %and339.i.i = and i32 %1089, 255, !dbg !1112
  %idxprom340.i.i = zext i32 %and339.i.i to i64, !dbg !1112
  %arrayidx341.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom340.i.i, !dbg !1112
  %1090 = load i32, i32* %arrayidx341.i.i, align 4, !dbg !1112
  store i32 %1090, i32* %_t3335.i.i, align 4, !dbg !1112
  %1091 = load i32, i32* %s3.i.i, align 4, !dbg !1112
  %1092 = load i32*, i32** %k.i.i, align 8, !dbg !1112
  %add.ptr342.i.i = getelementptr inbounds i32, i32* %1092, i64 10, !dbg !1112
  %arrayidx343.i.i = getelementptr inbounds i32, i32* %add.ptr342.i.i, i64 1, !dbg !1112
  %1093 = load i32, i32* %arrayidx343.i.i, align 4, !dbg !1112
  %xor344.i.i = xor i32 %1091, %1093, !dbg !1112
  store i32 %xor344.i.i, i32* %_t1333.i.i, align 4, !dbg !1112
  %1094 = load i32, i32* %_t0332.i.i, align 4, !dbg !1112
  %shr345.i.i = lshr i32 %1094, 8, !dbg !1112
  %and346.i.i = and i32 %shr345.i.i, 255, !dbg !1112
  %idxprom347.i.i = zext i32 %and346.i.i to i64, !dbg !1112
  %arrayidx348.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom347.i.i, !dbg !1112
  %1095 = load i32, i32* %arrayidx348.i.i, align 4, !dbg !1112
  %1096 = load i32, i32* %_t3335.i.i, align 4, !dbg !1112
  %xor349.i.i = xor i32 %1096, %1095, !dbg !1112
  store i32 %xor349.i.i, i32* %_t3335.i.i, align 4, !dbg !1112
  %1097 = load i32, i32* %_t1333.i.i, align 4, !dbg !1112
  %and350.i.i = and i32 %1097, 255, !dbg !1112
  %idxprom351.i.i = zext i32 %and350.i.i to i64, !dbg !1112
  %arrayidx352.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom351.i.i, !dbg !1112
  %1098 = load i32, i32* %arrayidx352.i.i, align 4, !dbg !1112
  store i32 %1098, i32* %_t2334.i.i, align 4, !dbg !1112
  %1099 = load i32, i32* %_t0332.i.i, align 4, !dbg !1112
  %shr353.i.i = lshr i32 %1099, 16, !dbg !1112
  %and354.i.i = and i32 %shr353.i.i, 255, !dbg !1112
  %idxprom355.i.i = zext i32 %and354.i.i to i64, !dbg !1112
  %arrayidx356.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom355.i.i, !dbg !1112
  %1100 = load i32, i32* %arrayidx356.i.i, align 4, !dbg !1112
  %1101 = load i32, i32* %_t3335.i.i, align 4, !dbg !1112
  %xor357.i.i = xor i32 %1101, %1100, !dbg !1112
  store i32 %xor357.i.i, i32* %_t3335.i.i, align 4, !dbg !1112
  %1102 = load i32, i32* %_t1333.i.i, align 4, !dbg !1112
  %shr358.i.i = lshr i32 %1102, 8, !dbg !1112
  %and359.i.i = and i32 %shr358.i.i, 255, !dbg !1112
  %idxprom360.i.i = zext i32 %and359.i.i to i64, !dbg !1112
  %arrayidx361.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 1), i64 0, i64 %idxprom360.i.i, !dbg !1112
  %1103 = load i32, i32* %arrayidx361.i.i, align 4, !dbg !1112
  %1104 = load i32, i32* %_t2334.i.i, align 4, !dbg !1112
  %xor362.i.i = xor i32 %1104, %1103, !dbg !1112
  store i32 %xor362.i.i, i32* %_t2334.i.i, align 4, !dbg !1112
  %1105 = load i32, i32* %_t0332.i.i, align 4, !dbg !1112
  %shr363.i.i = lshr i32 %1105, 24, !dbg !1112
  %idxprom364.i.i = zext i32 %shr363.i.i to i64, !dbg !1112
  %arrayidx365.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 0), i64 0, i64 %idxprom364.i.i, !dbg !1112
  %1106 = load i32, i32* %arrayidx365.i.i, align 4, !dbg !1112
  %1107 = load i32, i32* %_t3335.i.i, align 4, !dbg !1112
  %xor366.i.i = xor i32 %1107, %1106, !dbg !1112
  store i32 %xor366.i.i, i32* %_t3335.i.i, align 4, !dbg !1112
  %1108 = load i32, i32* %_t3335.i.i, align 4, !dbg !1112
  %1109 = load i32, i32* %_t2334.i.i, align 4, !dbg !1112
  %xor367.i.i = xor i32 %1109, %1108, !dbg !1112
  store i32 %xor367.i.i, i32* %_t2334.i.i, align 4, !dbg !1112
  %1110 = load i32, i32* %_t3335.i.i, align 4, !dbg !1112
  %shr368.i.i = lshr i32 %1110, 8, !dbg !1112
  %1111 = load i32, i32* %_t3335.i.i, align 4, !dbg !1112
  %shl369.i.i = shl i32 %1111, 24, !dbg !1112
  %add370.i.i = add i32 %shr368.i.i, %shl369.i.i, !dbg !1112
  store i32 %add370.i.i, i32* %_t3335.i.i, align 4, !dbg !1112
  %1112 = load i32, i32* %_t1333.i.i, align 4, !dbg !1112
  %shr371.i.i = lshr i32 %1112, 16, !dbg !1112
  %and372.i.i = and i32 %shr371.i.i, 255, !dbg !1112
  %idxprom373.i.i = zext i32 %and372.i.i to i64, !dbg !1112
  %arrayidx374.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 3), i64 0, i64 %idxprom373.i.i, !dbg !1112
  %1113 = load i32, i32* %arrayidx374.i.i, align 4, !dbg !1112
  %1114 = load i32, i32* %_t2334.i.i, align 4, !dbg !1112
  %xor375.i.i = xor i32 %1114, %1113, !dbg !1112
  store i32 %xor375.i.i, i32* %_t2334.i.i, align 4, !dbg !1112
  %1115 = load i32, i32* %_t3335.i.i, align 4, !dbg !1112
  %1116 = load i32, i32* %s1.i.i, align 4, !dbg !1112
  %xor376.i.i = xor i32 %1116, %1115, !dbg !1112
  store i32 %xor376.i.i, i32* %s1.i.i, align 4, !dbg !1112
  %1117 = load i32, i32* %_t1333.i.i, align 4, !dbg !1112
  %shr377.i.i = lshr i32 %1117, 24, !dbg !1112
  %idxprom378.i.i = zext i32 %shr377.i.i to i64, !dbg !1112
  %arrayidx379.i.i = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @Camellia_SBOX, i64 0, i64 2), i64 0, i64 %idxprom378.i.i, !dbg !1112
  %1118 = load i32, i32* %arrayidx379.i.i, align 4, !dbg !1112
  %1119 = load i32, i32* %_t2334.i.i, align 4, !dbg !1112
  %xor380.i.i = xor i32 %1119, %1118, !dbg !1112
  store i32 %xor380.i.i, i32* %_t2334.i.i, align 4, !dbg !1112
  %1120 = load i32, i32* %_t2334.i.i, align 4, !dbg !1112
  %1121 = load i32, i32* %s0.i.i, align 4, !dbg !1112
  %xor381.i.i = xor i32 %1121, %1120, !dbg !1112
  store i32 %xor381.i.i, i32* %s0.i.i, align 4, !dbg !1112
  %1122 = load i32, i32* %_t2334.i.i, align 4, !dbg !1112
  %1123 = load i32, i32* %s1.i.i, align 4, !dbg !1112
  %xor382.i.i = xor i32 %1123, %1122, !dbg !1112
  store i32 %xor382.i.i, i32* %s1.i.i, align 4, !dbg !1112
  %1124 = load i32*, i32** %k.i.i, align 8, !dbg !1761
  %add.ptr384.i.i = getelementptr inbounds i32, i32* %1124, i64 12, !dbg !1761
  store i32* %add.ptr384.i.i, i32** %k.i.i, align 8, !dbg !1761
  %1125 = load i32*, i32** %k.i.i, align 8, !dbg !1762
  %1126 = load i32*, i32** %kend.i.i, align 8, !dbg !1763
  %cmp.i.i = icmp eq i32* %1125, %1126, !dbg !1764
  br i1 %cmp.i.i, label %Camellia_EncryptBlock.exit, label %if.end.i.i, !dbg !1765

if.end.i.i:                                       ; preds = %while.body.i.i
  %1127 = load i32, i32* %s0.i.i, align 4, !dbg !1766
  %1128 = load i32*, i32** %k.i.i, align 8, !dbg !1766
  %1129 = load i32, i32* %1128, align 4, !dbg !1766
  %and387.i.i = and i32 %1127, %1129, !dbg !1766
  %shl388.i.i = shl i32 %and387.i.i, 1, !dbg !1766
  %1130 = load i32, i32* %s0.i.i, align 4, !dbg !1766
  %1131 = load i32*, i32** %k.i.i, align 8, !dbg !1766
  %1132 = load i32, i32* %1131, align 4, !dbg !1766
  %and390.i.i = and i32 %1130, %1132, !dbg !1766
  %shr391.i.i = lshr i32 %and390.i.i, 31, !dbg !1766
  %add392.i.i = add i32 %shl388.i.i, %shr391.i.i, !dbg !1766
  %1133 = load i32, i32* %s1.i.i, align 4, !dbg !1767
  %xor393.i.i = xor i32 %1133, %add392.i.i, !dbg !1767
  store i32 %xor393.i.i, i32* %s1.i.i, align 4, !dbg !1767
  %1134 = load i32, i32* %s3.i.i, align 4, !dbg !1768
  %1135 = load i32*, i32** %k.i.i, align 8, !dbg !1769
  %arrayidx394.i.i = getelementptr inbounds i32, i32* %1135, i64 3, !dbg !1769
  %1136 = load i32, i32* %arrayidx394.i.i, align 4, !dbg !1769
  %or.i.i = or i32 %1134, %1136, !dbg !1770
  %1137 = load i32, i32* %s2.i.i, align 4, !dbg !1771
  %xor395.i.i = xor i32 %1137, %or.i.i, !dbg !1771
  store i32 %xor395.i.i, i32* %s2.i.i, align 4, !dbg !1771
  %1138 = load i32, i32* %s1.i.i, align 4, !dbg !1772
  %1139 = load i32*, i32** %k.i.i, align 8, !dbg !1773
  %arrayidx396.i.i = getelementptr inbounds i32, i32* %1139, i64 1, !dbg !1773
  %1140 = load i32, i32* %arrayidx396.i.i, align 4, !dbg !1773
  %or397.i.i = or i32 %1138, %1140, !dbg !1774
  %1141 = load i32, i32* %s0.i.i, align 4, !dbg !1775
  %xor398.i.i = xor i32 %1141, %or397.i.i, !dbg !1775
  store i32 %xor398.i.i, i32* %s0.i.i, align 4, !dbg !1775
  %1142 = load i32, i32* %s2.i.i, align 4, !dbg !1776
  %1143 = load i32*, i32** %k.i.i, align 8, !dbg !1776
  %arrayidx399.i.i = getelementptr inbounds i32, i32* %1143, i64 2, !dbg !1776
  %1144 = load i32, i32* %arrayidx399.i.i, align 4, !dbg !1776
  %and400.i.i = and i32 %1142, %1144, !dbg !1776
  %shl401.i.i = shl i32 %and400.i.i, 1, !dbg !1776
  %1145 = load i32, i32* %s2.i.i, align 4, !dbg !1776
  %1146 = load i32*, i32** %k.i.i, align 8, !dbg !1776
  %arrayidx402.i.i = getelementptr inbounds i32, i32* %1146, i64 2, !dbg !1776
  %1147 = load i32, i32* %arrayidx402.i.i, align 4, !dbg !1776
  %and403.i.i = and i32 %1145, %1147, !dbg !1776
  %shr404.i.i = lshr i32 %and403.i.i, 31, !dbg !1776
  %add405.i.i = add i32 %shl401.i.i, %shr404.i.i, !dbg !1776
  %1148 = load i32, i32* %s3.i.i, align 4, !dbg !1777
  %xor406.i.i = xor i32 %1148, %add405.i.i, !dbg !1777
  store i32 %xor406.i.i, i32* %s3.i.i, align 4, !dbg !1777
  %1149 = load i32*, i32** %k.i.i, align 8, !dbg !1778
  %add.ptr407.i.i = getelementptr inbounds i32, i32* %1149, i64 4, !dbg !1778
  store i32* %add.ptr407.i.i, i32** %k.i.i, align 8, !dbg !1778
  br label %while.body.i.i, !dbg !1760, !llvm.loop !1779

Camellia_EncryptBlock.exit:                       ; preds = %while.body.i.i
  %1150 = load i32*, i32** %k.i.i, align 8, !dbg !1781
  %1151 = load i32, i32* %1150, align 4, !dbg !1781
  %1152 = load i32, i32* %s2.i.i, align 4, !dbg !1782
  %xor409.i.i = xor i32 %1152, %1151, !dbg !1782
  store i32 %xor409.i.i, i32* %s2.i.i, align 4, !dbg !1782
  %1153 = load i32*, i32** %k.i.i, align 8, !dbg !1783
  %arrayidx410.i.i = getelementptr inbounds i32, i32* %1153, i64 1, !dbg !1783
  %1154 = load i32, i32* %arrayidx410.i.i, align 4, !dbg !1783
  %1155 = load i32, i32* %s3.i.i, align 4, !dbg !1784
  %xor411.i.i = xor i32 %1155, %1154, !dbg !1784
  store i32 %xor411.i.i, i32* %s3.i.i, align 4, !dbg !1784
  %1156 = load i32*, i32** %k.i.i, align 8, !dbg !1785
  %arrayidx412.i.i = getelementptr inbounds i32, i32* %1156, i64 2, !dbg !1785
  %1157 = load i32, i32* %arrayidx412.i.i, align 4, !dbg !1785
  %1158 = load i32, i32* %s0.i.i, align 4, !dbg !1786
  %xor413.i.i = xor i32 %1158, %1157, !dbg !1786
  store i32 %xor413.i.i, i32* %s0.i.i, align 4, !dbg !1786
  %1159 = load i32*, i32** %k.i.i, align 8, !dbg !1787
  %arrayidx414.i.i = getelementptr inbounds i32, i32* %1159, i64 3, !dbg !1787
  %1160 = load i32, i32* %arrayidx414.i.i, align 4, !dbg !1787
  %1161 = load i32, i32* %s1.i.i, align 4, !dbg !1788
  %xor415.i.i = xor i32 %1161, %1160, !dbg !1788
  store i32 %xor415.i.i, i32* %s1.i.i, align 4, !dbg !1788
  %1162 = load i32, i32* %s2.i.i, align 4, !dbg !1789
  %shr416.i.i = lshr i32 %1162, 24, !dbg !1789
  %conv417.i.i = trunc i32 %shr416.i.i to i8, !dbg !1789
  %1163 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1789
  store i8 %conv417.i.i, i8* %1163, align 1, !dbg !1789
  %1164 = load i32, i32* %s2.i.i, align 4, !dbg !1789
  %shr419.i.i = lshr i32 %1164, 16, !dbg !1789
  %conv420.i.i = trunc i32 %shr419.i.i to i8, !dbg !1789
  %1165 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1789
  %arrayidx421.i.i = getelementptr inbounds i8, i8* %1165, i64 1, !dbg !1789
  store i8 %conv420.i.i, i8* %arrayidx421.i.i, align 1, !dbg !1789
  %1166 = load i32, i32* %s2.i.i, align 4, !dbg !1789
  %shr422.i.i = lshr i32 %1166, 8, !dbg !1789
  %conv423.i.i = trunc i32 %shr422.i.i to i8, !dbg !1789
  %1167 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1789
  %arrayidx424.i.i = getelementptr inbounds i8, i8* %1167, i64 2, !dbg !1789
  store i8 %conv423.i.i, i8* %arrayidx424.i.i, align 1, !dbg !1789
  %1168 = load i32, i32* %s2.i.i, align 4, !dbg !1789
  %conv425.i.i = trunc i32 %1168 to i8, !dbg !1789
  %1169 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1789
  %arrayidx426.i.i = getelementptr inbounds i8, i8* %1169, i64 3, !dbg !1789
  store i8 %conv425.i.i, i8* %arrayidx426.i.i, align 1, !dbg !1789
  %1170 = load i32, i32* %s3.i.i, align 4, !dbg !1790
  %shr427.i.i = lshr i32 %1170, 24, !dbg !1790
  %conv428.i.i = trunc i32 %shr427.i.i to i8, !dbg !1790
  %1171 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1790
  %add.ptr429.i.i = getelementptr inbounds i8, i8* %1171, i64 4, !dbg !1790
  store i8 %conv428.i.i, i8* %add.ptr429.i.i, align 1, !dbg !1790
  %1172 = load i32, i32* %s3.i.i, align 4, !dbg !1790
  %shr431.i.i = lshr i32 %1172, 16, !dbg !1790
  %conv432.i.i = trunc i32 %shr431.i.i to i8, !dbg !1790
  %1173 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1790
  %add.ptr433.i.i = getelementptr inbounds i8, i8* %1173, i64 4, !dbg !1790
  %arrayidx434.i.i = getelementptr inbounds i8, i8* %add.ptr433.i.i, i64 1, !dbg !1790
  store i8 %conv432.i.i, i8* %arrayidx434.i.i, align 1, !dbg !1790
  %1174 = load i32, i32* %s3.i.i, align 4, !dbg !1790
  %shr435.i.i = lshr i32 %1174, 8, !dbg !1790
  %conv436.i.i = trunc i32 %shr435.i.i to i8, !dbg !1790
  %1175 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1790
  %add.ptr437.i.i = getelementptr inbounds i8, i8* %1175, i64 4, !dbg !1790
  %arrayidx438.i.i = getelementptr inbounds i8, i8* %add.ptr437.i.i, i64 2, !dbg !1790
  store i8 %conv436.i.i, i8* %arrayidx438.i.i, align 1, !dbg !1790
  %1176 = load i32, i32* %s3.i.i, align 4, !dbg !1790
  %conv439.i.i = trunc i32 %1176 to i8, !dbg !1790
  %1177 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1790
  %add.ptr440.i.i = getelementptr inbounds i8, i8* %1177, i64 4, !dbg !1790
  %arrayidx441.i.i = getelementptr inbounds i8, i8* %add.ptr440.i.i, i64 3, !dbg !1790
  store i8 %conv439.i.i, i8* %arrayidx441.i.i, align 1, !dbg !1790
  %1178 = load i32, i32* %s0.i.i, align 4, !dbg !1791
  %shr442.i.i = lshr i32 %1178, 24, !dbg !1791
  %conv443.i.i = trunc i32 %shr442.i.i to i8, !dbg !1791
  %1179 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1791
  %add.ptr444.i.i = getelementptr inbounds i8, i8* %1179, i64 8, !dbg !1791
  store i8 %conv443.i.i, i8* %add.ptr444.i.i, align 1, !dbg !1791
  %1180 = load i32, i32* %s0.i.i, align 4, !dbg !1791
  %shr446.i.i = lshr i32 %1180, 16, !dbg !1791
  %conv447.i.i = trunc i32 %shr446.i.i to i8, !dbg !1791
  %1181 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1791
  %add.ptr448.i.i = getelementptr inbounds i8, i8* %1181, i64 8, !dbg !1791
  %arrayidx449.i.i = getelementptr inbounds i8, i8* %add.ptr448.i.i, i64 1, !dbg !1791
  store i8 %conv447.i.i, i8* %arrayidx449.i.i, align 1, !dbg !1791
  %1182 = load i32, i32* %s0.i.i, align 4, !dbg !1791
  %shr450.i.i = lshr i32 %1182, 8, !dbg !1791
  %conv451.i.i = trunc i32 %shr450.i.i to i8, !dbg !1791
  %1183 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1791
  %add.ptr452.i.i = getelementptr inbounds i8, i8* %1183, i64 8, !dbg !1791
  %arrayidx453.i.i = getelementptr inbounds i8, i8* %add.ptr452.i.i, i64 2, !dbg !1791
  store i8 %conv451.i.i, i8* %arrayidx453.i.i, align 1, !dbg !1791
  %1184 = load i32, i32* %s0.i.i, align 4, !dbg !1791
  %conv454.i.i = trunc i32 %1184 to i8, !dbg !1791
  %1185 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1791
  %add.ptr455.i.i = getelementptr inbounds i8, i8* %1185, i64 8, !dbg !1791
  %arrayidx456.i.i = getelementptr inbounds i8, i8* %add.ptr455.i.i, i64 3, !dbg !1791
  store i8 %conv454.i.i, i8* %arrayidx456.i.i, align 1, !dbg !1791
  %1186 = load i32, i32* %s1.i.i, align 4, !dbg !1792
  %shr457.i.i = lshr i32 %1186, 24, !dbg !1792
  %conv458.i.i = trunc i32 %shr457.i.i to i8, !dbg !1792
  %1187 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1792
  %add.ptr459.i.i = getelementptr inbounds i8, i8* %1187, i64 12, !dbg !1792
  store i8 %conv458.i.i, i8* %add.ptr459.i.i, align 1, !dbg !1792
  %1188 = load i32, i32* %s1.i.i, align 4, !dbg !1792
  %shr461.i.i = lshr i32 %1188, 16, !dbg !1792
  %conv462.i.i = trunc i32 %shr461.i.i to i8, !dbg !1792
  %1189 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1792
  %add.ptr463.i.i = getelementptr inbounds i8, i8* %1189, i64 12, !dbg !1792
  %arrayidx464.i.i = getelementptr inbounds i8, i8* %add.ptr463.i.i, i64 1, !dbg !1792
  store i8 %conv462.i.i, i8* %arrayidx464.i.i, align 1, !dbg !1792
  %1190 = load i32, i32* %s1.i.i, align 4, !dbg !1792
  %shr465.i.i = lshr i32 %1190, 8, !dbg !1792
  %conv466.i.i = trunc i32 %shr465.i.i to i8, !dbg !1792
  %1191 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1792
  %add.ptr467.i.i = getelementptr inbounds i8, i8* %1191, i64 12, !dbg !1792
  %arrayidx468.i.i = getelementptr inbounds i8, i8* %add.ptr467.i.i, i64 2, !dbg !1792
  store i8 %conv466.i.i, i8* %arrayidx468.i.i, align 1, !dbg !1792
  %1192 = load i32, i32* %s1.i.i, align 4, !dbg !1792
  %conv469.i.i = trunc i32 %1192 to i8, !dbg !1792
  %1193 = load i8*, i8** %ciphertext.addr.i.i, align 8, !dbg !1792
  %add.ptr470.i.i = getelementptr inbounds i8, i8* %1193, i64 12, !dbg !1792
  %arrayidx471.i.i = getelementptr inbounds i8, i8* %add.ptr470.i.i, i64 3, !dbg !1792
  store i8 %conv469.i.i, i8* %arrayidx471.i.i, align 1, !dbg !1792
  %1194 = load i8*, i8** %in, align 8, !dbg !1793
  call void @free(i8* %1194) #6, !dbg !1794
  %1195 = load i64, i64* %round, align 8, !dbg !1795
  %dec = add i64 %1195, -1, !dbg !1795
  store i64 %dec, i64* %round, align 8, !dbg !1795
  br label %while.cond, !dbg !1715, !llvm.loop !1796

while.end:                                        ; preds = %while.cond
  %1196 = load i32, i32* %retval, align 4, !dbg !1798
  ret i32 %1196, !dbg !1798
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind willreturn }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "SIGMA", scope: !2, file: !3, line: 234, type: !19, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Cipher/camellia.c", directory: "/home/phil/Documents/github/cache-symbolic/crypto_test")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 28, baseType: !8)
!7 = !DIFile(filename: "Cipher/cmll_local.h", directory: "/home/phil/Documents/github/cache-symbolic/crypto_test")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 29, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!0, !12}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "Camellia_SBOX", scope: !2, file: !3, line: 58, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32768, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!16 = !{!17, !18}
!17 = !DISubrange(count: 4)
!18 = !DISubrange(count: 256)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 384, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 12)
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"clang version 10.0.0 "}
!26 = distinct !DISubprogram(name: "Camellia_Ekeygen", scope: !3, file: !3, line: 280, type: !27, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !29, !30, !32}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!33 = !DILocalVariable(name: "keyBitLength", arg: 1, scope: !26, file: !3, line: 280, type: !29)
!34 = !DILocation(line: 280, column: 26, scope: !26)
!35 = !DILocalVariable(name: "rawKey", arg: 2, scope: !26, file: !3, line: 280, type: !30)
!36 = !DILocation(line: 280, column: 50, scope: !26)
!37 = !DILocalVariable(name: "k", arg: 3, scope: !26, file: !3, line: 280, type: !32)
!38 = !DILocation(line: 280, column: 107, scope: !26)
!39 = !DILocalVariable(name: "s0", scope: !26, file: !3, line: 282, type: !6)
!40 = !DILocation(line: 282, column: 18, scope: !26)
!41 = !DILocalVariable(name: "s1", scope: !26, file: !3, line: 282, type: !6)
!42 = !DILocation(line: 282, column: 22, scope: !26)
!43 = !DILocalVariable(name: "s2", scope: !26, file: !3, line: 282, type: !6)
!44 = !DILocation(line: 282, column: 26, scope: !26)
!45 = !DILocalVariable(name: "s3", scope: !26, file: !3, line: 282, type: !6)
!46 = !DILocation(line: 282, column: 30, scope: !26)
!47 = !DILocation(line: 284, column: 17, scope: !26)
!48 = !DILocation(line: 284, column: 15, scope: !26)
!49 = !DILocation(line: 284, column: 5, scope: !26)
!50 = !DILocation(line: 284, column: 10, scope: !26)
!51 = !DILocation(line: 285, column: 17, scope: !26)
!52 = !DILocation(line: 285, column: 15, scope: !26)
!53 = !DILocation(line: 285, column: 5, scope: !26)
!54 = !DILocation(line: 285, column: 10, scope: !26)
!55 = !DILocation(line: 286, column: 17, scope: !26)
!56 = !DILocation(line: 286, column: 15, scope: !26)
!57 = !DILocation(line: 286, column: 5, scope: !26)
!58 = !DILocation(line: 286, column: 10, scope: !26)
!59 = !DILocation(line: 287, column: 17, scope: !26)
!60 = !DILocation(line: 287, column: 15, scope: !26)
!61 = !DILocation(line: 287, column: 5, scope: !26)
!62 = !DILocation(line: 287, column: 10, scope: !26)
!63 = !DILocation(line: 289, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !26, file: !3, line: 289, column: 9)
!65 = !DILocation(line: 289, column: 22, scope: !64)
!66 = !DILocation(line: 289, column: 9, scope: !26)
!67 = !DILocation(line: 290, column: 21, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !3, line: 289, column: 30)
!69 = !DILocation(line: 290, column: 19, scope: !68)
!70 = !DILocation(line: 290, column: 9, scope: !68)
!71 = !DILocation(line: 290, column: 14, scope: !68)
!72 = !DILocation(line: 291, column: 21, scope: !68)
!73 = !DILocation(line: 291, column: 19, scope: !68)
!74 = !DILocation(line: 291, column: 9, scope: !68)
!75 = !DILocation(line: 291, column: 14, scope: !68)
!76 = !DILocation(line: 292, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !68, file: !3, line: 292, column: 13)
!78 = !DILocation(line: 292, column: 26, scope: !77)
!79 = !DILocation(line: 292, column: 13, scope: !68)
!80 = !DILocation(line: 293, column: 27, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !3, line: 292, column: 34)
!82 = !DILocation(line: 293, column: 26, scope: !81)
!83 = !DILocation(line: 293, column: 24, scope: !81)
!84 = !DILocation(line: 293, column: 13, scope: !81)
!85 = !DILocation(line: 293, column: 19, scope: !81)
!86 = !DILocation(line: 294, column: 27, scope: !81)
!87 = !DILocation(line: 294, column: 26, scope: !81)
!88 = !DILocation(line: 294, column: 24, scope: !81)
!89 = !DILocation(line: 294, column: 13, scope: !81)
!90 = !DILocation(line: 294, column: 19, scope: !81)
!91 = !DILocation(line: 295, column: 9, scope: !81)
!92 = !DILocation(line: 296, column: 26, scope: !93)
!93 = distinct !DILexicalBlock(scope: !77, file: !3, line: 295, column: 16)
!94 = !DILocation(line: 296, column: 24, scope: !93)
!95 = !DILocation(line: 296, column: 13, scope: !93)
!96 = !DILocation(line: 296, column: 19, scope: !93)
!97 = !DILocation(line: 297, column: 26, scope: !93)
!98 = !DILocation(line: 297, column: 24, scope: !93)
!99 = !DILocation(line: 297, column: 13, scope: !93)
!100 = !DILocation(line: 297, column: 19, scope: !93)
!101 = !DILocation(line: 299, column: 15, scope: !68)
!102 = !DILocation(line: 299, column: 12, scope: !68)
!103 = !DILocation(line: 299, column: 27, scope: !68)
!104 = !DILocation(line: 299, column: 24, scope: !68)
!105 = !DILocation(line: 299, column: 39, scope: !68)
!106 = !DILocation(line: 299, column: 36, scope: !68)
!107 = !DILocation(line: 299, column: 51, scope: !68)
!108 = !DILocation(line: 299, column: 48, scope: !68)
!109 = !DILocation(line: 300, column: 5, scope: !68)
!110 = !DILocation(line: 303, column: 5, scope: !26)
!111 = !DILocalVariable(name: "_t0", scope: !112, file: !3, line: 303, type: !6)
!112 = distinct !DILexicalBlock(scope: !26, file: !3, line: 303, column: 5)
!113 = !DILocation(line: 303, column: 5, scope: !112)
!114 = !DILocalVariable(name: "_t1", scope: !112, file: !3, line: 303, type: !6)
!115 = !DILocalVariable(name: "_t2", scope: !112, file: !3, line: 303, type: !6)
!116 = !DILocalVariable(name: "_t3", scope: !112, file: !3, line: 303, type: !6)
!117 = !DILocation(line: 304, column: 5, scope: !26)
!118 = !DILocalVariable(name: "_t0", scope: !119, file: !3, line: 304, type: !6)
!119 = distinct !DILexicalBlock(scope: !26, file: !3, line: 304, column: 5)
!120 = !DILocation(line: 304, column: 5, scope: !119)
!121 = !DILocalVariable(name: "_t1", scope: !119, file: !3, line: 304, type: !6)
!122 = !DILocalVariable(name: "_t2", scope: !119, file: !3, line: 304, type: !6)
!123 = !DILocalVariable(name: "_t3", scope: !119, file: !3, line: 304, type: !6)
!124 = !DILocation(line: 306, column: 11, scope: !26)
!125 = !DILocation(line: 306, column: 8, scope: !26)
!126 = !DILocation(line: 306, column: 23, scope: !26)
!127 = !DILocation(line: 306, column: 20, scope: !26)
!128 = !DILocation(line: 306, column: 35, scope: !26)
!129 = !DILocation(line: 306, column: 32, scope: !26)
!130 = !DILocation(line: 306, column: 47, scope: !26)
!131 = !DILocation(line: 306, column: 44, scope: !26)
!132 = !DILocation(line: 307, column: 5, scope: !26)
!133 = !DILocalVariable(name: "_t0", scope: !134, file: !3, line: 307, type: !6)
!134 = distinct !DILexicalBlock(scope: !26, file: !3, line: 307, column: 5)
!135 = !DILocation(line: 307, column: 5, scope: !134)
!136 = !DILocalVariable(name: "_t1", scope: !134, file: !3, line: 307, type: !6)
!137 = !DILocalVariable(name: "_t2", scope: !134, file: !3, line: 307, type: !6)
!138 = !DILocalVariable(name: "_t3", scope: !134, file: !3, line: 307, type: !6)
!139 = !DILocation(line: 308, column: 5, scope: !26)
!140 = !DILocalVariable(name: "_t0", scope: !141, file: !3, line: 308, type: !6)
!141 = distinct !DILexicalBlock(scope: !26, file: !3, line: 308, column: 5)
!142 = !DILocation(line: 308, column: 5, scope: !141)
!143 = !DILocalVariable(name: "_t1", scope: !141, file: !3, line: 308, type: !6)
!144 = !DILocalVariable(name: "_t2", scope: !141, file: !3, line: 308, type: !6)
!145 = !DILocalVariable(name: "_t3", scope: !141, file: !3, line: 308, type: !6)
!146 = !DILocation(line: 311, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !26, file: !3, line: 311, column: 9)
!148 = !DILocation(line: 311, column: 22, scope: !147)
!149 = !DILocation(line: 311, column: 9, scope: !26)
!150 = !DILocation(line: 312, column: 16, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !3, line: 311, column: 30)
!152 = !DILocation(line: 312, column: 9, scope: !151)
!153 = !DILocation(line: 312, column: 14, scope: !151)
!154 = !DILocation(line: 312, column: 27, scope: !151)
!155 = !DILocation(line: 312, column: 20, scope: !151)
!156 = !DILocation(line: 312, column: 25, scope: !151)
!157 = !DILocation(line: 312, column: 38, scope: !151)
!158 = !DILocation(line: 312, column: 31, scope: !151)
!159 = !DILocation(line: 312, column: 36, scope: !151)
!160 = !DILocation(line: 312, column: 49, scope: !151)
!161 = !DILocation(line: 312, column: 42, scope: !151)
!162 = !DILocation(line: 312, column: 47, scope: !151)
!163 = !DILocation(line: 313, column: 9, scope: !151)
!164 = !DILocalVariable(name: "_t0", scope: !165, file: !3, line: 313, type: !6)
!165 = distinct !DILexicalBlock(scope: !151, file: !3, line: 313, column: 9)
!166 = !DILocation(line: 313, column: 9, scope: !165)
!167 = !DILocation(line: 314, column: 17, scope: !151)
!168 = !DILocation(line: 314, column: 9, scope: !151)
!169 = !DILocation(line: 314, column: 15, scope: !151)
!170 = !DILocation(line: 314, column: 29, scope: !151)
!171 = !DILocation(line: 314, column: 21, scope: !151)
!172 = !DILocation(line: 314, column: 27, scope: !151)
!173 = !DILocation(line: 314, column: 41, scope: !151)
!174 = !DILocation(line: 314, column: 33, scope: !151)
!175 = !DILocation(line: 314, column: 39, scope: !151)
!176 = !DILocation(line: 314, column: 53, scope: !151)
!177 = !DILocation(line: 314, column: 45, scope: !151)
!178 = !DILocation(line: 314, column: 51, scope: !151)
!179 = !DILocation(line: 315, column: 9, scope: !151)
!180 = !DILocalVariable(name: "_t0", scope: !181, file: !3, line: 315, type: !6)
!181 = distinct !DILexicalBlock(scope: !151, file: !3, line: 315, column: 9)
!182 = !DILocation(line: 315, column: 9, scope: !181)
!183 = !DILocation(line: 316, column: 17, scope: !151)
!184 = !DILocation(line: 316, column: 9, scope: !151)
!185 = !DILocation(line: 316, column: 15, scope: !151)
!186 = !DILocation(line: 316, column: 29, scope: !151)
!187 = !DILocation(line: 316, column: 21, scope: !151)
!188 = !DILocation(line: 316, column: 27, scope: !151)
!189 = !DILocation(line: 316, column: 41, scope: !151)
!190 = !DILocation(line: 316, column: 33, scope: !151)
!191 = !DILocation(line: 316, column: 39, scope: !151)
!192 = !DILocation(line: 316, column: 53, scope: !151)
!193 = !DILocation(line: 316, column: 45, scope: !151)
!194 = !DILocation(line: 316, column: 51, scope: !151)
!195 = !DILocation(line: 317, column: 9, scope: !151)
!196 = !DILocalVariable(name: "_t0", scope: !197, file: !3, line: 317, type: !6)
!197 = distinct !DILexicalBlock(scope: !151, file: !3, line: 317, column: 9)
!198 = !DILocation(line: 317, column: 9, scope: !197)
!199 = !DILocation(line: 318, column: 17, scope: !151)
!200 = !DILocation(line: 318, column: 9, scope: !151)
!201 = !DILocation(line: 318, column: 15, scope: !151)
!202 = !DILocation(line: 318, column: 29, scope: !151)
!203 = !DILocation(line: 318, column: 21, scope: !151)
!204 = !DILocation(line: 318, column: 27, scope: !151)
!205 = !DILocation(line: 319, column: 9, scope: !151)
!206 = !DILocalVariable(name: "_t0", scope: !207, file: !3, line: 319, type: !6)
!207 = distinct !DILexicalBlock(scope: !151, file: !3, line: 319, column: 9)
!208 = !DILocation(line: 319, column: 9, scope: !207)
!209 = !DILocation(line: 320, column: 17, scope: !151)
!210 = !DILocation(line: 320, column: 9, scope: !151)
!211 = !DILocation(line: 320, column: 15, scope: !151)
!212 = !DILocation(line: 320, column: 29, scope: !151)
!213 = !DILocation(line: 320, column: 21, scope: !151)
!214 = !DILocation(line: 320, column: 27, scope: !151)
!215 = !DILocation(line: 320, column: 41, scope: !151)
!216 = !DILocation(line: 320, column: 33, scope: !151)
!217 = !DILocation(line: 320, column: 39, scope: !151)
!218 = !DILocation(line: 320, column: 53, scope: !151)
!219 = !DILocation(line: 320, column: 45, scope: !151)
!220 = !DILocation(line: 320, column: 51, scope: !151)
!221 = !DILocation(line: 321, column: 9, scope: !151)
!222 = !DILocalVariable(name: "_t0", scope: !223, file: !3, line: 321, type: !6)
!223 = distinct !DILexicalBlock(scope: !151, file: !3, line: 321, column: 9)
!224 = !DILocation(line: 321, column: 9, scope: !223)
!225 = !DILocation(line: 322, column: 17, scope: !151)
!226 = !DILocation(line: 322, column: 9, scope: !151)
!227 = !DILocation(line: 322, column: 15, scope: !151)
!228 = !DILocation(line: 322, column: 29, scope: !151)
!229 = !DILocation(line: 322, column: 21, scope: !151)
!230 = !DILocation(line: 322, column: 27, scope: !151)
!231 = !DILocation(line: 322, column: 41, scope: !151)
!232 = !DILocation(line: 322, column: 33, scope: !151)
!233 = !DILocation(line: 322, column: 39, scope: !151)
!234 = !DILocation(line: 322, column: 53, scope: !151)
!235 = !DILocation(line: 322, column: 45, scope: !151)
!236 = !DILocation(line: 322, column: 51, scope: !151)
!237 = !DILocation(line: 323, column: 9, scope: !151)
!238 = !DILocalVariable(name: "_t0", scope: !239, file: !3, line: 323, type: !6)
!239 = distinct !DILexicalBlock(scope: !151, file: !3, line: 323, column: 9)
!240 = !DILocation(line: 323, column: 9, scope: !239)
!241 = !DILocation(line: 324, column: 17, scope: !151)
!242 = !DILocation(line: 324, column: 9, scope: !151)
!243 = !DILocation(line: 324, column: 15, scope: !151)
!244 = !DILocation(line: 324, column: 29, scope: !151)
!245 = !DILocation(line: 324, column: 21, scope: !151)
!246 = !DILocation(line: 324, column: 27, scope: !151)
!247 = !DILocation(line: 324, column: 41, scope: !151)
!248 = !DILocation(line: 324, column: 33, scope: !151)
!249 = !DILocation(line: 324, column: 39, scope: !151)
!250 = !DILocation(line: 324, column: 53, scope: !151)
!251 = !DILocation(line: 324, column: 45, scope: !151)
!252 = !DILocation(line: 324, column: 51, scope: !151)
!253 = !DILocation(line: 326, column: 14, scope: !151)
!254 = !DILocation(line: 326, column: 12, scope: !151)
!255 = !DILocation(line: 326, column: 25, scope: !151)
!256 = !DILocation(line: 326, column: 23, scope: !151)
!257 = !DILocation(line: 326, column: 36, scope: !151)
!258 = !DILocation(line: 326, column: 34, scope: !151)
!259 = !DILocation(line: 326, column: 47, scope: !151)
!260 = !DILocation(line: 326, column: 45, scope: !151)
!261 = !DILocation(line: 327, column: 9, scope: !151)
!262 = !DILocalVariable(name: "_t0", scope: !263, file: !3, line: 327, type: !6)
!263 = distinct !DILexicalBlock(scope: !151, file: !3, line: 327, column: 9)
!264 = !DILocation(line: 327, column: 9, scope: !263)
!265 = !DILocation(line: 328, column: 16, scope: !151)
!266 = !DILocation(line: 328, column: 9, scope: !151)
!267 = !DILocation(line: 328, column: 14, scope: !151)
!268 = !DILocation(line: 328, column: 27, scope: !151)
!269 = !DILocation(line: 328, column: 20, scope: !151)
!270 = !DILocation(line: 328, column: 25, scope: !151)
!271 = !DILocation(line: 328, column: 39, scope: !151)
!272 = !DILocation(line: 328, column: 31, scope: !151)
!273 = !DILocation(line: 328, column: 37, scope: !151)
!274 = !DILocation(line: 328, column: 51, scope: !151)
!275 = !DILocation(line: 328, column: 43, scope: !151)
!276 = !DILocation(line: 328, column: 49, scope: !151)
!277 = !DILocation(line: 329, column: 9, scope: !151)
!278 = !DILocalVariable(name: "_t0", scope: !279, file: !3, line: 329, type: !6)
!279 = distinct !DILexicalBlock(scope: !151, file: !3, line: 329, column: 9)
!280 = !DILocation(line: 329, column: 9, scope: !279)
!281 = !DILocation(line: 330, column: 17, scope: !151)
!282 = !DILocation(line: 330, column: 9, scope: !151)
!283 = !DILocation(line: 330, column: 15, scope: !151)
!284 = !DILocation(line: 330, column: 29, scope: !151)
!285 = !DILocation(line: 330, column: 21, scope: !151)
!286 = !DILocation(line: 330, column: 27, scope: !151)
!287 = !DILocation(line: 330, column: 41, scope: !151)
!288 = !DILocation(line: 330, column: 33, scope: !151)
!289 = !DILocation(line: 330, column: 39, scope: !151)
!290 = !DILocation(line: 330, column: 53, scope: !151)
!291 = !DILocation(line: 330, column: 45, scope: !151)
!292 = !DILocation(line: 330, column: 51, scope: !151)
!293 = !DILocation(line: 331, column: 9, scope: !151)
!294 = !DILocalVariable(name: "_t0", scope: !295, file: !3, line: 331, type: !6)
!295 = distinct !DILexicalBlock(scope: !151, file: !3, line: 331, column: 9)
!296 = !DILocation(line: 331, column: 9, scope: !295)
!297 = !DILocation(line: 332, column: 17, scope: !151)
!298 = !DILocation(line: 332, column: 9, scope: !151)
!299 = !DILocation(line: 332, column: 15, scope: !151)
!300 = !DILocation(line: 332, column: 29, scope: !151)
!301 = !DILocation(line: 332, column: 21, scope: !151)
!302 = !DILocation(line: 332, column: 27, scope: !151)
!303 = !DILocation(line: 333, column: 9, scope: !151)
!304 = !DILocalVariable(name: "_t0", scope: !305, file: !3, line: 333, type: !6)
!305 = distinct !DILexicalBlock(scope: !151, file: !3, line: 333, column: 9)
!306 = !DILocation(line: 333, column: 9, scope: !305)
!307 = !DILocation(line: 334, column: 17, scope: !151)
!308 = !DILocation(line: 334, column: 9, scope: !151)
!309 = !DILocation(line: 334, column: 15, scope: !151)
!310 = !DILocation(line: 334, column: 29, scope: !151)
!311 = !DILocation(line: 334, column: 21, scope: !151)
!312 = !DILocation(line: 334, column: 27, scope: !151)
!313 = !DILocation(line: 334, column: 41, scope: !151)
!314 = !DILocation(line: 334, column: 33, scope: !151)
!315 = !DILocation(line: 334, column: 39, scope: !151)
!316 = !DILocation(line: 334, column: 53, scope: !151)
!317 = !DILocation(line: 334, column: 45, scope: !151)
!318 = !DILocation(line: 334, column: 51, scope: !151)
!319 = !DILocation(line: 335, column: 9, scope: !151)
!320 = !DILocalVariable(name: "_t0", scope: !321, file: !3, line: 335, type: !6)
!321 = distinct !DILexicalBlock(scope: !151, file: !3, line: 335, column: 9)
!322 = !DILocation(line: 335, column: 9, scope: !321)
!323 = !DILocation(line: 336, column: 17, scope: !151)
!324 = !DILocation(line: 336, column: 9, scope: !151)
!325 = !DILocation(line: 336, column: 15, scope: !151)
!326 = !DILocation(line: 336, column: 29, scope: !151)
!327 = !DILocation(line: 336, column: 21, scope: !151)
!328 = !DILocation(line: 336, column: 27, scope: !151)
!329 = !DILocation(line: 336, column: 41, scope: !151)
!330 = !DILocation(line: 336, column: 33, scope: !151)
!331 = !DILocation(line: 336, column: 39, scope: !151)
!332 = !DILocation(line: 336, column: 53, scope: !151)
!333 = !DILocation(line: 336, column: 45, scope: !151)
!334 = !DILocation(line: 336, column: 51, scope: !151)
!335 = !DILocation(line: 337, column: 9, scope: !151)
!336 = !DILocalVariable(name: "_t0", scope: !337, file: !3, line: 337, type: !6)
!337 = distinct !DILexicalBlock(scope: !151, file: !3, line: 337, column: 9)
!338 = !DILocation(line: 337, column: 9, scope: !337)
!339 = !DILocation(line: 338, column: 17, scope: !151)
!340 = !DILocation(line: 338, column: 9, scope: !151)
!341 = !DILocation(line: 338, column: 15, scope: !151)
!342 = !DILocation(line: 338, column: 29, scope: !151)
!343 = !DILocation(line: 338, column: 21, scope: !151)
!344 = !DILocation(line: 338, column: 27, scope: !151)
!345 = !DILocation(line: 338, column: 41, scope: !151)
!346 = !DILocation(line: 338, column: 33, scope: !151)
!347 = !DILocation(line: 338, column: 39, scope: !151)
!348 = !DILocation(line: 338, column: 53, scope: !151)
!349 = !DILocation(line: 338, column: 45, scope: !151)
!350 = !DILocation(line: 338, column: 51, scope: !151)
!351 = !DILocation(line: 340, column: 9, scope: !151)
!352 = !DILocation(line: 342, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !147, file: !3, line: 341, column: 12)
!354 = !DILocation(line: 342, column: 9, scope: !353)
!355 = !DILocation(line: 342, column: 15, scope: !353)
!356 = !DILocation(line: 342, column: 29, scope: !353)
!357 = !DILocation(line: 342, column: 21, scope: !353)
!358 = !DILocation(line: 342, column: 27, scope: !353)
!359 = !DILocation(line: 342, column: 41, scope: !353)
!360 = !DILocation(line: 342, column: 33, scope: !353)
!361 = !DILocation(line: 342, column: 39, scope: !353)
!362 = !DILocation(line: 342, column: 53, scope: !353)
!363 = !DILocation(line: 342, column: 45, scope: !353)
!364 = !DILocation(line: 342, column: 51, scope: !353)
!365 = !DILocation(line: 343, column: 15, scope: !353)
!366 = !DILocation(line: 343, column: 12, scope: !353)
!367 = !DILocation(line: 343, column: 27, scope: !353)
!368 = !DILocation(line: 343, column: 24, scope: !353)
!369 = !DILocation(line: 343, column: 39, scope: !353)
!370 = !DILocation(line: 343, column: 36, scope: !353)
!371 = !DILocation(line: 343, column: 52, scope: !353)
!372 = !DILocation(line: 343, column: 49, scope: !353)
!373 = !DILocation(line: 344, column: 9, scope: !353)
!374 = !DILocalVariable(name: "_t0", scope: !375, file: !3, line: 344, type: !6)
!375 = distinct !DILexicalBlock(scope: !353, file: !3, line: 344, column: 9)
!376 = !DILocation(line: 344, column: 9, scope: !375)
!377 = !DILocalVariable(name: "_t1", scope: !375, file: !3, line: 344, type: !6)
!378 = !DILocalVariable(name: "_t2", scope: !375, file: !3, line: 344, type: !6)
!379 = !DILocalVariable(name: "_t3", scope: !375, file: !3, line: 344, type: !6)
!380 = !DILocation(line: 345, column: 9, scope: !353)
!381 = !DILocalVariable(name: "_t0", scope: !382, file: !3, line: 345, type: !6)
!382 = distinct !DILexicalBlock(scope: !353, file: !3, line: 345, column: 9)
!383 = !DILocation(line: 345, column: 9, scope: !382)
!384 = !DILocalVariable(name: "_t1", scope: !382, file: !3, line: 345, type: !6)
!385 = !DILocalVariable(name: "_t2", scope: !382, file: !3, line: 345, type: !6)
!386 = !DILocalVariable(name: "_t3", scope: !382, file: !3, line: 345, type: !6)
!387 = !DILocation(line: 347, column: 16, scope: !353)
!388 = !DILocation(line: 347, column: 9, scope: !353)
!389 = !DILocation(line: 347, column: 14, scope: !353)
!390 = !DILocation(line: 347, column: 27, scope: !353)
!391 = !DILocation(line: 347, column: 20, scope: !353)
!392 = !DILocation(line: 347, column: 25, scope: !353)
!393 = !DILocation(line: 347, column: 38, scope: !353)
!394 = !DILocation(line: 347, column: 31, scope: !353)
!395 = !DILocation(line: 347, column: 36, scope: !353)
!396 = !DILocation(line: 347, column: 49, scope: !353)
!397 = !DILocation(line: 347, column: 42, scope: !353)
!398 = !DILocation(line: 347, column: 47, scope: !353)
!399 = !DILocation(line: 348, column: 9, scope: !353)
!400 = !DILocalVariable(name: "_t0", scope: !401, file: !3, line: 348, type: !6)
!401 = distinct !DILexicalBlock(scope: !353, file: !3, line: 348, column: 9)
!402 = !DILocation(line: 348, column: 9, scope: !401)
!403 = !DILocation(line: 349, column: 17, scope: !353)
!404 = !DILocation(line: 349, column: 9, scope: !353)
!405 = !DILocation(line: 349, column: 15, scope: !353)
!406 = !DILocation(line: 349, column: 29, scope: !353)
!407 = !DILocation(line: 349, column: 21, scope: !353)
!408 = !DILocation(line: 349, column: 27, scope: !353)
!409 = !DILocation(line: 349, column: 41, scope: !353)
!410 = !DILocation(line: 349, column: 33, scope: !353)
!411 = !DILocation(line: 349, column: 39, scope: !353)
!412 = !DILocation(line: 349, column: 53, scope: !353)
!413 = !DILocation(line: 349, column: 45, scope: !353)
!414 = !DILocation(line: 349, column: 51, scope: !353)
!415 = !DILocation(line: 350, column: 9, scope: !353)
!416 = !DILocalVariable(name: "_t0", scope: !417, file: !3, line: 350, type: !6)
!417 = distinct !DILexicalBlock(scope: !353, file: !3, line: 350, column: 9)
!418 = !DILocation(line: 350, column: 9, scope: !417)
!419 = !DILocation(line: 351, column: 17, scope: !353)
!420 = !DILocation(line: 351, column: 9, scope: !353)
!421 = !DILocation(line: 351, column: 15, scope: !353)
!422 = !DILocation(line: 351, column: 29, scope: !353)
!423 = !DILocation(line: 351, column: 21, scope: !353)
!424 = !DILocation(line: 351, column: 27, scope: !353)
!425 = !DILocation(line: 351, column: 41, scope: !353)
!426 = !DILocation(line: 351, column: 33, scope: !353)
!427 = !DILocation(line: 351, column: 39, scope: !353)
!428 = !DILocation(line: 351, column: 53, scope: !353)
!429 = !DILocation(line: 351, column: 45, scope: !353)
!430 = !DILocation(line: 351, column: 51, scope: !353)
!431 = !DILocation(line: 352, column: 9, scope: !353)
!432 = !DILocalVariable(name: "_t0", scope: !433, file: !3, line: 352, type: !6)
!433 = distinct !DILexicalBlock(scope: !353, file: !3, line: 352, column: 9)
!434 = !DILocation(line: 352, column: 9, scope: !433)
!435 = !DILocation(line: 353, column: 17, scope: !353)
!436 = !DILocation(line: 353, column: 9, scope: !353)
!437 = !DILocation(line: 353, column: 15, scope: !353)
!438 = !DILocation(line: 353, column: 29, scope: !353)
!439 = !DILocation(line: 353, column: 21, scope: !353)
!440 = !DILocation(line: 353, column: 27, scope: !353)
!441 = !DILocation(line: 353, column: 41, scope: !353)
!442 = !DILocation(line: 353, column: 33, scope: !353)
!443 = !DILocation(line: 353, column: 39, scope: !353)
!444 = !DILocation(line: 353, column: 53, scope: !353)
!445 = !DILocation(line: 353, column: 45, scope: !353)
!446 = !DILocation(line: 353, column: 51, scope: !353)
!447 = !DILocation(line: 355, column: 14, scope: !353)
!448 = !DILocation(line: 355, column: 12, scope: !353)
!449 = !DILocation(line: 355, column: 25, scope: !353)
!450 = !DILocation(line: 355, column: 23, scope: !353)
!451 = !DILocation(line: 355, column: 36, scope: !353)
!452 = !DILocation(line: 355, column: 34, scope: !353)
!453 = !DILocation(line: 355, column: 48, scope: !353)
!454 = !DILocation(line: 355, column: 46, scope: !353)
!455 = !DILocation(line: 356, column: 9, scope: !353)
!456 = !DILocalVariable(name: "_t0", scope: !457, file: !3, line: 356, type: !6)
!457 = distinct !DILexicalBlock(scope: !353, file: !3, line: 356, column: 9)
!458 = !DILocation(line: 356, column: 9, scope: !457)
!459 = !DILocation(line: 357, column: 16, scope: !353)
!460 = !DILocation(line: 357, column: 9, scope: !353)
!461 = !DILocation(line: 357, column: 14, scope: !353)
!462 = !DILocation(line: 357, column: 27, scope: !353)
!463 = !DILocation(line: 357, column: 20, scope: !353)
!464 = !DILocation(line: 357, column: 25, scope: !353)
!465 = !DILocation(line: 357, column: 39, scope: !353)
!466 = !DILocation(line: 357, column: 31, scope: !353)
!467 = !DILocation(line: 357, column: 37, scope: !353)
!468 = !DILocation(line: 357, column: 51, scope: !353)
!469 = !DILocation(line: 357, column: 43, scope: !353)
!470 = !DILocation(line: 357, column: 49, scope: !353)
!471 = !DILocation(line: 358, column: 9, scope: !353)
!472 = !DILocalVariable(name: "_t0", scope: !473, file: !3, line: 358, type: !6)
!473 = distinct !DILexicalBlock(scope: !353, file: !3, line: 358, column: 9)
!474 = !DILocation(line: 358, column: 9, scope: !473)
!475 = !DILocation(line: 359, column: 17, scope: !353)
!476 = !DILocation(line: 359, column: 9, scope: !353)
!477 = !DILocation(line: 359, column: 15, scope: !353)
!478 = !DILocation(line: 359, column: 29, scope: !353)
!479 = !DILocation(line: 359, column: 21, scope: !353)
!480 = !DILocation(line: 359, column: 27, scope: !353)
!481 = !DILocation(line: 359, column: 41, scope: !353)
!482 = !DILocation(line: 359, column: 33, scope: !353)
!483 = !DILocation(line: 359, column: 39, scope: !353)
!484 = !DILocation(line: 359, column: 53, scope: !353)
!485 = !DILocation(line: 359, column: 45, scope: !353)
!486 = !DILocation(line: 359, column: 51, scope: !353)
!487 = !DILocation(line: 360, column: 9, scope: !353)
!488 = !DILocalVariable(name: "_t0", scope: !489, file: !3, line: 360, type: !6)
!489 = distinct !DILexicalBlock(scope: !353, file: !3, line: 360, column: 9)
!490 = !DILocation(line: 360, column: 9, scope: !489)
!491 = !DILocation(line: 361, column: 17, scope: !353)
!492 = !DILocation(line: 361, column: 9, scope: !353)
!493 = !DILocation(line: 361, column: 15, scope: !353)
!494 = !DILocation(line: 361, column: 29, scope: !353)
!495 = !DILocation(line: 361, column: 21, scope: !353)
!496 = !DILocation(line: 361, column: 27, scope: !353)
!497 = !DILocation(line: 361, column: 41, scope: !353)
!498 = !DILocation(line: 361, column: 33, scope: !353)
!499 = !DILocation(line: 361, column: 39, scope: !353)
!500 = !DILocation(line: 361, column: 53, scope: !353)
!501 = !DILocation(line: 361, column: 45, scope: !353)
!502 = !DILocation(line: 361, column: 51, scope: !353)
!503 = !DILocation(line: 362, column: 9, scope: !353)
!504 = !DILocalVariable(name: "_t0", scope: !505, file: !3, line: 362, type: !6)
!505 = distinct !DILexicalBlock(scope: !353, file: !3, line: 362, column: 9)
!506 = !DILocation(line: 362, column: 9, scope: !505)
!507 = !DILocation(line: 363, column: 17, scope: !353)
!508 = !DILocation(line: 363, column: 9, scope: !353)
!509 = !DILocation(line: 363, column: 15, scope: !353)
!510 = !DILocation(line: 363, column: 29, scope: !353)
!511 = !DILocation(line: 363, column: 21, scope: !353)
!512 = !DILocation(line: 363, column: 27, scope: !353)
!513 = !DILocation(line: 363, column: 41, scope: !353)
!514 = !DILocation(line: 363, column: 33, scope: !353)
!515 = !DILocation(line: 363, column: 39, scope: !353)
!516 = !DILocation(line: 363, column: 53, scope: !353)
!517 = !DILocation(line: 363, column: 45, scope: !353)
!518 = !DILocation(line: 363, column: 51, scope: !353)
!519 = !DILocation(line: 365, column: 14, scope: !353)
!520 = !DILocation(line: 365, column: 12, scope: !353)
!521 = !DILocation(line: 365, column: 26, scope: !353)
!522 = !DILocation(line: 365, column: 24, scope: !353)
!523 = !DILocation(line: 365, column: 38, scope: !353)
!524 = !DILocation(line: 365, column: 36, scope: !353)
!525 = !DILocation(line: 365, column: 50, scope: !353)
!526 = !DILocation(line: 365, column: 48, scope: !353)
!527 = !DILocation(line: 366, column: 9, scope: !353)
!528 = !DILocalVariable(name: "_t0", scope: !529, file: !3, line: 366, type: !6)
!529 = distinct !DILexicalBlock(scope: !353, file: !3, line: 366, column: 9)
!530 = !DILocation(line: 366, column: 9, scope: !529)
!531 = !DILocation(line: 367, column: 17, scope: !353)
!532 = !DILocation(line: 367, column: 9, scope: !353)
!533 = !DILocation(line: 367, column: 15, scope: !353)
!534 = !DILocation(line: 367, column: 29, scope: !353)
!535 = !DILocation(line: 367, column: 21, scope: !353)
!536 = !DILocation(line: 367, column: 27, scope: !353)
!537 = !DILocation(line: 367, column: 41, scope: !353)
!538 = !DILocation(line: 367, column: 33, scope: !353)
!539 = !DILocation(line: 367, column: 39, scope: !353)
!540 = !DILocation(line: 367, column: 53, scope: !353)
!541 = !DILocation(line: 367, column: 45, scope: !353)
!542 = !DILocation(line: 367, column: 51, scope: !353)
!543 = !DILocation(line: 368, column: 9, scope: !353)
!544 = !DILocalVariable(name: "_t0", scope: !545, file: !3, line: 368, type: !6)
!545 = distinct !DILexicalBlock(scope: !353, file: !3, line: 368, column: 9)
!546 = !DILocation(line: 368, column: 9, scope: !545)
!547 = !DILocation(line: 369, column: 17, scope: !353)
!548 = !DILocation(line: 369, column: 9, scope: !353)
!549 = !DILocation(line: 369, column: 15, scope: !353)
!550 = !DILocation(line: 369, column: 29, scope: !353)
!551 = !DILocation(line: 369, column: 21, scope: !353)
!552 = !DILocation(line: 369, column: 27, scope: !353)
!553 = !DILocation(line: 369, column: 41, scope: !353)
!554 = !DILocation(line: 369, column: 33, scope: !353)
!555 = !DILocation(line: 369, column: 39, scope: !353)
!556 = !DILocation(line: 369, column: 53, scope: !353)
!557 = !DILocation(line: 369, column: 45, scope: !353)
!558 = !DILocation(line: 369, column: 51, scope: !353)
!559 = !DILocation(line: 371, column: 17, scope: !353)
!560 = !DILocation(line: 371, column: 9, scope: !353)
!561 = !DILocation(line: 371, column: 15, scope: !353)
!562 = !DILocation(line: 371, column: 29, scope: !353)
!563 = !DILocation(line: 371, column: 21, scope: !353)
!564 = !DILocation(line: 371, column: 27, scope: !353)
!565 = !DILocation(line: 371, column: 41, scope: !353)
!566 = !DILocation(line: 371, column: 33, scope: !353)
!567 = !DILocation(line: 371, column: 39, scope: !353)
!568 = !DILocation(line: 371, column: 53, scope: !353)
!569 = !DILocation(line: 371, column: 45, scope: !353)
!570 = !DILocation(line: 371, column: 51, scope: !353)
!571 = !DILocation(line: 372, column: 9, scope: !353)
!572 = !DILocalVariable(name: "_t0", scope: !573, file: !3, line: 372, type: !6)
!573 = distinct !DILexicalBlock(scope: !353, file: !3, line: 372, column: 9)
!574 = !DILocation(line: 372, column: 9, scope: !573)
!575 = !DILocation(line: 373, column: 17, scope: !353)
!576 = !DILocation(line: 373, column: 9, scope: !353)
!577 = !DILocation(line: 373, column: 15, scope: !353)
!578 = !DILocation(line: 373, column: 29, scope: !353)
!579 = !DILocation(line: 373, column: 21, scope: !353)
!580 = !DILocation(line: 373, column: 27, scope: !353)
!581 = !DILocation(line: 373, column: 41, scope: !353)
!582 = !DILocation(line: 373, column: 33, scope: !353)
!583 = !DILocation(line: 373, column: 39, scope: !353)
!584 = !DILocation(line: 373, column: 53, scope: !353)
!585 = !DILocation(line: 373, column: 45, scope: !353)
!586 = !DILocation(line: 373, column: 51, scope: !353)
!587 = !DILocation(line: 375, column: 14, scope: !353)
!588 = !DILocation(line: 375, column: 12, scope: !353)
!589 = !DILocation(line: 375, column: 25, scope: !353)
!590 = !DILocation(line: 375, column: 23, scope: !353)
!591 = !DILocation(line: 375, column: 36, scope: !353)
!592 = !DILocation(line: 375, column: 34, scope: !353)
!593 = !DILocation(line: 375, column: 47, scope: !353)
!594 = !DILocation(line: 375, column: 45, scope: !353)
!595 = !DILocation(line: 376, column: 9, scope: !353)
!596 = !DILocalVariable(name: "_t0", scope: !597, file: !3, line: 376, type: !6)
!597 = distinct !DILexicalBlock(scope: !353, file: !3, line: 376, column: 9)
!598 = !DILocation(line: 376, column: 9, scope: !597)
!599 = !DILocation(line: 377, column: 17, scope: !353)
!600 = !DILocation(line: 377, column: 9, scope: !353)
!601 = !DILocation(line: 377, column: 15, scope: !353)
!602 = !DILocation(line: 377, column: 29, scope: !353)
!603 = !DILocation(line: 377, column: 21, scope: !353)
!604 = !DILocation(line: 377, column: 27, scope: !353)
!605 = !DILocation(line: 377, column: 41, scope: !353)
!606 = !DILocation(line: 377, column: 33, scope: !353)
!607 = !DILocation(line: 377, column: 39, scope: !353)
!608 = !DILocation(line: 377, column: 53, scope: !353)
!609 = !DILocation(line: 377, column: 45, scope: !353)
!610 = !DILocation(line: 377, column: 51, scope: !353)
!611 = !DILocation(line: 378, column: 9, scope: !353)
!612 = !DILocalVariable(name: "_t0", scope: !613, file: !3, line: 378, type: !6)
!613 = distinct !DILexicalBlock(scope: !353, file: !3, line: 378, column: 9)
!614 = !DILocation(line: 378, column: 9, scope: !613)
!615 = !DILocation(line: 379, column: 17, scope: !353)
!616 = !DILocation(line: 379, column: 9, scope: !353)
!617 = !DILocation(line: 379, column: 15, scope: !353)
!618 = !DILocation(line: 379, column: 29, scope: !353)
!619 = !DILocation(line: 379, column: 21, scope: !353)
!620 = !DILocation(line: 379, column: 27, scope: !353)
!621 = !DILocation(line: 379, column: 41, scope: !353)
!622 = !DILocation(line: 379, column: 33, scope: !353)
!623 = !DILocation(line: 379, column: 39, scope: !353)
!624 = !DILocation(line: 379, column: 53, scope: !353)
!625 = !DILocation(line: 379, column: 45, scope: !353)
!626 = !DILocation(line: 379, column: 51, scope: !353)
!627 = !DILocation(line: 380, column: 9, scope: !353)
!628 = !DILocalVariable(name: "_t0", scope: !629, file: !3, line: 380, type: !6)
!629 = distinct !DILexicalBlock(scope: !353, file: !3, line: 380, column: 9)
!630 = !DILocation(line: 380, column: 9, scope: !629)
!631 = !DILocation(line: 381, column: 17, scope: !353)
!632 = !DILocation(line: 381, column: 9, scope: !353)
!633 = !DILocation(line: 381, column: 15, scope: !353)
!634 = !DILocation(line: 381, column: 29, scope: !353)
!635 = !DILocation(line: 381, column: 21, scope: !353)
!636 = !DILocation(line: 381, column: 27, scope: !353)
!637 = !DILocation(line: 381, column: 41, scope: !353)
!638 = !DILocation(line: 381, column: 33, scope: !353)
!639 = !DILocation(line: 381, column: 39, scope: !353)
!640 = !DILocation(line: 381, column: 53, scope: !353)
!641 = !DILocation(line: 381, column: 45, scope: !353)
!642 = !DILocation(line: 381, column: 51, scope: !353)
!643 = !DILocation(line: 382, column: 9, scope: !353)
!644 = !DILocalVariable(name: "_t0", scope: !645, file: !3, line: 382, type: !6)
!645 = distinct !DILexicalBlock(scope: !353, file: !3, line: 382, column: 9)
!646 = !DILocation(line: 382, column: 9, scope: !645)
!647 = !DILocation(line: 383, column: 17, scope: !353)
!648 = !DILocation(line: 383, column: 9, scope: !353)
!649 = !DILocation(line: 383, column: 15, scope: !353)
!650 = !DILocation(line: 383, column: 29, scope: !353)
!651 = !DILocation(line: 383, column: 21, scope: !353)
!652 = !DILocation(line: 383, column: 27, scope: !353)
!653 = !DILocation(line: 383, column: 41, scope: !353)
!654 = !DILocation(line: 383, column: 33, scope: !353)
!655 = !DILocation(line: 383, column: 39, scope: !353)
!656 = !DILocation(line: 383, column: 53, scope: !353)
!657 = !DILocation(line: 383, column: 45, scope: !353)
!658 = !DILocation(line: 383, column: 51, scope: !353)
!659 = !DILocation(line: 385, column: 9, scope: !353)
!660 = !DILocation(line: 395, column: 1, scope: !26)
!661 = distinct !DISubprogram(name: "Camellia_EncryptBlock_Rounds", scope: !3, file: !3, line: 397, type: !662, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !29, !30, !664, !666}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!667 = !DILocalVariable(name: "grandRounds", arg: 1, scope: !661, file: !3, line: 397, type: !29)
!668 = !DILocation(line: 397, column: 39, scope: !661)
!669 = !DILocalVariable(name: "plaintext", arg: 2, scope: !661, file: !3, line: 397, type: !30)
!670 = !DILocation(line: 397, column: 61, scope: !661)
!671 = !DILocalVariable(name: "keyTable", arg: 3, scope: !661, file: !3, line: 398, type: !664)
!672 = !DILocation(line: 398, column: 56, scope: !661)
!673 = !DILocalVariable(name: "ciphertext", arg: 4, scope: !661, file: !3, line: 399, type: !666)
!674 = !DILocation(line: 399, column: 38, scope: !661)
!675 = !DILocalVariable(name: "s0", scope: !661, file: !3, line: 401, type: !6)
!676 = !DILocation(line: 401, column: 18, scope: !661)
!677 = !DILocalVariable(name: "s1", scope: !661, file: !3, line: 401, type: !6)
!678 = !DILocation(line: 401, column: 22, scope: !661)
!679 = !DILocalVariable(name: "s2", scope: !661, file: !3, line: 401, type: !6)
!680 = !DILocation(line: 401, column: 26, scope: !661)
!681 = !DILocalVariable(name: "s3", scope: !661, file: !3, line: 401, type: !6)
!682 = !DILocation(line: 401, column: 30, scope: !661)
!683 = !DILocalVariable(name: "k", scope: !661, file: !3, line: 402, type: !684)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!685 = !DILocation(line: 402, column: 16, scope: !661)
!686 = !DILocation(line: 402, column: 5, scope: !661)
!687 = !DILocation(line: 402, column: 54, scope: !661)
!688 = !DILocalVariable(name: "kend", scope: !661, file: !3, line: 402, type: !684)
!689 = !DILocation(line: 402, column: 65, scope: !661)
!690 = !DILocation(line: 402, column: 72, scope: !661)
!691 = !DILocation(line: 402, column: 83, scope: !661)
!692 = !DILocation(line: 402, column: 95, scope: !661)
!693 = !DILocation(line: 402, column: 81, scope: !661)
!694 = !DILocation(line: 404, column: 10, scope: !661)
!695 = !DILocation(line: 404, column: 30, scope: !661)
!696 = !DILocation(line: 404, column: 28, scope: !661)
!697 = !DILocation(line: 404, column: 8, scope: !661)
!698 = !DILocation(line: 405, column: 10, scope: !661)
!699 = !DILocation(line: 405, column: 34, scope: !661)
!700 = !DILocation(line: 405, column: 32, scope: !661)
!701 = !DILocation(line: 405, column: 8, scope: !661)
!702 = !DILocation(line: 406, column: 10, scope: !661)
!703 = !DILocation(line: 406, column: 34, scope: !661)
!704 = !DILocation(line: 406, column: 32, scope: !661)
!705 = !DILocation(line: 406, column: 8, scope: !661)
!706 = !DILocation(line: 407, column: 10, scope: !661)
!707 = !DILocation(line: 407, column: 35, scope: !661)
!708 = !DILocation(line: 407, column: 33, scope: !661)
!709 = !DILocation(line: 407, column: 8, scope: !661)
!710 = !DILocation(line: 408, column: 7, scope: !661)
!711 = !DILocation(line: 410, column: 5, scope: !661)
!712 = !DILocation(line: 412, column: 9, scope: !713)
!713 = distinct !DILexicalBlock(scope: !661, file: !3, line: 410, column: 15)
!714 = !DILocalVariable(name: "_t0", scope: !715, file: !3, line: 412, type: !6)
!715 = distinct !DILexicalBlock(scope: !713, file: !3, line: 412, column: 9)
!716 = !DILocation(line: 412, column: 9, scope: !715)
!717 = !DILocalVariable(name: "_t1", scope: !715, file: !3, line: 412, type: !6)
!718 = !DILocalVariable(name: "_t2", scope: !715, file: !3, line: 412, type: !6)
!719 = !DILocalVariable(name: "_t3", scope: !715, file: !3, line: 412, type: !6)
!720 = !DILocation(line: 413, column: 9, scope: !713)
!721 = !DILocalVariable(name: "_t0", scope: !722, file: !3, line: 413, type: !6)
!722 = distinct !DILexicalBlock(scope: !713, file: !3, line: 413, column: 9)
!723 = !DILocation(line: 413, column: 9, scope: !722)
!724 = !DILocalVariable(name: "_t1", scope: !722, file: !3, line: 413, type: !6)
!725 = !DILocalVariable(name: "_t2", scope: !722, file: !3, line: 413, type: !6)
!726 = !DILocalVariable(name: "_t3", scope: !722, file: !3, line: 413, type: !6)
!727 = !DILocation(line: 414, column: 9, scope: !713)
!728 = !DILocalVariable(name: "_t0", scope: !729, file: !3, line: 414, type: !6)
!729 = distinct !DILexicalBlock(scope: !713, file: !3, line: 414, column: 9)
!730 = !DILocation(line: 414, column: 9, scope: !729)
!731 = !DILocalVariable(name: "_t1", scope: !729, file: !3, line: 414, type: !6)
!732 = !DILocalVariable(name: "_t2", scope: !729, file: !3, line: 414, type: !6)
!733 = !DILocalVariable(name: "_t3", scope: !729, file: !3, line: 414, type: !6)
!734 = !DILocation(line: 415, column: 9, scope: !713)
!735 = !DILocalVariable(name: "_t0", scope: !736, file: !3, line: 415, type: !6)
!736 = distinct !DILexicalBlock(scope: !713, file: !3, line: 415, column: 9)
!737 = !DILocation(line: 415, column: 9, scope: !736)
!738 = !DILocalVariable(name: "_t1", scope: !736, file: !3, line: 415, type: !6)
!739 = !DILocalVariable(name: "_t2", scope: !736, file: !3, line: 415, type: !6)
!740 = !DILocalVariable(name: "_t3", scope: !736, file: !3, line: 415, type: !6)
!741 = !DILocation(line: 416, column: 9, scope: !713)
!742 = !DILocalVariable(name: "_t0", scope: !743, file: !3, line: 416, type: !6)
!743 = distinct !DILexicalBlock(scope: !713, file: !3, line: 416, column: 9)
!744 = !DILocation(line: 416, column: 9, scope: !743)
!745 = !DILocalVariable(name: "_t1", scope: !743, file: !3, line: 416, type: !6)
!746 = !DILocalVariable(name: "_t2", scope: !743, file: !3, line: 416, type: !6)
!747 = !DILocalVariable(name: "_t3", scope: !743, file: !3, line: 416, type: !6)
!748 = !DILocation(line: 417, column: 9, scope: !713)
!749 = !DILocalVariable(name: "_t0", scope: !750, file: !3, line: 417, type: !6)
!750 = distinct !DILexicalBlock(scope: !713, file: !3, line: 417, column: 9)
!751 = !DILocation(line: 417, column: 9, scope: !750)
!752 = !DILocalVariable(name: "_t1", scope: !750, file: !3, line: 417, type: !6)
!753 = !DILocalVariable(name: "_t2", scope: !750, file: !3, line: 417, type: !6)
!754 = !DILocalVariable(name: "_t3", scope: !750, file: !3, line: 417, type: !6)
!755 = !DILocation(line: 418, column: 11, scope: !713)
!756 = !DILocation(line: 420, column: 13, scope: !757)
!757 = distinct !DILexicalBlock(scope: !713, file: !3, line: 420, column: 13)
!758 = !DILocation(line: 420, column: 18, scope: !757)
!759 = !DILocation(line: 420, column: 15, scope: !757)
!760 = !DILocation(line: 420, column: 13, scope: !713)
!761 = !DILocation(line: 421, column: 13, scope: !757)
!762 = !DILocation(line: 428, column: 15, scope: !713)
!763 = !DILocation(line: 428, column: 12, scope: !713)
!764 = !DILocation(line: 429, column: 15, scope: !713)
!765 = !DILocation(line: 429, column: 20, scope: !713)
!766 = !DILocation(line: 429, column: 18, scope: !713)
!767 = !DILocation(line: 429, column: 12, scope: !713)
!768 = !DILocation(line: 430, column: 15, scope: !713)
!769 = !DILocation(line: 430, column: 20, scope: !713)
!770 = !DILocation(line: 430, column: 18, scope: !713)
!771 = !DILocation(line: 430, column: 12, scope: !713)
!772 = !DILocation(line: 431, column: 15, scope: !713)
!773 = !DILocation(line: 431, column: 12, scope: !713)
!774 = !DILocation(line: 432, column: 11, scope: !713)
!775 = distinct !{!775, !711, !776}
!776 = !DILocation(line: 433, column: 5, scope: !661)
!777 = !DILocation(line: 435, column: 11, scope: !661)
!778 = !DILocation(line: 435, column: 8, scope: !661)
!779 = !DILocation(line: 435, column: 23, scope: !661)
!780 = !DILocation(line: 435, column: 20, scope: !661)
!781 = !DILocation(line: 435, column: 35, scope: !661)
!782 = !DILocation(line: 435, column: 32, scope: !661)
!783 = !DILocation(line: 435, column: 47, scope: !661)
!784 = !DILocation(line: 435, column: 44, scope: !661)
!785 = !DILocation(line: 437, column: 5, scope: !661)
!786 = !DILocation(line: 438, column: 5, scope: !661)
!787 = !DILocation(line: 439, column: 5, scope: !661)
!788 = !DILocation(line: 440, column: 5, scope: !661)
!789 = !DILocation(line: 441, column: 1, scope: !661)
!790 = distinct !DISubprogram(name: "Camellia_EncryptBlock", scope: !3, file: !3, line: 443, type: !662, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!791 = !DILocation(line: 397, column: 39, scope: !661, inlinedAt: !792)
!792 = distinct !DILocation(line: 446, column: 5, scope: !790)
!793 = !DILocation(line: 397, column: 61, scope: !661, inlinedAt: !792)
!794 = !DILocation(line: 398, column: 56, scope: !661, inlinedAt: !792)
!795 = !DILocation(line: 399, column: 38, scope: !661, inlinedAt: !792)
!796 = !DILocation(line: 401, column: 18, scope: !661, inlinedAt: !792)
!797 = !DILocation(line: 401, column: 22, scope: !661, inlinedAt: !792)
!798 = !DILocation(line: 401, column: 26, scope: !661, inlinedAt: !792)
!799 = !DILocation(line: 401, column: 30, scope: !661, inlinedAt: !792)
!800 = !DILocation(line: 402, column: 16, scope: !661, inlinedAt: !792)
!801 = !DILocation(line: 402, column: 65, scope: !661, inlinedAt: !792)
!802 = !DILocation(line: 412, column: 9, scope: !715, inlinedAt: !792)
!803 = !DILocation(line: 413, column: 9, scope: !722, inlinedAt: !792)
!804 = !DILocation(line: 414, column: 9, scope: !729, inlinedAt: !792)
!805 = !DILocation(line: 415, column: 9, scope: !736, inlinedAt: !792)
!806 = !DILocation(line: 416, column: 9, scope: !743, inlinedAt: !792)
!807 = !DILocation(line: 417, column: 9, scope: !750, inlinedAt: !792)
!808 = !DILocalVariable(name: "keyBitLength", arg: 1, scope: !790, file: !3, line: 443, type: !29)
!809 = !DILocation(line: 443, column: 32, scope: !790)
!810 = !DILocalVariable(name: "plaintext", arg: 2, scope: !790, file: !3, line: 443, type: !30)
!811 = !DILocation(line: 443, column: 55, scope: !790)
!812 = !DILocalVariable(name: "keyTable", arg: 3, scope: !790, file: !3, line: 444, type: !664)
!813 = !DILocation(line: 444, column: 49, scope: !790)
!814 = !DILocalVariable(name: "ciphertext", arg: 4, scope: !790, file: !3, line: 444, type: !666)
!815 = !DILocation(line: 444, column: 96, scope: !790)
!816 = !DILocation(line: 446, column: 34, scope: !790)
!817 = !DILocation(line: 446, column: 47, scope: !790)
!818 = !DILocation(line: 447, column: 34, scope: !790)
!819 = !DILocation(line: 447, column: 45, scope: !790)
!820 = !DILocation(line: 447, column: 55, scope: !790)
!821 = !DILocation(line: 402, column: 5, scope: !661, inlinedAt: !792)
!822 = !DILocation(line: 402, column: 54, scope: !661, inlinedAt: !792)
!823 = !DILocation(line: 402, column: 72, scope: !661, inlinedAt: !792)
!824 = !DILocation(line: 402, column: 83, scope: !661, inlinedAt: !792)
!825 = !DILocation(line: 402, column: 95, scope: !661, inlinedAt: !792)
!826 = !DILocation(line: 402, column: 81, scope: !661, inlinedAt: !792)
!827 = !DILocation(line: 404, column: 10, scope: !661, inlinedAt: !792)
!828 = !DILocation(line: 404, column: 30, scope: !661, inlinedAt: !792)
!829 = !DILocation(line: 404, column: 28, scope: !661, inlinedAt: !792)
!830 = !DILocation(line: 404, column: 8, scope: !661, inlinedAt: !792)
!831 = !DILocation(line: 405, column: 10, scope: !661, inlinedAt: !792)
!832 = !DILocation(line: 405, column: 34, scope: !661, inlinedAt: !792)
!833 = !DILocation(line: 405, column: 32, scope: !661, inlinedAt: !792)
!834 = !DILocation(line: 405, column: 8, scope: !661, inlinedAt: !792)
!835 = !DILocation(line: 406, column: 10, scope: !661, inlinedAt: !792)
!836 = !DILocation(line: 406, column: 34, scope: !661, inlinedAt: !792)
!837 = !DILocation(line: 406, column: 32, scope: !661, inlinedAt: !792)
!838 = !DILocation(line: 406, column: 8, scope: !661, inlinedAt: !792)
!839 = !DILocation(line: 407, column: 10, scope: !661, inlinedAt: !792)
!840 = !DILocation(line: 407, column: 35, scope: !661, inlinedAt: !792)
!841 = !DILocation(line: 407, column: 33, scope: !661, inlinedAt: !792)
!842 = !DILocation(line: 407, column: 8, scope: !661, inlinedAt: !792)
!843 = !DILocation(line: 408, column: 7, scope: !661, inlinedAt: !792)
!844 = !DILocation(line: 410, column: 5, scope: !661, inlinedAt: !792)
!845 = !DILocation(line: 418, column: 11, scope: !713, inlinedAt: !792)
!846 = !DILocation(line: 420, column: 13, scope: !757, inlinedAt: !792)
!847 = !DILocation(line: 420, column: 18, scope: !757, inlinedAt: !792)
!848 = !DILocation(line: 420, column: 15, scope: !757, inlinedAt: !792)
!849 = !DILocation(line: 420, column: 13, scope: !713, inlinedAt: !792)
!850 = !DILocation(line: 428, column: 15, scope: !713, inlinedAt: !792)
!851 = !DILocation(line: 428, column: 12, scope: !713, inlinedAt: !792)
!852 = !DILocation(line: 429, column: 15, scope: !713, inlinedAt: !792)
!853 = !DILocation(line: 429, column: 20, scope: !713, inlinedAt: !792)
!854 = !DILocation(line: 429, column: 18, scope: !713, inlinedAt: !792)
!855 = !DILocation(line: 429, column: 12, scope: !713, inlinedAt: !792)
!856 = !DILocation(line: 430, column: 15, scope: !713, inlinedAt: !792)
!857 = !DILocation(line: 430, column: 20, scope: !713, inlinedAt: !792)
!858 = !DILocation(line: 430, column: 18, scope: !713, inlinedAt: !792)
!859 = !DILocation(line: 430, column: 12, scope: !713, inlinedAt: !792)
!860 = !DILocation(line: 431, column: 15, scope: !713, inlinedAt: !792)
!861 = !DILocation(line: 431, column: 12, scope: !713, inlinedAt: !792)
!862 = !DILocation(line: 432, column: 11, scope: !713, inlinedAt: !792)
!863 = distinct !{!863, !844, !864}
!864 = !DILocation(line: 433, column: 5, scope: !661, inlinedAt: !792)
!865 = !DILocation(line: 435, column: 11, scope: !661, inlinedAt: !792)
!866 = !DILocation(line: 435, column: 8, scope: !661, inlinedAt: !792)
!867 = !DILocation(line: 435, column: 23, scope: !661, inlinedAt: !792)
!868 = !DILocation(line: 435, column: 20, scope: !661, inlinedAt: !792)
!869 = !DILocation(line: 435, column: 35, scope: !661, inlinedAt: !792)
!870 = !DILocation(line: 435, column: 32, scope: !661, inlinedAt: !792)
!871 = !DILocation(line: 435, column: 47, scope: !661, inlinedAt: !792)
!872 = !DILocation(line: 435, column: 44, scope: !661, inlinedAt: !792)
!873 = !DILocation(line: 437, column: 5, scope: !661, inlinedAt: !792)
!874 = !DILocation(line: 438, column: 5, scope: !661, inlinedAt: !792)
!875 = !DILocation(line: 439, column: 5, scope: !661, inlinedAt: !792)
!876 = !DILocation(line: 440, column: 5, scope: !661, inlinedAt: !792)
!877 = !DILocation(line: 448, column: 1, scope: !790)
!878 = distinct !DISubprogram(name: "Camellia_DecryptBlock_Rounds", scope: !3, file: !3, line: 450, type: !662, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!879 = !DILocalVariable(name: "grandRounds", arg: 1, scope: !878, file: !3, line: 450, type: !29)
!880 = !DILocation(line: 450, column: 39, scope: !878)
!881 = !DILocalVariable(name: "ciphertext", arg: 2, scope: !878, file: !3, line: 450, type: !30)
!882 = !DILocation(line: 450, column: 61, scope: !878)
!883 = !DILocalVariable(name: "keyTable", arg: 3, scope: !878, file: !3, line: 451, type: !664)
!884 = !DILocation(line: 451, column: 56, scope: !878)
!885 = !DILocalVariable(name: "plaintext", arg: 4, scope: !878, file: !3, line: 452, type: !666)
!886 = !DILocation(line: 452, column: 38, scope: !878)
!887 = !DILocalVariable(name: "s0", scope: !878, file: !3, line: 454, type: !6)
!888 = !DILocation(line: 454, column: 9, scope: !878)
!889 = !DILocalVariable(name: "s1", scope: !878, file: !3, line: 454, type: !6)
!890 = !DILocation(line: 454, column: 13, scope: !878)
!891 = !DILocalVariable(name: "s2", scope: !878, file: !3, line: 454, type: !6)
!892 = !DILocation(line: 454, column: 17, scope: !878)
!893 = !DILocalVariable(name: "s3", scope: !878, file: !3, line: 454, type: !6)
!894 = !DILocation(line: 454, column: 21, scope: !878)
!895 = !DILocalVariable(name: "k", scope: !878, file: !3, line: 455, type: !684)
!896 = !DILocation(line: 455, column: 16, scope: !878)
!897 = !DILocation(line: 455, column: 5, scope: !878)
!898 = !DILocation(line: 455, column: 54, scope: !878)
!899 = !DILocation(line: 455, column: 65, scope: !878)
!900 = !DILocation(line: 455, column: 77, scope: !878)
!901 = !DILocation(line: 455, column: 63, scope: !878)
!902 = !DILocalVariable(name: "kend", scope: !878, file: !3, line: 455, type: !684)
!903 = !DILocation(line: 455, column: 84, scope: !878)
!904 = !DILocation(line: 455, column: 91, scope: !878)
!905 = !DILocation(line: 455, column: 100, scope: !878)
!906 = !DILocation(line: 457, column: 10, scope: !878)
!907 = !DILocation(line: 457, column: 31, scope: !878)
!908 = !DILocation(line: 457, column: 29, scope: !878)
!909 = !DILocation(line: 457, column: 8, scope: !878)
!910 = !DILocation(line: 458, column: 10, scope: !878)
!911 = !DILocation(line: 458, column: 35, scope: !878)
!912 = !DILocation(line: 458, column: 33, scope: !878)
!913 = !DILocation(line: 458, column: 8, scope: !878)
!914 = !DILocation(line: 459, column: 10, scope: !878)
!915 = !DILocation(line: 459, column: 35, scope: !878)
!916 = !DILocation(line: 459, column: 33, scope: !878)
!917 = !DILocation(line: 459, column: 8, scope: !878)
!918 = !DILocation(line: 460, column: 10, scope: !878)
!919 = !DILocation(line: 460, column: 36, scope: !878)
!920 = !DILocation(line: 460, column: 34, scope: !878)
!921 = !DILocation(line: 460, column: 8, scope: !878)
!922 = !DILocation(line: 462, column: 5, scope: !878)
!923 = !DILocation(line: 464, column: 11, scope: !924)
!924 = distinct !DILexicalBlock(scope: !878, file: !3, line: 462, column: 15)
!925 = !DILocation(line: 465, column: 9, scope: !924)
!926 = !DILocalVariable(name: "_t0", scope: !927, file: !3, line: 465, type: !6)
!927 = distinct !DILexicalBlock(scope: !924, file: !3, line: 465, column: 9)
!928 = !DILocation(line: 465, column: 9, scope: !927)
!929 = !DILocalVariable(name: "_t1", scope: !927, file: !3, line: 465, type: !6)
!930 = !DILocalVariable(name: "_t2", scope: !927, file: !3, line: 465, type: !6)
!931 = !DILocalVariable(name: "_t3", scope: !927, file: !3, line: 465, type: !6)
!932 = !DILocation(line: 466, column: 9, scope: !924)
!933 = !DILocalVariable(name: "_t0", scope: !934, file: !3, line: 466, type: !6)
!934 = distinct !DILexicalBlock(scope: !924, file: !3, line: 466, column: 9)
!935 = !DILocation(line: 466, column: 9, scope: !934)
!936 = !DILocalVariable(name: "_t1", scope: !934, file: !3, line: 466, type: !6)
!937 = !DILocalVariable(name: "_t2", scope: !934, file: !3, line: 466, type: !6)
!938 = !DILocalVariable(name: "_t3", scope: !934, file: !3, line: 466, type: !6)
!939 = !DILocation(line: 467, column: 9, scope: !924)
!940 = !DILocalVariable(name: "_t0", scope: !941, file: !3, line: 467, type: !6)
!941 = distinct !DILexicalBlock(scope: !924, file: !3, line: 467, column: 9)
!942 = !DILocation(line: 467, column: 9, scope: !941)
!943 = !DILocalVariable(name: "_t1", scope: !941, file: !3, line: 467, type: !6)
!944 = !DILocalVariable(name: "_t2", scope: !941, file: !3, line: 467, type: !6)
!945 = !DILocalVariable(name: "_t3", scope: !941, file: !3, line: 467, type: !6)
!946 = !DILocation(line: 468, column: 9, scope: !924)
!947 = !DILocalVariable(name: "_t0", scope: !948, file: !3, line: 468, type: !6)
!948 = distinct !DILexicalBlock(scope: !924, file: !3, line: 468, column: 9)
!949 = !DILocation(line: 468, column: 9, scope: !948)
!950 = !DILocalVariable(name: "_t1", scope: !948, file: !3, line: 468, type: !6)
!951 = !DILocalVariable(name: "_t2", scope: !948, file: !3, line: 468, type: !6)
!952 = !DILocalVariable(name: "_t3", scope: !948, file: !3, line: 468, type: !6)
!953 = !DILocation(line: 469, column: 9, scope: !924)
!954 = !DILocalVariable(name: "_t0", scope: !955, file: !3, line: 469, type: !6)
!955 = distinct !DILexicalBlock(scope: !924, file: !3, line: 469, column: 9)
!956 = !DILocation(line: 469, column: 9, scope: !955)
!957 = !DILocalVariable(name: "_t1", scope: !955, file: !3, line: 469, type: !6)
!958 = !DILocalVariable(name: "_t2", scope: !955, file: !3, line: 469, type: !6)
!959 = !DILocalVariable(name: "_t3", scope: !955, file: !3, line: 469, type: !6)
!960 = !DILocation(line: 470, column: 9, scope: !924)
!961 = !DILocalVariable(name: "_t0", scope: !962, file: !3, line: 470, type: !6)
!962 = distinct !DILexicalBlock(scope: !924, file: !3, line: 470, column: 9)
!963 = !DILocation(line: 470, column: 9, scope: !962)
!964 = !DILocalVariable(name: "_t1", scope: !962, file: !3, line: 470, type: !6)
!965 = !DILocalVariable(name: "_t2", scope: !962, file: !3, line: 470, type: !6)
!966 = !DILocalVariable(name: "_t3", scope: !962, file: !3, line: 470, type: !6)
!967 = !DILocation(line: 472, column: 13, scope: !968)
!968 = distinct !DILexicalBlock(scope: !924, file: !3, line: 472, column: 13)
!969 = !DILocation(line: 472, column: 18, scope: !968)
!970 = !DILocation(line: 472, column: 15, scope: !968)
!971 = !DILocation(line: 472, column: 13, scope: !924)
!972 = !DILocation(line: 473, column: 13, scope: !968)
!973 = !DILocation(line: 480, column: 11, scope: !924)
!974 = !DILocation(line: 481, column: 15, scope: !924)
!975 = !DILocation(line: 481, column: 12, scope: !924)
!976 = !DILocation(line: 482, column: 15, scope: !924)
!977 = !DILocation(line: 482, column: 20, scope: !924)
!978 = !DILocation(line: 482, column: 18, scope: !924)
!979 = !DILocation(line: 482, column: 12, scope: !924)
!980 = !DILocation(line: 483, column: 15, scope: !924)
!981 = !DILocation(line: 483, column: 20, scope: !924)
!982 = !DILocation(line: 483, column: 18, scope: !924)
!983 = !DILocation(line: 483, column: 12, scope: !924)
!984 = !DILocation(line: 484, column: 15, scope: !924)
!985 = !DILocation(line: 484, column: 12, scope: !924)
!986 = distinct !{!986, !922, !987}
!987 = !DILocation(line: 485, column: 5, scope: !878)
!988 = !DILocation(line: 487, column: 7, scope: !878)
!989 = !DILocation(line: 488, column: 11, scope: !878)
!990 = !DILocation(line: 488, column: 8, scope: !878)
!991 = !DILocation(line: 488, column: 23, scope: !878)
!992 = !DILocation(line: 488, column: 20, scope: !878)
!993 = !DILocation(line: 488, column: 35, scope: !878)
!994 = !DILocation(line: 488, column: 32, scope: !878)
!995 = !DILocation(line: 488, column: 47, scope: !878)
!996 = !DILocation(line: 488, column: 44, scope: !878)
!997 = !DILocation(line: 490, column: 5, scope: !878)
!998 = !DILocation(line: 491, column: 5, scope: !878)
!999 = !DILocation(line: 492, column: 5, scope: !878)
!1000 = !DILocation(line: 493, column: 5, scope: !878)
!1001 = !DILocation(line: 494, column: 1, scope: !878)
!1002 = distinct !DISubprogram(name: "Camellia_DecryptBlock", scope: !3, file: !3, line: 496, type: !662, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1003 = !DILocation(line: 450, column: 39, scope: !878, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 499, column: 5, scope: !1002)
!1005 = !DILocation(line: 450, column: 61, scope: !878, inlinedAt: !1004)
!1006 = !DILocation(line: 451, column: 56, scope: !878, inlinedAt: !1004)
!1007 = !DILocation(line: 452, column: 38, scope: !878, inlinedAt: !1004)
!1008 = !DILocation(line: 454, column: 9, scope: !878, inlinedAt: !1004)
!1009 = !DILocation(line: 454, column: 13, scope: !878, inlinedAt: !1004)
!1010 = !DILocation(line: 454, column: 17, scope: !878, inlinedAt: !1004)
!1011 = !DILocation(line: 454, column: 21, scope: !878, inlinedAt: !1004)
!1012 = !DILocation(line: 455, column: 16, scope: !878, inlinedAt: !1004)
!1013 = !DILocation(line: 455, column: 84, scope: !878, inlinedAt: !1004)
!1014 = !DILocation(line: 465, column: 9, scope: !927, inlinedAt: !1004)
!1015 = !DILocation(line: 466, column: 9, scope: !934, inlinedAt: !1004)
!1016 = !DILocation(line: 467, column: 9, scope: !941, inlinedAt: !1004)
!1017 = !DILocation(line: 468, column: 9, scope: !948, inlinedAt: !1004)
!1018 = !DILocation(line: 469, column: 9, scope: !955, inlinedAt: !1004)
!1019 = !DILocation(line: 470, column: 9, scope: !962, inlinedAt: !1004)
!1020 = !DILocalVariable(name: "keyBitLength", arg: 1, scope: !1002, file: !3, line: 496, type: !29)
!1021 = !DILocation(line: 496, column: 32, scope: !1002)
!1022 = !DILocalVariable(name: "plaintext", arg: 2, scope: !1002, file: !3, line: 496, type: !30)
!1023 = !DILocation(line: 496, column: 55, scope: !1002)
!1024 = !DILocalVariable(name: "keyTable", arg: 3, scope: !1002, file: !3, line: 497, type: !664)
!1025 = !DILocation(line: 497, column: 49, scope: !1002)
!1026 = !DILocalVariable(name: "ciphertext", arg: 4, scope: !1002, file: !3, line: 497, type: !666)
!1027 = !DILocation(line: 497, column: 62, scope: !1002)
!1028 = !DILocation(line: 499, column: 34, scope: !1002)
!1029 = !DILocation(line: 499, column: 47, scope: !1002)
!1030 = !DILocation(line: 500, column: 34, scope: !1002)
!1031 = !DILocation(line: 500, column: 45, scope: !1002)
!1032 = !DILocation(line: 500, column: 55, scope: !1002)
!1033 = !DILocation(line: 455, column: 5, scope: !878, inlinedAt: !1004)
!1034 = !DILocation(line: 455, column: 54, scope: !878, inlinedAt: !1004)
!1035 = !DILocation(line: 455, column: 65, scope: !878, inlinedAt: !1004)
!1036 = !DILocation(line: 455, column: 77, scope: !878, inlinedAt: !1004)
!1037 = !DILocation(line: 455, column: 63, scope: !878, inlinedAt: !1004)
!1038 = !DILocation(line: 455, column: 91, scope: !878, inlinedAt: !1004)
!1039 = !DILocation(line: 455, column: 100, scope: !878, inlinedAt: !1004)
!1040 = !DILocation(line: 457, column: 10, scope: !878, inlinedAt: !1004)
!1041 = !DILocation(line: 457, column: 31, scope: !878, inlinedAt: !1004)
!1042 = !DILocation(line: 457, column: 29, scope: !878, inlinedAt: !1004)
!1043 = !DILocation(line: 457, column: 8, scope: !878, inlinedAt: !1004)
!1044 = !DILocation(line: 458, column: 10, scope: !878, inlinedAt: !1004)
!1045 = !DILocation(line: 458, column: 35, scope: !878, inlinedAt: !1004)
!1046 = !DILocation(line: 458, column: 33, scope: !878, inlinedAt: !1004)
!1047 = !DILocation(line: 458, column: 8, scope: !878, inlinedAt: !1004)
!1048 = !DILocation(line: 459, column: 10, scope: !878, inlinedAt: !1004)
!1049 = !DILocation(line: 459, column: 35, scope: !878, inlinedAt: !1004)
!1050 = !DILocation(line: 459, column: 33, scope: !878, inlinedAt: !1004)
!1051 = !DILocation(line: 459, column: 8, scope: !878, inlinedAt: !1004)
!1052 = !DILocation(line: 460, column: 10, scope: !878, inlinedAt: !1004)
!1053 = !DILocation(line: 460, column: 36, scope: !878, inlinedAt: !1004)
!1054 = !DILocation(line: 460, column: 34, scope: !878, inlinedAt: !1004)
!1055 = !DILocation(line: 460, column: 8, scope: !878, inlinedAt: !1004)
!1056 = !DILocation(line: 462, column: 5, scope: !878, inlinedAt: !1004)
!1057 = !DILocation(line: 464, column: 11, scope: !924, inlinedAt: !1004)
!1058 = !DILocation(line: 472, column: 13, scope: !968, inlinedAt: !1004)
!1059 = !DILocation(line: 472, column: 18, scope: !968, inlinedAt: !1004)
!1060 = !DILocation(line: 472, column: 15, scope: !968, inlinedAt: !1004)
!1061 = !DILocation(line: 472, column: 13, scope: !924, inlinedAt: !1004)
!1062 = !DILocation(line: 480, column: 11, scope: !924, inlinedAt: !1004)
!1063 = !DILocation(line: 481, column: 15, scope: !924, inlinedAt: !1004)
!1064 = !DILocation(line: 481, column: 12, scope: !924, inlinedAt: !1004)
!1065 = !DILocation(line: 482, column: 15, scope: !924, inlinedAt: !1004)
!1066 = !DILocation(line: 482, column: 20, scope: !924, inlinedAt: !1004)
!1067 = !DILocation(line: 482, column: 18, scope: !924, inlinedAt: !1004)
!1068 = !DILocation(line: 482, column: 12, scope: !924, inlinedAt: !1004)
!1069 = !DILocation(line: 483, column: 15, scope: !924, inlinedAt: !1004)
!1070 = !DILocation(line: 483, column: 20, scope: !924, inlinedAt: !1004)
!1071 = !DILocation(line: 483, column: 18, scope: !924, inlinedAt: !1004)
!1072 = !DILocation(line: 483, column: 12, scope: !924, inlinedAt: !1004)
!1073 = !DILocation(line: 484, column: 15, scope: !924, inlinedAt: !1004)
!1074 = !DILocation(line: 484, column: 12, scope: !924, inlinedAt: !1004)
!1075 = distinct !{!1075, !1056, !1076}
!1076 = !DILocation(line: 485, column: 5, scope: !878, inlinedAt: !1004)
!1077 = !DILocation(line: 487, column: 7, scope: !878, inlinedAt: !1004)
!1078 = !DILocation(line: 488, column: 11, scope: !878, inlinedAt: !1004)
!1079 = !DILocation(line: 488, column: 8, scope: !878, inlinedAt: !1004)
!1080 = !DILocation(line: 488, column: 23, scope: !878, inlinedAt: !1004)
!1081 = !DILocation(line: 488, column: 20, scope: !878, inlinedAt: !1004)
!1082 = !DILocation(line: 488, column: 35, scope: !878, inlinedAt: !1004)
!1083 = !DILocation(line: 488, column: 32, scope: !878, inlinedAt: !1004)
!1084 = !DILocation(line: 488, column: 47, scope: !878, inlinedAt: !1004)
!1085 = !DILocation(line: 488, column: 44, scope: !878, inlinedAt: !1004)
!1086 = !DILocation(line: 490, column: 5, scope: !878, inlinedAt: !1004)
!1087 = !DILocation(line: 491, column: 5, scope: !878, inlinedAt: !1004)
!1088 = !DILocation(line: 492, column: 5, scope: !878, inlinedAt: !1004)
!1089 = !DILocation(line: 493, column: 5, scope: !878, inlinedAt: !1004)
!1090 = !DILocation(line: 501, column: 1, scope: !1002)
!1091 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 503, type: !1092, scopeLine: 504, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!29}
!1094 = !DILocation(line: 397, column: 39, scope: !661, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 446, column: 5, scope: !790, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 533, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 530, column: 18)
!1098 = !DILocation(line: 397, column: 61, scope: !661, inlinedAt: !1095)
!1099 = !DILocation(line: 398, column: 56, scope: !661, inlinedAt: !1095)
!1100 = !DILocation(line: 399, column: 38, scope: !661, inlinedAt: !1095)
!1101 = !DILocation(line: 401, column: 18, scope: !661, inlinedAt: !1095)
!1102 = !DILocation(line: 401, column: 22, scope: !661, inlinedAt: !1095)
!1103 = !DILocation(line: 401, column: 26, scope: !661, inlinedAt: !1095)
!1104 = !DILocation(line: 401, column: 30, scope: !661, inlinedAt: !1095)
!1105 = !DILocation(line: 402, column: 16, scope: !661, inlinedAt: !1095)
!1106 = !DILocation(line: 402, column: 65, scope: !661, inlinedAt: !1095)
!1107 = !DILocation(line: 412, column: 9, scope: !715, inlinedAt: !1095)
!1108 = !DILocation(line: 413, column: 9, scope: !722, inlinedAt: !1095)
!1109 = !DILocation(line: 414, column: 9, scope: !729, inlinedAt: !1095)
!1110 = !DILocation(line: 415, column: 9, scope: !736, inlinedAt: !1095)
!1111 = !DILocation(line: 416, column: 9, scope: !743, inlinedAt: !1095)
!1112 = !DILocation(line: 417, column: 9, scope: !750, inlinedAt: !1095)
!1113 = !DILocation(line: 443, column: 32, scope: !790, inlinedAt: !1096)
!1114 = !DILocation(line: 443, column: 55, scope: !790, inlinedAt: !1096)
!1115 = !DILocation(line: 444, column: 49, scope: !790, inlinedAt: !1096)
!1116 = !DILocation(line: 444, column: 96, scope: !790, inlinedAt: !1096)
!1117 = !DILocation(line: 280, column: 26, scope: !26, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 510, column: 5, scope: !1091)
!1119 = !DILocation(line: 280, column: 50, scope: !26, inlinedAt: !1118)
!1120 = !DILocation(line: 280, column: 107, scope: !26, inlinedAt: !1118)
!1121 = !DILocation(line: 282, column: 18, scope: !26, inlinedAt: !1118)
!1122 = !DILocation(line: 282, column: 22, scope: !26, inlinedAt: !1118)
!1123 = !DILocation(line: 282, column: 26, scope: !26, inlinedAt: !1118)
!1124 = !DILocation(line: 282, column: 30, scope: !26, inlinedAt: !1118)
!1125 = !DILocation(line: 303, column: 5, scope: !112, inlinedAt: !1118)
!1126 = !DILocation(line: 304, column: 5, scope: !119, inlinedAt: !1118)
!1127 = !DILocation(line: 307, column: 5, scope: !134, inlinedAt: !1118)
!1128 = !DILocation(line: 308, column: 5, scope: !141, inlinedAt: !1118)
!1129 = !DILocation(line: 313, column: 9, scope: !165, inlinedAt: !1118)
!1130 = !DILocation(line: 315, column: 9, scope: !181, inlinedAt: !1118)
!1131 = !DILocation(line: 317, column: 9, scope: !197, inlinedAt: !1118)
!1132 = !DILocation(line: 319, column: 9, scope: !207, inlinedAt: !1118)
!1133 = !DILocation(line: 321, column: 9, scope: !223, inlinedAt: !1118)
!1134 = !DILocation(line: 323, column: 9, scope: !239, inlinedAt: !1118)
!1135 = !DILocation(line: 327, column: 9, scope: !263, inlinedAt: !1118)
!1136 = !DILocation(line: 329, column: 9, scope: !279, inlinedAt: !1118)
!1137 = !DILocation(line: 331, column: 9, scope: !295, inlinedAt: !1118)
!1138 = !DILocation(line: 333, column: 9, scope: !305, inlinedAt: !1118)
!1139 = !DILocation(line: 335, column: 9, scope: !321, inlinedAt: !1118)
!1140 = !DILocation(line: 337, column: 9, scope: !337, inlinedAt: !1118)
!1141 = !DILocation(line: 344, column: 9, scope: !375, inlinedAt: !1118)
!1142 = !DILocation(line: 345, column: 9, scope: !382, inlinedAt: !1118)
!1143 = !DILocation(line: 348, column: 9, scope: !401, inlinedAt: !1118)
!1144 = !DILocation(line: 350, column: 9, scope: !417, inlinedAt: !1118)
!1145 = !DILocation(line: 352, column: 9, scope: !433, inlinedAt: !1118)
!1146 = !DILocation(line: 356, column: 9, scope: !457, inlinedAt: !1118)
!1147 = !DILocation(line: 358, column: 9, scope: !473, inlinedAt: !1118)
!1148 = !DILocation(line: 360, column: 9, scope: !489, inlinedAt: !1118)
!1149 = !DILocation(line: 362, column: 9, scope: !505, inlinedAt: !1118)
!1150 = !DILocation(line: 366, column: 9, scope: !529, inlinedAt: !1118)
!1151 = !DILocation(line: 368, column: 9, scope: !545, inlinedAt: !1118)
!1152 = !DILocation(line: 372, column: 9, scope: !573, inlinedAt: !1118)
!1153 = !DILocation(line: 376, column: 9, scope: !597, inlinedAt: !1118)
!1154 = !DILocation(line: 378, column: 9, scope: !613, inlinedAt: !1118)
!1155 = !DILocation(line: 380, column: 9, scope: !629, inlinedAt: !1118)
!1156 = !DILocation(line: 382, column: 9, scope: !645, inlinedAt: !1118)
!1157 = !DILocalVariable(name: "Key", scope: !1091, file: !3, line: 505, type: !1158)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 136, elements: !1159)
!1159 = !{!1160}
!1160 = !DISubrange(count: 17)
!1161 = !DILocation(line: 505, column: 14, scope: !1091)
!1162 = !DILocalVariable(name: "rawKey", scope: !1091, file: !3, line: 506, type: !30)
!1163 = !DILocation(line: 506, column: 15, scope: !1091)
!1164 = !DILocation(line: 506, column: 24, scope: !1091)
!1165 = !DILocalVariable(name: "k", scope: !1091, file: !3, line: 507, type: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "KEY_TABLE_TYPE", file: !1167, line: 35, baseType: !1168)
!1167 = !DIFile(filename: "/usr/local/include/openssl/camellia.h", directory: "")
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2176, elements: !1169)
!1169 = !{!1170}
!1170 = !DISubrange(count: 68)
!1171 = !DILocation(line: 507, column: 20, scope: !1091)
!1172 = !DILocalVariable(name: "ciphertext", scope: !1091, file: !3, line: 509, type: !9)
!1173 = !DILocation(line: 509, column: 8, scope: !1091)
!1174 = !DILocation(line: 510, column: 27, scope: !1091)
!1175 = !DILocation(line: 510, column: 35, scope: !1091)
!1176 = !DILocation(line: 284, column: 17, scope: !26, inlinedAt: !1118)
!1177 = !DILocation(line: 284, column: 15, scope: !26, inlinedAt: !1118)
!1178 = !DILocation(line: 284, column: 5, scope: !26, inlinedAt: !1118)
!1179 = !DILocation(line: 284, column: 10, scope: !26, inlinedAt: !1118)
!1180 = !DILocation(line: 285, column: 17, scope: !26, inlinedAt: !1118)
!1181 = !DILocation(line: 285, column: 15, scope: !26, inlinedAt: !1118)
!1182 = !DILocation(line: 285, column: 5, scope: !26, inlinedAt: !1118)
!1183 = !DILocation(line: 285, column: 10, scope: !26, inlinedAt: !1118)
!1184 = !DILocation(line: 286, column: 17, scope: !26, inlinedAt: !1118)
!1185 = !DILocation(line: 286, column: 15, scope: !26, inlinedAt: !1118)
!1186 = !DILocation(line: 286, column: 5, scope: !26, inlinedAt: !1118)
!1187 = !DILocation(line: 286, column: 10, scope: !26, inlinedAt: !1118)
!1188 = !DILocation(line: 287, column: 17, scope: !26, inlinedAt: !1118)
!1189 = !DILocation(line: 287, column: 15, scope: !26, inlinedAt: !1118)
!1190 = !DILocation(line: 287, column: 5, scope: !26, inlinedAt: !1118)
!1191 = !DILocation(line: 287, column: 10, scope: !26, inlinedAt: !1118)
!1192 = !DILocation(line: 289, column: 9, scope: !64, inlinedAt: !1118)
!1193 = !DILocation(line: 289, column: 22, scope: !64, inlinedAt: !1118)
!1194 = !DILocation(line: 289, column: 9, scope: !26, inlinedAt: !1118)
!1195 = !DILocation(line: 290, column: 21, scope: !68, inlinedAt: !1118)
!1196 = !DILocation(line: 290, column: 19, scope: !68, inlinedAt: !1118)
!1197 = !DILocation(line: 290, column: 9, scope: !68, inlinedAt: !1118)
!1198 = !DILocation(line: 290, column: 14, scope: !68, inlinedAt: !1118)
!1199 = !DILocation(line: 291, column: 21, scope: !68, inlinedAt: !1118)
!1200 = !DILocation(line: 291, column: 19, scope: !68, inlinedAt: !1118)
!1201 = !DILocation(line: 291, column: 9, scope: !68, inlinedAt: !1118)
!1202 = !DILocation(line: 291, column: 14, scope: !68, inlinedAt: !1118)
!1203 = !DILocation(line: 292, column: 13, scope: !77, inlinedAt: !1118)
!1204 = !DILocation(line: 292, column: 26, scope: !77, inlinedAt: !1118)
!1205 = !DILocation(line: 292, column: 13, scope: !68, inlinedAt: !1118)
!1206 = !DILocation(line: 293, column: 27, scope: !81, inlinedAt: !1118)
!1207 = !DILocation(line: 293, column: 26, scope: !81, inlinedAt: !1118)
!1208 = !DILocation(line: 293, column: 24, scope: !81, inlinedAt: !1118)
!1209 = !DILocation(line: 293, column: 13, scope: !81, inlinedAt: !1118)
!1210 = !DILocation(line: 293, column: 19, scope: !81, inlinedAt: !1118)
!1211 = !DILocation(line: 294, column: 27, scope: !81, inlinedAt: !1118)
!1212 = !DILocation(line: 294, column: 26, scope: !81, inlinedAt: !1118)
!1213 = !DILocation(line: 294, column: 24, scope: !81, inlinedAt: !1118)
!1214 = !DILocation(line: 294, column: 13, scope: !81, inlinedAt: !1118)
!1215 = !DILocation(line: 294, column: 19, scope: !81, inlinedAt: !1118)
!1216 = !DILocation(line: 295, column: 9, scope: !81, inlinedAt: !1118)
!1217 = !DILocation(line: 296, column: 26, scope: !93, inlinedAt: !1118)
!1218 = !DILocation(line: 296, column: 24, scope: !93, inlinedAt: !1118)
!1219 = !DILocation(line: 296, column: 13, scope: !93, inlinedAt: !1118)
!1220 = !DILocation(line: 296, column: 19, scope: !93, inlinedAt: !1118)
!1221 = !DILocation(line: 297, column: 26, scope: !93, inlinedAt: !1118)
!1222 = !DILocation(line: 297, column: 24, scope: !93, inlinedAt: !1118)
!1223 = !DILocation(line: 297, column: 13, scope: !93, inlinedAt: !1118)
!1224 = !DILocation(line: 297, column: 19, scope: !93, inlinedAt: !1118)
!1225 = !DILocation(line: 299, column: 15, scope: !68, inlinedAt: !1118)
!1226 = !DILocation(line: 299, column: 12, scope: !68, inlinedAt: !1118)
!1227 = !DILocation(line: 299, column: 27, scope: !68, inlinedAt: !1118)
!1228 = !DILocation(line: 299, column: 24, scope: !68, inlinedAt: !1118)
!1229 = !DILocation(line: 299, column: 39, scope: !68, inlinedAt: !1118)
!1230 = !DILocation(line: 299, column: 36, scope: !68, inlinedAt: !1118)
!1231 = !DILocation(line: 299, column: 51, scope: !68, inlinedAt: !1118)
!1232 = !DILocation(line: 299, column: 48, scope: !68, inlinedAt: !1118)
!1233 = !DILocation(line: 300, column: 5, scope: !68, inlinedAt: !1118)
!1234 = !DILocation(line: 306, column: 11, scope: !26, inlinedAt: !1118)
!1235 = !DILocation(line: 306, column: 8, scope: !26, inlinedAt: !1118)
!1236 = !DILocation(line: 306, column: 23, scope: !26, inlinedAt: !1118)
!1237 = !DILocation(line: 306, column: 20, scope: !26, inlinedAt: !1118)
!1238 = !DILocation(line: 306, column: 35, scope: !26, inlinedAt: !1118)
!1239 = !DILocation(line: 306, column: 32, scope: !26, inlinedAt: !1118)
!1240 = !DILocation(line: 306, column: 47, scope: !26, inlinedAt: !1118)
!1241 = !DILocation(line: 306, column: 44, scope: !26, inlinedAt: !1118)
!1242 = !DILocation(line: 311, column: 9, scope: !147, inlinedAt: !1118)
!1243 = !DILocation(line: 311, column: 22, scope: !147, inlinedAt: !1118)
!1244 = !DILocation(line: 311, column: 9, scope: !26, inlinedAt: !1118)
!1245 = !DILocation(line: 312, column: 16, scope: !151, inlinedAt: !1118)
!1246 = !DILocation(line: 312, column: 9, scope: !151, inlinedAt: !1118)
!1247 = !DILocation(line: 312, column: 14, scope: !151, inlinedAt: !1118)
!1248 = !DILocation(line: 312, column: 27, scope: !151, inlinedAt: !1118)
!1249 = !DILocation(line: 312, column: 20, scope: !151, inlinedAt: !1118)
!1250 = !DILocation(line: 312, column: 25, scope: !151, inlinedAt: !1118)
!1251 = !DILocation(line: 312, column: 38, scope: !151, inlinedAt: !1118)
!1252 = !DILocation(line: 312, column: 31, scope: !151, inlinedAt: !1118)
!1253 = !DILocation(line: 312, column: 36, scope: !151, inlinedAt: !1118)
!1254 = !DILocation(line: 312, column: 49, scope: !151, inlinedAt: !1118)
!1255 = !DILocation(line: 312, column: 42, scope: !151, inlinedAt: !1118)
!1256 = !DILocation(line: 312, column: 47, scope: !151, inlinedAt: !1118)
!1257 = !DILocation(line: 314, column: 17, scope: !151, inlinedAt: !1118)
!1258 = !DILocation(line: 314, column: 9, scope: !151, inlinedAt: !1118)
!1259 = !DILocation(line: 314, column: 15, scope: !151, inlinedAt: !1118)
!1260 = !DILocation(line: 314, column: 29, scope: !151, inlinedAt: !1118)
!1261 = !DILocation(line: 314, column: 21, scope: !151, inlinedAt: !1118)
!1262 = !DILocation(line: 314, column: 27, scope: !151, inlinedAt: !1118)
!1263 = !DILocation(line: 314, column: 41, scope: !151, inlinedAt: !1118)
!1264 = !DILocation(line: 314, column: 33, scope: !151, inlinedAt: !1118)
!1265 = !DILocation(line: 314, column: 39, scope: !151, inlinedAt: !1118)
!1266 = !DILocation(line: 314, column: 53, scope: !151, inlinedAt: !1118)
!1267 = !DILocation(line: 314, column: 45, scope: !151, inlinedAt: !1118)
!1268 = !DILocation(line: 314, column: 51, scope: !151, inlinedAt: !1118)
!1269 = !DILocation(line: 316, column: 17, scope: !151, inlinedAt: !1118)
!1270 = !DILocation(line: 316, column: 9, scope: !151, inlinedAt: !1118)
!1271 = !DILocation(line: 316, column: 15, scope: !151, inlinedAt: !1118)
!1272 = !DILocation(line: 316, column: 29, scope: !151, inlinedAt: !1118)
!1273 = !DILocation(line: 316, column: 21, scope: !151, inlinedAt: !1118)
!1274 = !DILocation(line: 316, column: 27, scope: !151, inlinedAt: !1118)
!1275 = !DILocation(line: 316, column: 41, scope: !151, inlinedAt: !1118)
!1276 = !DILocation(line: 316, column: 33, scope: !151, inlinedAt: !1118)
!1277 = !DILocation(line: 316, column: 39, scope: !151, inlinedAt: !1118)
!1278 = !DILocation(line: 316, column: 53, scope: !151, inlinedAt: !1118)
!1279 = !DILocation(line: 316, column: 45, scope: !151, inlinedAt: !1118)
!1280 = !DILocation(line: 316, column: 51, scope: !151, inlinedAt: !1118)
!1281 = !DILocation(line: 318, column: 17, scope: !151, inlinedAt: !1118)
!1282 = !DILocation(line: 318, column: 9, scope: !151, inlinedAt: !1118)
!1283 = !DILocation(line: 318, column: 15, scope: !151, inlinedAt: !1118)
!1284 = !DILocation(line: 318, column: 29, scope: !151, inlinedAt: !1118)
!1285 = !DILocation(line: 318, column: 21, scope: !151, inlinedAt: !1118)
!1286 = !DILocation(line: 318, column: 27, scope: !151, inlinedAt: !1118)
!1287 = !DILocation(line: 320, column: 17, scope: !151, inlinedAt: !1118)
!1288 = !DILocation(line: 320, column: 9, scope: !151, inlinedAt: !1118)
!1289 = !DILocation(line: 320, column: 15, scope: !151, inlinedAt: !1118)
!1290 = !DILocation(line: 320, column: 29, scope: !151, inlinedAt: !1118)
!1291 = !DILocation(line: 320, column: 21, scope: !151, inlinedAt: !1118)
!1292 = !DILocation(line: 320, column: 27, scope: !151, inlinedAt: !1118)
!1293 = !DILocation(line: 320, column: 41, scope: !151, inlinedAt: !1118)
!1294 = !DILocation(line: 320, column: 33, scope: !151, inlinedAt: !1118)
!1295 = !DILocation(line: 320, column: 39, scope: !151, inlinedAt: !1118)
!1296 = !DILocation(line: 320, column: 53, scope: !151, inlinedAt: !1118)
!1297 = !DILocation(line: 320, column: 45, scope: !151, inlinedAt: !1118)
!1298 = !DILocation(line: 320, column: 51, scope: !151, inlinedAt: !1118)
!1299 = !DILocation(line: 322, column: 17, scope: !151, inlinedAt: !1118)
!1300 = !DILocation(line: 322, column: 9, scope: !151, inlinedAt: !1118)
!1301 = !DILocation(line: 322, column: 15, scope: !151, inlinedAt: !1118)
!1302 = !DILocation(line: 322, column: 29, scope: !151, inlinedAt: !1118)
!1303 = !DILocation(line: 322, column: 21, scope: !151, inlinedAt: !1118)
!1304 = !DILocation(line: 322, column: 27, scope: !151, inlinedAt: !1118)
!1305 = !DILocation(line: 322, column: 41, scope: !151, inlinedAt: !1118)
!1306 = !DILocation(line: 322, column: 33, scope: !151, inlinedAt: !1118)
!1307 = !DILocation(line: 322, column: 39, scope: !151, inlinedAt: !1118)
!1308 = !DILocation(line: 322, column: 53, scope: !151, inlinedAt: !1118)
!1309 = !DILocation(line: 322, column: 45, scope: !151, inlinedAt: !1118)
!1310 = !DILocation(line: 322, column: 51, scope: !151, inlinedAt: !1118)
!1311 = !DILocation(line: 324, column: 17, scope: !151, inlinedAt: !1118)
!1312 = !DILocation(line: 324, column: 9, scope: !151, inlinedAt: !1118)
!1313 = !DILocation(line: 324, column: 15, scope: !151, inlinedAt: !1118)
!1314 = !DILocation(line: 324, column: 29, scope: !151, inlinedAt: !1118)
!1315 = !DILocation(line: 324, column: 21, scope: !151, inlinedAt: !1118)
!1316 = !DILocation(line: 324, column: 27, scope: !151, inlinedAt: !1118)
!1317 = !DILocation(line: 324, column: 41, scope: !151, inlinedAt: !1118)
!1318 = !DILocation(line: 324, column: 33, scope: !151, inlinedAt: !1118)
!1319 = !DILocation(line: 324, column: 39, scope: !151, inlinedAt: !1118)
!1320 = !DILocation(line: 324, column: 53, scope: !151, inlinedAt: !1118)
!1321 = !DILocation(line: 324, column: 45, scope: !151, inlinedAt: !1118)
!1322 = !DILocation(line: 324, column: 51, scope: !151, inlinedAt: !1118)
!1323 = !DILocation(line: 326, column: 14, scope: !151, inlinedAt: !1118)
!1324 = !DILocation(line: 326, column: 12, scope: !151, inlinedAt: !1118)
!1325 = !DILocation(line: 326, column: 25, scope: !151, inlinedAt: !1118)
!1326 = !DILocation(line: 326, column: 23, scope: !151, inlinedAt: !1118)
!1327 = !DILocation(line: 326, column: 36, scope: !151, inlinedAt: !1118)
!1328 = !DILocation(line: 326, column: 34, scope: !151, inlinedAt: !1118)
!1329 = !DILocation(line: 326, column: 47, scope: !151, inlinedAt: !1118)
!1330 = !DILocation(line: 326, column: 45, scope: !151, inlinedAt: !1118)
!1331 = !DILocation(line: 328, column: 16, scope: !151, inlinedAt: !1118)
!1332 = !DILocation(line: 328, column: 9, scope: !151, inlinedAt: !1118)
!1333 = !DILocation(line: 328, column: 14, scope: !151, inlinedAt: !1118)
!1334 = !DILocation(line: 328, column: 27, scope: !151, inlinedAt: !1118)
!1335 = !DILocation(line: 328, column: 20, scope: !151, inlinedAt: !1118)
!1336 = !DILocation(line: 328, column: 25, scope: !151, inlinedAt: !1118)
!1337 = !DILocation(line: 328, column: 39, scope: !151, inlinedAt: !1118)
!1338 = !DILocation(line: 328, column: 31, scope: !151, inlinedAt: !1118)
!1339 = !DILocation(line: 328, column: 37, scope: !151, inlinedAt: !1118)
!1340 = !DILocation(line: 328, column: 51, scope: !151, inlinedAt: !1118)
!1341 = !DILocation(line: 328, column: 43, scope: !151, inlinedAt: !1118)
!1342 = !DILocation(line: 328, column: 49, scope: !151, inlinedAt: !1118)
!1343 = !DILocation(line: 330, column: 17, scope: !151, inlinedAt: !1118)
!1344 = !DILocation(line: 330, column: 9, scope: !151, inlinedAt: !1118)
!1345 = !DILocation(line: 330, column: 15, scope: !151, inlinedAt: !1118)
!1346 = !DILocation(line: 330, column: 29, scope: !151, inlinedAt: !1118)
!1347 = !DILocation(line: 330, column: 21, scope: !151, inlinedAt: !1118)
!1348 = !DILocation(line: 330, column: 27, scope: !151, inlinedAt: !1118)
!1349 = !DILocation(line: 330, column: 41, scope: !151, inlinedAt: !1118)
!1350 = !DILocation(line: 330, column: 33, scope: !151, inlinedAt: !1118)
!1351 = !DILocation(line: 330, column: 39, scope: !151, inlinedAt: !1118)
!1352 = !DILocation(line: 330, column: 53, scope: !151, inlinedAt: !1118)
!1353 = !DILocation(line: 330, column: 45, scope: !151, inlinedAt: !1118)
!1354 = !DILocation(line: 330, column: 51, scope: !151, inlinedAt: !1118)
!1355 = !DILocation(line: 332, column: 17, scope: !151, inlinedAt: !1118)
!1356 = !DILocation(line: 332, column: 9, scope: !151, inlinedAt: !1118)
!1357 = !DILocation(line: 332, column: 15, scope: !151, inlinedAt: !1118)
!1358 = !DILocation(line: 332, column: 29, scope: !151, inlinedAt: !1118)
!1359 = !DILocation(line: 332, column: 21, scope: !151, inlinedAt: !1118)
!1360 = !DILocation(line: 332, column: 27, scope: !151, inlinedAt: !1118)
!1361 = !DILocation(line: 334, column: 17, scope: !151, inlinedAt: !1118)
!1362 = !DILocation(line: 334, column: 9, scope: !151, inlinedAt: !1118)
!1363 = !DILocation(line: 334, column: 15, scope: !151, inlinedAt: !1118)
!1364 = !DILocation(line: 334, column: 29, scope: !151, inlinedAt: !1118)
!1365 = !DILocation(line: 334, column: 21, scope: !151, inlinedAt: !1118)
!1366 = !DILocation(line: 334, column: 27, scope: !151, inlinedAt: !1118)
!1367 = !DILocation(line: 334, column: 41, scope: !151, inlinedAt: !1118)
!1368 = !DILocation(line: 334, column: 33, scope: !151, inlinedAt: !1118)
!1369 = !DILocation(line: 334, column: 39, scope: !151, inlinedAt: !1118)
!1370 = !DILocation(line: 334, column: 53, scope: !151, inlinedAt: !1118)
!1371 = !DILocation(line: 334, column: 45, scope: !151, inlinedAt: !1118)
!1372 = !DILocation(line: 334, column: 51, scope: !151, inlinedAt: !1118)
!1373 = !DILocation(line: 336, column: 17, scope: !151, inlinedAt: !1118)
!1374 = !DILocation(line: 336, column: 9, scope: !151, inlinedAt: !1118)
!1375 = !DILocation(line: 336, column: 15, scope: !151, inlinedAt: !1118)
!1376 = !DILocation(line: 336, column: 29, scope: !151, inlinedAt: !1118)
!1377 = !DILocation(line: 336, column: 21, scope: !151, inlinedAt: !1118)
!1378 = !DILocation(line: 336, column: 27, scope: !151, inlinedAt: !1118)
!1379 = !DILocation(line: 336, column: 41, scope: !151, inlinedAt: !1118)
!1380 = !DILocation(line: 336, column: 33, scope: !151, inlinedAt: !1118)
!1381 = !DILocation(line: 336, column: 39, scope: !151, inlinedAt: !1118)
!1382 = !DILocation(line: 336, column: 53, scope: !151, inlinedAt: !1118)
!1383 = !DILocation(line: 336, column: 45, scope: !151, inlinedAt: !1118)
!1384 = !DILocation(line: 336, column: 51, scope: !151, inlinedAt: !1118)
!1385 = !DILocation(line: 338, column: 17, scope: !151, inlinedAt: !1118)
!1386 = !DILocation(line: 338, column: 9, scope: !151, inlinedAt: !1118)
!1387 = !DILocation(line: 338, column: 15, scope: !151, inlinedAt: !1118)
!1388 = !DILocation(line: 338, column: 29, scope: !151, inlinedAt: !1118)
!1389 = !DILocation(line: 338, column: 21, scope: !151, inlinedAt: !1118)
!1390 = !DILocation(line: 338, column: 27, scope: !151, inlinedAt: !1118)
!1391 = !DILocation(line: 338, column: 41, scope: !151, inlinedAt: !1118)
!1392 = !DILocation(line: 338, column: 33, scope: !151, inlinedAt: !1118)
!1393 = !DILocation(line: 338, column: 39, scope: !151, inlinedAt: !1118)
!1394 = !DILocation(line: 338, column: 53, scope: !151, inlinedAt: !1118)
!1395 = !DILocation(line: 338, column: 45, scope: !151, inlinedAt: !1118)
!1396 = !DILocation(line: 338, column: 51, scope: !151, inlinedAt: !1118)
!1397 = !DILocation(line: 340, column: 9, scope: !151, inlinedAt: !1118)
!1398 = !DILocation(line: 342, column: 17, scope: !353, inlinedAt: !1118)
!1399 = !DILocation(line: 342, column: 9, scope: !353, inlinedAt: !1118)
!1400 = !DILocation(line: 342, column: 15, scope: !353, inlinedAt: !1118)
!1401 = !DILocation(line: 342, column: 29, scope: !353, inlinedAt: !1118)
!1402 = !DILocation(line: 342, column: 21, scope: !353, inlinedAt: !1118)
!1403 = !DILocation(line: 342, column: 27, scope: !353, inlinedAt: !1118)
!1404 = !DILocation(line: 342, column: 41, scope: !353, inlinedAt: !1118)
!1405 = !DILocation(line: 342, column: 33, scope: !353, inlinedAt: !1118)
!1406 = !DILocation(line: 342, column: 39, scope: !353, inlinedAt: !1118)
!1407 = !DILocation(line: 342, column: 53, scope: !353, inlinedAt: !1118)
!1408 = !DILocation(line: 342, column: 45, scope: !353, inlinedAt: !1118)
!1409 = !DILocation(line: 342, column: 51, scope: !353, inlinedAt: !1118)
!1410 = !DILocation(line: 343, column: 15, scope: !353, inlinedAt: !1118)
!1411 = !DILocation(line: 343, column: 12, scope: !353, inlinedAt: !1118)
!1412 = !DILocation(line: 343, column: 27, scope: !353, inlinedAt: !1118)
!1413 = !DILocation(line: 343, column: 24, scope: !353, inlinedAt: !1118)
!1414 = !DILocation(line: 343, column: 39, scope: !353, inlinedAt: !1118)
!1415 = !DILocation(line: 343, column: 36, scope: !353, inlinedAt: !1118)
!1416 = !DILocation(line: 343, column: 52, scope: !353, inlinedAt: !1118)
!1417 = !DILocation(line: 343, column: 49, scope: !353, inlinedAt: !1118)
!1418 = !DILocation(line: 347, column: 16, scope: !353, inlinedAt: !1118)
!1419 = !DILocation(line: 347, column: 9, scope: !353, inlinedAt: !1118)
!1420 = !DILocation(line: 347, column: 14, scope: !353, inlinedAt: !1118)
!1421 = !DILocation(line: 347, column: 27, scope: !353, inlinedAt: !1118)
!1422 = !DILocation(line: 347, column: 20, scope: !353, inlinedAt: !1118)
!1423 = !DILocation(line: 347, column: 25, scope: !353, inlinedAt: !1118)
!1424 = !DILocation(line: 347, column: 38, scope: !353, inlinedAt: !1118)
!1425 = !DILocation(line: 347, column: 31, scope: !353, inlinedAt: !1118)
!1426 = !DILocation(line: 347, column: 36, scope: !353, inlinedAt: !1118)
!1427 = !DILocation(line: 347, column: 49, scope: !353, inlinedAt: !1118)
!1428 = !DILocation(line: 347, column: 42, scope: !353, inlinedAt: !1118)
!1429 = !DILocation(line: 347, column: 47, scope: !353, inlinedAt: !1118)
!1430 = !DILocation(line: 349, column: 17, scope: !353, inlinedAt: !1118)
!1431 = !DILocation(line: 349, column: 9, scope: !353, inlinedAt: !1118)
!1432 = !DILocation(line: 349, column: 15, scope: !353, inlinedAt: !1118)
!1433 = !DILocation(line: 349, column: 29, scope: !353, inlinedAt: !1118)
!1434 = !DILocation(line: 349, column: 21, scope: !353, inlinedAt: !1118)
!1435 = !DILocation(line: 349, column: 27, scope: !353, inlinedAt: !1118)
!1436 = !DILocation(line: 349, column: 41, scope: !353, inlinedAt: !1118)
!1437 = !DILocation(line: 349, column: 33, scope: !353, inlinedAt: !1118)
!1438 = !DILocation(line: 349, column: 39, scope: !353, inlinedAt: !1118)
!1439 = !DILocation(line: 349, column: 53, scope: !353, inlinedAt: !1118)
!1440 = !DILocation(line: 349, column: 45, scope: !353, inlinedAt: !1118)
!1441 = !DILocation(line: 349, column: 51, scope: !353, inlinedAt: !1118)
!1442 = !DILocation(line: 351, column: 17, scope: !353, inlinedAt: !1118)
!1443 = !DILocation(line: 351, column: 9, scope: !353, inlinedAt: !1118)
!1444 = !DILocation(line: 351, column: 15, scope: !353, inlinedAt: !1118)
!1445 = !DILocation(line: 351, column: 29, scope: !353, inlinedAt: !1118)
!1446 = !DILocation(line: 351, column: 21, scope: !353, inlinedAt: !1118)
!1447 = !DILocation(line: 351, column: 27, scope: !353, inlinedAt: !1118)
!1448 = !DILocation(line: 351, column: 41, scope: !353, inlinedAt: !1118)
!1449 = !DILocation(line: 351, column: 33, scope: !353, inlinedAt: !1118)
!1450 = !DILocation(line: 351, column: 39, scope: !353, inlinedAt: !1118)
!1451 = !DILocation(line: 351, column: 53, scope: !353, inlinedAt: !1118)
!1452 = !DILocation(line: 351, column: 45, scope: !353, inlinedAt: !1118)
!1453 = !DILocation(line: 351, column: 51, scope: !353, inlinedAt: !1118)
!1454 = !DILocation(line: 353, column: 17, scope: !353, inlinedAt: !1118)
!1455 = !DILocation(line: 353, column: 9, scope: !353, inlinedAt: !1118)
!1456 = !DILocation(line: 353, column: 15, scope: !353, inlinedAt: !1118)
!1457 = !DILocation(line: 353, column: 29, scope: !353, inlinedAt: !1118)
!1458 = !DILocation(line: 353, column: 21, scope: !353, inlinedAt: !1118)
!1459 = !DILocation(line: 353, column: 27, scope: !353, inlinedAt: !1118)
!1460 = !DILocation(line: 353, column: 41, scope: !353, inlinedAt: !1118)
!1461 = !DILocation(line: 353, column: 33, scope: !353, inlinedAt: !1118)
!1462 = !DILocation(line: 353, column: 39, scope: !353, inlinedAt: !1118)
!1463 = !DILocation(line: 353, column: 53, scope: !353, inlinedAt: !1118)
!1464 = !DILocation(line: 353, column: 45, scope: !353, inlinedAt: !1118)
!1465 = !DILocation(line: 353, column: 51, scope: !353, inlinedAt: !1118)
!1466 = !DILocation(line: 355, column: 14, scope: !353, inlinedAt: !1118)
!1467 = !DILocation(line: 355, column: 12, scope: !353, inlinedAt: !1118)
!1468 = !DILocation(line: 355, column: 25, scope: !353, inlinedAt: !1118)
!1469 = !DILocation(line: 355, column: 23, scope: !353, inlinedAt: !1118)
!1470 = !DILocation(line: 355, column: 36, scope: !353, inlinedAt: !1118)
!1471 = !DILocation(line: 355, column: 34, scope: !353, inlinedAt: !1118)
!1472 = !DILocation(line: 355, column: 48, scope: !353, inlinedAt: !1118)
!1473 = !DILocation(line: 355, column: 46, scope: !353, inlinedAt: !1118)
!1474 = !DILocation(line: 357, column: 16, scope: !353, inlinedAt: !1118)
!1475 = !DILocation(line: 357, column: 9, scope: !353, inlinedAt: !1118)
!1476 = !DILocation(line: 357, column: 14, scope: !353, inlinedAt: !1118)
!1477 = !DILocation(line: 357, column: 27, scope: !353, inlinedAt: !1118)
!1478 = !DILocation(line: 357, column: 20, scope: !353, inlinedAt: !1118)
!1479 = !DILocation(line: 357, column: 25, scope: !353, inlinedAt: !1118)
!1480 = !DILocation(line: 357, column: 39, scope: !353, inlinedAt: !1118)
!1481 = !DILocation(line: 357, column: 31, scope: !353, inlinedAt: !1118)
!1482 = !DILocation(line: 357, column: 37, scope: !353, inlinedAt: !1118)
!1483 = !DILocation(line: 357, column: 51, scope: !353, inlinedAt: !1118)
!1484 = !DILocation(line: 357, column: 43, scope: !353, inlinedAt: !1118)
!1485 = !DILocation(line: 357, column: 49, scope: !353, inlinedAt: !1118)
!1486 = !DILocation(line: 359, column: 17, scope: !353, inlinedAt: !1118)
!1487 = !DILocation(line: 359, column: 9, scope: !353, inlinedAt: !1118)
!1488 = !DILocation(line: 359, column: 15, scope: !353, inlinedAt: !1118)
!1489 = !DILocation(line: 359, column: 29, scope: !353, inlinedAt: !1118)
!1490 = !DILocation(line: 359, column: 21, scope: !353, inlinedAt: !1118)
!1491 = !DILocation(line: 359, column: 27, scope: !353, inlinedAt: !1118)
!1492 = !DILocation(line: 359, column: 41, scope: !353, inlinedAt: !1118)
!1493 = !DILocation(line: 359, column: 33, scope: !353, inlinedAt: !1118)
!1494 = !DILocation(line: 359, column: 39, scope: !353, inlinedAt: !1118)
!1495 = !DILocation(line: 359, column: 53, scope: !353, inlinedAt: !1118)
!1496 = !DILocation(line: 359, column: 45, scope: !353, inlinedAt: !1118)
!1497 = !DILocation(line: 359, column: 51, scope: !353, inlinedAt: !1118)
!1498 = !DILocation(line: 361, column: 17, scope: !353, inlinedAt: !1118)
!1499 = !DILocation(line: 361, column: 9, scope: !353, inlinedAt: !1118)
!1500 = !DILocation(line: 361, column: 15, scope: !353, inlinedAt: !1118)
!1501 = !DILocation(line: 361, column: 29, scope: !353, inlinedAt: !1118)
!1502 = !DILocation(line: 361, column: 21, scope: !353, inlinedAt: !1118)
!1503 = !DILocation(line: 361, column: 27, scope: !353, inlinedAt: !1118)
!1504 = !DILocation(line: 361, column: 41, scope: !353, inlinedAt: !1118)
!1505 = !DILocation(line: 361, column: 33, scope: !353, inlinedAt: !1118)
!1506 = !DILocation(line: 361, column: 39, scope: !353, inlinedAt: !1118)
!1507 = !DILocation(line: 361, column: 53, scope: !353, inlinedAt: !1118)
!1508 = !DILocation(line: 361, column: 45, scope: !353, inlinedAt: !1118)
!1509 = !DILocation(line: 361, column: 51, scope: !353, inlinedAt: !1118)
!1510 = !DILocation(line: 363, column: 17, scope: !353, inlinedAt: !1118)
!1511 = !DILocation(line: 363, column: 9, scope: !353, inlinedAt: !1118)
!1512 = !DILocation(line: 363, column: 15, scope: !353, inlinedAt: !1118)
!1513 = !DILocation(line: 363, column: 29, scope: !353, inlinedAt: !1118)
!1514 = !DILocation(line: 363, column: 21, scope: !353, inlinedAt: !1118)
!1515 = !DILocation(line: 363, column: 27, scope: !353, inlinedAt: !1118)
!1516 = !DILocation(line: 363, column: 41, scope: !353, inlinedAt: !1118)
!1517 = !DILocation(line: 363, column: 33, scope: !353, inlinedAt: !1118)
!1518 = !DILocation(line: 363, column: 39, scope: !353, inlinedAt: !1118)
!1519 = !DILocation(line: 363, column: 53, scope: !353, inlinedAt: !1118)
!1520 = !DILocation(line: 363, column: 45, scope: !353, inlinedAt: !1118)
!1521 = !DILocation(line: 363, column: 51, scope: !353, inlinedAt: !1118)
!1522 = !DILocation(line: 365, column: 14, scope: !353, inlinedAt: !1118)
!1523 = !DILocation(line: 365, column: 12, scope: !353, inlinedAt: !1118)
!1524 = !DILocation(line: 365, column: 26, scope: !353, inlinedAt: !1118)
!1525 = !DILocation(line: 365, column: 24, scope: !353, inlinedAt: !1118)
!1526 = !DILocation(line: 365, column: 38, scope: !353, inlinedAt: !1118)
!1527 = !DILocation(line: 365, column: 36, scope: !353, inlinedAt: !1118)
!1528 = !DILocation(line: 365, column: 50, scope: !353, inlinedAt: !1118)
!1529 = !DILocation(line: 365, column: 48, scope: !353, inlinedAt: !1118)
!1530 = !DILocation(line: 367, column: 17, scope: !353, inlinedAt: !1118)
!1531 = !DILocation(line: 367, column: 9, scope: !353, inlinedAt: !1118)
!1532 = !DILocation(line: 367, column: 15, scope: !353, inlinedAt: !1118)
!1533 = !DILocation(line: 367, column: 29, scope: !353, inlinedAt: !1118)
!1534 = !DILocation(line: 367, column: 21, scope: !353, inlinedAt: !1118)
!1535 = !DILocation(line: 367, column: 27, scope: !353, inlinedAt: !1118)
!1536 = !DILocation(line: 367, column: 41, scope: !353, inlinedAt: !1118)
!1537 = !DILocation(line: 367, column: 33, scope: !353, inlinedAt: !1118)
!1538 = !DILocation(line: 367, column: 39, scope: !353, inlinedAt: !1118)
!1539 = !DILocation(line: 367, column: 53, scope: !353, inlinedAt: !1118)
!1540 = !DILocation(line: 367, column: 45, scope: !353, inlinedAt: !1118)
!1541 = !DILocation(line: 367, column: 51, scope: !353, inlinedAt: !1118)
!1542 = !DILocation(line: 369, column: 17, scope: !353, inlinedAt: !1118)
!1543 = !DILocation(line: 369, column: 9, scope: !353, inlinedAt: !1118)
!1544 = !DILocation(line: 369, column: 15, scope: !353, inlinedAt: !1118)
!1545 = !DILocation(line: 369, column: 29, scope: !353, inlinedAt: !1118)
!1546 = !DILocation(line: 369, column: 21, scope: !353, inlinedAt: !1118)
!1547 = !DILocation(line: 369, column: 27, scope: !353, inlinedAt: !1118)
!1548 = !DILocation(line: 369, column: 41, scope: !353, inlinedAt: !1118)
!1549 = !DILocation(line: 369, column: 33, scope: !353, inlinedAt: !1118)
!1550 = !DILocation(line: 369, column: 39, scope: !353, inlinedAt: !1118)
!1551 = !DILocation(line: 369, column: 53, scope: !353, inlinedAt: !1118)
!1552 = !DILocation(line: 369, column: 45, scope: !353, inlinedAt: !1118)
!1553 = !DILocation(line: 369, column: 51, scope: !353, inlinedAt: !1118)
!1554 = !DILocation(line: 371, column: 17, scope: !353, inlinedAt: !1118)
!1555 = !DILocation(line: 371, column: 9, scope: !353, inlinedAt: !1118)
!1556 = !DILocation(line: 371, column: 15, scope: !353, inlinedAt: !1118)
!1557 = !DILocation(line: 371, column: 29, scope: !353, inlinedAt: !1118)
!1558 = !DILocation(line: 371, column: 21, scope: !353, inlinedAt: !1118)
!1559 = !DILocation(line: 371, column: 27, scope: !353, inlinedAt: !1118)
!1560 = !DILocation(line: 371, column: 41, scope: !353, inlinedAt: !1118)
!1561 = !DILocation(line: 371, column: 33, scope: !353, inlinedAt: !1118)
!1562 = !DILocation(line: 371, column: 39, scope: !353, inlinedAt: !1118)
!1563 = !DILocation(line: 371, column: 53, scope: !353, inlinedAt: !1118)
!1564 = !DILocation(line: 371, column: 45, scope: !353, inlinedAt: !1118)
!1565 = !DILocation(line: 371, column: 51, scope: !353, inlinedAt: !1118)
!1566 = !DILocation(line: 373, column: 17, scope: !353, inlinedAt: !1118)
!1567 = !DILocation(line: 373, column: 9, scope: !353, inlinedAt: !1118)
!1568 = !DILocation(line: 373, column: 15, scope: !353, inlinedAt: !1118)
!1569 = !DILocation(line: 373, column: 29, scope: !353, inlinedAt: !1118)
!1570 = !DILocation(line: 373, column: 21, scope: !353, inlinedAt: !1118)
!1571 = !DILocation(line: 373, column: 27, scope: !353, inlinedAt: !1118)
!1572 = !DILocation(line: 373, column: 41, scope: !353, inlinedAt: !1118)
!1573 = !DILocation(line: 373, column: 33, scope: !353, inlinedAt: !1118)
!1574 = !DILocation(line: 373, column: 39, scope: !353, inlinedAt: !1118)
!1575 = !DILocation(line: 373, column: 53, scope: !353, inlinedAt: !1118)
!1576 = !DILocation(line: 373, column: 45, scope: !353, inlinedAt: !1118)
!1577 = !DILocation(line: 373, column: 51, scope: !353, inlinedAt: !1118)
!1578 = !DILocation(line: 375, column: 14, scope: !353, inlinedAt: !1118)
!1579 = !DILocation(line: 375, column: 12, scope: !353, inlinedAt: !1118)
!1580 = !DILocation(line: 375, column: 25, scope: !353, inlinedAt: !1118)
!1581 = !DILocation(line: 375, column: 23, scope: !353, inlinedAt: !1118)
!1582 = !DILocation(line: 375, column: 36, scope: !353, inlinedAt: !1118)
!1583 = !DILocation(line: 375, column: 34, scope: !353, inlinedAt: !1118)
!1584 = !DILocation(line: 375, column: 47, scope: !353, inlinedAt: !1118)
!1585 = !DILocation(line: 375, column: 45, scope: !353, inlinedAt: !1118)
!1586 = !DILocation(line: 377, column: 17, scope: !353, inlinedAt: !1118)
!1587 = !DILocation(line: 377, column: 9, scope: !353, inlinedAt: !1118)
!1588 = !DILocation(line: 377, column: 15, scope: !353, inlinedAt: !1118)
!1589 = !DILocation(line: 377, column: 29, scope: !353, inlinedAt: !1118)
!1590 = !DILocation(line: 377, column: 21, scope: !353, inlinedAt: !1118)
!1591 = !DILocation(line: 377, column: 27, scope: !353, inlinedAt: !1118)
!1592 = !DILocation(line: 377, column: 41, scope: !353, inlinedAt: !1118)
!1593 = !DILocation(line: 377, column: 33, scope: !353, inlinedAt: !1118)
!1594 = !DILocation(line: 377, column: 39, scope: !353, inlinedAt: !1118)
!1595 = !DILocation(line: 377, column: 53, scope: !353, inlinedAt: !1118)
!1596 = !DILocation(line: 377, column: 45, scope: !353, inlinedAt: !1118)
!1597 = !DILocation(line: 377, column: 51, scope: !353, inlinedAt: !1118)
!1598 = !DILocation(line: 379, column: 17, scope: !353, inlinedAt: !1118)
!1599 = !DILocation(line: 379, column: 9, scope: !353, inlinedAt: !1118)
!1600 = !DILocation(line: 379, column: 15, scope: !353, inlinedAt: !1118)
!1601 = !DILocation(line: 379, column: 29, scope: !353, inlinedAt: !1118)
!1602 = !DILocation(line: 379, column: 21, scope: !353, inlinedAt: !1118)
!1603 = !DILocation(line: 379, column: 27, scope: !353, inlinedAt: !1118)
!1604 = !DILocation(line: 379, column: 41, scope: !353, inlinedAt: !1118)
!1605 = !DILocation(line: 379, column: 33, scope: !353, inlinedAt: !1118)
!1606 = !DILocation(line: 379, column: 39, scope: !353, inlinedAt: !1118)
!1607 = !DILocation(line: 379, column: 53, scope: !353, inlinedAt: !1118)
!1608 = !DILocation(line: 379, column: 45, scope: !353, inlinedAt: !1118)
!1609 = !DILocation(line: 379, column: 51, scope: !353, inlinedAt: !1118)
!1610 = !DILocation(line: 381, column: 17, scope: !353, inlinedAt: !1118)
!1611 = !DILocation(line: 381, column: 9, scope: !353, inlinedAt: !1118)
!1612 = !DILocation(line: 381, column: 15, scope: !353, inlinedAt: !1118)
!1613 = !DILocation(line: 381, column: 29, scope: !353, inlinedAt: !1118)
!1614 = !DILocation(line: 381, column: 21, scope: !353, inlinedAt: !1118)
!1615 = !DILocation(line: 381, column: 27, scope: !353, inlinedAt: !1118)
!1616 = !DILocation(line: 381, column: 41, scope: !353, inlinedAt: !1118)
!1617 = !DILocation(line: 381, column: 33, scope: !353, inlinedAt: !1118)
!1618 = !DILocation(line: 381, column: 39, scope: !353, inlinedAt: !1118)
!1619 = !DILocation(line: 381, column: 53, scope: !353, inlinedAt: !1118)
!1620 = !DILocation(line: 381, column: 45, scope: !353, inlinedAt: !1118)
!1621 = !DILocation(line: 381, column: 51, scope: !353, inlinedAt: !1118)
!1622 = !DILocation(line: 383, column: 17, scope: !353, inlinedAt: !1118)
!1623 = !DILocation(line: 383, column: 9, scope: !353, inlinedAt: !1118)
!1624 = !DILocation(line: 383, column: 15, scope: !353, inlinedAt: !1118)
!1625 = !DILocation(line: 383, column: 29, scope: !353, inlinedAt: !1118)
!1626 = !DILocation(line: 383, column: 21, scope: !353, inlinedAt: !1118)
!1627 = !DILocation(line: 383, column: 27, scope: !353, inlinedAt: !1118)
!1628 = !DILocation(line: 383, column: 41, scope: !353, inlinedAt: !1118)
!1629 = !DILocation(line: 383, column: 33, scope: !353, inlinedAt: !1118)
!1630 = !DILocation(line: 383, column: 39, scope: !353, inlinedAt: !1118)
!1631 = !DILocation(line: 383, column: 53, scope: !353, inlinedAt: !1118)
!1632 = !DILocation(line: 383, column: 45, scope: !353, inlinedAt: !1118)
!1633 = !DILocation(line: 383, column: 51, scope: !353, inlinedAt: !1118)
!1634 = !DILocation(line: 385, column: 9, scope: !353, inlinedAt: !1118)
!1635 = !DILocation(line: 395, column: 1, scope: !26, inlinedAt: !1118)
!1636 = !DILocalVariable(name: "charset", scope: !1091, file: !3, line: 512, type: !1637)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1638, size: 752, elements: !1640)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1639)
!1639 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1640 = !{!1641}
!1641 = !DISubrange(count: 94)
!1642 = !DILocation(line: 512, column: 16, scope: !1091)
!1643 = !DILocalVariable(name: "length", scope: !1091, file: !3, line: 513, type: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1645, line: 46, baseType: !1646)
!1645 = !DIFile(filename: "Tools/LLVM/llvm-10.0.0/build/lib/clang/10.0.0/include/stddef.h", directory: "/home/phil")
!1646 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1647 = !DILocation(line: 513, column: 12, scope: !1091)
!1648 = !DILocalVariable(name: "size", scope: !1091, file: !3, line: 514, type: !29)
!1649 = !DILocation(line: 514, column: 9, scope: !1091)
!1650 = !DILocalVariable(name: "round", scope: !1091, file: !3, line: 515, type: !1644)
!1651 = !DILocation(line: 515, column: 12, scope: !1091)
!1652 = !DILocalVariable(name: "i", scope: !1091, file: !3, line: 516, type: !29)
!1653 = !DILocation(line: 516, column: 9, scope: !1091)
!1654 = !DILocalVariable(name: "buff", scope: !1091, file: !3, line: 518, type: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1656 = !DILocation(line: 518, column: 11, scope: !1091)
!1657 = !DILocation(line: 518, column: 18, scope: !1091)
!1658 = !DILocation(line: 519, column: 12, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 519, column: 5)
!1660 = !DILocation(line: 519, column: 10, scope: !1659)
!1661 = !DILocation(line: 519, column: 17, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 519, column: 5)
!1663 = !DILocation(line: 519, column: 19, scope: !1662)
!1664 = !DILocation(line: 519, column: 5, scope: !1659)
!1665 = !DILocalVariable(name: "key", scope: !1666, file: !3, line: 520, type: !29)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 519, column: 35)
!1667 = !DILocation(line: 520, column: 11, scope: !1666)
!1668 = !DILocation(line: 520, column: 17, scope: !1666)
!1669 = !DILocation(line: 520, column: 26, scope: !1666)
!1670 = !DILocation(line: 520, column: 24, scope: !1666)
!1671 = !DILocation(line: 521, column: 25, scope: !1666)
!1672 = !DILocation(line: 521, column: 17, scope: !1666)
!1673 = !DILocation(line: 521, column: 7, scope: !1666)
!1674 = !DILocation(line: 521, column: 12, scope: !1666)
!1675 = !DILocation(line: 521, column: 15, scope: !1666)
!1676 = !DILocation(line: 522, column: 5, scope: !1666)
!1677 = !DILocation(line: 519, column: 28, scope: !1662)
!1678 = !DILocation(line: 519, column: 5, scope: !1662)
!1679 = distinct !{!1679, !1664, !1680}
!1680 = !DILocation(line: 522, column: 5, scope: !1659)
!1681 = !DILocalVariable(name: "input", scope: !1091, file: !3, line: 524, type: !1655)
!1682 = !DILocation(line: 524, column: 11, scope: !1091)
!1683 = !DILocation(line: 524, column: 41, scope: !1091)
!1684 = !DILocation(line: 524, column: 39, scope: !1091)
!1685 = !DILocation(line: 524, column: 48, scope: !1091)
!1686 = !DILocation(line: 524, column: 46, scope: !1091)
!1687 = !DILocation(line: 524, column: 19, scope: !1091)
!1688 = !DILocalVariable(name: "n", scope: !1689, file: !3, line: 525, type: !1644)
!1689 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 525, column: 5)
!1690 = !DILocation(line: 525, column: 17, scope: !1689)
!1691 = !DILocation(line: 525, column: 10, scope: !1689)
!1692 = !DILocation(line: 525, column: 24, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 525, column: 5)
!1694 = !DILocation(line: 525, column: 28, scope: !1693)
!1695 = !DILocation(line: 525, column: 35, scope: !1693)
!1696 = !DILocation(line: 525, column: 33, scope: !1693)
!1697 = !DILocation(line: 525, column: 26, scope: !1693)
!1698 = !DILocation(line: 525, column: 5, scope: !1689)
!1699 = !DILocalVariable(name: "key", scope: !1700, file: !3, line: 526, type: !29)
!1700 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 525, column: 47)
!1701 = !DILocation(line: 526, column: 13, scope: !1700)
!1702 = !DILocation(line: 526, column: 19, scope: !1700)
!1703 = !DILocation(line: 526, column: 28, scope: !1700)
!1704 = !DILocation(line: 526, column: 26, scope: !1700)
!1705 = !DILocation(line: 527, column: 28, scope: !1700)
!1706 = !DILocation(line: 527, column: 20, scope: !1700)
!1707 = !DILocation(line: 527, column: 9, scope: !1700)
!1708 = !DILocation(line: 527, column: 15, scope: !1700)
!1709 = !DILocation(line: 527, column: 18, scope: !1700)
!1710 = !DILocation(line: 528, column: 5, scope: !1700)
!1711 = !DILocation(line: 525, column: 43, scope: !1693)
!1712 = !DILocation(line: 525, column: 5, scope: !1693)
!1713 = distinct !{!1713, !1698, !1714}
!1714 = !DILocation(line: 528, column: 5, scope: !1689)
!1715 = !DILocation(line: 530, column: 5, scope: !1091)
!1716 = !DILocation(line: 530, column: 11, scope: !1091)
!1717 = !DILocalVariable(name: "in", scope: !1097, file: !3, line: 531, type: !1655)
!1718 = !DILocation(line: 531, column: 13, scope: !1097)
!1719 = !DILocation(line: 531, column: 25, scope: !1097)
!1720 = !DILocation(line: 531, column: 18, scope: !1097)
!1721 = !DILocation(line: 532, column: 15, scope: !1097)
!1722 = !DILocation(line: 532, column: 19, scope: !1097)
!1723 = !DILocation(line: 532, column: 26, scope: !1097)
!1724 = !DILocation(line: 532, column: 31, scope: !1097)
!1725 = !DILocation(line: 532, column: 35, scope: !1097)
!1726 = !DILocation(line: 532, column: 34, scope: !1097)
!1727 = !DILocation(line: 532, column: 24, scope: !1097)
!1728 = !DILocation(line: 532, column: 41, scope: !1097)
!1729 = !DILocation(line: 532, column: 7, scope: !1097)
!1730 = !DILocation(line: 533, column: 34, scope: !1097)
!1731 = !DILocation(line: 533, column: 38, scope: !1097)
!1732 = !DILocation(line: 446, column: 34, scope: !790, inlinedAt: !1096)
!1733 = !DILocation(line: 446, column: 47, scope: !790, inlinedAt: !1096)
!1734 = !DILocation(line: 447, column: 34, scope: !790, inlinedAt: !1096)
!1735 = !DILocation(line: 447, column: 45, scope: !790, inlinedAt: !1096)
!1736 = !DILocation(line: 447, column: 55, scope: !790, inlinedAt: !1096)
!1737 = !DILocation(line: 402, column: 5, scope: !661, inlinedAt: !1095)
!1738 = !DILocation(line: 402, column: 54, scope: !661, inlinedAt: !1095)
!1739 = !DILocation(line: 402, column: 72, scope: !661, inlinedAt: !1095)
!1740 = !DILocation(line: 402, column: 83, scope: !661, inlinedAt: !1095)
!1741 = !DILocation(line: 402, column: 95, scope: !661, inlinedAt: !1095)
!1742 = !DILocation(line: 402, column: 81, scope: !661, inlinedAt: !1095)
!1743 = !DILocation(line: 404, column: 10, scope: !661, inlinedAt: !1095)
!1744 = !DILocation(line: 404, column: 30, scope: !661, inlinedAt: !1095)
!1745 = !DILocation(line: 404, column: 28, scope: !661, inlinedAt: !1095)
!1746 = !DILocation(line: 404, column: 8, scope: !661, inlinedAt: !1095)
!1747 = !DILocation(line: 405, column: 10, scope: !661, inlinedAt: !1095)
!1748 = !DILocation(line: 405, column: 34, scope: !661, inlinedAt: !1095)
!1749 = !DILocation(line: 405, column: 32, scope: !661, inlinedAt: !1095)
!1750 = !DILocation(line: 405, column: 8, scope: !661, inlinedAt: !1095)
!1751 = !DILocation(line: 406, column: 10, scope: !661, inlinedAt: !1095)
!1752 = !DILocation(line: 406, column: 34, scope: !661, inlinedAt: !1095)
!1753 = !DILocation(line: 406, column: 32, scope: !661, inlinedAt: !1095)
!1754 = !DILocation(line: 406, column: 8, scope: !661, inlinedAt: !1095)
!1755 = !DILocation(line: 407, column: 10, scope: !661, inlinedAt: !1095)
!1756 = !DILocation(line: 407, column: 35, scope: !661, inlinedAt: !1095)
!1757 = !DILocation(line: 407, column: 33, scope: !661, inlinedAt: !1095)
!1758 = !DILocation(line: 407, column: 8, scope: !661, inlinedAt: !1095)
!1759 = !DILocation(line: 408, column: 7, scope: !661, inlinedAt: !1095)
!1760 = !DILocation(line: 410, column: 5, scope: !661, inlinedAt: !1095)
!1761 = !DILocation(line: 418, column: 11, scope: !713, inlinedAt: !1095)
!1762 = !DILocation(line: 420, column: 13, scope: !757, inlinedAt: !1095)
!1763 = !DILocation(line: 420, column: 18, scope: !757, inlinedAt: !1095)
!1764 = !DILocation(line: 420, column: 15, scope: !757, inlinedAt: !1095)
!1765 = !DILocation(line: 420, column: 13, scope: !713, inlinedAt: !1095)
!1766 = !DILocation(line: 428, column: 15, scope: !713, inlinedAt: !1095)
!1767 = !DILocation(line: 428, column: 12, scope: !713, inlinedAt: !1095)
!1768 = !DILocation(line: 429, column: 15, scope: !713, inlinedAt: !1095)
!1769 = !DILocation(line: 429, column: 20, scope: !713, inlinedAt: !1095)
!1770 = !DILocation(line: 429, column: 18, scope: !713, inlinedAt: !1095)
!1771 = !DILocation(line: 429, column: 12, scope: !713, inlinedAt: !1095)
!1772 = !DILocation(line: 430, column: 15, scope: !713, inlinedAt: !1095)
!1773 = !DILocation(line: 430, column: 20, scope: !713, inlinedAt: !1095)
!1774 = !DILocation(line: 430, column: 18, scope: !713, inlinedAt: !1095)
!1775 = !DILocation(line: 430, column: 12, scope: !713, inlinedAt: !1095)
!1776 = !DILocation(line: 431, column: 15, scope: !713, inlinedAt: !1095)
!1777 = !DILocation(line: 431, column: 12, scope: !713, inlinedAt: !1095)
!1778 = !DILocation(line: 432, column: 11, scope: !713, inlinedAt: !1095)
!1779 = distinct !{!1779, !1760, !1780}
!1780 = !DILocation(line: 433, column: 5, scope: !661, inlinedAt: !1095)
!1781 = !DILocation(line: 435, column: 11, scope: !661, inlinedAt: !1095)
!1782 = !DILocation(line: 435, column: 8, scope: !661, inlinedAt: !1095)
!1783 = !DILocation(line: 435, column: 23, scope: !661, inlinedAt: !1095)
!1784 = !DILocation(line: 435, column: 20, scope: !661, inlinedAt: !1095)
!1785 = !DILocation(line: 435, column: 35, scope: !661, inlinedAt: !1095)
!1786 = !DILocation(line: 435, column: 32, scope: !661, inlinedAt: !1095)
!1787 = !DILocation(line: 435, column: 47, scope: !661, inlinedAt: !1095)
!1788 = !DILocation(line: 435, column: 44, scope: !661, inlinedAt: !1095)
!1789 = !DILocation(line: 437, column: 5, scope: !661, inlinedAt: !1095)
!1790 = !DILocation(line: 438, column: 5, scope: !661, inlinedAt: !1095)
!1791 = !DILocation(line: 439, column: 5, scope: !661, inlinedAt: !1095)
!1792 = !DILocation(line: 440, column: 5, scope: !661, inlinedAt: !1095)
!1793 = !DILocation(line: 534, column: 12, scope: !1097)
!1794 = !DILocation(line: 534, column: 7, scope: !1097)
!1795 = !DILocation(line: 535, column: 12, scope: !1097)
!1796 = distinct !{!1796, !1715, !1797}
!1797 = !DILocation(line: 536, column: 5, scope: !1091)
!1798 = !DILocation(line: 537, column: 1, scope: !1091)
