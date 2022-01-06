; ModuleID = 'bc/Cipher/aria.bc'
source_filename = "Cipher/aria.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aria_key_st = type { [17 x %union.ARIA_u128], i32 }
%union.ARIA_u128 = type { [4 x i32] }

@.str = private unnamed_addr constant [5 x i8] c"mark\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [14 x i8] c"Cipher/aria.c\00", section "llvm.metadata"
@S1 = internal constant [256 x i32] [i32 6513507, i32 8158332, i32 7829367, i32 8092539, i32 15921906, i32 7039851, i32 7303023, i32 12961221, i32 3158064, i32 65793, i32 6776679, i32 2829099, i32 16711422, i32 14145495, i32 11250603, i32 7763574, i32 13290186, i32 8553090, i32 13224393, i32 8224125, i32 16448250, i32 5855577, i32 4671303, i32 15790320, i32 11382189, i32 13948116, i32 10658466, i32 11513775, i32 10263708, i32 10790052, i32 7500402, i32 12632256, i32 12040119, i32 16645629, i32 9671571, i32 2500134, i32 3552822, i32 4144959, i32 16250871, i32 13421772, i32 3421236, i32 10855845, i32 15066597, i32 15856113, i32 7434609, i32 14211288, i32 3223857, i32 1381653, i32 263172, i32 13092807, i32 2302755, i32 12829635, i32 1579032, i32 9868950, i32 328965, i32 10132122, i32 460551, i32 1184274, i32 8421504, i32 14869218, i32 15461355, i32 2565927, i32 11711154, i32 7697781, i32 592137, i32 8618883, i32 2894892, i32 1710618, i32 1776411, i32 7237230, i32 5921370, i32 10526880, i32 5395026, i32 3881787, i32 14079702, i32 11776947, i32 2697513, i32 14935011, i32 3092271, i32 8684676, i32 5460819, i32 13750737, i32 0, i32 15592941, i32 2105376, i32 16579836, i32 11645361, i32 5987163, i32 6974058, i32 13355979, i32 12500670, i32 3750201, i32 4868682, i32 5000268, i32 5789784, i32 13619151, i32 13684944, i32 15724527, i32 11184810, i32 16514043, i32 4408131, i32 5066061, i32 3355443, i32 8750469, i32 4539717, i32 16382457, i32 131586, i32 8355711, i32 5263440, i32 3947580, i32 10461087, i32 11053224, i32 5329233, i32 10724259, i32 4210752, i32 9408399, i32 9605778, i32 10329501, i32 3684408, i32 16119285, i32 12369084, i32 11974326, i32 14342874, i32 2171169, i32 1052688, i32 16777215, i32 15987699, i32 13816530, i32 13487565, i32 789516, i32 1250067, i32 15527148, i32 6250335, i32 9934743, i32 4473924, i32 1513239, i32 12895428, i32 10987431, i32 8289918, i32 4013373, i32 6579300, i32 6118749, i32 1644825, i32 7566195, i32 6316128, i32 8487297, i32 5197647, i32 14474460, i32 2236962, i32 2763306, i32 9474192, i32 8947848, i32 4605510, i32 15658734, i32 12105912, i32 1315860, i32 14606046, i32 6184542, i32 723723, i32 14408667, i32 14737632, i32 3289650, i32 3815994, i32 657930, i32 4802889, i32 394758, i32 2368548, i32 6052956, i32 12763842, i32 13882323, i32 11316396, i32 6447714, i32 9539985, i32 9803157, i32 15000804, i32 7960953, i32 15198183, i32 13158600, i32 3618615, i32 7171437, i32 9276813, i32 14013909, i32 5131854, i32 11119017, i32 7105644, i32 5658198, i32 16053492, i32 15395562, i32 6645093, i32 8026746, i32 11447982, i32 526344, i32 12237498, i32 7895160, i32 2434341, i32 3026478, i32 1842204, i32 10921638, i32 11842740, i32 13027014, i32 15263976, i32 14540253, i32 7631988, i32 2039583, i32 4934475, i32 12434877, i32 9145227, i32 9079434, i32 7368816, i32 4079166, i32 11908533, i32 6710886, i32 4737096, i32 197379, i32 16185078, i32 921102, i32 6381921, i32 3487029, i32 5723991, i32 12171705, i32 8816262, i32 12698049, i32 1907997, i32 10395294, i32 14803425, i32 16316664, i32 10000536, i32 1118481, i32 6908265, i32 14277081, i32 9342606, i32 9737364, i32 10197915, i32 1973790, i32 8882055, i32 15329769, i32 13553358, i32 5592405, i32 2631720, i32 14671839, i32 9211020, i32 10592673, i32 9013641, i32 855309, i32 12566463, i32 15132390, i32 4342338, i32 6842472, i32 4276545, i32 10066329, i32 2960685, i32 986895, i32 11579568, i32 5526612, i32 12303291, i32 1447446], align 16, !dbg !0
@S2 = internal constant [256 x i32] [i32 -503258398, i32 1308642894, i32 1409307732, i32 -67044100, i32 -1811901292, i32 -1040137534, i32 1241533002, i32 -872362804, i32 1644192354, i32 218107149, i32 1778412138, i32 1174423110, i32 1006648380, i32 1291865421, i32 -1962898549, i32 -788475439, i32 1577082462, i32 -100599046, i32 1677747300, i32 -889140277, i32 -1275022156, i32 -1761568873, i32 -1107247426, i32 721431339, i32 -1140802372, i32 1996519287, i32 771763758, i32 50332419, i32 -754920493, i32 419436825, i32 1493195097, i32 -1056915007, i32 486546717, i32 100664838, i32 1090535745, i32 1795189611, i32 1426085205, i32 -268373776, i32 -1728013927, i32 1761634665, i32 -369038614, i32 -1677681508, i32 402659352, i32 -1375686994, i32 1660969827, i32 -553590817, i32 -419371033, i32 -1157579845, i32 0, i32 1929409395, i32 1711302246, i32 -83821573, i32 -1778346346, i32 1275087948, i32 -2063563387, i32 -469703452, i32 973093434, i32 150997257, i32 1157645637, i32 -1442796886, i32 251662095, i32 -301928722, i32 268439568, i32 -352261141, i32 754986285, i32 2130739071, i32 -201263884, i32 687876393, i32 -1409241940, i32 -822030385, i32 -1392464467, i32 -1862233711, i32 -1929343603, i32 2013296760, i32 -939472696, i32 -1795123819, i32 -117376519, i32 788541231, i32 -838807858, i32 -855585331, i32 134219784, i32 2046851706, i32 -2013230968, i32 939538488, i32 1543527516, i32 -2097118333, i32 704653866, i32 671098920, i32 1191200583, i32 -620700709, i32 -1207912264, i32 -956250169, i32 -1828678765, i32 -1543461724, i32 301994514, i32 1392530259, i32 -16711681, i32 -2030008441, i32 234884622, i32 822096177, i32 905983542, i32 553656609, i32 1476417624, i32 1207978056, i32 16777473, i32 -1912566130, i32 922761015, i32 1946186868, i32 838873650, i32 -905917750, i32 -385816087, i32 -1325354575, i32 -1224689737, i32 -1426019413, i32 201329676, i32 -687810601, i32 -1006582588, i32 1442862678, i32 1107313218, i32 637543974, i32 117442311, i32 -1744791400, i32 1610637408, i32 -654255655, i32 -1241467210, i32 -1191134791, i32 285217041, i32 1073758272, i32 -335483668, i32 536879136, i32 -1946121076, i32 -1124024899, i32 -1610571616, i32 -922695223, i32 -2080340860, i32 67109892, i32 1224755529, i32 587211555, i32 -251596303, i32 1325420367, i32 1342197840, i32 520101663, i32 318771987, i32 -603923236, i32 -671033128, i32 -1073692480, i32 -1644126562, i32 1459640151, i32 -486480925, i32 -1023360061, i32 2063629179, i32 1694524773, i32 989870907, i32 33554946, i32 -1895788657, i32 1040203326, i32 -402593560, i32 620766501, i32 -1845456238, i32 -452925979, i32 352326933, i32 -587145763, i32 -50266627, i32 385881879, i32 -1459574359, i32 -1090469953, i32 -738143020, i32 -1711236454, i32 2113961598, i32 -989805115, i32 956315961, i32 1728079719, i32 -33489154, i32 1979741814, i32 -1660904035, i32 1124090691, i32 -1493129305, i32 -520035871, i32 -805252912, i32 -184486411, i32 1744857192, i32 -234818830, i32 452991771, i32 872428596, i32 1879076976, i32 83887365, i32 -1560239197, i32 -1979676022, i32 -721365547, i32 2030074233, i32 -2046785914, i32 -1476351832, i32 805318704, i32 -973027642, i32 1358975313, i32 1258310475, i32 503324190, i32 -1509906778, i32 654321447, i32 -167708938, i32 889206069, i32 -771697966, i32 1845522030, i32 603989028, i32 369104406, i32 -2113895806, i32 1593859935, i32 -637478182, i32 -436148506, i32 1962964341, i32 -1577016670, i32 -285151249, i32 738208812, i32 -1308577102, i32 469769244, i32 -1627349089, i32 1560304989, i32 1862299503, i32 -2147450752, i32 167774730, i32 1912631922, i32 1140868164, i32 -1694458981, i32 1811967084, i32 -1879011184, i32 184552203, i32 1526750043, i32 855651123, i32 2097184125, i32 1509972570, i32 1375752786, i32 -218041357, i32 1627414881, i32 -1593794143, i32 -150931465, i32 -1342132048, i32 -704588074, i32 1056980799, i32 2080406652, i32 1828744557, i32 -318706195, i32 335549460, i32 -536813344, i32 -1526684251, i32 1023425853, i32 570434082, i32 -1291799629, i32 -134153992, i32 -1996453495, i32 -570368290, i32 1895854449, i32 436214298, i32 -1358909521, i32 -1174357318, i32 -1258244683, i32 -2130673279], align 16, !dbg !19
@X1 = internal constant [256 x i32] [i32 1381105746, i32 151584777, i32 1785331818, i32 -707460907, i32 808452144, i32 909508662, i32 -1515913051, i32 943194168, i32 -1078001473, i32 1077936192, i32 -1549598557, i32 -1633812322, i32 -2122252159, i32 -202178317, i32 -673775401, i32 -67436293, i32 2088501372, i32 -471662365, i32 960036921, i32 -2105409406, i32 -1684340581, i32 791609391, i32 -65281, i32 -2021195641, i32 875823156, i32 -1903296370, i32 1128464451, i32 1145307204, i32 -993787708, i32 -555876130, i32 -370605847, i32 -875888437, i32 1414791252, i32 2071658619, i32 -1802239852, i32 842137650, i32 -1499070298, i32 -1027473214, i32 589496355, i32 1027407933, i32 -286392082, i32 1280049228, i32 -1785397099, i32 185270283, i32 1111621698, i32 -84279046, i32 -1010630461, i32 1313734734, i32 134742024, i32 774766638, i32 -1583284063, i32 1717960806, i32 673710120, i32 -640089895, i32 606339108, i32 -1296957262, i32 1987444854, i32 1532690523, i32 -1566441310, i32 1229520969, i32 1835860077, i32 -1953824629, i32 -774831919, i32 623181861, i32 1920073842, i32 -117964552, i32 -151650058, i32 1684275300, i32 -2038038394, i32 1751646312, i32 -1734868840, i32 370540566, i32 -724303660, i32 -1532755804, i32 1549533276, i32 -859045684, i32 1566376029, i32 1701118053, i32 -1229586250, i32 -1835925358, i32 1819017324, i32 1886388336, i32 1212678216, i32 1347420240, i32 -33750787, i32 -303234835, i32 -1179057991, i32 -623247142, i32 1583218782, i32 353697813, i32 1178992710, i32 1465319511, i32 -1482227545, i32 -1920139123, i32 -1650655075, i32 -2071723900, i32 -1869610864, i32 -656932648, i32 -1414856533, i32 0, i32 -1936981876, i32 -1128529732, i32 -741146413, i32 168427530, i32 -134807305, i32 -454819612, i32 1482162264, i32 84213765, i32 -1195900744, i32 -1280114509, i32 1162149957, i32 101056518, i32 -791674672, i32 741081132, i32 505282590, i32 -1886453617, i32 -892731190, i32 1061093439, i32 252641295, i32 33685506, i32 -1044315967, i32 -1347485521, i32 -1111686979, i32 50528259, i32 16842753, i32 320012307, i32 -1970667382, i32 1802174571, i32 976879674, i32 -1852768111, i32 286326801, i32 1094778945, i32 1330577487, i32 1734803559, i32 -589561636, i32 -353763094, i32 -1751711593, i32 -219021070, i32 -808517425, i32 -825360178, i32 -252706576, i32 -1263271756, i32 -421134106, i32 1936916595, i32 -1768554346, i32 -1398013780, i32 1953759348, i32 572653602, i32 -404291353, i32 -1381171027, i32 892665909, i32 -2054881147, i32 -488505118, i32 -101121799, i32 926351415, i32 -387448600, i32 471597084, i32 1970602101, i32 -539033377, i32 1852702830, i32 1195835463, i32 -235863823, i32 437911578, i32 1903231089, i32 488439837, i32 690552873, i32 -976944955, i32 -1987510135, i32 1869545583, i32 -1212743497, i32 1650589794, i32 235798542, i32 -1431699286, i32 404226072, i32 -1094844226, i32 454754331, i32 -50593540, i32 1448476758, i32 1044250686, i32 1263206475, i32 -960102202, i32 -757989166, i32 2037973113, i32 538968096, i32 -1701183334, i32 -606404389, i32 -1061158720, i32 -16908034, i32 2021130360, i32 -842202931, i32 1515847770, i32 -185335564, i32 522125343, i32 -572718883, i32 -1465384792, i32 858980403, i32 -2004352888, i32 117899271, i32 -943259449, i32 825294897, i32 -1313800015, i32 303169554, i32 269484048, i32 1499005017, i32 656867367, i32 -2139094912, i32 -320077588, i32 1600061535, i32 1616904288, i32 1364262993, i32 2139029631, i32 -1448542039, i32 421068825, i32 -1246429003, i32 1246363722, i32 218955789, i32 757923885, i32 -437976859, i32 2054815866, i32 -1616969569, i32 -1819082605, i32 -909573943, i32 -1667497828, i32 -269549329, i32 -1600126816, i32 -522190624, i32 993722427, i32 1296891981, i32 -1364328274, i32 707395626, i32 -168492811, i32 -1330642768, i32 -926416696, i32 -336920341, i32 -1145372485, i32 1010565180, i32 -2088566653, i32 1397948499, i32 -1718026087, i32 1633747041, i32 387383319, i32 724238379, i32 67371012, i32 2122186878, i32 -1162215238, i32 2004287607, i32 -690618154, i32 640024614, i32 -505347871, i32 1768489065, i32 336855060, i32 1667432547, i32 1431634005, i32 555810849, i32 202113036, i32 2105344125], align 16, !dbg !25
@X2 = internal constant [256 x i32] [i32 808464384, i32 1751672832, i32 -1717987072, i32 454761216, i32 -2021161216, i32 -1179010816, i32 555819264, i32 2021160960, i32 1347440640, i32 960051456, i32 -606348544, i32 -505290496, i32 1920102912, i32 151587072, i32 1650614784, i32 1010580480, i32 1044266496, i32 2122219008, i32 1583242752, i32 -1903260160, i32 -235802368, i32 -1600086016, i32 -858993664, i32 -1549556992, i32 707406336, i32 488447232, i32 -67372288, i32 -1229539840, i32 -690563584, i32 538976256, i32 -993737728, i32 -1920103168, i32 -2122219264, i32 1701143808, i32 -168430336, i32 -1987475200, i32 -875836672, i32 -1650615040, i32 2004317952, i32 -960051712, i32 1465341696, i32 1128481536, i32 1448498688, i32 387389184, i32 -724249600, i32 1077952512, i32 437918208, i32 1296911616, i32 -1061109760, i32 1667457792, i32 1819044864, i32 -471604480, i32 -1212696832, i32 -926365696, i32 1684300800, i32 1785358848, i32 1397969664, i32 -1431655936, i32 943208448, i32 -1734830080, i32 202116096, i32 -185273344, i32 -1684301056, i32 -303174400, i32 2139062016, i32 572662272, i32 1987474944, i32 -1347440896, i32 -572662528, i32 976894464, i32 185273088, i32 1482184704, i32 1734829824, i32 -2004318208, i32 101058048, i32 -1010580736, i32 892679424, i32 218959104, i32 16843008, i32 -1953789184, i32 -1936946176, i32 -1027423744, i32 -421075456, i32 1600085760, i32 33686016, i32 606348288, i32 1970631936, i32 -1819045120, i32 1717986816, i32 505290240, i32 -437918464, i32 -488447488, i32 1414812672, i32 -656877568, i32 269488128, i32 -825307648, i32 2054846976, i32 -387389440, i32 134744064, i32 741092352, i32 303174144, i32 -1751673088, i32 842150400, i32 -1414812928, i32 -1263225856, i32 656877312, i32 168430080, i32 589505280, i32 -538976512, i32 -269488384, i32 -892679680, i32 -640034560, i32 -1195853824, i32 -84215296, i32 -589505536, i32 825307392, i32 1802201856, i32 -774778624, i32 -1381126912, i32 421075200, i32 1229539584, i32 -1111638784, i32 1364283648, i32 -1768516096, i32 -286331392, i32 -454761472, i32 -1465341952, i32 1094795520, i32 -623191552, i32 -256, i32 -842150656, i32 1431655680, i32 -2038004224, i32 909522432, i32 -1094795776, i32 1633771776, i32 1381126656, i32 -117901312, i32 -1145324800, i32 235802112, i32 -2105376256, i32 1212696576, i32 1768515840, i32 -1701144064, i32 -522133504, i32 1195853568, i32 -1633772032, i32 1549556736, i32 67372032, i32 1263225600, i32 875836416, i32 353703168, i32 2038003968, i32 640034304, i32 -1482184960, i32 -555819520, i32 690563328, i32 -1364283904, i32 -1835888128, i32 -673720576, i32 -2071690240, i32 -370546432, i32 -757935616, i32 -1162167808, i32 1566399744, i32 -202116352, i32 -976894720, i32 -1330597888, i32 -1077952768, i32 -1532713984, i32 993737472, i32 1903259904, i32 1145324544, i32 1179010560, i32 724249344, i32 -50529280, i32 -336860416, i32 1869573888, i32 -707406592, i32 -151587328, i32 336860160, i32 -16843264, i32 2088532992, i32 1886416896, i32 1515870720, i32 2105376000, i32 -33686272, i32 791621376, i32 404232192, i32 -2088533248, i32 370546176, i32 -1515870976, i32 -1852731136, i32 522133248, i32 84215040, i32 -1785359104, i32 1953788928, i32 -1448498944, i32 -1044266752, i32 1532713728, i32 1246382592, i32 -2054847232, i32 1835887872, i32 320017152, i32 117901056, i32 1330597632, i32 1313754624, i32 1162167552, i32 -1296911872, i32 252645120, i32 -909522688, i32 471604224, i32 -1499027968, i32 -1128481792, i32 -320017408, i32 1936945920, i32 -1869574144, i32 2071689984, i32 -808464640, i32 1499027712, i32 -1886417152, i32 -1583243008, i32 -101058304, i32 757935360, i32 -218959360, i32 -1313754880, i32 0, i32 -1802202112, i32 926365440, i32 -1616929024, i32 -791621632, i32 774778368, i32 -1667458048, i32 1852730880, i32 673720320, i32 1061109504, i32 -2139062272, i32 -252645376, i32 1027423488, i32 -741092608, i32 623191296, i32 -1970632192, i32 -1246382848, i32 -404232448, i32 1111638528, i32 -1280068864, i32 -943208704, i32 -353703424, i32 -134744320, i32 1280068608, i32 286331136, i32 858993408, i32 50529024, i32 -1566400000, i32 -1397969920, i32 1616928768], align 16, !dbg !27
@Key_RC = internal constant [5 x [4 x i32]] [[4 x i32] [i32 1367130551, i32 656542356, i32 -32265240, i32 -90542368], [4 x i32] [i32 1840335564, i32 -1641953248, i32 -14110251, i32 -279059792], [4 x i32] [i32 -611174627, i32 556198256, i32 52729717, i32 82364686], [4 x i32] [i32 1367130551, i32 656542356, i32 -32265240, i32 -90542368], [4 x i32] [i32 1840335564, i32 -1641953248, i32 -14110251, i32 -279059792]], align 16, !dbg !29
@key = internal constant [32 x i8] c"\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16, !dbg !35
@__const.main.charset = private unnamed_addr constant [94 x i8] c"!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\00", align 16

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @aria_encrypt(i8* %in, i8* %out, %struct.aria_key_st* %key) #0 !dbg !45 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %key.addr = alloca %struct.aria_key_st*, align 8
  %reg0 = alloca i32, align 4
  %reg1 = alloca i32, align 4
  %reg2 = alloca i32, align 4
  %reg3 = alloca i32, align 4
  %Nr = alloca i32, align 4
  %rk = alloca %union.ARIA_u128*, align 8
  store i8* %in, i8** %in.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in.addr, metadata !71, metadata !DIExpression()), !dbg !72
  store i8* %out, i8** %out.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out.addr, metadata !73, metadata !DIExpression()), !dbg !74
  store %struct.aria_key_st* %key, %struct.aria_key_st** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.aria_key_st** %key.addr, metadata !75, metadata !DIExpression()), !dbg !76
  %key.addr1 = bitcast %struct.aria_key_st** %key.addr to i8*
  call void @llvm.var.annotation(i8* %key.addr1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 473)
  call void @llvm.dbg.declare(metadata i32* %reg0, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %reg1, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %reg2, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %reg3, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %Nr, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata %union.ARIA_u128** %rk, metadata !88, metadata !DIExpression()), !dbg !91
  %rk2 = bitcast %union.ARIA_u128** %rk to i8*, !dbg !92
  call void @llvm.var.annotation(i8* %rk2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 477), !dbg !92
  %0 = load i8*, i8** %in.addr, align 8, !dbg !93
  %cmp = icmp eq i8* %0, null, !dbg !95
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !96

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %out.addr, align 8, !dbg !97
  %cmp3 = icmp eq i8* %1, null, !dbg !98
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !99

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %2 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr, align 8, !dbg !100
  %cmp5 = icmp eq %struct.aria_key_st* %2, null, !dbg !101
  br i1 %cmp5, label %if.then, label %if.end, !dbg !102

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  br label %do.end652, !dbg !103

if.end:                                           ; preds = %lor.lhs.false4
  %3 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr, align 8, !dbg !105
  %rd_key = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %3, i32 0, i32 0, !dbg !106
  %arraydecay = getelementptr inbounds [17 x %union.ARIA_u128], [17 x %union.ARIA_u128]* %rd_key, i64 0, i64 0, !dbg !105
  store %union.ARIA_u128* %arraydecay, %union.ARIA_u128** %rk, align 8, !dbg !107
  %4 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr, align 8, !dbg !108
  %rounds = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %4, i32 0, i32 1, !dbg !109
  %5 = load i32, i32* %rounds, align 4, !dbg !109
  store i32 %5, i32* %Nr, align 4, !dbg !110
  %6 = load i32, i32* %Nr, align 4, !dbg !111
  %cmp6 = icmp ne i32 %6, 12, !dbg !113
  br i1 %cmp6, label %land.lhs.true, label %if.end11, !dbg !114

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %Nr, align 4, !dbg !115
  %cmp7 = icmp ne i32 %7, 14, !dbg !116
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !117

land.lhs.true8:                                   ; preds = %land.lhs.true
  %8 = load i32, i32* %Nr, align 4, !dbg !118
  %cmp9 = icmp ne i32 %8, 16, !dbg !119
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !120

if.then10:                                        ; preds = %land.lhs.true8
  br label %do.end652, !dbg !121

if.end11:                                         ; preds = %land.lhs.true8, %land.lhs.true, %if.end
  %9 = load i8*, i8** %in.addr, align 8, !dbg !123
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0, !dbg !123
  %10 = load i8, i8* %arrayidx, align 1, !dbg !123
  %conv = zext i8 %10 to i32, !dbg !123
  %shl = shl i32 %conv, 24, !dbg !123
  %11 = load i8*, i8** %in.addr, align 8, !dbg !123
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !123
  %12 = load i8, i8* %arrayidx12, align 1, !dbg !123
  %conv13 = zext i8 %12 to i32, !dbg !123
  %shl14 = shl i32 %conv13, 16, !dbg !123
  %xor = xor i32 %shl, %shl14, !dbg !123
  %13 = load i8*, i8** %in.addr, align 8, !dbg !123
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !123
  %14 = load i8, i8* %arrayidx15, align 1, !dbg !123
  %conv16 = zext i8 %14 to i32, !dbg !123
  %shl17 = shl i32 %conv16, 8, !dbg !123
  %xor18 = xor i32 %xor, %shl17, !dbg !123
  %15 = load i8*, i8** %in.addr, align 8, !dbg !123
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 3, !dbg !123
  %16 = load i8, i8* %arrayidx19, align 1, !dbg !123
  %conv20 = zext i8 %16 to i32, !dbg !123
  %xor21 = xor i32 %xor18, %conv20, !dbg !123
  store i32 %xor21, i32* %reg0, align 4, !dbg !124
  %17 = load i8*, i8** %in.addr, align 8, !dbg !125
  %arrayidx22 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !125
  %18 = load i8, i8* %arrayidx22, align 1, !dbg !125
  %conv23 = zext i8 %18 to i32, !dbg !125
  %shl24 = shl i32 %conv23, 24, !dbg !125
  %19 = load i8*, i8** %in.addr, align 8, !dbg !125
  %arrayidx25 = getelementptr inbounds i8, i8* %19, i64 5, !dbg !125
  %20 = load i8, i8* %arrayidx25, align 1, !dbg !125
  %conv26 = zext i8 %20 to i32, !dbg !125
  %shl27 = shl i32 %conv26, 16, !dbg !125
  %xor28 = xor i32 %shl24, %shl27, !dbg !125
  %21 = load i8*, i8** %in.addr, align 8, !dbg !125
  %arrayidx29 = getelementptr inbounds i8, i8* %21, i64 6, !dbg !125
  %22 = load i8, i8* %arrayidx29, align 1, !dbg !125
  %conv30 = zext i8 %22 to i32, !dbg !125
  %shl31 = shl i32 %conv30, 8, !dbg !125
  %xor32 = xor i32 %xor28, %shl31, !dbg !125
  %23 = load i8*, i8** %in.addr, align 8, !dbg !125
  %arrayidx33 = getelementptr inbounds i8, i8* %23, i64 7, !dbg !125
  %24 = load i8, i8* %arrayidx33, align 1, !dbg !125
  %conv34 = zext i8 %24 to i32, !dbg !125
  %xor35 = xor i32 %xor32, %conv34, !dbg !125
  store i32 %xor35, i32* %reg1, align 4, !dbg !126
  %25 = load i8*, i8** %in.addr, align 8, !dbg !127
  %arrayidx36 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !127
  %26 = load i8, i8* %arrayidx36, align 1, !dbg !127
  %conv37 = zext i8 %26 to i32, !dbg !127
  %shl38 = shl i32 %conv37, 24, !dbg !127
  %27 = load i8*, i8** %in.addr, align 8, !dbg !127
  %arrayidx39 = getelementptr inbounds i8, i8* %27, i64 9, !dbg !127
  %28 = load i8, i8* %arrayidx39, align 1, !dbg !127
  %conv40 = zext i8 %28 to i32, !dbg !127
  %shl41 = shl i32 %conv40, 16, !dbg !127
  %xor42 = xor i32 %shl38, %shl41, !dbg !127
  %29 = load i8*, i8** %in.addr, align 8, !dbg !127
  %arrayidx43 = getelementptr inbounds i8, i8* %29, i64 10, !dbg !127
  %30 = load i8, i8* %arrayidx43, align 1, !dbg !127
  %conv44 = zext i8 %30 to i32, !dbg !127
  %shl45 = shl i32 %conv44, 8, !dbg !127
  %xor46 = xor i32 %xor42, %shl45, !dbg !127
  %31 = load i8*, i8** %in.addr, align 8, !dbg !127
  %arrayidx47 = getelementptr inbounds i8, i8* %31, i64 11, !dbg !127
  %32 = load i8, i8* %arrayidx47, align 1, !dbg !127
  %conv48 = zext i8 %32 to i32, !dbg !127
  %xor49 = xor i32 %xor46, %conv48, !dbg !127
  store i32 %xor49, i32* %reg2, align 4, !dbg !128
  %33 = load i8*, i8** %in.addr, align 8, !dbg !129
  %arrayidx50 = getelementptr inbounds i8, i8* %33, i64 12, !dbg !129
  %34 = load i8, i8* %arrayidx50, align 1, !dbg !129
  %conv51 = zext i8 %34 to i32, !dbg !129
  %shl52 = shl i32 %conv51, 24, !dbg !129
  %35 = load i8*, i8** %in.addr, align 8, !dbg !129
  %arrayidx53 = getelementptr inbounds i8, i8* %35, i64 13, !dbg !129
  %36 = load i8, i8* %arrayidx53, align 1, !dbg !129
  %conv54 = zext i8 %36 to i32, !dbg !129
  %shl55 = shl i32 %conv54, 16, !dbg !129
  %xor56 = xor i32 %shl52, %shl55, !dbg !129
  %37 = load i8*, i8** %in.addr, align 8, !dbg !129
  %arrayidx57 = getelementptr inbounds i8, i8* %37, i64 14, !dbg !129
  %38 = load i8, i8* %arrayidx57, align 1, !dbg !129
  %conv58 = zext i8 %38 to i32, !dbg !129
  %shl59 = shl i32 %conv58, 8, !dbg !129
  %xor60 = xor i32 %xor56, %shl59, !dbg !129
  %39 = load i8*, i8** %in.addr, align 8, !dbg !129
  %arrayidx61 = getelementptr inbounds i8, i8* %39, i64 15, !dbg !129
  %40 = load i8, i8* %arrayidx61, align 1, !dbg !129
  %conv62 = zext i8 %40 to i32, !dbg !129
  %xor63 = xor i32 %xor60, %conv62, !dbg !129
  store i32 %xor63, i32* %reg3, align 4, !dbg !130
  br label %do.body, !dbg !131

do.body:                                          ; preds = %if.end11
  %41 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !132
  %u = bitcast %union.ARIA_u128* %41 to [4 x i32]*, !dbg !132
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %u, i64 0, i64 0, !dbg !132
  %42 = load i32, i32* %arrayidx64, align 4, !dbg !132
  %43 = load i32, i32* %reg0, align 4, !dbg !132
  %xor65 = xor i32 %43, %42, !dbg !132
  store i32 %xor65, i32* %reg0, align 4, !dbg !132
  %44 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !132
  %u66 = bitcast %union.ARIA_u128* %44 to [4 x i32]*, !dbg !132
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %u66, i64 0, i64 1, !dbg !132
  %45 = load i32, i32* %arrayidx67, align 4, !dbg !132
  %46 = load i32, i32* %reg1, align 4, !dbg !132
  %xor68 = xor i32 %46, %45, !dbg !132
  store i32 %xor68, i32* %reg1, align 4, !dbg !132
  %47 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !132
  %u69 = bitcast %union.ARIA_u128* %47 to [4 x i32]*, !dbg !132
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %u69, i64 0, i64 2, !dbg !132
  %48 = load i32, i32* %arrayidx70, align 4, !dbg !132
  %49 = load i32, i32* %reg2, align 4, !dbg !132
  %xor71 = xor i32 %49, %48, !dbg !132
  store i32 %xor71, i32* %reg2, align 4, !dbg !132
  %50 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !132
  %u72 = bitcast %union.ARIA_u128* %50 to [4 x i32]*, !dbg !132
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %u72, i64 0, i64 3, !dbg !132
  %51 = load i32, i32* %arrayidx73, align 4, !dbg !132
  %52 = load i32, i32* %reg3, align 4, !dbg !132
  %xor74 = xor i32 %52, %51, !dbg !132
  store i32 %xor74, i32* %reg3, align 4, !dbg !132
  br label %do.end, !dbg !132

do.end:                                           ; preds = %do.body
  %53 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !134
  %incdec.ptr = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %53, i32 1, !dbg !134
  store %union.ARIA_u128* %incdec.ptr, %union.ARIA_u128** %rk, align 8, !dbg !134
  br label %do.body75, !dbg !135

do.body75:                                        ; preds = %do.end
  br label %do.body76, !dbg !136

do.body76:                                        ; preds = %do.body75
  %54 = load i32, i32* %reg0, align 4, !dbg !138
  %shr = lshr i32 %54, 24, !dbg !138
  %conv77 = trunc i32 %shr to i8, !dbg !138
  %idxprom = zext i8 %conv77 to i64, !dbg !138
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom, !dbg !138
  %55 = load i32, i32* %arrayidx78, align 4, !dbg !138
  %56 = load i32, i32* %reg0, align 4, !dbg !138
  %shr79 = lshr i32 %56, 16, !dbg !138
  %conv80 = trunc i32 %shr79 to i8, !dbg !138
  %idxprom81 = zext i8 %conv80 to i64, !dbg !138
  %arrayidx82 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom81, !dbg !138
  %57 = load i32, i32* %arrayidx82, align 4, !dbg !138
  %xor83 = xor i32 %55, %57, !dbg !138
  %58 = load i32, i32* %reg0, align 4, !dbg !138
  %shr84 = lshr i32 %58, 8, !dbg !138
  %conv85 = trunc i32 %shr84 to i8, !dbg !138
  %idxprom86 = zext i8 %conv85 to i64, !dbg !138
  %arrayidx87 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom86, !dbg !138
  %59 = load i32, i32* %arrayidx87, align 4, !dbg !138
  %xor88 = xor i32 %xor83, %59, !dbg !138
  %60 = load i32, i32* %reg0, align 4, !dbg !138
  %shr89 = lshr i32 %60, 0, !dbg !138
  %conv90 = trunc i32 %shr89 to i8, !dbg !138
  %idxprom91 = zext i8 %conv90 to i64, !dbg !138
  %arrayidx92 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom91, !dbg !138
  %61 = load i32, i32* %arrayidx92, align 4, !dbg !138
  %xor93 = xor i32 %xor88, %61, !dbg !138
  store i32 %xor93, i32* %reg0, align 4, !dbg !138
  %62 = load i32, i32* %reg1, align 4, !dbg !138
  %shr94 = lshr i32 %62, 24, !dbg !138
  %conv95 = trunc i32 %shr94 to i8, !dbg !138
  %idxprom96 = zext i8 %conv95 to i64, !dbg !138
  %arrayidx97 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom96, !dbg !138
  %63 = load i32, i32* %arrayidx97, align 4, !dbg !138
  %64 = load i32, i32* %reg1, align 4, !dbg !138
  %shr98 = lshr i32 %64, 16, !dbg !138
  %conv99 = trunc i32 %shr98 to i8, !dbg !138
  %idxprom100 = zext i8 %conv99 to i64, !dbg !138
  %arrayidx101 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom100, !dbg !138
  %65 = load i32, i32* %arrayidx101, align 4, !dbg !138
  %xor102 = xor i32 %63, %65, !dbg !138
  %66 = load i32, i32* %reg1, align 4, !dbg !138
  %shr103 = lshr i32 %66, 8, !dbg !138
  %conv104 = trunc i32 %shr103 to i8, !dbg !138
  %idxprom105 = zext i8 %conv104 to i64, !dbg !138
  %arrayidx106 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom105, !dbg !138
  %67 = load i32, i32* %arrayidx106, align 4, !dbg !138
  %xor107 = xor i32 %xor102, %67, !dbg !138
  %68 = load i32, i32* %reg1, align 4, !dbg !138
  %shr108 = lshr i32 %68, 0, !dbg !138
  %conv109 = trunc i32 %shr108 to i8, !dbg !138
  %idxprom110 = zext i8 %conv109 to i64, !dbg !138
  %arrayidx111 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom110, !dbg !138
  %69 = load i32, i32* %arrayidx111, align 4, !dbg !138
  %xor112 = xor i32 %xor107, %69, !dbg !138
  store i32 %xor112, i32* %reg1, align 4, !dbg !138
  %70 = load i32, i32* %reg2, align 4, !dbg !138
  %shr113 = lshr i32 %70, 24, !dbg !138
  %conv114 = trunc i32 %shr113 to i8, !dbg !138
  %idxprom115 = zext i8 %conv114 to i64, !dbg !138
  %arrayidx116 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom115, !dbg !138
  %71 = load i32, i32* %arrayidx116, align 4, !dbg !138
  %72 = load i32, i32* %reg2, align 4, !dbg !138
  %shr117 = lshr i32 %72, 16, !dbg !138
  %conv118 = trunc i32 %shr117 to i8, !dbg !138
  %idxprom119 = zext i8 %conv118 to i64, !dbg !138
  %arrayidx120 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom119, !dbg !138
  %73 = load i32, i32* %arrayidx120, align 4, !dbg !138
  %xor121 = xor i32 %71, %73, !dbg !138
  %74 = load i32, i32* %reg2, align 4, !dbg !138
  %shr122 = lshr i32 %74, 8, !dbg !138
  %conv123 = trunc i32 %shr122 to i8, !dbg !138
  %idxprom124 = zext i8 %conv123 to i64, !dbg !138
  %arrayidx125 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom124, !dbg !138
  %75 = load i32, i32* %arrayidx125, align 4, !dbg !138
  %xor126 = xor i32 %xor121, %75, !dbg !138
  %76 = load i32, i32* %reg2, align 4, !dbg !138
  %shr127 = lshr i32 %76, 0, !dbg !138
  %conv128 = trunc i32 %shr127 to i8, !dbg !138
  %idxprom129 = zext i8 %conv128 to i64, !dbg !138
  %arrayidx130 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom129, !dbg !138
  %77 = load i32, i32* %arrayidx130, align 4, !dbg !138
  %xor131 = xor i32 %xor126, %77, !dbg !138
  store i32 %xor131, i32* %reg2, align 4, !dbg !138
  %78 = load i32, i32* %reg3, align 4, !dbg !138
  %shr132 = lshr i32 %78, 24, !dbg !138
  %conv133 = trunc i32 %shr132 to i8, !dbg !138
  %idxprom134 = zext i8 %conv133 to i64, !dbg !138
  %arrayidx135 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom134, !dbg !138
  %79 = load i32, i32* %arrayidx135, align 4, !dbg !138
  %80 = load i32, i32* %reg3, align 4, !dbg !138
  %shr136 = lshr i32 %80, 16, !dbg !138
  %conv137 = trunc i32 %shr136 to i8, !dbg !138
  %idxprom138 = zext i8 %conv137 to i64, !dbg !138
  %arrayidx139 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom138, !dbg !138
  %81 = load i32, i32* %arrayidx139, align 4, !dbg !138
  %xor140 = xor i32 %79, %81, !dbg !138
  %82 = load i32, i32* %reg3, align 4, !dbg !138
  %shr141 = lshr i32 %82, 8, !dbg !138
  %conv142 = trunc i32 %shr141 to i8, !dbg !138
  %idxprom143 = zext i8 %conv142 to i64, !dbg !138
  %arrayidx144 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom143, !dbg !138
  %83 = load i32, i32* %arrayidx144, align 4, !dbg !138
  %xor145 = xor i32 %xor140, %83, !dbg !138
  %84 = load i32, i32* %reg3, align 4, !dbg !138
  %shr146 = lshr i32 %84, 0, !dbg !138
  %conv147 = trunc i32 %shr146 to i8, !dbg !138
  %idxprom148 = zext i8 %conv147 to i64, !dbg !138
  %arrayidx149 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom148, !dbg !138
  %85 = load i32, i32* %arrayidx149, align 4, !dbg !138
  %xor150 = xor i32 %xor145, %85, !dbg !138
  store i32 %xor150, i32* %reg3, align 4, !dbg !138
  br label %do.end151, !dbg !138

do.end151:                                        ; preds = %do.body76
  br label %do.body152, !dbg !136

do.body152:                                       ; preds = %do.end151
  %86 = load i32, i32* %reg2, align 4, !dbg !140
  %87 = load i32, i32* %reg1, align 4, !dbg !140
  %xor153 = xor i32 %87, %86, !dbg !140
  store i32 %xor153, i32* %reg1, align 4, !dbg !140
  %88 = load i32, i32* %reg3, align 4, !dbg !140
  %89 = load i32, i32* %reg2, align 4, !dbg !140
  %xor154 = xor i32 %89, %88, !dbg !140
  store i32 %xor154, i32* %reg2, align 4, !dbg !140
  %90 = load i32, i32* %reg1, align 4, !dbg !140
  %91 = load i32, i32* %reg0, align 4, !dbg !140
  %xor155 = xor i32 %91, %90, !dbg !140
  store i32 %xor155, i32* %reg0, align 4, !dbg !140
  %92 = load i32, i32* %reg1, align 4, !dbg !140
  %93 = load i32, i32* %reg3, align 4, !dbg !140
  %xor156 = xor i32 %93, %92, !dbg !140
  store i32 %xor156, i32* %reg3, align 4, !dbg !140
  %94 = load i32, i32* %reg0, align 4, !dbg !140
  %95 = load i32, i32* %reg2, align 4, !dbg !140
  %xor157 = xor i32 %95, %94, !dbg !140
  store i32 %xor157, i32* %reg2, align 4, !dbg !140
  %96 = load i32, i32* %reg2, align 4, !dbg !140
  %97 = load i32, i32* %reg1, align 4, !dbg !140
  %xor158 = xor i32 %97, %96, !dbg !140
  store i32 %xor158, i32* %reg1, align 4, !dbg !140
  br label %do.end159, !dbg !140

do.end159:                                        ; preds = %do.body152
  br label %do.body160, !dbg !136

do.body160:                                       ; preds = %do.end159
  %98 = load i32, i32* %reg1, align 4, !dbg !142
  %shl161 = shl i32 %98, 8, !dbg !142
  %and = and i32 %shl161, -16711936, !dbg !142
  %99 = load i32, i32* %reg1, align 4, !dbg !142
  %shr162 = lshr i32 %99, 8, !dbg !142
  %and163 = and i32 %shr162, 16711935, !dbg !142
  %xor164 = xor i32 %and, %and163, !dbg !142
  store i32 %xor164, i32* %reg1, align 4, !dbg !142
  %100 = load i32, i32* %reg2, align 4, !dbg !142
  %shr165 = lshr i32 %100, 16, !dbg !142
  %101 = load i32, i32* %reg2, align 4, !dbg !142
  %shl166 = shl i32 %101, 16, !dbg !142
  %or = or i32 %shr165, %shl166, !dbg !142
  store i32 %or, i32* %reg2, align 4, !dbg !142
  %102 = load i32, i32* %reg3, align 4, !dbg !142
  %shl167 = shl i32 %102, 24, !dbg !142
  %103 = load i32, i32* %reg3, align 4, !dbg !142
  %shr168 = lshr i32 %103, 24, !dbg !142
  %xor169 = xor i32 %shl167, %shr168, !dbg !142
  %104 = load i32, i32* %reg3, align 4, !dbg !142
  %and170 = and i32 %104, 65280, !dbg !142
  %shl171 = shl i32 %and170, 8, !dbg !142
  %xor172 = xor i32 %xor169, %shl171, !dbg !142
  %105 = load i32, i32* %reg3, align 4, !dbg !142
  %and173 = and i32 %105, 16711680, !dbg !142
  %shr174 = lshr i32 %and173, 8, !dbg !142
  %xor175 = xor i32 %xor172, %shr174, !dbg !142
  store i32 %xor175, i32* %reg3, align 4, !dbg !142
  br label %do.end176, !dbg !142

do.end176:                                        ; preds = %do.body160
  br label %do.body177, !dbg !136

do.body177:                                       ; preds = %do.end176
  %106 = load i32, i32* %reg2, align 4, !dbg !144
  %107 = load i32, i32* %reg1, align 4, !dbg !144
  %xor178 = xor i32 %107, %106, !dbg !144
  store i32 %xor178, i32* %reg1, align 4, !dbg !144
  %108 = load i32, i32* %reg3, align 4, !dbg !144
  %109 = load i32, i32* %reg2, align 4, !dbg !144
  %xor179 = xor i32 %109, %108, !dbg !144
  store i32 %xor179, i32* %reg2, align 4, !dbg !144
  %110 = load i32, i32* %reg1, align 4, !dbg !144
  %111 = load i32, i32* %reg0, align 4, !dbg !144
  %xor180 = xor i32 %111, %110, !dbg !144
  store i32 %xor180, i32* %reg0, align 4, !dbg !144
  %112 = load i32, i32* %reg1, align 4, !dbg !144
  %113 = load i32, i32* %reg3, align 4, !dbg !144
  %xor181 = xor i32 %113, %112, !dbg !144
  store i32 %xor181, i32* %reg3, align 4, !dbg !144
  %114 = load i32, i32* %reg0, align 4, !dbg !144
  %115 = load i32, i32* %reg2, align 4, !dbg !144
  %xor182 = xor i32 %115, %114, !dbg !144
  store i32 %xor182, i32* %reg2, align 4, !dbg !144
  %116 = load i32, i32* %reg2, align 4, !dbg !144
  %117 = load i32, i32* %reg1, align 4, !dbg !144
  %xor183 = xor i32 %117, %116, !dbg !144
  store i32 %xor183, i32* %reg1, align 4, !dbg !144
  br label %do.end184, !dbg !144

do.end184:                                        ; preds = %do.body177
  br label %do.end185, !dbg !136

do.end185:                                        ; preds = %do.end184
  br label %do.body186, !dbg !146

do.body186:                                       ; preds = %do.end185
  %118 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !147
  %u187 = bitcast %union.ARIA_u128* %118 to [4 x i32]*, !dbg !147
  %arrayidx188 = getelementptr inbounds [4 x i32], [4 x i32]* %u187, i64 0, i64 0, !dbg !147
  %119 = load i32, i32* %arrayidx188, align 4, !dbg !147
  %120 = load i32, i32* %reg0, align 4, !dbg !147
  %xor189 = xor i32 %120, %119, !dbg !147
  store i32 %xor189, i32* %reg0, align 4, !dbg !147
  %121 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !147
  %u190 = bitcast %union.ARIA_u128* %121 to [4 x i32]*, !dbg !147
  %arrayidx191 = getelementptr inbounds [4 x i32], [4 x i32]* %u190, i64 0, i64 1, !dbg !147
  %122 = load i32, i32* %arrayidx191, align 4, !dbg !147
  %123 = load i32, i32* %reg1, align 4, !dbg !147
  %xor192 = xor i32 %123, %122, !dbg !147
  store i32 %xor192, i32* %reg1, align 4, !dbg !147
  %124 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !147
  %u193 = bitcast %union.ARIA_u128* %124 to [4 x i32]*, !dbg !147
  %arrayidx194 = getelementptr inbounds [4 x i32], [4 x i32]* %u193, i64 0, i64 2, !dbg !147
  %125 = load i32, i32* %arrayidx194, align 4, !dbg !147
  %126 = load i32, i32* %reg2, align 4, !dbg !147
  %xor195 = xor i32 %126, %125, !dbg !147
  store i32 %xor195, i32* %reg2, align 4, !dbg !147
  %127 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !147
  %u196 = bitcast %union.ARIA_u128* %127 to [4 x i32]*, !dbg !147
  %arrayidx197 = getelementptr inbounds [4 x i32], [4 x i32]* %u196, i64 0, i64 3, !dbg !147
  %128 = load i32, i32* %arrayidx197, align 4, !dbg !147
  %129 = load i32, i32* %reg3, align 4, !dbg !147
  %xor198 = xor i32 %129, %128, !dbg !147
  store i32 %xor198, i32* %reg3, align 4, !dbg !147
  br label %do.end199, !dbg !147

do.end199:                                        ; preds = %do.body186
  %130 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !149
  %incdec.ptr200 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %130, i32 1, !dbg !149
  store %union.ARIA_u128* %incdec.ptr200, %union.ARIA_u128** %rk, align 8, !dbg !149
  br label %while.cond, !dbg !150

while.cond:                                       ; preds = %do.end459, %do.end199
  %131 = load i32, i32* %Nr, align 4, !dbg !151
  %sub = sub nsw i32 %131, 2, !dbg !151
  store i32 %sub, i32* %Nr, align 4, !dbg !151
  %tobool = icmp ne i32 %sub, 0, !dbg !150
  br i1 %tobool, label %while.body, label %while.end, !dbg !150

while.body:                                       ; preds = %while.cond
  br label %do.body201, !dbg !152

do.body201:                                       ; preds = %while.body
  br label %do.body202, !dbg !154

do.body202:                                       ; preds = %do.body201
  %132 = load i32, i32* %reg0, align 4, !dbg !156
  %shr203 = lshr i32 %132, 24, !dbg !156
  %conv204 = trunc i32 %shr203 to i8, !dbg !156
  %idxprom205 = zext i8 %conv204 to i64, !dbg !156
  %arrayidx206 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom205, !dbg !156
  %133 = load i32, i32* %arrayidx206, align 4, !dbg !156
  %134 = load i32, i32* %reg0, align 4, !dbg !156
  %shr207 = lshr i32 %134, 16, !dbg !156
  %conv208 = trunc i32 %shr207 to i8, !dbg !156
  %idxprom209 = zext i8 %conv208 to i64, !dbg !156
  %arrayidx210 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom209, !dbg !156
  %135 = load i32, i32* %arrayidx210, align 4, !dbg !156
  %xor211 = xor i32 %133, %135, !dbg !156
  %136 = load i32, i32* %reg0, align 4, !dbg !156
  %shr212 = lshr i32 %136, 8, !dbg !156
  %conv213 = trunc i32 %shr212 to i8, !dbg !156
  %idxprom214 = zext i8 %conv213 to i64, !dbg !156
  %arrayidx215 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom214, !dbg !156
  %137 = load i32, i32* %arrayidx215, align 4, !dbg !156
  %xor216 = xor i32 %xor211, %137, !dbg !156
  %138 = load i32, i32* %reg0, align 4, !dbg !156
  %shr217 = lshr i32 %138, 0, !dbg !156
  %conv218 = trunc i32 %shr217 to i8, !dbg !156
  %idxprom219 = zext i8 %conv218 to i64, !dbg !156
  %arrayidx220 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom219, !dbg !156
  %139 = load i32, i32* %arrayidx220, align 4, !dbg !156
  %xor221 = xor i32 %xor216, %139, !dbg !156
  store i32 %xor221, i32* %reg0, align 4, !dbg !156
  %140 = load i32, i32* %reg1, align 4, !dbg !156
  %shr222 = lshr i32 %140, 24, !dbg !156
  %conv223 = trunc i32 %shr222 to i8, !dbg !156
  %idxprom224 = zext i8 %conv223 to i64, !dbg !156
  %arrayidx225 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom224, !dbg !156
  %141 = load i32, i32* %arrayidx225, align 4, !dbg !156
  %142 = load i32, i32* %reg1, align 4, !dbg !156
  %shr226 = lshr i32 %142, 16, !dbg !156
  %conv227 = trunc i32 %shr226 to i8, !dbg !156
  %idxprom228 = zext i8 %conv227 to i64, !dbg !156
  %arrayidx229 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom228, !dbg !156
  %143 = load i32, i32* %arrayidx229, align 4, !dbg !156
  %xor230 = xor i32 %141, %143, !dbg !156
  %144 = load i32, i32* %reg1, align 4, !dbg !156
  %shr231 = lshr i32 %144, 8, !dbg !156
  %conv232 = trunc i32 %shr231 to i8, !dbg !156
  %idxprom233 = zext i8 %conv232 to i64, !dbg !156
  %arrayidx234 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom233, !dbg !156
  %145 = load i32, i32* %arrayidx234, align 4, !dbg !156
  %xor235 = xor i32 %xor230, %145, !dbg !156
  %146 = load i32, i32* %reg1, align 4, !dbg !156
  %shr236 = lshr i32 %146, 0, !dbg !156
  %conv237 = trunc i32 %shr236 to i8, !dbg !156
  %idxprom238 = zext i8 %conv237 to i64, !dbg !156
  %arrayidx239 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom238, !dbg !156
  %147 = load i32, i32* %arrayidx239, align 4, !dbg !156
  %xor240 = xor i32 %xor235, %147, !dbg !156
  store i32 %xor240, i32* %reg1, align 4, !dbg !156
  %148 = load i32, i32* %reg2, align 4, !dbg !156
  %shr241 = lshr i32 %148, 24, !dbg !156
  %conv242 = trunc i32 %shr241 to i8, !dbg !156
  %idxprom243 = zext i8 %conv242 to i64, !dbg !156
  %arrayidx244 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom243, !dbg !156
  %149 = load i32, i32* %arrayidx244, align 4, !dbg !156
  %150 = load i32, i32* %reg2, align 4, !dbg !156
  %shr245 = lshr i32 %150, 16, !dbg !156
  %conv246 = trunc i32 %shr245 to i8, !dbg !156
  %idxprom247 = zext i8 %conv246 to i64, !dbg !156
  %arrayidx248 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom247, !dbg !156
  %151 = load i32, i32* %arrayidx248, align 4, !dbg !156
  %xor249 = xor i32 %149, %151, !dbg !156
  %152 = load i32, i32* %reg2, align 4, !dbg !156
  %shr250 = lshr i32 %152, 8, !dbg !156
  %conv251 = trunc i32 %shr250 to i8, !dbg !156
  %idxprom252 = zext i8 %conv251 to i64, !dbg !156
  %arrayidx253 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom252, !dbg !156
  %153 = load i32, i32* %arrayidx253, align 4, !dbg !156
  %xor254 = xor i32 %xor249, %153, !dbg !156
  %154 = load i32, i32* %reg2, align 4, !dbg !156
  %shr255 = lshr i32 %154, 0, !dbg !156
  %conv256 = trunc i32 %shr255 to i8, !dbg !156
  %idxprom257 = zext i8 %conv256 to i64, !dbg !156
  %arrayidx258 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom257, !dbg !156
  %155 = load i32, i32* %arrayidx258, align 4, !dbg !156
  %xor259 = xor i32 %xor254, %155, !dbg !156
  store i32 %xor259, i32* %reg2, align 4, !dbg !156
  %156 = load i32, i32* %reg3, align 4, !dbg !156
  %shr260 = lshr i32 %156, 24, !dbg !156
  %conv261 = trunc i32 %shr260 to i8, !dbg !156
  %idxprom262 = zext i8 %conv261 to i64, !dbg !156
  %arrayidx263 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom262, !dbg !156
  %157 = load i32, i32* %arrayidx263, align 4, !dbg !156
  %158 = load i32, i32* %reg3, align 4, !dbg !156
  %shr264 = lshr i32 %158, 16, !dbg !156
  %conv265 = trunc i32 %shr264 to i8, !dbg !156
  %idxprom266 = zext i8 %conv265 to i64, !dbg !156
  %arrayidx267 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom266, !dbg !156
  %159 = load i32, i32* %arrayidx267, align 4, !dbg !156
  %xor268 = xor i32 %157, %159, !dbg !156
  %160 = load i32, i32* %reg3, align 4, !dbg !156
  %shr269 = lshr i32 %160, 8, !dbg !156
  %conv270 = trunc i32 %shr269 to i8, !dbg !156
  %idxprom271 = zext i8 %conv270 to i64, !dbg !156
  %arrayidx272 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom271, !dbg !156
  %161 = load i32, i32* %arrayidx272, align 4, !dbg !156
  %xor273 = xor i32 %xor268, %161, !dbg !156
  %162 = load i32, i32* %reg3, align 4, !dbg !156
  %shr274 = lshr i32 %162, 0, !dbg !156
  %conv275 = trunc i32 %shr274 to i8, !dbg !156
  %idxprom276 = zext i8 %conv275 to i64, !dbg !156
  %arrayidx277 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom276, !dbg !156
  %163 = load i32, i32* %arrayidx277, align 4, !dbg !156
  %xor278 = xor i32 %xor273, %163, !dbg !156
  store i32 %xor278, i32* %reg3, align 4, !dbg !156
  br label %do.end279, !dbg !156

do.end279:                                        ; preds = %do.body202
  br label %do.body280, !dbg !154

do.body280:                                       ; preds = %do.end279
  %164 = load i32, i32* %reg2, align 4, !dbg !158
  %165 = load i32, i32* %reg1, align 4, !dbg !158
  %xor281 = xor i32 %165, %164, !dbg !158
  store i32 %xor281, i32* %reg1, align 4, !dbg !158
  %166 = load i32, i32* %reg3, align 4, !dbg !158
  %167 = load i32, i32* %reg2, align 4, !dbg !158
  %xor282 = xor i32 %167, %166, !dbg !158
  store i32 %xor282, i32* %reg2, align 4, !dbg !158
  %168 = load i32, i32* %reg1, align 4, !dbg !158
  %169 = load i32, i32* %reg0, align 4, !dbg !158
  %xor283 = xor i32 %169, %168, !dbg !158
  store i32 %xor283, i32* %reg0, align 4, !dbg !158
  %170 = load i32, i32* %reg1, align 4, !dbg !158
  %171 = load i32, i32* %reg3, align 4, !dbg !158
  %xor284 = xor i32 %171, %170, !dbg !158
  store i32 %xor284, i32* %reg3, align 4, !dbg !158
  %172 = load i32, i32* %reg0, align 4, !dbg !158
  %173 = load i32, i32* %reg2, align 4, !dbg !158
  %xor285 = xor i32 %173, %172, !dbg !158
  store i32 %xor285, i32* %reg2, align 4, !dbg !158
  %174 = load i32, i32* %reg2, align 4, !dbg !158
  %175 = load i32, i32* %reg1, align 4, !dbg !158
  %xor286 = xor i32 %175, %174, !dbg !158
  store i32 %xor286, i32* %reg1, align 4, !dbg !158
  br label %do.end287, !dbg !158

do.end287:                                        ; preds = %do.body280
  br label %do.body288, !dbg !154

do.body288:                                       ; preds = %do.end287
  %176 = load i32, i32* %reg3, align 4, !dbg !160
  %shl289 = shl i32 %176, 8, !dbg !160
  %and290 = and i32 %shl289, -16711936, !dbg !160
  %177 = load i32, i32* %reg3, align 4, !dbg !160
  %shr291 = lshr i32 %177, 8, !dbg !160
  %and292 = and i32 %shr291, 16711935, !dbg !160
  %xor293 = xor i32 %and290, %and292, !dbg !160
  store i32 %xor293, i32* %reg3, align 4, !dbg !160
  %178 = load i32, i32* %reg0, align 4, !dbg !160
  %shr294 = lshr i32 %178, 16, !dbg !160
  %179 = load i32, i32* %reg0, align 4, !dbg !160
  %shl295 = shl i32 %179, 16, !dbg !160
  %or296 = or i32 %shr294, %shl295, !dbg !160
  store i32 %or296, i32* %reg0, align 4, !dbg !160
  %180 = load i32, i32* %reg1, align 4, !dbg !160
  %shl297 = shl i32 %180, 24, !dbg !160
  %181 = load i32, i32* %reg1, align 4, !dbg !160
  %shr298 = lshr i32 %181, 24, !dbg !160
  %xor299 = xor i32 %shl297, %shr298, !dbg !160
  %182 = load i32, i32* %reg1, align 4, !dbg !160
  %and300 = and i32 %182, 65280, !dbg !160
  %shl301 = shl i32 %and300, 8, !dbg !160
  %xor302 = xor i32 %xor299, %shl301, !dbg !160
  %183 = load i32, i32* %reg1, align 4, !dbg !160
  %and303 = and i32 %183, 16711680, !dbg !160
  %shr304 = lshr i32 %and303, 8, !dbg !160
  %xor305 = xor i32 %xor302, %shr304, !dbg !160
  store i32 %xor305, i32* %reg1, align 4, !dbg !160
  br label %do.end306, !dbg !160

do.end306:                                        ; preds = %do.body288
  br label %do.body307, !dbg !154

do.body307:                                       ; preds = %do.end306
  %184 = load i32, i32* %reg2, align 4, !dbg !162
  %185 = load i32, i32* %reg1, align 4, !dbg !162
  %xor308 = xor i32 %185, %184, !dbg !162
  store i32 %xor308, i32* %reg1, align 4, !dbg !162
  %186 = load i32, i32* %reg3, align 4, !dbg !162
  %187 = load i32, i32* %reg2, align 4, !dbg !162
  %xor309 = xor i32 %187, %186, !dbg !162
  store i32 %xor309, i32* %reg2, align 4, !dbg !162
  %188 = load i32, i32* %reg1, align 4, !dbg !162
  %189 = load i32, i32* %reg0, align 4, !dbg !162
  %xor310 = xor i32 %189, %188, !dbg !162
  store i32 %xor310, i32* %reg0, align 4, !dbg !162
  %190 = load i32, i32* %reg1, align 4, !dbg !162
  %191 = load i32, i32* %reg3, align 4, !dbg !162
  %xor311 = xor i32 %191, %190, !dbg !162
  store i32 %xor311, i32* %reg3, align 4, !dbg !162
  %192 = load i32, i32* %reg0, align 4, !dbg !162
  %193 = load i32, i32* %reg2, align 4, !dbg !162
  %xor312 = xor i32 %193, %192, !dbg !162
  store i32 %xor312, i32* %reg2, align 4, !dbg !162
  %194 = load i32, i32* %reg2, align 4, !dbg !162
  %195 = load i32, i32* %reg1, align 4, !dbg !162
  %xor313 = xor i32 %195, %194, !dbg !162
  store i32 %xor313, i32* %reg1, align 4, !dbg !162
  br label %do.end314, !dbg !162

do.end314:                                        ; preds = %do.body307
  br label %do.end315, !dbg !154

do.end315:                                        ; preds = %do.end314
  br label %do.body316, !dbg !164

do.body316:                                       ; preds = %do.end315
  %196 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !165
  %u317 = bitcast %union.ARIA_u128* %196 to [4 x i32]*, !dbg !165
  %arrayidx318 = getelementptr inbounds [4 x i32], [4 x i32]* %u317, i64 0, i64 0, !dbg !165
  %197 = load i32, i32* %arrayidx318, align 4, !dbg !165
  %198 = load i32, i32* %reg0, align 4, !dbg !165
  %xor319 = xor i32 %198, %197, !dbg !165
  store i32 %xor319, i32* %reg0, align 4, !dbg !165
  %199 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !165
  %u320 = bitcast %union.ARIA_u128* %199 to [4 x i32]*, !dbg !165
  %arrayidx321 = getelementptr inbounds [4 x i32], [4 x i32]* %u320, i64 0, i64 1, !dbg !165
  %200 = load i32, i32* %arrayidx321, align 4, !dbg !165
  %201 = load i32, i32* %reg1, align 4, !dbg !165
  %xor322 = xor i32 %201, %200, !dbg !165
  store i32 %xor322, i32* %reg1, align 4, !dbg !165
  %202 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !165
  %u323 = bitcast %union.ARIA_u128* %202 to [4 x i32]*, !dbg !165
  %arrayidx324 = getelementptr inbounds [4 x i32], [4 x i32]* %u323, i64 0, i64 2, !dbg !165
  %203 = load i32, i32* %arrayidx324, align 4, !dbg !165
  %204 = load i32, i32* %reg2, align 4, !dbg !165
  %xor325 = xor i32 %204, %203, !dbg !165
  store i32 %xor325, i32* %reg2, align 4, !dbg !165
  %205 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !165
  %u326 = bitcast %union.ARIA_u128* %205 to [4 x i32]*, !dbg !165
  %arrayidx327 = getelementptr inbounds [4 x i32], [4 x i32]* %u326, i64 0, i64 3, !dbg !165
  %206 = load i32, i32* %arrayidx327, align 4, !dbg !165
  %207 = load i32, i32* %reg3, align 4, !dbg !165
  %xor328 = xor i32 %207, %206, !dbg !165
  store i32 %xor328, i32* %reg3, align 4, !dbg !165
  br label %do.end329, !dbg !165

do.end329:                                        ; preds = %do.body316
  %208 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !167
  %incdec.ptr330 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %208, i32 1, !dbg !167
  store %union.ARIA_u128* %incdec.ptr330, %union.ARIA_u128** %rk, align 8, !dbg !167
  br label %do.body331, !dbg !168

do.body331:                                       ; preds = %do.end329
  br label %do.body332, !dbg !169

do.body332:                                       ; preds = %do.body331
  %209 = load i32, i32* %reg0, align 4, !dbg !171
  %shr333 = lshr i32 %209, 24, !dbg !171
  %conv334 = trunc i32 %shr333 to i8, !dbg !171
  %idxprom335 = zext i8 %conv334 to i64, !dbg !171
  %arrayidx336 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom335, !dbg !171
  %210 = load i32, i32* %arrayidx336, align 4, !dbg !171
  %211 = load i32, i32* %reg0, align 4, !dbg !171
  %shr337 = lshr i32 %211, 16, !dbg !171
  %conv338 = trunc i32 %shr337 to i8, !dbg !171
  %idxprom339 = zext i8 %conv338 to i64, !dbg !171
  %arrayidx340 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom339, !dbg !171
  %212 = load i32, i32* %arrayidx340, align 4, !dbg !171
  %xor341 = xor i32 %210, %212, !dbg !171
  %213 = load i32, i32* %reg0, align 4, !dbg !171
  %shr342 = lshr i32 %213, 8, !dbg !171
  %conv343 = trunc i32 %shr342 to i8, !dbg !171
  %idxprom344 = zext i8 %conv343 to i64, !dbg !171
  %arrayidx345 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom344, !dbg !171
  %214 = load i32, i32* %arrayidx345, align 4, !dbg !171
  %xor346 = xor i32 %xor341, %214, !dbg !171
  %215 = load i32, i32* %reg0, align 4, !dbg !171
  %shr347 = lshr i32 %215, 0, !dbg !171
  %conv348 = trunc i32 %shr347 to i8, !dbg !171
  %idxprom349 = zext i8 %conv348 to i64, !dbg !171
  %arrayidx350 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom349, !dbg !171
  %216 = load i32, i32* %arrayidx350, align 4, !dbg !171
  %xor351 = xor i32 %xor346, %216, !dbg !171
  store i32 %xor351, i32* %reg0, align 4, !dbg !171
  %217 = load i32, i32* %reg1, align 4, !dbg !171
  %shr352 = lshr i32 %217, 24, !dbg !171
  %conv353 = trunc i32 %shr352 to i8, !dbg !171
  %idxprom354 = zext i8 %conv353 to i64, !dbg !171
  %arrayidx355 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom354, !dbg !171
  %218 = load i32, i32* %arrayidx355, align 4, !dbg !171
  %219 = load i32, i32* %reg1, align 4, !dbg !171
  %shr356 = lshr i32 %219, 16, !dbg !171
  %conv357 = trunc i32 %shr356 to i8, !dbg !171
  %idxprom358 = zext i8 %conv357 to i64, !dbg !171
  %arrayidx359 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom358, !dbg !171
  %220 = load i32, i32* %arrayidx359, align 4, !dbg !171
  %xor360 = xor i32 %218, %220, !dbg !171
  %221 = load i32, i32* %reg1, align 4, !dbg !171
  %shr361 = lshr i32 %221, 8, !dbg !171
  %conv362 = trunc i32 %shr361 to i8, !dbg !171
  %idxprom363 = zext i8 %conv362 to i64, !dbg !171
  %arrayidx364 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom363, !dbg !171
  %222 = load i32, i32* %arrayidx364, align 4, !dbg !171
  %xor365 = xor i32 %xor360, %222, !dbg !171
  %223 = load i32, i32* %reg1, align 4, !dbg !171
  %shr366 = lshr i32 %223, 0, !dbg !171
  %conv367 = trunc i32 %shr366 to i8, !dbg !171
  %idxprom368 = zext i8 %conv367 to i64, !dbg !171
  %arrayidx369 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom368, !dbg !171
  %224 = load i32, i32* %arrayidx369, align 4, !dbg !171
  %xor370 = xor i32 %xor365, %224, !dbg !171
  store i32 %xor370, i32* %reg1, align 4, !dbg !171
  %225 = load i32, i32* %reg2, align 4, !dbg !171
  %shr371 = lshr i32 %225, 24, !dbg !171
  %conv372 = trunc i32 %shr371 to i8, !dbg !171
  %idxprom373 = zext i8 %conv372 to i64, !dbg !171
  %arrayidx374 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom373, !dbg !171
  %226 = load i32, i32* %arrayidx374, align 4, !dbg !171
  %227 = load i32, i32* %reg2, align 4, !dbg !171
  %shr375 = lshr i32 %227, 16, !dbg !171
  %conv376 = trunc i32 %shr375 to i8, !dbg !171
  %idxprom377 = zext i8 %conv376 to i64, !dbg !171
  %arrayidx378 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom377, !dbg !171
  %228 = load i32, i32* %arrayidx378, align 4, !dbg !171
  %xor379 = xor i32 %226, %228, !dbg !171
  %229 = load i32, i32* %reg2, align 4, !dbg !171
  %shr380 = lshr i32 %229, 8, !dbg !171
  %conv381 = trunc i32 %shr380 to i8, !dbg !171
  %idxprom382 = zext i8 %conv381 to i64, !dbg !171
  %arrayidx383 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom382, !dbg !171
  %230 = load i32, i32* %arrayidx383, align 4, !dbg !171
  %xor384 = xor i32 %xor379, %230, !dbg !171
  %231 = load i32, i32* %reg2, align 4, !dbg !171
  %shr385 = lshr i32 %231, 0, !dbg !171
  %conv386 = trunc i32 %shr385 to i8, !dbg !171
  %idxprom387 = zext i8 %conv386 to i64, !dbg !171
  %arrayidx388 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom387, !dbg !171
  %232 = load i32, i32* %arrayidx388, align 4, !dbg !171
  %xor389 = xor i32 %xor384, %232, !dbg !171
  store i32 %xor389, i32* %reg2, align 4, !dbg !171
  %233 = load i32, i32* %reg3, align 4, !dbg !171
  %shr390 = lshr i32 %233, 24, !dbg !171
  %conv391 = trunc i32 %shr390 to i8, !dbg !171
  %idxprom392 = zext i8 %conv391 to i64, !dbg !171
  %arrayidx393 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom392, !dbg !171
  %234 = load i32, i32* %arrayidx393, align 4, !dbg !171
  %235 = load i32, i32* %reg3, align 4, !dbg !171
  %shr394 = lshr i32 %235, 16, !dbg !171
  %conv395 = trunc i32 %shr394 to i8, !dbg !171
  %idxprom396 = zext i8 %conv395 to i64, !dbg !171
  %arrayidx397 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom396, !dbg !171
  %236 = load i32, i32* %arrayidx397, align 4, !dbg !171
  %xor398 = xor i32 %234, %236, !dbg !171
  %237 = load i32, i32* %reg3, align 4, !dbg !171
  %shr399 = lshr i32 %237, 8, !dbg !171
  %conv400 = trunc i32 %shr399 to i8, !dbg !171
  %idxprom401 = zext i8 %conv400 to i64, !dbg !171
  %arrayidx402 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom401, !dbg !171
  %238 = load i32, i32* %arrayidx402, align 4, !dbg !171
  %xor403 = xor i32 %xor398, %238, !dbg !171
  %239 = load i32, i32* %reg3, align 4, !dbg !171
  %shr404 = lshr i32 %239, 0, !dbg !171
  %conv405 = trunc i32 %shr404 to i8, !dbg !171
  %idxprom406 = zext i8 %conv405 to i64, !dbg !171
  %arrayidx407 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom406, !dbg !171
  %240 = load i32, i32* %arrayidx407, align 4, !dbg !171
  %xor408 = xor i32 %xor403, %240, !dbg !171
  store i32 %xor408, i32* %reg3, align 4, !dbg !171
  br label %do.end409, !dbg !171

do.end409:                                        ; preds = %do.body332
  br label %do.body410, !dbg !169

do.body410:                                       ; preds = %do.end409
  %241 = load i32, i32* %reg2, align 4, !dbg !173
  %242 = load i32, i32* %reg1, align 4, !dbg !173
  %xor411 = xor i32 %242, %241, !dbg !173
  store i32 %xor411, i32* %reg1, align 4, !dbg !173
  %243 = load i32, i32* %reg3, align 4, !dbg !173
  %244 = load i32, i32* %reg2, align 4, !dbg !173
  %xor412 = xor i32 %244, %243, !dbg !173
  store i32 %xor412, i32* %reg2, align 4, !dbg !173
  %245 = load i32, i32* %reg1, align 4, !dbg !173
  %246 = load i32, i32* %reg0, align 4, !dbg !173
  %xor413 = xor i32 %246, %245, !dbg !173
  store i32 %xor413, i32* %reg0, align 4, !dbg !173
  %247 = load i32, i32* %reg1, align 4, !dbg !173
  %248 = load i32, i32* %reg3, align 4, !dbg !173
  %xor414 = xor i32 %248, %247, !dbg !173
  store i32 %xor414, i32* %reg3, align 4, !dbg !173
  %249 = load i32, i32* %reg0, align 4, !dbg !173
  %250 = load i32, i32* %reg2, align 4, !dbg !173
  %xor415 = xor i32 %250, %249, !dbg !173
  store i32 %xor415, i32* %reg2, align 4, !dbg !173
  %251 = load i32, i32* %reg2, align 4, !dbg !173
  %252 = load i32, i32* %reg1, align 4, !dbg !173
  %xor416 = xor i32 %252, %251, !dbg !173
  store i32 %xor416, i32* %reg1, align 4, !dbg !173
  br label %do.end417, !dbg !173

do.end417:                                        ; preds = %do.body410
  br label %do.body418, !dbg !169

do.body418:                                       ; preds = %do.end417
  %253 = load i32, i32* %reg1, align 4, !dbg !175
  %shl419 = shl i32 %253, 8, !dbg !175
  %and420 = and i32 %shl419, -16711936, !dbg !175
  %254 = load i32, i32* %reg1, align 4, !dbg !175
  %shr421 = lshr i32 %254, 8, !dbg !175
  %and422 = and i32 %shr421, 16711935, !dbg !175
  %xor423 = xor i32 %and420, %and422, !dbg !175
  store i32 %xor423, i32* %reg1, align 4, !dbg !175
  %255 = load i32, i32* %reg2, align 4, !dbg !175
  %shr424 = lshr i32 %255, 16, !dbg !175
  %256 = load i32, i32* %reg2, align 4, !dbg !175
  %shl425 = shl i32 %256, 16, !dbg !175
  %or426 = or i32 %shr424, %shl425, !dbg !175
  store i32 %or426, i32* %reg2, align 4, !dbg !175
  %257 = load i32, i32* %reg3, align 4, !dbg !175
  %shl427 = shl i32 %257, 24, !dbg !175
  %258 = load i32, i32* %reg3, align 4, !dbg !175
  %shr428 = lshr i32 %258, 24, !dbg !175
  %xor429 = xor i32 %shl427, %shr428, !dbg !175
  %259 = load i32, i32* %reg3, align 4, !dbg !175
  %and430 = and i32 %259, 65280, !dbg !175
  %shl431 = shl i32 %and430, 8, !dbg !175
  %xor432 = xor i32 %xor429, %shl431, !dbg !175
  %260 = load i32, i32* %reg3, align 4, !dbg !175
  %and433 = and i32 %260, 16711680, !dbg !175
  %shr434 = lshr i32 %and433, 8, !dbg !175
  %xor435 = xor i32 %xor432, %shr434, !dbg !175
  store i32 %xor435, i32* %reg3, align 4, !dbg !175
  br label %do.end436, !dbg !175

do.end436:                                        ; preds = %do.body418
  br label %do.body437, !dbg !169

do.body437:                                       ; preds = %do.end436
  %261 = load i32, i32* %reg2, align 4, !dbg !177
  %262 = load i32, i32* %reg1, align 4, !dbg !177
  %xor438 = xor i32 %262, %261, !dbg !177
  store i32 %xor438, i32* %reg1, align 4, !dbg !177
  %263 = load i32, i32* %reg3, align 4, !dbg !177
  %264 = load i32, i32* %reg2, align 4, !dbg !177
  %xor439 = xor i32 %264, %263, !dbg !177
  store i32 %xor439, i32* %reg2, align 4, !dbg !177
  %265 = load i32, i32* %reg1, align 4, !dbg !177
  %266 = load i32, i32* %reg0, align 4, !dbg !177
  %xor440 = xor i32 %266, %265, !dbg !177
  store i32 %xor440, i32* %reg0, align 4, !dbg !177
  %267 = load i32, i32* %reg1, align 4, !dbg !177
  %268 = load i32, i32* %reg3, align 4, !dbg !177
  %xor441 = xor i32 %268, %267, !dbg !177
  store i32 %xor441, i32* %reg3, align 4, !dbg !177
  %269 = load i32, i32* %reg0, align 4, !dbg !177
  %270 = load i32, i32* %reg2, align 4, !dbg !177
  %xor442 = xor i32 %270, %269, !dbg !177
  store i32 %xor442, i32* %reg2, align 4, !dbg !177
  %271 = load i32, i32* %reg2, align 4, !dbg !177
  %272 = load i32, i32* %reg1, align 4, !dbg !177
  %xor443 = xor i32 %272, %271, !dbg !177
  store i32 %xor443, i32* %reg1, align 4, !dbg !177
  br label %do.end444, !dbg !177

do.end444:                                        ; preds = %do.body437
  br label %do.end445, !dbg !169

do.end445:                                        ; preds = %do.end444
  br label %do.body446, !dbg !179

do.body446:                                       ; preds = %do.end445
  %273 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !180
  %u447 = bitcast %union.ARIA_u128* %273 to [4 x i32]*, !dbg !180
  %arrayidx448 = getelementptr inbounds [4 x i32], [4 x i32]* %u447, i64 0, i64 0, !dbg !180
  %274 = load i32, i32* %arrayidx448, align 4, !dbg !180
  %275 = load i32, i32* %reg0, align 4, !dbg !180
  %xor449 = xor i32 %275, %274, !dbg !180
  store i32 %xor449, i32* %reg0, align 4, !dbg !180
  %276 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !180
  %u450 = bitcast %union.ARIA_u128* %276 to [4 x i32]*, !dbg !180
  %arrayidx451 = getelementptr inbounds [4 x i32], [4 x i32]* %u450, i64 0, i64 1, !dbg !180
  %277 = load i32, i32* %arrayidx451, align 4, !dbg !180
  %278 = load i32, i32* %reg1, align 4, !dbg !180
  %xor452 = xor i32 %278, %277, !dbg !180
  store i32 %xor452, i32* %reg1, align 4, !dbg !180
  %279 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !180
  %u453 = bitcast %union.ARIA_u128* %279 to [4 x i32]*, !dbg !180
  %arrayidx454 = getelementptr inbounds [4 x i32], [4 x i32]* %u453, i64 0, i64 2, !dbg !180
  %280 = load i32, i32* %arrayidx454, align 4, !dbg !180
  %281 = load i32, i32* %reg2, align 4, !dbg !180
  %xor455 = xor i32 %281, %280, !dbg !180
  store i32 %xor455, i32* %reg2, align 4, !dbg !180
  %282 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !180
  %u456 = bitcast %union.ARIA_u128* %282 to [4 x i32]*, !dbg !180
  %arrayidx457 = getelementptr inbounds [4 x i32], [4 x i32]* %u456, i64 0, i64 3, !dbg !180
  %283 = load i32, i32* %arrayidx457, align 4, !dbg !180
  %284 = load i32, i32* %reg3, align 4, !dbg !180
  %xor458 = xor i32 %284, %283, !dbg !180
  store i32 %xor458, i32* %reg3, align 4, !dbg !180
  br label %do.end459, !dbg !180

do.end459:                                        ; preds = %do.body446
  %285 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !182
  %incdec.ptr460 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %285, i32 1, !dbg !182
  store %union.ARIA_u128* %incdec.ptr460, %union.ARIA_u128** %rk, align 8, !dbg !182
  br label %while.cond, !dbg !150, !llvm.loop !183

while.end:                                        ; preds = %while.cond
  %286 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !185
  %u461 = bitcast %union.ARIA_u128* %286 to [4 x i32]*, !dbg !186
  %arrayidx462 = getelementptr inbounds [4 x i32], [4 x i32]* %u461, i64 0, i64 0, !dbg !185
  %287 = load i32, i32* %arrayidx462, align 4, !dbg !185
  %288 = load i32, i32* %reg0, align 4, !dbg !187
  %shr463 = lshr i32 %288, 24, !dbg !187
  %conv464 = trunc i32 %shr463 to i8, !dbg !187
  %idxprom465 = zext i8 %conv464 to i64, !dbg !187
  %arrayidx466 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom465, !dbg !187
  %289 = load i32, i32* %arrayidx466, align 4, !dbg !187
  %conv467 = trunc i32 %289 to i8, !dbg !187
  %conv468 = zext i8 %conv467 to i32, !dbg !187
  %shl469 = shl i32 %conv468, 24, !dbg !187
  %290 = load i32, i32* %reg0, align 4, !dbg !187
  %shr470 = lshr i32 %290, 16, !dbg !187
  %conv471 = trunc i32 %shr470 to i8, !dbg !187
  %idxprom472 = zext i8 %conv471 to i64, !dbg !187
  %arrayidx473 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom472, !dbg !187
  %291 = load i32, i32* %arrayidx473, align 4, !dbg !187
  %shr474 = lshr i32 %291, 8, !dbg !187
  %conv475 = trunc i32 %shr474 to i8, !dbg !187
  %conv476 = zext i8 %conv475 to i32, !dbg !187
  %shl477 = shl i32 %conv476, 16, !dbg !187
  %or478 = or i32 %shl469, %shl477, !dbg !187
  %292 = load i32, i32* %reg0, align 4, !dbg !187
  %shr479 = lshr i32 %292, 8, !dbg !187
  %conv480 = trunc i32 %shr479 to i8, !dbg !187
  %idxprom481 = zext i8 %conv480 to i64, !dbg !187
  %arrayidx482 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom481, !dbg !187
  %293 = load i32, i32* %arrayidx482, align 4, !dbg !187
  %conv483 = trunc i32 %293 to i8, !dbg !187
  %conv484 = zext i8 %conv483 to i32, !dbg !187
  %shl485 = shl i32 %conv484, 8, !dbg !187
  %or486 = or i32 %or478, %shl485, !dbg !187
  %294 = load i32, i32* %reg0, align 4, !dbg !187
  %shr487 = lshr i32 %294, 0, !dbg !187
  %conv488 = trunc i32 %shr487 to i8, !dbg !187
  %idxprom489 = zext i8 %conv488 to i64, !dbg !187
  %arrayidx490 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom489, !dbg !187
  %295 = load i32, i32* %arrayidx490, align 4, !dbg !187
  %conv491 = trunc i32 %295 to i8, !dbg !187
  %conv492 = zext i8 %conv491 to i32, !dbg !187
  %or493 = or i32 %or486, %conv492, !dbg !187
  %xor494 = xor i32 %287, %or493, !dbg !188
  store i32 %xor494, i32* %reg0, align 4, !dbg !189
  %296 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !190
  %u495 = bitcast %union.ARIA_u128* %296 to [4 x i32]*, !dbg !191
  %arrayidx496 = getelementptr inbounds [4 x i32], [4 x i32]* %u495, i64 0, i64 1, !dbg !190
  %297 = load i32, i32* %arrayidx496, align 4, !dbg !190
  %298 = load i32, i32* %reg1, align 4, !dbg !192
  %shr497 = lshr i32 %298, 24, !dbg !192
  %conv498 = trunc i32 %shr497 to i8, !dbg !192
  %idxprom499 = zext i8 %conv498 to i64, !dbg !192
  %arrayidx500 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom499, !dbg !192
  %299 = load i32, i32* %arrayidx500, align 4, !dbg !192
  %conv501 = trunc i32 %299 to i8, !dbg !192
  %conv502 = zext i8 %conv501 to i32, !dbg !192
  %shl503 = shl i32 %conv502, 24, !dbg !192
  %300 = load i32, i32* %reg1, align 4, !dbg !192
  %shr504 = lshr i32 %300, 16, !dbg !192
  %conv505 = trunc i32 %shr504 to i8, !dbg !192
  %idxprom506 = zext i8 %conv505 to i64, !dbg !192
  %arrayidx507 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom506, !dbg !192
  %301 = load i32, i32* %arrayidx507, align 4, !dbg !192
  %shr508 = lshr i32 %301, 8, !dbg !192
  %conv509 = trunc i32 %shr508 to i8, !dbg !192
  %conv510 = zext i8 %conv509 to i32, !dbg !192
  %shl511 = shl i32 %conv510, 16, !dbg !192
  %or512 = or i32 %shl503, %shl511, !dbg !192
  %302 = load i32, i32* %reg1, align 4, !dbg !192
  %shr513 = lshr i32 %302, 8, !dbg !192
  %conv514 = trunc i32 %shr513 to i8, !dbg !192
  %idxprom515 = zext i8 %conv514 to i64, !dbg !192
  %arrayidx516 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom515, !dbg !192
  %303 = load i32, i32* %arrayidx516, align 4, !dbg !192
  %conv517 = trunc i32 %303 to i8, !dbg !192
  %conv518 = zext i8 %conv517 to i32, !dbg !192
  %shl519 = shl i32 %conv518, 8, !dbg !192
  %or520 = or i32 %or512, %shl519, !dbg !192
  %304 = load i32, i32* %reg1, align 4, !dbg !192
  %shr521 = lshr i32 %304, 0, !dbg !192
  %conv522 = trunc i32 %shr521 to i8, !dbg !192
  %idxprom523 = zext i8 %conv522 to i64, !dbg !192
  %arrayidx524 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom523, !dbg !192
  %305 = load i32, i32* %arrayidx524, align 4, !dbg !192
  %conv525 = trunc i32 %305 to i8, !dbg !192
  %conv526 = zext i8 %conv525 to i32, !dbg !192
  %or527 = or i32 %or520, %conv526, !dbg !192
  %xor528 = xor i32 %297, %or527, !dbg !193
  store i32 %xor528, i32* %reg1, align 4, !dbg !194
  %306 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !195
  %u529 = bitcast %union.ARIA_u128* %306 to [4 x i32]*, !dbg !196
  %arrayidx530 = getelementptr inbounds [4 x i32], [4 x i32]* %u529, i64 0, i64 2, !dbg !195
  %307 = load i32, i32* %arrayidx530, align 4, !dbg !195
  %308 = load i32, i32* %reg2, align 4, !dbg !197
  %shr531 = lshr i32 %308, 24, !dbg !197
  %conv532 = trunc i32 %shr531 to i8, !dbg !197
  %idxprom533 = zext i8 %conv532 to i64, !dbg !197
  %arrayidx534 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom533, !dbg !197
  %309 = load i32, i32* %arrayidx534, align 4, !dbg !197
  %conv535 = trunc i32 %309 to i8, !dbg !197
  %conv536 = zext i8 %conv535 to i32, !dbg !197
  %shl537 = shl i32 %conv536, 24, !dbg !197
  %310 = load i32, i32* %reg2, align 4, !dbg !197
  %shr538 = lshr i32 %310, 16, !dbg !197
  %conv539 = trunc i32 %shr538 to i8, !dbg !197
  %idxprom540 = zext i8 %conv539 to i64, !dbg !197
  %arrayidx541 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom540, !dbg !197
  %311 = load i32, i32* %arrayidx541, align 4, !dbg !197
  %shr542 = lshr i32 %311, 8, !dbg !197
  %conv543 = trunc i32 %shr542 to i8, !dbg !197
  %conv544 = zext i8 %conv543 to i32, !dbg !197
  %shl545 = shl i32 %conv544, 16, !dbg !197
  %or546 = or i32 %shl537, %shl545, !dbg !197
  %312 = load i32, i32* %reg2, align 4, !dbg !197
  %shr547 = lshr i32 %312, 8, !dbg !197
  %conv548 = trunc i32 %shr547 to i8, !dbg !197
  %idxprom549 = zext i8 %conv548 to i64, !dbg !197
  %arrayidx550 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom549, !dbg !197
  %313 = load i32, i32* %arrayidx550, align 4, !dbg !197
  %conv551 = trunc i32 %313 to i8, !dbg !197
  %conv552 = zext i8 %conv551 to i32, !dbg !197
  %shl553 = shl i32 %conv552, 8, !dbg !197
  %or554 = or i32 %or546, %shl553, !dbg !197
  %314 = load i32, i32* %reg2, align 4, !dbg !197
  %shr555 = lshr i32 %314, 0, !dbg !197
  %conv556 = trunc i32 %shr555 to i8, !dbg !197
  %idxprom557 = zext i8 %conv556 to i64, !dbg !197
  %arrayidx558 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom557, !dbg !197
  %315 = load i32, i32* %arrayidx558, align 4, !dbg !197
  %conv559 = trunc i32 %315 to i8, !dbg !197
  %conv560 = zext i8 %conv559 to i32, !dbg !197
  %or561 = or i32 %or554, %conv560, !dbg !197
  %xor562 = xor i32 %307, %or561, !dbg !198
  store i32 %xor562, i32* %reg2, align 4, !dbg !199
  %316 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !200
  %u563 = bitcast %union.ARIA_u128* %316 to [4 x i32]*, !dbg !201
  %arrayidx564 = getelementptr inbounds [4 x i32], [4 x i32]* %u563, i64 0, i64 3, !dbg !200
  %317 = load i32, i32* %arrayidx564, align 4, !dbg !200
  %318 = load i32, i32* %reg3, align 4, !dbg !202
  %shr565 = lshr i32 %318, 24, !dbg !202
  %conv566 = trunc i32 %shr565 to i8, !dbg !202
  %idxprom567 = zext i8 %conv566 to i64, !dbg !202
  %arrayidx568 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom567, !dbg !202
  %319 = load i32, i32* %arrayidx568, align 4, !dbg !202
  %conv569 = trunc i32 %319 to i8, !dbg !202
  %conv570 = zext i8 %conv569 to i32, !dbg !202
  %shl571 = shl i32 %conv570, 24, !dbg !202
  %320 = load i32, i32* %reg3, align 4, !dbg !202
  %shr572 = lshr i32 %320, 16, !dbg !202
  %conv573 = trunc i32 %shr572 to i8, !dbg !202
  %idxprom574 = zext i8 %conv573 to i64, !dbg !202
  %arrayidx575 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom574, !dbg !202
  %321 = load i32, i32* %arrayidx575, align 4, !dbg !202
  %shr576 = lshr i32 %321, 8, !dbg !202
  %conv577 = trunc i32 %shr576 to i8, !dbg !202
  %conv578 = zext i8 %conv577 to i32, !dbg !202
  %shl579 = shl i32 %conv578, 16, !dbg !202
  %or580 = or i32 %shl571, %shl579, !dbg !202
  %322 = load i32, i32* %reg3, align 4, !dbg !202
  %shr581 = lshr i32 %322, 8, !dbg !202
  %conv582 = trunc i32 %shr581 to i8, !dbg !202
  %idxprom583 = zext i8 %conv582 to i64, !dbg !202
  %arrayidx584 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom583, !dbg !202
  %323 = load i32, i32* %arrayidx584, align 4, !dbg !202
  %conv585 = trunc i32 %323 to i8, !dbg !202
  %conv586 = zext i8 %conv585 to i32, !dbg !202
  %shl587 = shl i32 %conv586, 8, !dbg !202
  %or588 = or i32 %or580, %shl587, !dbg !202
  %324 = load i32, i32* %reg3, align 4, !dbg !202
  %shr589 = lshr i32 %324, 0, !dbg !202
  %conv590 = trunc i32 %shr589 to i8, !dbg !202
  %idxprom591 = zext i8 %conv590 to i64, !dbg !202
  %arrayidx592 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom591, !dbg !202
  %325 = load i32, i32* %arrayidx592, align 4, !dbg !202
  %conv593 = trunc i32 %325 to i8, !dbg !202
  %conv594 = zext i8 %conv593 to i32, !dbg !202
  %or595 = or i32 %or588, %conv594, !dbg !202
  %xor596 = xor i32 %317, %or595, !dbg !203
  store i32 %xor596, i32* %reg3, align 4, !dbg !204
  br label %do.body597, !dbg !205

do.body597:                                       ; preds = %while.end
  %326 = load i32, i32* %reg0, align 4, !dbg !206
  %shr598 = lshr i32 %326, 24, !dbg !206
  %conv599 = trunc i32 %shr598 to i8, !dbg !206
  %327 = load i8*, i8** %out.addr, align 8, !dbg !206
  %arrayidx600 = getelementptr inbounds i8, i8* %327, i64 0, !dbg !206
  store i8 %conv599, i8* %arrayidx600, align 1, !dbg !206
  %328 = load i32, i32* %reg0, align 4, !dbg !206
  %shr601 = lshr i32 %328, 16, !dbg !206
  %conv602 = trunc i32 %shr601 to i8, !dbg !206
  %329 = load i8*, i8** %out.addr, align 8, !dbg !206
  %arrayidx603 = getelementptr inbounds i8, i8* %329, i64 1, !dbg !206
  store i8 %conv602, i8* %arrayidx603, align 1, !dbg !206
  %330 = load i32, i32* %reg0, align 4, !dbg !206
  %shr604 = lshr i32 %330, 8, !dbg !206
  %conv605 = trunc i32 %shr604 to i8, !dbg !206
  %331 = load i8*, i8** %out.addr, align 8, !dbg !206
  %arrayidx606 = getelementptr inbounds i8, i8* %331, i64 2, !dbg !206
  store i8 %conv605, i8* %arrayidx606, align 1, !dbg !206
  %332 = load i32, i32* %reg0, align 4, !dbg !206
  %shr607 = lshr i32 %332, 0, !dbg !206
  %conv608 = trunc i32 %shr607 to i8, !dbg !206
  %333 = load i8*, i8** %out.addr, align 8, !dbg !206
  %arrayidx609 = getelementptr inbounds i8, i8* %333, i64 3, !dbg !206
  store i8 %conv608, i8* %arrayidx609, align 1, !dbg !206
  br label %do.end610, !dbg !206

do.end610:                                        ; preds = %do.body597
  br label %do.body611, !dbg !208

do.body611:                                       ; preds = %do.end610
  %334 = load i32, i32* %reg1, align 4, !dbg !209
  %shr612 = lshr i32 %334, 24, !dbg !209
  %conv613 = trunc i32 %shr612 to i8, !dbg !209
  %335 = load i8*, i8** %out.addr, align 8, !dbg !209
  %arrayidx614 = getelementptr inbounds i8, i8* %335, i64 4, !dbg !209
  store i8 %conv613, i8* %arrayidx614, align 1, !dbg !209
  %336 = load i32, i32* %reg1, align 4, !dbg !209
  %shr615 = lshr i32 %336, 16, !dbg !209
  %conv616 = trunc i32 %shr615 to i8, !dbg !209
  %337 = load i8*, i8** %out.addr, align 8, !dbg !209
  %arrayidx617 = getelementptr inbounds i8, i8* %337, i64 5, !dbg !209
  store i8 %conv616, i8* %arrayidx617, align 1, !dbg !209
  %338 = load i32, i32* %reg1, align 4, !dbg !209
  %shr618 = lshr i32 %338, 8, !dbg !209
  %conv619 = trunc i32 %shr618 to i8, !dbg !209
  %339 = load i8*, i8** %out.addr, align 8, !dbg !209
  %arrayidx620 = getelementptr inbounds i8, i8* %339, i64 6, !dbg !209
  store i8 %conv619, i8* %arrayidx620, align 1, !dbg !209
  %340 = load i32, i32* %reg1, align 4, !dbg !209
  %shr621 = lshr i32 %340, 0, !dbg !209
  %conv622 = trunc i32 %shr621 to i8, !dbg !209
  %341 = load i8*, i8** %out.addr, align 8, !dbg !209
  %arrayidx623 = getelementptr inbounds i8, i8* %341, i64 7, !dbg !209
  store i8 %conv622, i8* %arrayidx623, align 1, !dbg !209
  br label %do.end624, !dbg !209

do.end624:                                        ; preds = %do.body611
  br label %do.body625, !dbg !211

do.body625:                                       ; preds = %do.end624
  %342 = load i32, i32* %reg2, align 4, !dbg !212
  %shr626 = lshr i32 %342, 24, !dbg !212
  %conv627 = trunc i32 %shr626 to i8, !dbg !212
  %343 = load i8*, i8** %out.addr, align 8, !dbg !212
  %arrayidx628 = getelementptr inbounds i8, i8* %343, i64 8, !dbg !212
  store i8 %conv627, i8* %arrayidx628, align 1, !dbg !212
  %344 = load i32, i32* %reg2, align 4, !dbg !212
  %shr629 = lshr i32 %344, 16, !dbg !212
  %conv630 = trunc i32 %shr629 to i8, !dbg !212
  %345 = load i8*, i8** %out.addr, align 8, !dbg !212
  %arrayidx631 = getelementptr inbounds i8, i8* %345, i64 9, !dbg !212
  store i8 %conv630, i8* %arrayidx631, align 1, !dbg !212
  %346 = load i32, i32* %reg2, align 4, !dbg !212
  %shr632 = lshr i32 %346, 8, !dbg !212
  %conv633 = trunc i32 %shr632 to i8, !dbg !212
  %347 = load i8*, i8** %out.addr, align 8, !dbg !212
  %arrayidx634 = getelementptr inbounds i8, i8* %347, i64 10, !dbg !212
  store i8 %conv633, i8* %arrayidx634, align 1, !dbg !212
  %348 = load i32, i32* %reg2, align 4, !dbg !212
  %shr635 = lshr i32 %348, 0, !dbg !212
  %conv636 = trunc i32 %shr635 to i8, !dbg !212
  %349 = load i8*, i8** %out.addr, align 8, !dbg !212
  %arrayidx637 = getelementptr inbounds i8, i8* %349, i64 11, !dbg !212
  store i8 %conv636, i8* %arrayidx637, align 1, !dbg !212
  br label %do.end638, !dbg !212

do.end638:                                        ; preds = %do.body625
  br label %do.body639, !dbg !214

do.body639:                                       ; preds = %do.end638
  %350 = load i32, i32* %reg3, align 4, !dbg !215
  %shr640 = lshr i32 %350, 24, !dbg !215
  %conv641 = trunc i32 %shr640 to i8, !dbg !215
  %351 = load i8*, i8** %out.addr, align 8, !dbg !215
  %arrayidx642 = getelementptr inbounds i8, i8* %351, i64 12, !dbg !215
  store i8 %conv641, i8* %arrayidx642, align 1, !dbg !215
  %352 = load i32, i32* %reg3, align 4, !dbg !215
  %shr643 = lshr i32 %352, 16, !dbg !215
  %conv644 = trunc i32 %shr643 to i8, !dbg !215
  %353 = load i8*, i8** %out.addr, align 8, !dbg !215
  %arrayidx645 = getelementptr inbounds i8, i8* %353, i64 13, !dbg !215
  store i8 %conv644, i8* %arrayidx645, align 1, !dbg !215
  %354 = load i32, i32* %reg3, align 4, !dbg !215
  %shr646 = lshr i32 %354, 8, !dbg !215
  %conv647 = trunc i32 %shr646 to i8, !dbg !215
  %355 = load i8*, i8** %out.addr, align 8, !dbg !215
  %arrayidx648 = getelementptr inbounds i8, i8* %355, i64 14, !dbg !215
  store i8 %conv647, i8* %arrayidx648, align 1, !dbg !215
  %356 = load i32, i32* %reg3, align 4, !dbg !215
  %shr649 = lshr i32 %356, 0, !dbg !215
  %conv650 = trunc i32 %shr649 to i8, !dbg !215
  %357 = load i8*, i8** %out.addr, align 8, !dbg !215
  %arrayidx651 = getelementptr inbounds i8, i8* %357, i64 15, !dbg !215
  store i8 %conv650, i8* %arrayidx651, align 1, !dbg !215
  br label %do.end652, !dbg !215

do.end652:                                        ; preds = %if.then, %if.then10, %do.body639
  ret void, !dbg !217
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @aria_set_encrypt_key(i8* %userKey, i32 %bits, %struct.aria_key_st* %key) #0 !dbg !218 {
entry:
  %retval = alloca i32, align 4
  %userKey.addr = alloca i8*, align 8
  %bits.addr = alloca i32, align 4
  %key.addr = alloca %struct.aria_key_st*, align 8
  %reg0 = alloca i32, align 4
  %reg1 = alloca i32, align 4
  %reg2 = alloca i32, align 4
  %reg3 = alloca i32, align 4
  %w0 = alloca [4 x i32], align 16
  %w1 = alloca [4 x i32], align 16
  %w2 = alloca [4 x i32], align 16
  %w3 = alloca [4 x i32], align 16
  %ck = alloca i32*, align 8
  %rk = alloca %union.ARIA_u128*, align 8
  %Nr = alloca i32, align 4
  store i8* %userKey, i8** %userKey.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %userKey.addr, metadata !223, metadata !DIExpression()), !dbg !224
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !225, metadata !DIExpression()), !dbg !226
  store %struct.aria_key_st* %key, %struct.aria_key_st** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.aria_key_st** %key.addr, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata i32* %reg0, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %reg1, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %reg2, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %reg3, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata [4 x i32]* %w0, metadata !237, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata [4 x i32]* %w1, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata [4 x i32]* %w2, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata [4 x i32]* %w3, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i32** %ck, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata %union.ARIA_u128** %rk, metadata !249, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %Nr, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load i32, i32* %bits.addr, align 4, !dbg !254
  %add = add nsw i32 %0, 256, !dbg !255
  %div = sdiv i32 %add, 32, !dbg !256
  store i32 %div, i32* %Nr, align 4, !dbg !253
  %1 = load i8*, i8** %userKey.addr, align 8, !dbg !257
  %cmp = icmp eq i8* %1, null, !dbg !259
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !260

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr, align 8, !dbg !261
  %cmp1 = icmp eq %struct.aria_key_st* %2, null, !dbg !262
  br i1 %cmp1, label %if.then, label %if.end, !dbg !263

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !264
  br label %return, !dbg !264

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %bits.addr, align 4, !dbg !266
  %cmp2 = icmp ne i32 %3, 128, !dbg !268
  br i1 %cmp2, label %land.lhs.true, label %if.end7, !dbg !269

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %bits.addr, align 4, !dbg !270
  %cmp3 = icmp ne i32 %4, 192, !dbg !271
  br i1 %cmp3, label %land.lhs.true4, label %if.end7, !dbg !272

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* %bits.addr, align 4, !dbg !273
  %cmp5 = icmp ne i32 %5, 256, !dbg !274
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !275

if.then6:                                         ; preds = %land.lhs.true4
  store i32 -2, i32* %retval, align 4, !dbg !276
  br label %return, !dbg !276

if.end7:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %6 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr, align 8, !dbg !278
  %rd_key = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %6, i32 0, i32 0, !dbg !279
  %arraydecay = getelementptr inbounds [17 x %union.ARIA_u128], [17 x %union.ARIA_u128]* %rd_key, i64 0, i64 0, !dbg !278
  store %union.ARIA_u128* %arraydecay, %union.ARIA_u128** %rk, align 8, !dbg !280
  %7 = load i32, i32* %Nr, align 4, !dbg !281
  %8 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr, align 8, !dbg !282
  %rounds = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %8, i32 0, i32 1, !dbg !283
  store i32 %7, i32* %rounds, align 4, !dbg !284
  %9 = load i32, i32* %bits.addr, align 4, !dbg !285
  %sub = sub nsw i32 %9, 128, !dbg !286
  %div8 = sdiv i32 %sub, 64, !dbg !287
  %idxprom = sext i32 %div8 to i64, !dbg !288
  %arrayidx = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @Key_RC, i64 0, i64 %idxprom, !dbg !288
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 0, !dbg !288
  store i32* %arrayidx9, i32** %ck, align 8, !dbg !289
  %10 = load i8*, i8** %userKey.addr, align 8, !dbg !290
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !290
  %11 = load i8, i8* %arrayidx10, align 1, !dbg !290
  %conv = zext i8 %11 to i32, !dbg !290
  %shl = shl i32 %conv, 24, !dbg !290
  %12 = load i8*, i8** %userKey.addr, align 8, !dbg !290
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !290
  %13 = load i8, i8* %arrayidx11, align 1, !dbg !290
  %conv12 = zext i8 %13 to i32, !dbg !290
  %shl13 = shl i32 %conv12, 16, !dbg !290
  %xor = xor i32 %shl, %shl13, !dbg !290
  %14 = load i8*, i8** %userKey.addr, align 8, !dbg !290
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !290
  %15 = load i8, i8* %arrayidx14, align 1, !dbg !290
  %conv15 = zext i8 %15 to i32, !dbg !290
  %shl16 = shl i32 %conv15, 8, !dbg !290
  %xor17 = xor i32 %xor, %shl16, !dbg !290
  %16 = load i8*, i8** %userKey.addr, align 8, !dbg !290
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 3, !dbg !290
  %17 = load i8, i8* %arrayidx18, align 1, !dbg !290
  %conv19 = zext i8 %17 to i32, !dbg !290
  %xor20 = xor i32 %xor17, %conv19, !dbg !290
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !291
  store i32 %xor20, i32* %arrayidx21, align 16, !dbg !292
  %18 = load i8*, i8** %userKey.addr, align 8, !dbg !293
  %arrayidx22 = getelementptr inbounds i8, i8* %18, i64 4, !dbg !293
  %19 = load i8, i8* %arrayidx22, align 1, !dbg !293
  %conv23 = zext i8 %19 to i32, !dbg !293
  %shl24 = shl i32 %conv23, 24, !dbg !293
  %20 = load i8*, i8** %userKey.addr, align 8, !dbg !293
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 5, !dbg !293
  %21 = load i8, i8* %arrayidx25, align 1, !dbg !293
  %conv26 = zext i8 %21 to i32, !dbg !293
  %shl27 = shl i32 %conv26, 16, !dbg !293
  %xor28 = xor i32 %shl24, %shl27, !dbg !293
  %22 = load i8*, i8** %userKey.addr, align 8, !dbg !293
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 6, !dbg !293
  %23 = load i8, i8* %arrayidx29, align 1, !dbg !293
  %conv30 = zext i8 %23 to i32, !dbg !293
  %shl31 = shl i32 %conv30, 8, !dbg !293
  %xor32 = xor i32 %xor28, %shl31, !dbg !293
  %24 = load i8*, i8** %userKey.addr, align 8, !dbg !293
  %arrayidx33 = getelementptr inbounds i8, i8* %24, i64 7, !dbg !293
  %25 = load i8, i8* %arrayidx33, align 1, !dbg !293
  %conv34 = zext i8 %25 to i32, !dbg !293
  %xor35 = xor i32 %xor32, %conv34, !dbg !293
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !294
  store i32 %xor35, i32* %arrayidx36, align 4, !dbg !295
  %26 = load i8*, i8** %userKey.addr, align 8, !dbg !296
  %arrayidx37 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !296
  %27 = load i8, i8* %arrayidx37, align 1, !dbg !296
  %conv38 = zext i8 %27 to i32, !dbg !296
  %shl39 = shl i32 %conv38, 24, !dbg !296
  %28 = load i8*, i8** %userKey.addr, align 8, !dbg !296
  %arrayidx40 = getelementptr inbounds i8, i8* %28, i64 9, !dbg !296
  %29 = load i8, i8* %arrayidx40, align 1, !dbg !296
  %conv41 = zext i8 %29 to i32, !dbg !296
  %shl42 = shl i32 %conv41, 16, !dbg !296
  %xor43 = xor i32 %shl39, %shl42, !dbg !296
  %30 = load i8*, i8** %userKey.addr, align 8, !dbg !296
  %arrayidx44 = getelementptr inbounds i8, i8* %30, i64 10, !dbg !296
  %31 = load i8, i8* %arrayidx44, align 1, !dbg !296
  %conv45 = zext i8 %31 to i32, !dbg !296
  %shl46 = shl i32 %conv45, 8, !dbg !296
  %xor47 = xor i32 %xor43, %shl46, !dbg !296
  %32 = load i8*, i8** %userKey.addr, align 8, !dbg !296
  %arrayidx48 = getelementptr inbounds i8, i8* %32, i64 11, !dbg !296
  %33 = load i8, i8* %arrayidx48, align 1, !dbg !296
  %conv49 = zext i8 %33 to i32, !dbg !296
  %xor50 = xor i32 %xor47, %conv49, !dbg !296
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !297
  store i32 %xor50, i32* %arrayidx51, align 8, !dbg !298
  %34 = load i8*, i8** %userKey.addr, align 8, !dbg !299
  %arrayidx52 = getelementptr inbounds i8, i8* %34, i64 12, !dbg !299
  %35 = load i8, i8* %arrayidx52, align 1, !dbg !299
  %conv53 = zext i8 %35 to i32, !dbg !299
  %shl54 = shl i32 %conv53, 24, !dbg !299
  %36 = load i8*, i8** %userKey.addr, align 8, !dbg !299
  %arrayidx55 = getelementptr inbounds i8, i8* %36, i64 13, !dbg !299
  %37 = load i8, i8* %arrayidx55, align 1, !dbg !299
  %conv56 = zext i8 %37 to i32, !dbg !299
  %shl57 = shl i32 %conv56, 16, !dbg !299
  %xor58 = xor i32 %shl54, %shl57, !dbg !299
  %38 = load i8*, i8** %userKey.addr, align 8, !dbg !299
  %arrayidx59 = getelementptr inbounds i8, i8* %38, i64 14, !dbg !299
  %39 = load i8, i8* %arrayidx59, align 1, !dbg !299
  %conv60 = zext i8 %39 to i32, !dbg !299
  %shl61 = shl i32 %conv60, 8, !dbg !299
  %xor62 = xor i32 %xor58, %shl61, !dbg !299
  %40 = load i8*, i8** %userKey.addr, align 8, !dbg !299
  %arrayidx63 = getelementptr inbounds i8, i8* %40, i64 15, !dbg !299
  %41 = load i8, i8* %arrayidx63, align 1, !dbg !299
  %conv64 = zext i8 %41 to i32, !dbg !299
  %xor65 = xor i32 %xor62, %conv64, !dbg !299
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !300
  store i32 %xor65, i32* %arrayidx66, align 4, !dbg !301
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !302
  %42 = load i32, i32* %arrayidx67, align 16, !dbg !302
  %43 = load i32*, i32** %ck, align 8, !dbg !303
  %arrayidx68 = getelementptr inbounds i32, i32* %43, i64 0, !dbg !303
  %44 = load i32, i32* %arrayidx68, align 4, !dbg !303
  %xor69 = xor i32 %42, %44, !dbg !304
  store i32 %xor69, i32* %reg0, align 4, !dbg !305
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !306
  %45 = load i32, i32* %arrayidx70, align 4, !dbg !306
  %46 = load i32*, i32** %ck, align 8, !dbg !307
  %arrayidx71 = getelementptr inbounds i32, i32* %46, i64 1, !dbg !307
  %47 = load i32, i32* %arrayidx71, align 4, !dbg !307
  %xor72 = xor i32 %45, %47, !dbg !308
  store i32 %xor72, i32* %reg1, align 4, !dbg !309
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !310
  %48 = load i32, i32* %arrayidx73, align 8, !dbg !310
  %49 = load i32*, i32** %ck, align 8, !dbg !311
  %arrayidx74 = getelementptr inbounds i32, i32* %49, i64 2, !dbg !311
  %50 = load i32, i32* %arrayidx74, align 4, !dbg !311
  %xor75 = xor i32 %48, %50, !dbg !312
  store i32 %xor75, i32* %reg2, align 4, !dbg !313
  %arrayidx76 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !314
  %51 = load i32, i32* %arrayidx76, align 4, !dbg !314
  %52 = load i32*, i32** %ck, align 8, !dbg !315
  %arrayidx77 = getelementptr inbounds i32, i32* %52, i64 3, !dbg !315
  %53 = load i32, i32* %arrayidx77, align 4, !dbg !315
  %xor78 = xor i32 %51, %53, !dbg !316
  store i32 %xor78, i32* %reg3, align 4, !dbg !317
  br label %do.body, !dbg !318

do.body:                                          ; preds = %if.end7
  br label %do.body79, !dbg !319

do.body79:                                        ; preds = %do.body
  %54 = load i32, i32* %reg0, align 4, !dbg !321
  %shr = lshr i32 %54, 24, !dbg !321
  %conv80 = trunc i32 %shr to i8, !dbg !321
  %idxprom81 = zext i8 %conv80 to i64, !dbg !321
  %arrayidx82 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom81, !dbg !321
  %55 = load i32, i32* %arrayidx82, align 4, !dbg !321
  %56 = load i32, i32* %reg0, align 4, !dbg !321
  %shr83 = lshr i32 %56, 16, !dbg !321
  %conv84 = trunc i32 %shr83 to i8, !dbg !321
  %idxprom85 = zext i8 %conv84 to i64, !dbg !321
  %arrayidx86 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom85, !dbg !321
  %57 = load i32, i32* %arrayidx86, align 4, !dbg !321
  %xor87 = xor i32 %55, %57, !dbg !321
  %58 = load i32, i32* %reg0, align 4, !dbg !321
  %shr88 = lshr i32 %58, 8, !dbg !321
  %conv89 = trunc i32 %shr88 to i8, !dbg !321
  %idxprom90 = zext i8 %conv89 to i64, !dbg !321
  %arrayidx91 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom90, !dbg !321
  %59 = load i32, i32* %arrayidx91, align 4, !dbg !321
  %xor92 = xor i32 %xor87, %59, !dbg !321
  %60 = load i32, i32* %reg0, align 4, !dbg !321
  %shr93 = lshr i32 %60, 0, !dbg !321
  %conv94 = trunc i32 %shr93 to i8, !dbg !321
  %idxprom95 = zext i8 %conv94 to i64, !dbg !321
  %arrayidx96 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom95, !dbg !321
  %61 = load i32, i32* %arrayidx96, align 4, !dbg !321
  %xor97 = xor i32 %xor92, %61, !dbg !321
  store i32 %xor97, i32* %reg0, align 4, !dbg !321
  %62 = load i32, i32* %reg1, align 4, !dbg !321
  %shr98 = lshr i32 %62, 24, !dbg !321
  %conv99 = trunc i32 %shr98 to i8, !dbg !321
  %idxprom100 = zext i8 %conv99 to i64, !dbg !321
  %arrayidx101 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom100, !dbg !321
  %63 = load i32, i32* %arrayidx101, align 4, !dbg !321
  %64 = load i32, i32* %reg1, align 4, !dbg !321
  %shr102 = lshr i32 %64, 16, !dbg !321
  %conv103 = trunc i32 %shr102 to i8, !dbg !321
  %idxprom104 = zext i8 %conv103 to i64, !dbg !321
  %arrayidx105 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom104, !dbg !321
  %65 = load i32, i32* %arrayidx105, align 4, !dbg !321
  %xor106 = xor i32 %63, %65, !dbg !321
  %66 = load i32, i32* %reg1, align 4, !dbg !321
  %shr107 = lshr i32 %66, 8, !dbg !321
  %conv108 = trunc i32 %shr107 to i8, !dbg !321
  %idxprom109 = zext i8 %conv108 to i64, !dbg !321
  %arrayidx110 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom109, !dbg !321
  %67 = load i32, i32* %arrayidx110, align 4, !dbg !321
  %xor111 = xor i32 %xor106, %67, !dbg !321
  %68 = load i32, i32* %reg1, align 4, !dbg !321
  %shr112 = lshr i32 %68, 0, !dbg !321
  %conv113 = trunc i32 %shr112 to i8, !dbg !321
  %idxprom114 = zext i8 %conv113 to i64, !dbg !321
  %arrayidx115 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom114, !dbg !321
  %69 = load i32, i32* %arrayidx115, align 4, !dbg !321
  %xor116 = xor i32 %xor111, %69, !dbg !321
  store i32 %xor116, i32* %reg1, align 4, !dbg !321
  %70 = load i32, i32* %reg2, align 4, !dbg !321
  %shr117 = lshr i32 %70, 24, !dbg !321
  %conv118 = trunc i32 %shr117 to i8, !dbg !321
  %idxprom119 = zext i8 %conv118 to i64, !dbg !321
  %arrayidx120 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom119, !dbg !321
  %71 = load i32, i32* %arrayidx120, align 4, !dbg !321
  %72 = load i32, i32* %reg2, align 4, !dbg !321
  %shr121 = lshr i32 %72, 16, !dbg !321
  %conv122 = trunc i32 %shr121 to i8, !dbg !321
  %idxprom123 = zext i8 %conv122 to i64, !dbg !321
  %arrayidx124 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom123, !dbg !321
  %73 = load i32, i32* %arrayidx124, align 4, !dbg !321
  %xor125 = xor i32 %71, %73, !dbg !321
  %74 = load i32, i32* %reg2, align 4, !dbg !321
  %shr126 = lshr i32 %74, 8, !dbg !321
  %conv127 = trunc i32 %shr126 to i8, !dbg !321
  %idxprom128 = zext i8 %conv127 to i64, !dbg !321
  %arrayidx129 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom128, !dbg !321
  %75 = load i32, i32* %arrayidx129, align 4, !dbg !321
  %xor130 = xor i32 %xor125, %75, !dbg !321
  %76 = load i32, i32* %reg2, align 4, !dbg !321
  %shr131 = lshr i32 %76, 0, !dbg !321
  %conv132 = trunc i32 %shr131 to i8, !dbg !321
  %idxprom133 = zext i8 %conv132 to i64, !dbg !321
  %arrayidx134 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom133, !dbg !321
  %77 = load i32, i32* %arrayidx134, align 4, !dbg !321
  %xor135 = xor i32 %xor130, %77, !dbg !321
  store i32 %xor135, i32* %reg2, align 4, !dbg !321
  %78 = load i32, i32* %reg3, align 4, !dbg !321
  %shr136 = lshr i32 %78, 24, !dbg !321
  %conv137 = trunc i32 %shr136 to i8, !dbg !321
  %idxprom138 = zext i8 %conv137 to i64, !dbg !321
  %arrayidx139 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom138, !dbg !321
  %79 = load i32, i32* %arrayidx139, align 4, !dbg !321
  %80 = load i32, i32* %reg3, align 4, !dbg !321
  %shr140 = lshr i32 %80, 16, !dbg !321
  %conv141 = trunc i32 %shr140 to i8, !dbg !321
  %idxprom142 = zext i8 %conv141 to i64, !dbg !321
  %arrayidx143 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom142, !dbg !321
  %81 = load i32, i32* %arrayidx143, align 4, !dbg !321
  %xor144 = xor i32 %79, %81, !dbg !321
  %82 = load i32, i32* %reg3, align 4, !dbg !321
  %shr145 = lshr i32 %82, 8, !dbg !321
  %conv146 = trunc i32 %shr145 to i8, !dbg !321
  %idxprom147 = zext i8 %conv146 to i64, !dbg !321
  %arrayidx148 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom147, !dbg !321
  %83 = load i32, i32* %arrayidx148, align 4, !dbg !321
  %xor149 = xor i32 %xor144, %83, !dbg !321
  %84 = load i32, i32* %reg3, align 4, !dbg !321
  %shr150 = lshr i32 %84, 0, !dbg !321
  %conv151 = trunc i32 %shr150 to i8, !dbg !321
  %idxprom152 = zext i8 %conv151 to i64, !dbg !321
  %arrayidx153 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom152, !dbg !321
  %85 = load i32, i32* %arrayidx153, align 4, !dbg !321
  %xor154 = xor i32 %xor149, %85, !dbg !321
  store i32 %xor154, i32* %reg3, align 4, !dbg !321
  br label %do.end, !dbg !321

do.end:                                           ; preds = %do.body79
  br label %do.body155, !dbg !319

do.body155:                                       ; preds = %do.end
  %86 = load i32, i32* %reg2, align 4, !dbg !323
  %87 = load i32, i32* %reg1, align 4, !dbg !323
  %xor156 = xor i32 %87, %86, !dbg !323
  store i32 %xor156, i32* %reg1, align 4, !dbg !323
  %88 = load i32, i32* %reg3, align 4, !dbg !323
  %89 = load i32, i32* %reg2, align 4, !dbg !323
  %xor157 = xor i32 %89, %88, !dbg !323
  store i32 %xor157, i32* %reg2, align 4, !dbg !323
  %90 = load i32, i32* %reg1, align 4, !dbg !323
  %91 = load i32, i32* %reg0, align 4, !dbg !323
  %xor158 = xor i32 %91, %90, !dbg !323
  store i32 %xor158, i32* %reg0, align 4, !dbg !323
  %92 = load i32, i32* %reg1, align 4, !dbg !323
  %93 = load i32, i32* %reg3, align 4, !dbg !323
  %xor159 = xor i32 %93, %92, !dbg !323
  store i32 %xor159, i32* %reg3, align 4, !dbg !323
  %94 = load i32, i32* %reg0, align 4, !dbg !323
  %95 = load i32, i32* %reg2, align 4, !dbg !323
  %xor160 = xor i32 %95, %94, !dbg !323
  store i32 %xor160, i32* %reg2, align 4, !dbg !323
  %96 = load i32, i32* %reg2, align 4, !dbg !323
  %97 = load i32, i32* %reg1, align 4, !dbg !323
  %xor161 = xor i32 %97, %96, !dbg !323
  store i32 %xor161, i32* %reg1, align 4, !dbg !323
  br label %do.end162, !dbg !323

do.end162:                                        ; preds = %do.body155
  br label %do.body163, !dbg !319

do.body163:                                       ; preds = %do.end162
  %98 = load i32, i32* %reg1, align 4, !dbg !325
  %shl164 = shl i32 %98, 8, !dbg !325
  %and = and i32 %shl164, -16711936, !dbg !325
  %99 = load i32, i32* %reg1, align 4, !dbg !325
  %shr165 = lshr i32 %99, 8, !dbg !325
  %and166 = and i32 %shr165, 16711935, !dbg !325
  %xor167 = xor i32 %and, %and166, !dbg !325
  store i32 %xor167, i32* %reg1, align 4, !dbg !325
  %100 = load i32, i32* %reg2, align 4, !dbg !325
  %shr168 = lshr i32 %100, 16, !dbg !325
  %101 = load i32, i32* %reg2, align 4, !dbg !325
  %shl169 = shl i32 %101, 16, !dbg !325
  %or = or i32 %shr168, %shl169, !dbg !325
  store i32 %or, i32* %reg2, align 4, !dbg !325
  %102 = load i32, i32* %reg3, align 4, !dbg !325
  %shl170 = shl i32 %102, 24, !dbg !325
  %103 = load i32, i32* %reg3, align 4, !dbg !325
  %shr171 = lshr i32 %103, 24, !dbg !325
  %xor172 = xor i32 %shl170, %shr171, !dbg !325
  %104 = load i32, i32* %reg3, align 4, !dbg !325
  %and173 = and i32 %104, 65280, !dbg !325
  %shl174 = shl i32 %and173, 8, !dbg !325
  %xor175 = xor i32 %xor172, %shl174, !dbg !325
  %105 = load i32, i32* %reg3, align 4, !dbg !325
  %and176 = and i32 %105, 16711680, !dbg !325
  %shr177 = lshr i32 %and176, 8, !dbg !325
  %xor178 = xor i32 %xor175, %shr177, !dbg !325
  store i32 %xor178, i32* %reg3, align 4, !dbg !325
  br label %do.end179, !dbg !325

do.end179:                                        ; preds = %do.body163
  br label %do.body180, !dbg !319

do.body180:                                       ; preds = %do.end179
  %106 = load i32, i32* %reg2, align 4, !dbg !327
  %107 = load i32, i32* %reg1, align 4, !dbg !327
  %xor181 = xor i32 %107, %106, !dbg !327
  store i32 %xor181, i32* %reg1, align 4, !dbg !327
  %108 = load i32, i32* %reg3, align 4, !dbg !327
  %109 = load i32, i32* %reg2, align 4, !dbg !327
  %xor182 = xor i32 %109, %108, !dbg !327
  store i32 %xor182, i32* %reg2, align 4, !dbg !327
  %110 = load i32, i32* %reg1, align 4, !dbg !327
  %111 = load i32, i32* %reg0, align 4, !dbg !327
  %xor183 = xor i32 %111, %110, !dbg !327
  store i32 %xor183, i32* %reg0, align 4, !dbg !327
  %112 = load i32, i32* %reg1, align 4, !dbg !327
  %113 = load i32, i32* %reg3, align 4, !dbg !327
  %xor184 = xor i32 %113, %112, !dbg !327
  store i32 %xor184, i32* %reg3, align 4, !dbg !327
  %114 = load i32, i32* %reg0, align 4, !dbg !327
  %115 = load i32, i32* %reg2, align 4, !dbg !327
  %xor185 = xor i32 %115, %114, !dbg !327
  store i32 %xor185, i32* %reg2, align 4, !dbg !327
  %116 = load i32, i32* %reg2, align 4, !dbg !327
  %117 = load i32, i32* %reg1, align 4, !dbg !327
  %xor186 = xor i32 %117, %116, !dbg !327
  store i32 %xor186, i32* %reg1, align 4, !dbg !327
  br label %do.end187, !dbg !327

do.end187:                                        ; preds = %do.body180
  br label %do.end188, !dbg !319

do.end188:                                        ; preds = %do.end187
  %118 = load i32, i32* %bits.addr, align 4, !dbg !329
  %cmp189 = icmp sgt i32 %118, 128, !dbg !331
  br i1 %cmp189, label %if.then191, label %if.else258, !dbg !332

if.then191:                                       ; preds = %do.end188
  %119 = load i8*, i8** %userKey.addr, align 8, !dbg !333
  %arrayidx192 = getelementptr inbounds i8, i8* %119, i64 16, !dbg !333
  %120 = load i8, i8* %arrayidx192, align 1, !dbg !333
  %conv193 = zext i8 %120 to i32, !dbg !333
  %shl194 = shl i32 %conv193, 24, !dbg !333
  %121 = load i8*, i8** %userKey.addr, align 8, !dbg !333
  %arrayidx195 = getelementptr inbounds i8, i8* %121, i64 17, !dbg !333
  %122 = load i8, i8* %arrayidx195, align 1, !dbg !333
  %conv196 = zext i8 %122 to i32, !dbg !333
  %shl197 = shl i32 %conv196, 16, !dbg !333
  %xor198 = xor i32 %shl194, %shl197, !dbg !333
  %123 = load i8*, i8** %userKey.addr, align 8, !dbg !333
  %arrayidx199 = getelementptr inbounds i8, i8* %123, i64 18, !dbg !333
  %124 = load i8, i8* %arrayidx199, align 1, !dbg !333
  %conv200 = zext i8 %124 to i32, !dbg !333
  %shl201 = shl i32 %conv200, 8, !dbg !333
  %xor202 = xor i32 %xor198, %shl201, !dbg !333
  %125 = load i8*, i8** %userKey.addr, align 8, !dbg !333
  %arrayidx203 = getelementptr inbounds i8, i8* %125, i64 19, !dbg !333
  %126 = load i8, i8* %arrayidx203, align 1, !dbg !333
  %conv204 = zext i8 %126 to i32, !dbg !333
  %xor205 = xor i32 %xor202, %conv204, !dbg !333
  %arrayidx206 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !335
  store i32 %xor205, i32* %arrayidx206, align 16, !dbg !336
  %127 = load i8*, i8** %userKey.addr, align 8, !dbg !337
  %arrayidx207 = getelementptr inbounds i8, i8* %127, i64 20, !dbg !337
  %128 = load i8, i8* %arrayidx207, align 1, !dbg !337
  %conv208 = zext i8 %128 to i32, !dbg !337
  %shl209 = shl i32 %conv208, 24, !dbg !337
  %129 = load i8*, i8** %userKey.addr, align 8, !dbg !337
  %arrayidx210 = getelementptr inbounds i8, i8* %129, i64 21, !dbg !337
  %130 = load i8, i8* %arrayidx210, align 1, !dbg !337
  %conv211 = zext i8 %130 to i32, !dbg !337
  %shl212 = shl i32 %conv211, 16, !dbg !337
  %xor213 = xor i32 %shl209, %shl212, !dbg !337
  %131 = load i8*, i8** %userKey.addr, align 8, !dbg !337
  %arrayidx214 = getelementptr inbounds i8, i8* %131, i64 22, !dbg !337
  %132 = load i8, i8* %arrayidx214, align 1, !dbg !337
  %conv215 = zext i8 %132 to i32, !dbg !337
  %shl216 = shl i32 %conv215, 8, !dbg !337
  %xor217 = xor i32 %xor213, %shl216, !dbg !337
  %133 = load i8*, i8** %userKey.addr, align 8, !dbg !337
  %arrayidx218 = getelementptr inbounds i8, i8* %133, i64 23, !dbg !337
  %134 = load i8, i8* %arrayidx218, align 1, !dbg !337
  %conv219 = zext i8 %134 to i32, !dbg !337
  %xor220 = xor i32 %xor217, %conv219, !dbg !337
  %arrayidx221 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !338
  store i32 %xor220, i32* %arrayidx221, align 4, !dbg !339
  %135 = load i32, i32* %bits.addr, align 4, !dbg !340
  %cmp222 = icmp sgt i32 %135, 192, !dbg !342
  br i1 %cmp222, label %if.then224, label %if.else, !dbg !343

if.then224:                                       ; preds = %if.then191
  %136 = load i8*, i8** %userKey.addr, align 8, !dbg !344
  %arrayidx225 = getelementptr inbounds i8, i8* %136, i64 24, !dbg !344
  %137 = load i8, i8* %arrayidx225, align 1, !dbg !344
  %conv226 = zext i8 %137 to i32, !dbg !344
  %shl227 = shl i32 %conv226, 24, !dbg !344
  %138 = load i8*, i8** %userKey.addr, align 8, !dbg !344
  %arrayidx228 = getelementptr inbounds i8, i8* %138, i64 25, !dbg !344
  %139 = load i8, i8* %arrayidx228, align 1, !dbg !344
  %conv229 = zext i8 %139 to i32, !dbg !344
  %shl230 = shl i32 %conv229, 16, !dbg !344
  %xor231 = xor i32 %shl227, %shl230, !dbg !344
  %140 = load i8*, i8** %userKey.addr, align 8, !dbg !344
  %arrayidx232 = getelementptr inbounds i8, i8* %140, i64 26, !dbg !344
  %141 = load i8, i8* %arrayidx232, align 1, !dbg !344
  %conv233 = zext i8 %141 to i32, !dbg !344
  %shl234 = shl i32 %conv233, 8, !dbg !344
  %xor235 = xor i32 %xor231, %shl234, !dbg !344
  %142 = load i8*, i8** %userKey.addr, align 8, !dbg !344
  %arrayidx236 = getelementptr inbounds i8, i8* %142, i64 27, !dbg !344
  %143 = load i8, i8* %arrayidx236, align 1, !dbg !344
  %conv237 = zext i8 %143 to i32, !dbg !344
  %xor238 = xor i32 %xor235, %conv237, !dbg !344
  %arrayidx239 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !346
  store i32 %xor238, i32* %arrayidx239, align 8, !dbg !347
  %144 = load i8*, i8** %userKey.addr, align 8, !dbg !348
  %arrayidx240 = getelementptr inbounds i8, i8* %144, i64 28, !dbg !348
  %145 = load i8, i8* %arrayidx240, align 1, !dbg !348
  %conv241 = zext i8 %145 to i32, !dbg !348
  %shl242 = shl i32 %conv241, 24, !dbg !348
  %146 = load i8*, i8** %userKey.addr, align 8, !dbg !348
  %arrayidx243 = getelementptr inbounds i8, i8* %146, i64 29, !dbg !348
  %147 = load i8, i8* %arrayidx243, align 1, !dbg !348
  %conv244 = zext i8 %147 to i32, !dbg !348
  %shl245 = shl i32 %conv244, 16, !dbg !348
  %xor246 = xor i32 %shl242, %shl245, !dbg !348
  %148 = load i8*, i8** %userKey.addr, align 8, !dbg !348
  %arrayidx247 = getelementptr inbounds i8, i8* %148, i64 30, !dbg !348
  %149 = load i8, i8* %arrayidx247, align 1, !dbg !348
  %conv248 = zext i8 %149 to i32, !dbg !348
  %shl249 = shl i32 %conv248, 8, !dbg !348
  %xor250 = xor i32 %xor246, %shl249, !dbg !348
  %150 = load i8*, i8** %userKey.addr, align 8, !dbg !348
  %arrayidx251 = getelementptr inbounds i8, i8* %150, i64 31, !dbg !348
  %151 = load i8, i8* %arrayidx251, align 1, !dbg !348
  %conv252 = zext i8 %151 to i32, !dbg !348
  %xor253 = xor i32 %xor250, %conv252, !dbg !348
  %arrayidx254 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !349
  store i32 %xor253, i32* %arrayidx254, align 4, !dbg !350
  br label %if.end257, !dbg !351

if.else:                                          ; preds = %if.then191
  %arrayidx255 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !352
  store i32 0, i32* %arrayidx255, align 4, !dbg !354
  %arrayidx256 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !355
  store i32 0, i32* %arrayidx256, align 8, !dbg !356
  br label %if.end257

if.end257:                                        ; preds = %if.else, %if.then224
  br label %if.end263, !dbg !357

if.else258:                                       ; preds = %do.end188
  %arrayidx259 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !358
  store i32 0, i32* %arrayidx259, align 4, !dbg !360
  %arrayidx260 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !361
  store i32 0, i32* %arrayidx260, align 8, !dbg !362
  %arrayidx261 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !363
  store i32 0, i32* %arrayidx261, align 4, !dbg !364
  %arrayidx262 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !365
  store i32 0, i32* %arrayidx262, align 16, !dbg !366
  br label %if.end263

if.end263:                                        ; preds = %if.else258, %if.end257
  %152 = load i32, i32* %reg0, align 4, !dbg !367
  %arrayidx264 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !368
  %153 = load i32, i32* %arrayidx264, align 16, !dbg !369
  %xor265 = xor i32 %153, %152, !dbg !369
  store i32 %xor265, i32* %arrayidx264, align 16, !dbg !369
  %154 = load i32, i32* %reg1, align 4, !dbg !370
  %arrayidx266 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !371
  %155 = load i32, i32* %arrayidx266, align 4, !dbg !372
  %xor267 = xor i32 %155, %154, !dbg !372
  store i32 %xor267, i32* %arrayidx266, align 4, !dbg !372
  %156 = load i32, i32* %reg2, align 4, !dbg !373
  %arrayidx268 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !374
  %157 = load i32, i32* %arrayidx268, align 8, !dbg !375
  %xor269 = xor i32 %157, %156, !dbg !375
  store i32 %xor269, i32* %arrayidx268, align 8, !dbg !375
  %158 = load i32, i32* %reg3, align 4, !dbg !376
  %arrayidx270 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !377
  %159 = load i32, i32* %arrayidx270, align 4, !dbg !378
  %xor271 = xor i32 %159, %158, !dbg !378
  store i32 %xor271, i32* %arrayidx270, align 4, !dbg !378
  %arrayidx272 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !379
  %160 = load i32, i32* %arrayidx272, align 16, !dbg !379
  store i32 %160, i32* %reg0, align 4, !dbg !380
  %arrayidx273 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !381
  %161 = load i32, i32* %arrayidx273, align 4, !dbg !381
  store i32 %161, i32* %reg1, align 4, !dbg !382
  %arrayidx274 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !383
  %162 = load i32, i32* %arrayidx274, align 8, !dbg !383
  store i32 %162, i32* %reg2, align 4, !dbg !384
  %arrayidx275 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !385
  %163 = load i32, i32* %arrayidx275, align 4, !dbg !385
  store i32 %163, i32* %reg3, align 4, !dbg !386
  %164 = load i32*, i32** %ck, align 8, !dbg !387
  %arrayidx276 = getelementptr inbounds i32, i32* %164, i64 4, !dbg !387
  %165 = load i32, i32* %arrayidx276, align 4, !dbg !387
  %166 = load i32, i32* %reg0, align 4, !dbg !388
  %xor277 = xor i32 %166, %165, !dbg !388
  store i32 %xor277, i32* %reg0, align 4, !dbg !388
  %167 = load i32*, i32** %ck, align 8, !dbg !389
  %arrayidx278 = getelementptr inbounds i32, i32* %167, i64 5, !dbg !389
  %168 = load i32, i32* %arrayidx278, align 4, !dbg !389
  %169 = load i32, i32* %reg1, align 4, !dbg !390
  %xor279 = xor i32 %169, %168, !dbg !390
  store i32 %xor279, i32* %reg1, align 4, !dbg !390
  %170 = load i32*, i32** %ck, align 8, !dbg !391
  %arrayidx280 = getelementptr inbounds i32, i32* %170, i64 6, !dbg !391
  %171 = load i32, i32* %arrayidx280, align 4, !dbg !391
  %172 = load i32, i32* %reg2, align 4, !dbg !392
  %xor281 = xor i32 %172, %171, !dbg !392
  store i32 %xor281, i32* %reg2, align 4, !dbg !392
  %173 = load i32*, i32** %ck, align 8, !dbg !393
  %arrayidx282 = getelementptr inbounds i32, i32* %173, i64 7, !dbg !393
  %174 = load i32, i32* %arrayidx282, align 4, !dbg !393
  %175 = load i32, i32* %reg3, align 4, !dbg !394
  %xor283 = xor i32 %175, %174, !dbg !394
  store i32 %xor283, i32* %reg3, align 4, !dbg !394
  br label %do.body284, !dbg !395

do.body284:                                       ; preds = %if.end263
  br label %do.body285, !dbg !396

do.body285:                                       ; preds = %do.body284
  %176 = load i32, i32* %reg0, align 4, !dbg !398
  %shr286 = lshr i32 %176, 24, !dbg !398
  %conv287 = trunc i32 %shr286 to i8, !dbg !398
  %idxprom288 = zext i8 %conv287 to i64, !dbg !398
  %arrayidx289 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom288, !dbg !398
  %177 = load i32, i32* %arrayidx289, align 4, !dbg !398
  %178 = load i32, i32* %reg0, align 4, !dbg !398
  %shr290 = lshr i32 %178, 16, !dbg !398
  %conv291 = trunc i32 %shr290 to i8, !dbg !398
  %idxprom292 = zext i8 %conv291 to i64, !dbg !398
  %arrayidx293 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom292, !dbg !398
  %179 = load i32, i32* %arrayidx293, align 4, !dbg !398
  %xor294 = xor i32 %177, %179, !dbg !398
  %180 = load i32, i32* %reg0, align 4, !dbg !398
  %shr295 = lshr i32 %180, 8, !dbg !398
  %conv296 = trunc i32 %shr295 to i8, !dbg !398
  %idxprom297 = zext i8 %conv296 to i64, !dbg !398
  %arrayidx298 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom297, !dbg !398
  %181 = load i32, i32* %arrayidx298, align 4, !dbg !398
  %xor299 = xor i32 %xor294, %181, !dbg !398
  %182 = load i32, i32* %reg0, align 4, !dbg !398
  %shr300 = lshr i32 %182, 0, !dbg !398
  %conv301 = trunc i32 %shr300 to i8, !dbg !398
  %idxprom302 = zext i8 %conv301 to i64, !dbg !398
  %arrayidx303 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom302, !dbg !398
  %183 = load i32, i32* %arrayidx303, align 4, !dbg !398
  %xor304 = xor i32 %xor299, %183, !dbg !398
  store i32 %xor304, i32* %reg0, align 4, !dbg !398
  %184 = load i32, i32* %reg1, align 4, !dbg !398
  %shr305 = lshr i32 %184, 24, !dbg !398
  %conv306 = trunc i32 %shr305 to i8, !dbg !398
  %idxprom307 = zext i8 %conv306 to i64, !dbg !398
  %arrayidx308 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom307, !dbg !398
  %185 = load i32, i32* %arrayidx308, align 4, !dbg !398
  %186 = load i32, i32* %reg1, align 4, !dbg !398
  %shr309 = lshr i32 %186, 16, !dbg !398
  %conv310 = trunc i32 %shr309 to i8, !dbg !398
  %idxprom311 = zext i8 %conv310 to i64, !dbg !398
  %arrayidx312 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom311, !dbg !398
  %187 = load i32, i32* %arrayidx312, align 4, !dbg !398
  %xor313 = xor i32 %185, %187, !dbg !398
  %188 = load i32, i32* %reg1, align 4, !dbg !398
  %shr314 = lshr i32 %188, 8, !dbg !398
  %conv315 = trunc i32 %shr314 to i8, !dbg !398
  %idxprom316 = zext i8 %conv315 to i64, !dbg !398
  %arrayidx317 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom316, !dbg !398
  %189 = load i32, i32* %arrayidx317, align 4, !dbg !398
  %xor318 = xor i32 %xor313, %189, !dbg !398
  %190 = load i32, i32* %reg1, align 4, !dbg !398
  %shr319 = lshr i32 %190, 0, !dbg !398
  %conv320 = trunc i32 %shr319 to i8, !dbg !398
  %idxprom321 = zext i8 %conv320 to i64, !dbg !398
  %arrayidx322 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom321, !dbg !398
  %191 = load i32, i32* %arrayidx322, align 4, !dbg !398
  %xor323 = xor i32 %xor318, %191, !dbg !398
  store i32 %xor323, i32* %reg1, align 4, !dbg !398
  %192 = load i32, i32* %reg2, align 4, !dbg !398
  %shr324 = lshr i32 %192, 24, !dbg !398
  %conv325 = trunc i32 %shr324 to i8, !dbg !398
  %idxprom326 = zext i8 %conv325 to i64, !dbg !398
  %arrayidx327 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom326, !dbg !398
  %193 = load i32, i32* %arrayidx327, align 4, !dbg !398
  %194 = load i32, i32* %reg2, align 4, !dbg !398
  %shr328 = lshr i32 %194, 16, !dbg !398
  %conv329 = trunc i32 %shr328 to i8, !dbg !398
  %idxprom330 = zext i8 %conv329 to i64, !dbg !398
  %arrayidx331 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom330, !dbg !398
  %195 = load i32, i32* %arrayidx331, align 4, !dbg !398
  %xor332 = xor i32 %193, %195, !dbg !398
  %196 = load i32, i32* %reg2, align 4, !dbg !398
  %shr333 = lshr i32 %196, 8, !dbg !398
  %conv334 = trunc i32 %shr333 to i8, !dbg !398
  %idxprom335 = zext i8 %conv334 to i64, !dbg !398
  %arrayidx336 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom335, !dbg !398
  %197 = load i32, i32* %arrayidx336, align 4, !dbg !398
  %xor337 = xor i32 %xor332, %197, !dbg !398
  %198 = load i32, i32* %reg2, align 4, !dbg !398
  %shr338 = lshr i32 %198, 0, !dbg !398
  %conv339 = trunc i32 %shr338 to i8, !dbg !398
  %idxprom340 = zext i8 %conv339 to i64, !dbg !398
  %arrayidx341 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom340, !dbg !398
  %199 = load i32, i32* %arrayidx341, align 4, !dbg !398
  %xor342 = xor i32 %xor337, %199, !dbg !398
  store i32 %xor342, i32* %reg2, align 4, !dbg !398
  %200 = load i32, i32* %reg3, align 4, !dbg !398
  %shr343 = lshr i32 %200, 24, !dbg !398
  %conv344 = trunc i32 %shr343 to i8, !dbg !398
  %idxprom345 = zext i8 %conv344 to i64, !dbg !398
  %arrayidx346 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom345, !dbg !398
  %201 = load i32, i32* %arrayidx346, align 4, !dbg !398
  %202 = load i32, i32* %reg3, align 4, !dbg !398
  %shr347 = lshr i32 %202, 16, !dbg !398
  %conv348 = trunc i32 %shr347 to i8, !dbg !398
  %idxprom349 = zext i8 %conv348 to i64, !dbg !398
  %arrayidx350 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom349, !dbg !398
  %203 = load i32, i32* %arrayidx350, align 4, !dbg !398
  %xor351 = xor i32 %201, %203, !dbg !398
  %204 = load i32, i32* %reg3, align 4, !dbg !398
  %shr352 = lshr i32 %204, 8, !dbg !398
  %conv353 = trunc i32 %shr352 to i8, !dbg !398
  %idxprom354 = zext i8 %conv353 to i64, !dbg !398
  %arrayidx355 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom354, !dbg !398
  %205 = load i32, i32* %arrayidx355, align 4, !dbg !398
  %xor356 = xor i32 %xor351, %205, !dbg !398
  %206 = load i32, i32* %reg3, align 4, !dbg !398
  %shr357 = lshr i32 %206, 0, !dbg !398
  %conv358 = trunc i32 %shr357 to i8, !dbg !398
  %idxprom359 = zext i8 %conv358 to i64, !dbg !398
  %arrayidx360 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom359, !dbg !398
  %207 = load i32, i32* %arrayidx360, align 4, !dbg !398
  %xor361 = xor i32 %xor356, %207, !dbg !398
  store i32 %xor361, i32* %reg3, align 4, !dbg !398
  br label %do.end362, !dbg !398

do.end362:                                        ; preds = %do.body285
  br label %do.body363, !dbg !396

do.body363:                                       ; preds = %do.end362
  %208 = load i32, i32* %reg2, align 4, !dbg !400
  %209 = load i32, i32* %reg1, align 4, !dbg !400
  %xor364 = xor i32 %209, %208, !dbg !400
  store i32 %xor364, i32* %reg1, align 4, !dbg !400
  %210 = load i32, i32* %reg3, align 4, !dbg !400
  %211 = load i32, i32* %reg2, align 4, !dbg !400
  %xor365 = xor i32 %211, %210, !dbg !400
  store i32 %xor365, i32* %reg2, align 4, !dbg !400
  %212 = load i32, i32* %reg1, align 4, !dbg !400
  %213 = load i32, i32* %reg0, align 4, !dbg !400
  %xor366 = xor i32 %213, %212, !dbg !400
  store i32 %xor366, i32* %reg0, align 4, !dbg !400
  %214 = load i32, i32* %reg1, align 4, !dbg !400
  %215 = load i32, i32* %reg3, align 4, !dbg !400
  %xor367 = xor i32 %215, %214, !dbg !400
  store i32 %xor367, i32* %reg3, align 4, !dbg !400
  %216 = load i32, i32* %reg0, align 4, !dbg !400
  %217 = load i32, i32* %reg2, align 4, !dbg !400
  %xor368 = xor i32 %217, %216, !dbg !400
  store i32 %xor368, i32* %reg2, align 4, !dbg !400
  %218 = load i32, i32* %reg2, align 4, !dbg !400
  %219 = load i32, i32* %reg1, align 4, !dbg !400
  %xor369 = xor i32 %219, %218, !dbg !400
  store i32 %xor369, i32* %reg1, align 4, !dbg !400
  br label %do.end370, !dbg !400

do.end370:                                        ; preds = %do.body363
  br label %do.body371, !dbg !396

do.body371:                                       ; preds = %do.end370
  %220 = load i32, i32* %reg3, align 4, !dbg !402
  %shl372 = shl i32 %220, 8, !dbg !402
  %and373 = and i32 %shl372, -16711936, !dbg !402
  %221 = load i32, i32* %reg3, align 4, !dbg !402
  %shr374 = lshr i32 %221, 8, !dbg !402
  %and375 = and i32 %shr374, 16711935, !dbg !402
  %xor376 = xor i32 %and373, %and375, !dbg !402
  store i32 %xor376, i32* %reg3, align 4, !dbg !402
  %222 = load i32, i32* %reg0, align 4, !dbg !402
  %shr377 = lshr i32 %222, 16, !dbg !402
  %223 = load i32, i32* %reg0, align 4, !dbg !402
  %shl378 = shl i32 %223, 16, !dbg !402
  %or379 = or i32 %shr377, %shl378, !dbg !402
  store i32 %or379, i32* %reg0, align 4, !dbg !402
  %224 = load i32, i32* %reg1, align 4, !dbg !402
  %shl380 = shl i32 %224, 24, !dbg !402
  %225 = load i32, i32* %reg1, align 4, !dbg !402
  %shr381 = lshr i32 %225, 24, !dbg !402
  %xor382 = xor i32 %shl380, %shr381, !dbg !402
  %226 = load i32, i32* %reg1, align 4, !dbg !402
  %and383 = and i32 %226, 65280, !dbg !402
  %shl384 = shl i32 %and383, 8, !dbg !402
  %xor385 = xor i32 %xor382, %shl384, !dbg !402
  %227 = load i32, i32* %reg1, align 4, !dbg !402
  %and386 = and i32 %227, 16711680, !dbg !402
  %shr387 = lshr i32 %and386, 8, !dbg !402
  %xor388 = xor i32 %xor385, %shr387, !dbg !402
  store i32 %xor388, i32* %reg1, align 4, !dbg !402
  br label %do.end389, !dbg !402

do.end389:                                        ; preds = %do.body371
  br label %do.body390, !dbg !396

do.body390:                                       ; preds = %do.end389
  %228 = load i32, i32* %reg2, align 4, !dbg !404
  %229 = load i32, i32* %reg1, align 4, !dbg !404
  %xor391 = xor i32 %229, %228, !dbg !404
  store i32 %xor391, i32* %reg1, align 4, !dbg !404
  %230 = load i32, i32* %reg3, align 4, !dbg !404
  %231 = load i32, i32* %reg2, align 4, !dbg !404
  %xor392 = xor i32 %231, %230, !dbg !404
  store i32 %xor392, i32* %reg2, align 4, !dbg !404
  %232 = load i32, i32* %reg1, align 4, !dbg !404
  %233 = load i32, i32* %reg0, align 4, !dbg !404
  %xor393 = xor i32 %233, %232, !dbg !404
  store i32 %xor393, i32* %reg0, align 4, !dbg !404
  %234 = load i32, i32* %reg1, align 4, !dbg !404
  %235 = load i32, i32* %reg3, align 4, !dbg !404
  %xor394 = xor i32 %235, %234, !dbg !404
  store i32 %xor394, i32* %reg3, align 4, !dbg !404
  %236 = load i32, i32* %reg0, align 4, !dbg !404
  %237 = load i32, i32* %reg2, align 4, !dbg !404
  %xor395 = xor i32 %237, %236, !dbg !404
  store i32 %xor395, i32* %reg2, align 4, !dbg !404
  %238 = load i32, i32* %reg2, align 4, !dbg !404
  %239 = load i32, i32* %reg1, align 4, !dbg !404
  %xor396 = xor i32 %239, %238, !dbg !404
  store i32 %xor396, i32* %reg1, align 4, !dbg !404
  br label %do.end397, !dbg !404

do.end397:                                        ; preds = %do.body390
  br label %do.end398, !dbg !396

do.end398:                                        ; preds = %do.end397
  %arrayidx399 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !406
  %240 = load i32, i32* %arrayidx399, align 16, !dbg !406
  %241 = load i32, i32* %reg0, align 4, !dbg !407
  %xor400 = xor i32 %241, %240, !dbg !407
  store i32 %xor400, i32* %reg0, align 4, !dbg !407
  %arrayidx401 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !408
  %242 = load i32, i32* %arrayidx401, align 4, !dbg !408
  %243 = load i32, i32* %reg1, align 4, !dbg !409
  %xor402 = xor i32 %243, %242, !dbg !409
  store i32 %xor402, i32* %reg1, align 4, !dbg !409
  %arrayidx403 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !410
  %244 = load i32, i32* %arrayidx403, align 8, !dbg !410
  %245 = load i32, i32* %reg2, align 4, !dbg !411
  %xor404 = xor i32 %245, %244, !dbg !411
  store i32 %xor404, i32* %reg2, align 4, !dbg !411
  %arrayidx405 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !412
  %246 = load i32, i32* %arrayidx405, align 4, !dbg !412
  %247 = load i32, i32* %reg3, align 4, !dbg !413
  %xor406 = xor i32 %247, %246, !dbg !413
  store i32 %xor406, i32* %reg3, align 4, !dbg !413
  %248 = load i32, i32* %reg0, align 4, !dbg !414
  %arrayidx407 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !415
  store i32 %248, i32* %arrayidx407, align 16, !dbg !416
  %249 = load i32, i32* %reg1, align 4, !dbg !417
  %arrayidx408 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !418
  store i32 %249, i32* %arrayidx408, align 4, !dbg !419
  %250 = load i32, i32* %reg2, align 4, !dbg !420
  %arrayidx409 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !421
  store i32 %250, i32* %arrayidx409, align 8, !dbg !422
  %251 = load i32, i32* %reg3, align 4, !dbg !423
  %arrayidx410 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !424
  store i32 %251, i32* %arrayidx410, align 4, !dbg !425
  %252 = load i32*, i32** %ck, align 8, !dbg !426
  %arrayidx411 = getelementptr inbounds i32, i32* %252, i64 8, !dbg !426
  %253 = load i32, i32* %arrayidx411, align 4, !dbg !426
  %254 = load i32, i32* %reg0, align 4, !dbg !427
  %xor412 = xor i32 %254, %253, !dbg !427
  store i32 %xor412, i32* %reg0, align 4, !dbg !427
  %255 = load i32*, i32** %ck, align 8, !dbg !428
  %arrayidx413 = getelementptr inbounds i32, i32* %255, i64 9, !dbg !428
  %256 = load i32, i32* %arrayidx413, align 4, !dbg !428
  %257 = load i32, i32* %reg1, align 4, !dbg !429
  %xor414 = xor i32 %257, %256, !dbg !429
  store i32 %xor414, i32* %reg1, align 4, !dbg !429
  %258 = load i32*, i32** %ck, align 8, !dbg !430
  %arrayidx415 = getelementptr inbounds i32, i32* %258, i64 10, !dbg !430
  %259 = load i32, i32* %arrayidx415, align 4, !dbg !430
  %260 = load i32, i32* %reg2, align 4, !dbg !431
  %xor416 = xor i32 %260, %259, !dbg !431
  store i32 %xor416, i32* %reg2, align 4, !dbg !431
  %261 = load i32*, i32** %ck, align 8, !dbg !432
  %arrayidx417 = getelementptr inbounds i32, i32* %261, i64 11, !dbg !432
  %262 = load i32, i32* %arrayidx417, align 4, !dbg !432
  %263 = load i32, i32* %reg3, align 4, !dbg !433
  %xor418 = xor i32 %263, %262, !dbg !433
  store i32 %xor418, i32* %reg3, align 4, !dbg !433
  br label %do.body419, !dbg !434

do.body419:                                       ; preds = %do.end398
  br label %do.body420, !dbg !435

do.body420:                                       ; preds = %do.body419
  %264 = load i32, i32* %reg0, align 4, !dbg !437
  %shr421 = lshr i32 %264, 24, !dbg !437
  %conv422 = trunc i32 %shr421 to i8, !dbg !437
  %idxprom423 = zext i8 %conv422 to i64, !dbg !437
  %arrayidx424 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom423, !dbg !437
  %265 = load i32, i32* %arrayidx424, align 4, !dbg !437
  %266 = load i32, i32* %reg0, align 4, !dbg !437
  %shr425 = lshr i32 %266, 16, !dbg !437
  %conv426 = trunc i32 %shr425 to i8, !dbg !437
  %idxprom427 = zext i8 %conv426 to i64, !dbg !437
  %arrayidx428 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom427, !dbg !437
  %267 = load i32, i32* %arrayidx428, align 4, !dbg !437
  %xor429 = xor i32 %265, %267, !dbg !437
  %268 = load i32, i32* %reg0, align 4, !dbg !437
  %shr430 = lshr i32 %268, 8, !dbg !437
  %conv431 = trunc i32 %shr430 to i8, !dbg !437
  %idxprom432 = zext i8 %conv431 to i64, !dbg !437
  %arrayidx433 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom432, !dbg !437
  %269 = load i32, i32* %arrayidx433, align 4, !dbg !437
  %xor434 = xor i32 %xor429, %269, !dbg !437
  %270 = load i32, i32* %reg0, align 4, !dbg !437
  %shr435 = lshr i32 %270, 0, !dbg !437
  %conv436 = trunc i32 %shr435 to i8, !dbg !437
  %idxprom437 = zext i8 %conv436 to i64, !dbg !437
  %arrayidx438 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom437, !dbg !437
  %271 = load i32, i32* %arrayidx438, align 4, !dbg !437
  %xor439 = xor i32 %xor434, %271, !dbg !437
  store i32 %xor439, i32* %reg0, align 4, !dbg !437
  %272 = load i32, i32* %reg1, align 4, !dbg !437
  %shr440 = lshr i32 %272, 24, !dbg !437
  %conv441 = trunc i32 %shr440 to i8, !dbg !437
  %idxprom442 = zext i8 %conv441 to i64, !dbg !437
  %arrayidx443 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom442, !dbg !437
  %273 = load i32, i32* %arrayidx443, align 4, !dbg !437
  %274 = load i32, i32* %reg1, align 4, !dbg !437
  %shr444 = lshr i32 %274, 16, !dbg !437
  %conv445 = trunc i32 %shr444 to i8, !dbg !437
  %idxprom446 = zext i8 %conv445 to i64, !dbg !437
  %arrayidx447 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom446, !dbg !437
  %275 = load i32, i32* %arrayidx447, align 4, !dbg !437
  %xor448 = xor i32 %273, %275, !dbg !437
  %276 = load i32, i32* %reg1, align 4, !dbg !437
  %shr449 = lshr i32 %276, 8, !dbg !437
  %conv450 = trunc i32 %shr449 to i8, !dbg !437
  %idxprom451 = zext i8 %conv450 to i64, !dbg !437
  %arrayidx452 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom451, !dbg !437
  %277 = load i32, i32* %arrayidx452, align 4, !dbg !437
  %xor453 = xor i32 %xor448, %277, !dbg !437
  %278 = load i32, i32* %reg1, align 4, !dbg !437
  %shr454 = lshr i32 %278, 0, !dbg !437
  %conv455 = trunc i32 %shr454 to i8, !dbg !437
  %idxprom456 = zext i8 %conv455 to i64, !dbg !437
  %arrayidx457 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom456, !dbg !437
  %279 = load i32, i32* %arrayidx457, align 4, !dbg !437
  %xor458 = xor i32 %xor453, %279, !dbg !437
  store i32 %xor458, i32* %reg1, align 4, !dbg !437
  %280 = load i32, i32* %reg2, align 4, !dbg !437
  %shr459 = lshr i32 %280, 24, !dbg !437
  %conv460 = trunc i32 %shr459 to i8, !dbg !437
  %idxprom461 = zext i8 %conv460 to i64, !dbg !437
  %arrayidx462 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom461, !dbg !437
  %281 = load i32, i32* %arrayidx462, align 4, !dbg !437
  %282 = load i32, i32* %reg2, align 4, !dbg !437
  %shr463 = lshr i32 %282, 16, !dbg !437
  %conv464 = trunc i32 %shr463 to i8, !dbg !437
  %idxprom465 = zext i8 %conv464 to i64, !dbg !437
  %arrayidx466 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom465, !dbg !437
  %283 = load i32, i32* %arrayidx466, align 4, !dbg !437
  %xor467 = xor i32 %281, %283, !dbg !437
  %284 = load i32, i32* %reg2, align 4, !dbg !437
  %shr468 = lshr i32 %284, 8, !dbg !437
  %conv469 = trunc i32 %shr468 to i8, !dbg !437
  %idxprom470 = zext i8 %conv469 to i64, !dbg !437
  %arrayidx471 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom470, !dbg !437
  %285 = load i32, i32* %arrayidx471, align 4, !dbg !437
  %xor472 = xor i32 %xor467, %285, !dbg !437
  %286 = load i32, i32* %reg2, align 4, !dbg !437
  %shr473 = lshr i32 %286, 0, !dbg !437
  %conv474 = trunc i32 %shr473 to i8, !dbg !437
  %idxprom475 = zext i8 %conv474 to i64, !dbg !437
  %arrayidx476 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom475, !dbg !437
  %287 = load i32, i32* %arrayidx476, align 4, !dbg !437
  %xor477 = xor i32 %xor472, %287, !dbg !437
  store i32 %xor477, i32* %reg2, align 4, !dbg !437
  %288 = load i32, i32* %reg3, align 4, !dbg !437
  %shr478 = lshr i32 %288, 24, !dbg !437
  %conv479 = trunc i32 %shr478 to i8, !dbg !437
  %idxprom480 = zext i8 %conv479 to i64, !dbg !437
  %arrayidx481 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom480, !dbg !437
  %289 = load i32, i32* %arrayidx481, align 4, !dbg !437
  %290 = load i32, i32* %reg3, align 4, !dbg !437
  %shr482 = lshr i32 %290, 16, !dbg !437
  %conv483 = trunc i32 %shr482 to i8, !dbg !437
  %idxprom484 = zext i8 %conv483 to i64, !dbg !437
  %arrayidx485 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom484, !dbg !437
  %291 = load i32, i32* %arrayidx485, align 4, !dbg !437
  %xor486 = xor i32 %289, %291, !dbg !437
  %292 = load i32, i32* %reg3, align 4, !dbg !437
  %shr487 = lshr i32 %292, 8, !dbg !437
  %conv488 = trunc i32 %shr487 to i8, !dbg !437
  %idxprom489 = zext i8 %conv488 to i64, !dbg !437
  %arrayidx490 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom489, !dbg !437
  %293 = load i32, i32* %arrayidx490, align 4, !dbg !437
  %xor491 = xor i32 %xor486, %293, !dbg !437
  %294 = load i32, i32* %reg3, align 4, !dbg !437
  %shr492 = lshr i32 %294, 0, !dbg !437
  %conv493 = trunc i32 %shr492 to i8, !dbg !437
  %idxprom494 = zext i8 %conv493 to i64, !dbg !437
  %arrayidx495 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom494, !dbg !437
  %295 = load i32, i32* %arrayidx495, align 4, !dbg !437
  %xor496 = xor i32 %xor491, %295, !dbg !437
  store i32 %xor496, i32* %reg3, align 4, !dbg !437
  br label %do.end497, !dbg !437

do.end497:                                        ; preds = %do.body420
  br label %do.body498, !dbg !435

do.body498:                                       ; preds = %do.end497
  %296 = load i32, i32* %reg2, align 4, !dbg !439
  %297 = load i32, i32* %reg1, align 4, !dbg !439
  %xor499 = xor i32 %297, %296, !dbg !439
  store i32 %xor499, i32* %reg1, align 4, !dbg !439
  %298 = load i32, i32* %reg3, align 4, !dbg !439
  %299 = load i32, i32* %reg2, align 4, !dbg !439
  %xor500 = xor i32 %299, %298, !dbg !439
  store i32 %xor500, i32* %reg2, align 4, !dbg !439
  %300 = load i32, i32* %reg1, align 4, !dbg !439
  %301 = load i32, i32* %reg0, align 4, !dbg !439
  %xor501 = xor i32 %301, %300, !dbg !439
  store i32 %xor501, i32* %reg0, align 4, !dbg !439
  %302 = load i32, i32* %reg1, align 4, !dbg !439
  %303 = load i32, i32* %reg3, align 4, !dbg !439
  %xor502 = xor i32 %303, %302, !dbg !439
  store i32 %xor502, i32* %reg3, align 4, !dbg !439
  %304 = load i32, i32* %reg0, align 4, !dbg !439
  %305 = load i32, i32* %reg2, align 4, !dbg !439
  %xor503 = xor i32 %305, %304, !dbg !439
  store i32 %xor503, i32* %reg2, align 4, !dbg !439
  %306 = load i32, i32* %reg2, align 4, !dbg !439
  %307 = load i32, i32* %reg1, align 4, !dbg !439
  %xor504 = xor i32 %307, %306, !dbg !439
  store i32 %xor504, i32* %reg1, align 4, !dbg !439
  br label %do.end505, !dbg !439

do.end505:                                        ; preds = %do.body498
  br label %do.body506, !dbg !435

do.body506:                                       ; preds = %do.end505
  %308 = load i32, i32* %reg1, align 4, !dbg !441
  %shl507 = shl i32 %308, 8, !dbg !441
  %and508 = and i32 %shl507, -16711936, !dbg !441
  %309 = load i32, i32* %reg1, align 4, !dbg !441
  %shr509 = lshr i32 %309, 8, !dbg !441
  %and510 = and i32 %shr509, 16711935, !dbg !441
  %xor511 = xor i32 %and508, %and510, !dbg !441
  store i32 %xor511, i32* %reg1, align 4, !dbg !441
  %310 = load i32, i32* %reg2, align 4, !dbg !441
  %shr512 = lshr i32 %310, 16, !dbg !441
  %311 = load i32, i32* %reg2, align 4, !dbg !441
  %shl513 = shl i32 %311, 16, !dbg !441
  %or514 = or i32 %shr512, %shl513, !dbg !441
  store i32 %or514, i32* %reg2, align 4, !dbg !441
  %312 = load i32, i32* %reg3, align 4, !dbg !441
  %shl515 = shl i32 %312, 24, !dbg !441
  %313 = load i32, i32* %reg3, align 4, !dbg !441
  %shr516 = lshr i32 %313, 24, !dbg !441
  %xor517 = xor i32 %shl515, %shr516, !dbg !441
  %314 = load i32, i32* %reg3, align 4, !dbg !441
  %and518 = and i32 %314, 65280, !dbg !441
  %shl519 = shl i32 %and518, 8, !dbg !441
  %xor520 = xor i32 %xor517, %shl519, !dbg !441
  %315 = load i32, i32* %reg3, align 4, !dbg !441
  %and521 = and i32 %315, 16711680, !dbg !441
  %shr522 = lshr i32 %and521, 8, !dbg !441
  %xor523 = xor i32 %xor520, %shr522, !dbg !441
  store i32 %xor523, i32* %reg3, align 4, !dbg !441
  br label %do.end524, !dbg !441

do.end524:                                        ; preds = %do.body506
  br label %do.body525, !dbg !435

do.body525:                                       ; preds = %do.end524
  %316 = load i32, i32* %reg2, align 4, !dbg !443
  %317 = load i32, i32* %reg1, align 4, !dbg !443
  %xor526 = xor i32 %317, %316, !dbg !443
  store i32 %xor526, i32* %reg1, align 4, !dbg !443
  %318 = load i32, i32* %reg3, align 4, !dbg !443
  %319 = load i32, i32* %reg2, align 4, !dbg !443
  %xor527 = xor i32 %319, %318, !dbg !443
  store i32 %xor527, i32* %reg2, align 4, !dbg !443
  %320 = load i32, i32* %reg1, align 4, !dbg !443
  %321 = load i32, i32* %reg0, align 4, !dbg !443
  %xor528 = xor i32 %321, %320, !dbg !443
  store i32 %xor528, i32* %reg0, align 4, !dbg !443
  %322 = load i32, i32* %reg1, align 4, !dbg !443
  %323 = load i32, i32* %reg3, align 4, !dbg !443
  %xor529 = xor i32 %323, %322, !dbg !443
  store i32 %xor529, i32* %reg3, align 4, !dbg !443
  %324 = load i32, i32* %reg0, align 4, !dbg !443
  %325 = load i32, i32* %reg2, align 4, !dbg !443
  %xor530 = xor i32 %325, %324, !dbg !443
  store i32 %xor530, i32* %reg2, align 4, !dbg !443
  %326 = load i32, i32* %reg2, align 4, !dbg !443
  %327 = load i32, i32* %reg1, align 4, !dbg !443
  %xor531 = xor i32 %327, %326, !dbg !443
  store i32 %xor531, i32* %reg1, align 4, !dbg !443
  br label %do.end532, !dbg !443

do.end532:                                        ; preds = %do.body525
  br label %do.end533, !dbg !435

do.end533:                                        ; preds = %do.end532
  %328 = load i32, i32* %reg0, align 4, !dbg !445
  %arrayidx534 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !446
  %329 = load i32, i32* %arrayidx534, align 16, !dbg !446
  %xor535 = xor i32 %328, %329, !dbg !447
  %arrayidx536 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !448
  store i32 %xor535, i32* %arrayidx536, align 16, !dbg !449
  %330 = load i32, i32* %reg1, align 4, !dbg !450
  %arrayidx537 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !451
  %331 = load i32, i32* %arrayidx537, align 4, !dbg !451
  %xor538 = xor i32 %330, %331, !dbg !452
  %arrayidx539 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !453
  store i32 %xor538, i32* %arrayidx539, align 4, !dbg !454
  %332 = load i32, i32* %reg2, align 4, !dbg !455
  %arrayidx540 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !456
  %333 = load i32, i32* %arrayidx540, align 8, !dbg !456
  %xor541 = xor i32 %332, %333, !dbg !457
  %arrayidx542 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !458
  store i32 %xor541, i32* %arrayidx542, align 8, !dbg !459
  %334 = load i32, i32* %reg3, align 4, !dbg !460
  %arrayidx543 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !461
  %335 = load i32, i32* %arrayidx543, align 4, !dbg !461
  %xor544 = xor i32 %334, %335, !dbg !462
  %arrayidx545 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !463
  store i32 %xor544, i32* %arrayidx545, align 4, !dbg !464
  br label %do.body546, !dbg !465

do.body546:                                       ; preds = %do.end533
  %arrayidx547 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !466
  %336 = load i32, i32* %arrayidx547, align 16, !dbg !466
  %arrayidx548 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !466
  %337 = load i32, i32* %arrayidx548, align 16, !dbg !466
  %shr549 = lshr i32 %337, 19, !dbg !466
  %xor550 = xor i32 %336, %shr549, !dbg !466
  %arrayidx551 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !466
  %338 = load i32, i32* %arrayidx551, align 4, !dbg !466
  %shl552 = shl i32 %338, 13, !dbg !466
  %xor553 = xor i32 %xor550, %shl552, !dbg !466
  %339 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !466
  %u = bitcast %union.ARIA_u128* %339 to [4 x i32]*, !dbg !466
  %arrayidx554 = getelementptr inbounds [4 x i32], [4 x i32]* %u, i64 0, i64 0, !dbg !466
  store i32 %xor553, i32* %arrayidx554, align 4, !dbg !466
  %arrayidx555 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !466
  %340 = load i32, i32* %arrayidx555, align 4, !dbg !466
  %arrayidx556 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !466
  %341 = load i32, i32* %arrayidx556, align 4, !dbg !466
  %shr557 = lshr i32 %341, 19, !dbg !466
  %xor558 = xor i32 %340, %shr557, !dbg !466
  %arrayidx559 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !466
  %342 = load i32, i32* %arrayidx559, align 16, !dbg !466
  %shl560 = shl i32 %342, 13, !dbg !466
  %xor561 = xor i32 %xor558, %shl560, !dbg !466
  %343 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !466
  %u562 = bitcast %union.ARIA_u128* %343 to [4 x i32]*, !dbg !466
  %arrayidx563 = getelementptr inbounds [4 x i32], [4 x i32]* %u562, i64 0, i64 1, !dbg !466
  store i32 %xor561, i32* %arrayidx563, align 4, !dbg !466
  %arrayidx564 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !466
  %344 = load i32, i32* %arrayidx564, align 8, !dbg !466
  %arrayidx565 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !466
  %345 = load i32, i32* %arrayidx565, align 8, !dbg !466
  %shr566 = lshr i32 %345, 19, !dbg !466
  %xor567 = xor i32 %344, %shr566, !dbg !466
  %arrayidx568 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !466
  %346 = load i32, i32* %arrayidx568, align 4, !dbg !466
  %shl569 = shl i32 %346, 13, !dbg !466
  %xor570 = xor i32 %xor567, %shl569, !dbg !466
  %347 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !466
  %u571 = bitcast %union.ARIA_u128* %347 to [4 x i32]*, !dbg !466
  %arrayidx572 = getelementptr inbounds [4 x i32], [4 x i32]* %u571, i64 0, i64 2, !dbg !466
  store i32 %xor570, i32* %arrayidx572, align 4, !dbg !466
  %arrayidx573 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !466
  %348 = load i32, i32* %arrayidx573, align 4, !dbg !466
  %arrayidx574 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !466
  %349 = load i32, i32* %arrayidx574, align 4, !dbg !466
  %shr575 = lshr i32 %349, 19, !dbg !466
  %xor576 = xor i32 %348, %shr575, !dbg !466
  %arrayidx577 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !466
  %350 = load i32, i32* %arrayidx577, align 8, !dbg !466
  %shl578 = shl i32 %350, 13, !dbg !466
  %xor579 = xor i32 %xor576, %shl578, !dbg !466
  %351 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !466
  %u580 = bitcast %union.ARIA_u128* %351 to [4 x i32]*, !dbg !466
  %arrayidx581 = getelementptr inbounds [4 x i32], [4 x i32]* %u580, i64 0, i64 3, !dbg !466
  store i32 %xor579, i32* %arrayidx581, align 4, !dbg !466
  br label %do.end582, !dbg !466

do.end582:                                        ; preds = %do.body546
  %352 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !468
  %incdec.ptr = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %352, i32 1, !dbg !468
  store %union.ARIA_u128* %incdec.ptr, %union.ARIA_u128** %rk, align 8, !dbg !468
  br label %do.body583, !dbg !469

do.body583:                                       ; preds = %do.end582
  %arrayidx584 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !470
  %353 = load i32, i32* %arrayidx584, align 16, !dbg !470
  %arrayidx585 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !470
  %354 = load i32, i32* %arrayidx585, align 16, !dbg !470
  %shr586 = lshr i32 %354, 19, !dbg !470
  %xor587 = xor i32 %353, %shr586, !dbg !470
  %arrayidx588 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !470
  %355 = load i32, i32* %arrayidx588, align 4, !dbg !470
  %shl589 = shl i32 %355, 13, !dbg !470
  %xor590 = xor i32 %xor587, %shl589, !dbg !470
  %356 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !470
  %u591 = bitcast %union.ARIA_u128* %356 to [4 x i32]*, !dbg !470
  %arrayidx592 = getelementptr inbounds [4 x i32], [4 x i32]* %u591, i64 0, i64 0, !dbg !470
  store i32 %xor590, i32* %arrayidx592, align 4, !dbg !470
  %arrayidx593 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !470
  %357 = load i32, i32* %arrayidx593, align 4, !dbg !470
  %arrayidx594 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !470
  %358 = load i32, i32* %arrayidx594, align 4, !dbg !470
  %shr595 = lshr i32 %358, 19, !dbg !470
  %xor596 = xor i32 %357, %shr595, !dbg !470
  %arrayidx597 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !470
  %359 = load i32, i32* %arrayidx597, align 16, !dbg !470
  %shl598 = shl i32 %359, 13, !dbg !470
  %xor599 = xor i32 %xor596, %shl598, !dbg !470
  %360 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !470
  %u600 = bitcast %union.ARIA_u128* %360 to [4 x i32]*, !dbg !470
  %arrayidx601 = getelementptr inbounds [4 x i32], [4 x i32]* %u600, i64 0, i64 1, !dbg !470
  store i32 %xor599, i32* %arrayidx601, align 4, !dbg !470
  %arrayidx602 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !470
  %361 = load i32, i32* %arrayidx602, align 8, !dbg !470
  %arrayidx603 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !470
  %362 = load i32, i32* %arrayidx603, align 8, !dbg !470
  %shr604 = lshr i32 %362, 19, !dbg !470
  %xor605 = xor i32 %361, %shr604, !dbg !470
  %arrayidx606 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !470
  %363 = load i32, i32* %arrayidx606, align 4, !dbg !470
  %shl607 = shl i32 %363, 13, !dbg !470
  %xor608 = xor i32 %xor605, %shl607, !dbg !470
  %364 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !470
  %u609 = bitcast %union.ARIA_u128* %364 to [4 x i32]*, !dbg !470
  %arrayidx610 = getelementptr inbounds [4 x i32], [4 x i32]* %u609, i64 0, i64 2, !dbg !470
  store i32 %xor608, i32* %arrayidx610, align 4, !dbg !470
  %arrayidx611 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !470
  %365 = load i32, i32* %arrayidx611, align 4, !dbg !470
  %arrayidx612 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !470
  %366 = load i32, i32* %arrayidx612, align 4, !dbg !470
  %shr613 = lshr i32 %366, 19, !dbg !470
  %xor614 = xor i32 %365, %shr613, !dbg !470
  %arrayidx615 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !470
  %367 = load i32, i32* %arrayidx615, align 8, !dbg !470
  %shl616 = shl i32 %367, 13, !dbg !470
  %xor617 = xor i32 %xor614, %shl616, !dbg !470
  %368 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !470
  %u618 = bitcast %union.ARIA_u128* %368 to [4 x i32]*, !dbg !470
  %arrayidx619 = getelementptr inbounds [4 x i32], [4 x i32]* %u618, i64 0, i64 3, !dbg !470
  store i32 %xor617, i32* %arrayidx619, align 4, !dbg !470
  br label %do.end620, !dbg !470

do.end620:                                        ; preds = %do.body583
  %369 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !472
  %incdec.ptr621 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %369, i32 1, !dbg !472
  store %union.ARIA_u128* %incdec.ptr621, %union.ARIA_u128** %rk, align 8, !dbg !472
  br label %do.body622, !dbg !473

do.body622:                                       ; preds = %do.end620
  %arrayidx623 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !474
  %370 = load i32, i32* %arrayidx623, align 16, !dbg !474
  %arrayidx624 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !474
  %371 = load i32, i32* %arrayidx624, align 16, !dbg !474
  %shr625 = lshr i32 %371, 19, !dbg !474
  %xor626 = xor i32 %370, %shr625, !dbg !474
  %arrayidx627 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !474
  %372 = load i32, i32* %arrayidx627, align 4, !dbg !474
  %shl628 = shl i32 %372, 13, !dbg !474
  %xor629 = xor i32 %xor626, %shl628, !dbg !474
  %373 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !474
  %u630 = bitcast %union.ARIA_u128* %373 to [4 x i32]*, !dbg !474
  %arrayidx631 = getelementptr inbounds [4 x i32], [4 x i32]* %u630, i64 0, i64 0, !dbg !474
  store i32 %xor629, i32* %arrayidx631, align 4, !dbg !474
  %arrayidx632 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !474
  %374 = load i32, i32* %arrayidx632, align 4, !dbg !474
  %arrayidx633 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !474
  %375 = load i32, i32* %arrayidx633, align 4, !dbg !474
  %shr634 = lshr i32 %375, 19, !dbg !474
  %xor635 = xor i32 %374, %shr634, !dbg !474
  %arrayidx636 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !474
  %376 = load i32, i32* %arrayidx636, align 16, !dbg !474
  %shl637 = shl i32 %376, 13, !dbg !474
  %xor638 = xor i32 %xor635, %shl637, !dbg !474
  %377 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !474
  %u639 = bitcast %union.ARIA_u128* %377 to [4 x i32]*, !dbg !474
  %arrayidx640 = getelementptr inbounds [4 x i32], [4 x i32]* %u639, i64 0, i64 1, !dbg !474
  store i32 %xor638, i32* %arrayidx640, align 4, !dbg !474
  %arrayidx641 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !474
  %378 = load i32, i32* %arrayidx641, align 8, !dbg !474
  %arrayidx642 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !474
  %379 = load i32, i32* %arrayidx642, align 8, !dbg !474
  %shr643 = lshr i32 %379, 19, !dbg !474
  %xor644 = xor i32 %378, %shr643, !dbg !474
  %arrayidx645 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !474
  %380 = load i32, i32* %arrayidx645, align 4, !dbg !474
  %shl646 = shl i32 %380, 13, !dbg !474
  %xor647 = xor i32 %xor644, %shl646, !dbg !474
  %381 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !474
  %u648 = bitcast %union.ARIA_u128* %381 to [4 x i32]*, !dbg !474
  %arrayidx649 = getelementptr inbounds [4 x i32], [4 x i32]* %u648, i64 0, i64 2, !dbg !474
  store i32 %xor647, i32* %arrayidx649, align 4, !dbg !474
  %arrayidx650 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !474
  %382 = load i32, i32* %arrayidx650, align 4, !dbg !474
  %arrayidx651 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !474
  %383 = load i32, i32* %arrayidx651, align 4, !dbg !474
  %shr652 = lshr i32 %383, 19, !dbg !474
  %xor653 = xor i32 %382, %shr652, !dbg !474
  %arrayidx654 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !474
  %384 = load i32, i32* %arrayidx654, align 8, !dbg !474
  %shl655 = shl i32 %384, 13, !dbg !474
  %xor656 = xor i32 %xor653, %shl655, !dbg !474
  %385 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !474
  %u657 = bitcast %union.ARIA_u128* %385 to [4 x i32]*, !dbg !474
  %arrayidx658 = getelementptr inbounds [4 x i32], [4 x i32]* %u657, i64 0, i64 3, !dbg !474
  store i32 %xor656, i32* %arrayidx658, align 4, !dbg !474
  br label %do.end659, !dbg !474

do.end659:                                        ; preds = %do.body622
  %386 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !476
  %incdec.ptr660 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %386, i32 1, !dbg !476
  store %union.ARIA_u128* %incdec.ptr660, %union.ARIA_u128** %rk, align 8, !dbg !476
  br label %do.body661, !dbg !477

do.body661:                                       ; preds = %do.end659
  %arrayidx662 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !478
  %387 = load i32, i32* %arrayidx662, align 16, !dbg !478
  %arrayidx663 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !478
  %388 = load i32, i32* %arrayidx663, align 16, !dbg !478
  %shr664 = lshr i32 %388, 19, !dbg !478
  %xor665 = xor i32 %387, %shr664, !dbg !478
  %arrayidx666 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !478
  %389 = load i32, i32* %arrayidx666, align 4, !dbg !478
  %shl667 = shl i32 %389, 13, !dbg !478
  %xor668 = xor i32 %xor665, %shl667, !dbg !478
  %390 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !478
  %u669 = bitcast %union.ARIA_u128* %390 to [4 x i32]*, !dbg !478
  %arrayidx670 = getelementptr inbounds [4 x i32], [4 x i32]* %u669, i64 0, i64 0, !dbg !478
  store i32 %xor668, i32* %arrayidx670, align 4, !dbg !478
  %arrayidx671 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !478
  %391 = load i32, i32* %arrayidx671, align 4, !dbg !478
  %arrayidx672 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !478
  %392 = load i32, i32* %arrayidx672, align 4, !dbg !478
  %shr673 = lshr i32 %392, 19, !dbg !478
  %xor674 = xor i32 %391, %shr673, !dbg !478
  %arrayidx675 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !478
  %393 = load i32, i32* %arrayidx675, align 16, !dbg !478
  %shl676 = shl i32 %393, 13, !dbg !478
  %xor677 = xor i32 %xor674, %shl676, !dbg !478
  %394 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !478
  %u678 = bitcast %union.ARIA_u128* %394 to [4 x i32]*, !dbg !478
  %arrayidx679 = getelementptr inbounds [4 x i32], [4 x i32]* %u678, i64 0, i64 1, !dbg !478
  store i32 %xor677, i32* %arrayidx679, align 4, !dbg !478
  %arrayidx680 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !478
  %395 = load i32, i32* %arrayidx680, align 8, !dbg !478
  %arrayidx681 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !478
  %396 = load i32, i32* %arrayidx681, align 8, !dbg !478
  %shr682 = lshr i32 %396, 19, !dbg !478
  %xor683 = xor i32 %395, %shr682, !dbg !478
  %arrayidx684 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !478
  %397 = load i32, i32* %arrayidx684, align 4, !dbg !478
  %shl685 = shl i32 %397, 13, !dbg !478
  %xor686 = xor i32 %xor683, %shl685, !dbg !478
  %398 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !478
  %u687 = bitcast %union.ARIA_u128* %398 to [4 x i32]*, !dbg !478
  %arrayidx688 = getelementptr inbounds [4 x i32], [4 x i32]* %u687, i64 0, i64 2, !dbg !478
  store i32 %xor686, i32* %arrayidx688, align 4, !dbg !478
  %arrayidx689 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !478
  %399 = load i32, i32* %arrayidx689, align 4, !dbg !478
  %arrayidx690 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !478
  %400 = load i32, i32* %arrayidx690, align 4, !dbg !478
  %shr691 = lshr i32 %400, 19, !dbg !478
  %xor692 = xor i32 %399, %shr691, !dbg !478
  %arrayidx693 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !478
  %401 = load i32, i32* %arrayidx693, align 8, !dbg !478
  %shl694 = shl i32 %401, 13, !dbg !478
  %xor695 = xor i32 %xor692, %shl694, !dbg !478
  %402 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !478
  %u696 = bitcast %union.ARIA_u128* %402 to [4 x i32]*, !dbg !478
  %arrayidx697 = getelementptr inbounds [4 x i32], [4 x i32]* %u696, i64 0, i64 3, !dbg !478
  store i32 %xor695, i32* %arrayidx697, align 4, !dbg !478
  br label %do.end698, !dbg !478

do.end698:                                        ; preds = %do.body661
  %403 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !480
  %incdec.ptr699 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %403, i32 1, !dbg !480
  store %union.ARIA_u128* %incdec.ptr699, %union.ARIA_u128** %rk, align 8, !dbg !480
  br label %do.body700, !dbg !481

do.body700:                                       ; preds = %do.end698
  %arrayidx701 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !482
  %404 = load i32, i32* %arrayidx701, align 16, !dbg !482
  %arrayidx702 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !482
  %405 = load i32, i32* %arrayidx702, align 16, !dbg !482
  %shr703 = lshr i32 %405, 31, !dbg !482
  %xor704 = xor i32 %404, %shr703, !dbg !482
  %arrayidx705 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !482
  %406 = load i32, i32* %arrayidx705, align 4, !dbg !482
  %shl706 = shl i32 %406, 1, !dbg !482
  %xor707 = xor i32 %xor704, %shl706, !dbg !482
  %407 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !482
  %u708 = bitcast %union.ARIA_u128* %407 to [4 x i32]*, !dbg !482
  %arrayidx709 = getelementptr inbounds [4 x i32], [4 x i32]* %u708, i64 0, i64 0, !dbg !482
  store i32 %xor707, i32* %arrayidx709, align 4, !dbg !482
  %arrayidx710 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !482
  %408 = load i32, i32* %arrayidx710, align 4, !dbg !482
  %arrayidx711 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !482
  %409 = load i32, i32* %arrayidx711, align 4, !dbg !482
  %shr712 = lshr i32 %409, 31, !dbg !482
  %xor713 = xor i32 %408, %shr712, !dbg !482
  %arrayidx714 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !482
  %410 = load i32, i32* %arrayidx714, align 16, !dbg !482
  %shl715 = shl i32 %410, 1, !dbg !482
  %xor716 = xor i32 %xor713, %shl715, !dbg !482
  %411 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !482
  %u717 = bitcast %union.ARIA_u128* %411 to [4 x i32]*, !dbg !482
  %arrayidx718 = getelementptr inbounds [4 x i32], [4 x i32]* %u717, i64 0, i64 1, !dbg !482
  store i32 %xor716, i32* %arrayidx718, align 4, !dbg !482
  %arrayidx719 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !482
  %412 = load i32, i32* %arrayidx719, align 8, !dbg !482
  %arrayidx720 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !482
  %413 = load i32, i32* %arrayidx720, align 8, !dbg !482
  %shr721 = lshr i32 %413, 31, !dbg !482
  %xor722 = xor i32 %412, %shr721, !dbg !482
  %arrayidx723 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !482
  %414 = load i32, i32* %arrayidx723, align 4, !dbg !482
  %shl724 = shl i32 %414, 1, !dbg !482
  %xor725 = xor i32 %xor722, %shl724, !dbg !482
  %415 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !482
  %u726 = bitcast %union.ARIA_u128* %415 to [4 x i32]*, !dbg !482
  %arrayidx727 = getelementptr inbounds [4 x i32], [4 x i32]* %u726, i64 0, i64 2, !dbg !482
  store i32 %xor725, i32* %arrayidx727, align 4, !dbg !482
  %arrayidx728 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !482
  %416 = load i32, i32* %arrayidx728, align 4, !dbg !482
  %arrayidx729 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !482
  %417 = load i32, i32* %arrayidx729, align 4, !dbg !482
  %shr730 = lshr i32 %417, 31, !dbg !482
  %xor731 = xor i32 %416, %shr730, !dbg !482
  %arrayidx732 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !482
  %418 = load i32, i32* %arrayidx732, align 8, !dbg !482
  %shl733 = shl i32 %418, 1, !dbg !482
  %xor734 = xor i32 %xor731, %shl733, !dbg !482
  %419 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !482
  %u735 = bitcast %union.ARIA_u128* %419 to [4 x i32]*, !dbg !482
  %arrayidx736 = getelementptr inbounds [4 x i32], [4 x i32]* %u735, i64 0, i64 3, !dbg !482
  store i32 %xor734, i32* %arrayidx736, align 4, !dbg !482
  br label %do.end737, !dbg !482

do.end737:                                        ; preds = %do.body700
  %420 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !484
  %incdec.ptr738 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %420, i32 1, !dbg !484
  store %union.ARIA_u128* %incdec.ptr738, %union.ARIA_u128** %rk, align 8, !dbg !484
  br label %do.body739, !dbg !485

do.body739:                                       ; preds = %do.end737
  %arrayidx740 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !486
  %421 = load i32, i32* %arrayidx740, align 16, !dbg !486
  %arrayidx741 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !486
  %422 = load i32, i32* %arrayidx741, align 16, !dbg !486
  %shr742 = lshr i32 %422, 31, !dbg !486
  %xor743 = xor i32 %421, %shr742, !dbg !486
  %arrayidx744 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !486
  %423 = load i32, i32* %arrayidx744, align 4, !dbg !486
  %shl745 = shl i32 %423, 1, !dbg !486
  %xor746 = xor i32 %xor743, %shl745, !dbg !486
  %424 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !486
  %u747 = bitcast %union.ARIA_u128* %424 to [4 x i32]*, !dbg !486
  %arrayidx748 = getelementptr inbounds [4 x i32], [4 x i32]* %u747, i64 0, i64 0, !dbg !486
  store i32 %xor746, i32* %arrayidx748, align 4, !dbg !486
  %arrayidx749 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !486
  %425 = load i32, i32* %arrayidx749, align 4, !dbg !486
  %arrayidx750 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !486
  %426 = load i32, i32* %arrayidx750, align 4, !dbg !486
  %shr751 = lshr i32 %426, 31, !dbg !486
  %xor752 = xor i32 %425, %shr751, !dbg !486
  %arrayidx753 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !486
  %427 = load i32, i32* %arrayidx753, align 16, !dbg !486
  %shl754 = shl i32 %427, 1, !dbg !486
  %xor755 = xor i32 %xor752, %shl754, !dbg !486
  %428 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !486
  %u756 = bitcast %union.ARIA_u128* %428 to [4 x i32]*, !dbg !486
  %arrayidx757 = getelementptr inbounds [4 x i32], [4 x i32]* %u756, i64 0, i64 1, !dbg !486
  store i32 %xor755, i32* %arrayidx757, align 4, !dbg !486
  %arrayidx758 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !486
  %429 = load i32, i32* %arrayidx758, align 8, !dbg !486
  %arrayidx759 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !486
  %430 = load i32, i32* %arrayidx759, align 8, !dbg !486
  %shr760 = lshr i32 %430, 31, !dbg !486
  %xor761 = xor i32 %429, %shr760, !dbg !486
  %arrayidx762 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !486
  %431 = load i32, i32* %arrayidx762, align 4, !dbg !486
  %shl763 = shl i32 %431, 1, !dbg !486
  %xor764 = xor i32 %xor761, %shl763, !dbg !486
  %432 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !486
  %u765 = bitcast %union.ARIA_u128* %432 to [4 x i32]*, !dbg !486
  %arrayidx766 = getelementptr inbounds [4 x i32], [4 x i32]* %u765, i64 0, i64 2, !dbg !486
  store i32 %xor764, i32* %arrayidx766, align 4, !dbg !486
  %arrayidx767 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !486
  %433 = load i32, i32* %arrayidx767, align 4, !dbg !486
  %arrayidx768 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !486
  %434 = load i32, i32* %arrayidx768, align 4, !dbg !486
  %shr769 = lshr i32 %434, 31, !dbg !486
  %xor770 = xor i32 %433, %shr769, !dbg !486
  %arrayidx771 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !486
  %435 = load i32, i32* %arrayidx771, align 8, !dbg !486
  %shl772 = shl i32 %435, 1, !dbg !486
  %xor773 = xor i32 %xor770, %shl772, !dbg !486
  %436 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !486
  %u774 = bitcast %union.ARIA_u128* %436 to [4 x i32]*, !dbg !486
  %arrayidx775 = getelementptr inbounds [4 x i32], [4 x i32]* %u774, i64 0, i64 3, !dbg !486
  store i32 %xor773, i32* %arrayidx775, align 4, !dbg !486
  br label %do.end776, !dbg !486

do.end776:                                        ; preds = %do.body739
  %437 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !488
  %incdec.ptr777 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %437, i32 1, !dbg !488
  store %union.ARIA_u128* %incdec.ptr777, %union.ARIA_u128** %rk, align 8, !dbg !488
  br label %do.body778, !dbg !489

do.body778:                                       ; preds = %do.end776
  %arrayidx779 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !490
  %438 = load i32, i32* %arrayidx779, align 16, !dbg !490
  %arrayidx780 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !490
  %439 = load i32, i32* %arrayidx780, align 16, !dbg !490
  %shr781 = lshr i32 %439, 31, !dbg !490
  %xor782 = xor i32 %438, %shr781, !dbg !490
  %arrayidx783 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !490
  %440 = load i32, i32* %arrayidx783, align 4, !dbg !490
  %shl784 = shl i32 %440, 1, !dbg !490
  %xor785 = xor i32 %xor782, %shl784, !dbg !490
  %441 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !490
  %u786 = bitcast %union.ARIA_u128* %441 to [4 x i32]*, !dbg !490
  %arrayidx787 = getelementptr inbounds [4 x i32], [4 x i32]* %u786, i64 0, i64 0, !dbg !490
  store i32 %xor785, i32* %arrayidx787, align 4, !dbg !490
  %arrayidx788 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !490
  %442 = load i32, i32* %arrayidx788, align 4, !dbg !490
  %arrayidx789 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !490
  %443 = load i32, i32* %arrayidx789, align 4, !dbg !490
  %shr790 = lshr i32 %443, 31, !dbg !490
  %xor791 = xor i32 %442, %shr790, !dbg !490
  %arrayidx792 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !490
  %444 = load i32, i32* %arrayidx792, align 16, !dbg !490
  %shl793 = shl i32 %444, 1, !dbg !490
  %xor794 = xor i32 %xor791, %shl793, !dbg !490
  %445 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !490
  %u795 = bitcast %union.ARIA_u128* %445 to [4 x i32]*, !dbg !490
  %arrayidx796 = getelementptr inbounds [4 x i32], [4 x i32]* %u795, i64 0, i64 1, !dbg !490
  store i32 %xor794, i32* %arrayidx796, align 4, !dbg !490
  %arrayidx797 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !490
  %446 = load i32, i32* %arrayidx797, align 8, !dbg !490
  %arrayidx798 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !490
  %447 = load i32, i32* %arrayidx798, align 8, !dbg !490
  %shr799 = lshr i32 %447, 31, !dbg !490
  %xor800 = xor i32 %446, %shr799, !dbg !490
  %arrayidx801 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !490
  %448 = load i32, i32* %arrayidx801, align 4, !dbg !490
  %shl802 = shl i32 %448, 1, !dbg !490
  %xor803 = xor i32 %xor800, %shl802, !dbg !490
  %449 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !490
  %u804 = bitcast %union.ARIA_u128* %449 to [4 x i32]*, !dbg !490
  %arrayidx805 = getelementptr inbounds [4 x i32], [4 x i32]* %u804, i64 0, i64 2, !dbg !490
  store i32 %xor803, i32* %arrayidx805, align 4, !dbg !490
  %arrayidx806 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !490
  %450 = load i32, i32* %arrayidx806, align 4, !dbg !490
  %arrayidx807 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !490
  %451 = load i32, i32* %arrayidx807, align 4, !dbg !490
  %shr808 = lshr i32 %451, 31, !dbg !490
  %xor809 = xor i32 %450, %shr808, !dbg !490
  %arrayidx810 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !490
  %452 = load i32, i32* %arrayidx810, align 8, !dbg !490
  %shl811 = shl i32 %452, 1, !dbg !490
  %xor812 = xor i32 %xor809, %shl811, !dbg !490
  %453 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !490
  %u813 = bitcast %union.ARIA_u128* %453 to [4 x i32]*, !dbg !490
  %arrayidx814 = getelementptr inbounds [4 x i32], [4 x i32]* %u813, i64 0, i64 3, !dbg !490
  store i32 %xor812, i32* %arrayidx814, align 4, !dbg !490
  br label %do.end815, !dbg !490

do.end815:                                        ; preds = %do.body778
  %454 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !492
  %incdec.ptr816 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %454, i32 1, !dbg !492
  store %union.ARIA_u128* %incdec.ptr816, %union.ARIA_u128** %rk, align 8, !dbg !492
  br label %do.body817, !dbg !493

do.body817:                                       ; preds = %do.end815
  %arrayidx818 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !494
  %455 = load i32, i32* %arrayidx818, align 16, !dbg !494
  %arrayidx819 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !494
  %456 = load i32, i32* %arrayidx819, align 16, !dbg !494
  %shr820 = lshr i32 %456, 31, !dbg !494
  %xor821 = xor i32 %455, %shr820, !dbg !494
  %arrayidx822 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !494
  %457 = load i32, i32* %arrayidx822, align 4, !dbg !494
  %shl823 = shl i32 %457, 1, !dbg !494
  %xor824 = xor i32 %xor821, %shl823, !dbg !494
  %458 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !494
  %u825 = bitcast %union.ARIA_u128* %458 to [4 x i32]*, !dbg !494
  %arrayidx826 = getelementptr inbounds [4 x i32], [4 x i32]* %u825, i64 0, i64 0, !dbg !494
  store i32 %xor824, i32* %arrayidx826, align 4, !dbg !494
  %arrayidx827 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !494
  %459 = load i32, i32* %arrayidx827, align 4, !dbg !494
  %arrayidx828 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !494
  %460 = load i32, i32* %arrayidx828, align 4, !dbg !494
  %shr829 = lshr i32 %460, 31, !dbg !494
  %xor830 = xor i32 %459, %shr829, !dbg !494
  %arrayidx831 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !494
  %461 = load i32, i32* %arrayidx831, align 16, !dbg !494
  %shl832 = shl i32 %461, 1, !dbg !494
  %xor833 = xor i32 %xor830, %shl832, !dbg !494
  %462 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !494
  %u834 = bitcast %union.ARIA_u128* %462 to [4 x i32]*, !dbg !494
  %arrayidx835 = getelementptr inbounds [4 x i32], [4 x i32]* %u834, i64 0, i64 1, !dbg !494
  store i32 %xor833, i32* %arrayidx835, align 4, !dbg !494
  %arrayidx836 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !494
  %463 = load i32, i32* %arrayidx836, align 8, !dbg !494
  %arrayidx837 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !494
  %464 = load i32, i32* %arrayidx837, align 8, !dbg !494
  %shr838 = lshr i32 %464, 31, !dbg !494
  %xor839 = xor i32 %463, %shr838, !dbg !494
  %arrayidx840 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !494
  %465 = load i32, i32* %arrayidx840, align 4, !dbg !494
  %shl841 = shl i32 %465, 1, !dbg !494
  %xor842 = xor i32 %xor839, %shl841, !dbg !494
  %466 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !494
  %u843 = bitcast %union.ARIA_u128* %466 to [4 x i32]*, !dbg !494
  %arrayidx844 = getelementptr inbounds [4 x i32], [4 x i32]* %u843, i64 0, i64 2, !dbg !494
  store i32 %xor842, i32* %arrayidx844, align 4, !dbg !494
  %arrayidx845 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !494
  %467 = load i32, i32* %arrayidx845, align 4, !dbg !494
  %arrayidx846 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !494
  %468 = load i32, i32* %arrayidx846, align 4, !dbg !494
  %shr847 = lshr i32 %468, 31, !dbg !494
  %xor848 = xor i32 %467, %shr847, !dbg !494
  %arrayidx849 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !494
  %469 = load i32, i32* %arrayidx849, align 8, !dbg !494
  %shl850 = shl i32 %469, 1, !dbg !494
  %xor851 = xor i32 %xor848, %shl850, !dbg !494
  %470 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !494
  %u852 = bitcast %union.ARIA_u128* %470 to [4 x i32]*, !dbg !494
  %arrayidx853 = getelementptr inbounds [4 x i32], [4 x i32]* %u852, i64 0, i64 3, !dbg !494
  store i32 %xor851, i32* %arrayidx853, align 4, !dbg !494
  br label %do.end854, !dbg !494

do.end854:                                        ; preds = %do.body817
  %471 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !496
  %incdec.ptr855 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %471, i32 1, !dbg !496
  store %union.ARIA_u128* %incdec.ptr855, %union.ARIA_u128** %rk, align 8, !dbg !496
  br label %do.body856, !dbg !497

do.body856:                                       ; preds = %do.end854
  %arrayidx857 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !498
  %472 = load i32, i32* %arrayidx857, align 16, !dbg !498
  %arrayidx858 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !498
  %473 = load i32, i32* %arrayidx858, align 8, !dbg !498
  %shr859 = lshr i32 %473, 3, !dbg !498
  %xor860 = xor i32 %472, %shr859, !dbg !498
  %arrayidx861 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !498
  %474 = load i32, i32* %arrayidx861, align 4, !dbg !498
  %shl862 = shl i32 %474, 29, !dbg !498
  %xor863 = xor i32 %xor860, %shl862, !dbg !498
  %475 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !498
  %u864 = bitcast %union.ARIA_u128* %475 to [4 x i32]*, !dbg !498
  %arrayidx865 = getelementptr inbounds [4 x i32], [4 x i32]* %u864, i64 0, i64 0, !dbg !498
  store i32 %xor863, i32* %arrayidx865, align 4, !dbg !498
  %arrayidx866 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !498
  %476 = load i32, i32* %arrayidx866, align 4, !dbg !498
  %arrayidx867 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !498
  %477 = load i32, i32* %arrayidx867, align 4, !dbg !498
  %shr868 = lshr i32 %477, 3, !dbg !498
  %xor869 = xor i32 %476, %shr868, !dbg !498
  %arrayidx870 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !498
  %478 = load i32, i32* %arrayidx870, align 8, !dbg !498
  %shl871 = shl i32 %478, 29, !dbg !498
  %xor872 = xor i32 %xor869, %shl871, !dbg !498
  %479 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !498
  %u873 = bitcast %union.ARIA_u128* %479 to [4 x i32]*, !dbg !498
  %arrayidx874 = getelementptr inbounds [4 x i32], [4 x i32]* %u873, i64 0, i64 1, !dbg !498
  store i32 %xor872, i32* %arrayidx874, align 4, !dbg !498
  %arrayidx875 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !498
  %480 = load i32, i32* %arrayidx875, align 8, !dbg !498
  %arrayidx876 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !498
  %481 = load i32, i32* %arrayidx876, align 16, !dbg !498
  %shr877 = lshr i32 %481, 3, !dbg !498
  %xor878 = xor i32 %480, %shr877, !dbg !498
  %arrayidx879 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !498
  %482 = load i32, i32* %arrayidx879, align 4, !dbg !498
  %shl880 = shl i32 %482, 29, !dbg !498
  %xor881 = xor i32 %xor878, %shl880, !dbg !498
  %483 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !498
  %u882 = bitcast %union.ARIA_u128* %483 to [4 x i32]*, !dbg !498
  %arrayidx883 = getelementptr inbounds [4 x i32], [4 x i32]* %u882, i64 0, i64 2, !dbg !498
  store i32 %xor881, i32* %arrayidx883, align 4, !dbg !498
  %arrayidx884 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !498
  %484 = load i32, i32* %arrayidx884, align 4, !dbg !498
  %arrayidx885 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !498
  %485 = load i32, i32* %arrayidx885, align 4, !dbg !498
  %shr886 = lshr i32 %485, 3, !dbg !498
  %xor887 = xor i32 %484, %shr886, !dbg !498
  %arrayidx888 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !498
  %486 = load i32, i32* %arrayidx888, align 16, !dbg !498
  %shl889 = shl i32 %486, 29, !dbg !498
  %xor890 = xor i32 %xor887, %shl889, !dbg !498
  %487 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !498
  %u891 = bitcast %union.ARIA_u128* %487 to [4 x i32]*, !dbg !498
  %arrayidx892 = getelementptr inbounds [4 x i32], [4 x i32]* %u891, i64 0, i64 3, !dbg !498
  store i32 %xor890, i32* %arrayidx892, align 4, !dbg !498
  br label %do.end893, !dbg !498

do.end893:                                        ; preds = %do.body856
  %488 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !500
  %incdec.ptr894 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %488, i32 1, !dbg !500
  store %union.ARIA_u128* %incdec.ptr894, %union.ARIA_u128** %rk, align 8, !dbg !500
  br label %do.body895, !dbg !501

do.body895:                                       ; preds = %do.end893
  %arrayidx896 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !502
  %489 = load i32, i32* %arrayidx896, align 16, !dbg !502
  %arrayidx897 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !502
  %490 = load i32, i32* %arrayidx897, align 8, !dbg !502
  %shr898 = lshr i32 %490, 3, !dbg !502
  %xor899 = xor i32 %489, %shr898, !dbg !502
  %arrayidx900 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !502
  %491 = load i32, i32* %arrayidx900, align 4, !dbg !502
  %shl901 = shl i32 %491, 29, !dbg !502
  %xor902 = xor i32 %xor899, %shl901, !dbg !502
  %492 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !502
  %u903 = bitcast %union.ARIA_u128* %492 to [4 x i32]*, !dbg !502
  %arrayidx904 = getelementptr inbounds [4 x i32], [4 x i32]* %u903, i64 0, i64 0, !dbg !502
  store i32 %xor902, i32* %arrayidx904, align 4, !dbg !502
  %arrayidx905 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !502
  %493 = load i32, i32* %arrayidx905, align 4, !dbg !502
  %arrayidx906 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !502
  %494 = load i32, i32* %arrayidx906, align 4, !dbg !502
  %shr907 = lshr i32 %494, 3, !dbg !502
  %xor908 = xor i32 %493, %shr907, !dbg !502
  %arrayidx909 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !502
  %495 = load i32, i32* %arrayidx909, align 8, !dbg !502
  %shl910 = shl i32 %495, 29, !dbg !502
  %xor911 = xor i32 %xor908, %shl910, !dbg !502
  %496 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !502
  %u912 = bitcast %union.ARIA_u128* %496 to [4 x i32]*, !dbg !502
  %arrayidx913 = getelementptr inbounds [4 x i32], [4 x i32]* %u912, i64 0, i64 1, !dbg !502
  store i32 %xor911, i32* %arrayidx913, align 4, !dbg !502
  %arrayidx914 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !502
  %497 = load i32, i32* %arrayidx914, align 8, !dbg !502
  %arrayidx915 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !502
  %498 = load i32, i32* %arrayidx915, align 16, !dbg !502
  %shr916 = lshr i32 %498, 3, !dbg !502
  %xor917 = xor i32 %497, %shr916, !dbg !502
  %arrayidx918 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !502
  %499 = load i32, i32* %arrayidx918, align 4, !dbg !502
  %shl919 = shl i32 %499, 29, !dbg !502
  %xor920 = xor i32 %xor917, %shl919, !dbg !502
  %500 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !502
  %u921 = bitcast %union.ARIA_u128* %500 to [4 x i32]*, !dbg !502
  %arrayidx922 = getelementptr inbounds [4 x i32], [4 x i32]* %u921, i64 0, i64 2, !dbg !502
  store i32 %xor920, i32* %arrayidx922, align 4, !dbg !502
  %arrayidx923 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !502
  %501 = load i32, i32* %arrayidx923, align 4, !dbg !502
  %arrayidx924 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !502
  %502 = load i32, i32* %arrayidx924, align 4, !dbg !502
  %shr925 = lshr i32 %502, 3, !dbg !502
  %xor926 = xor i32 %501, %shr925, !dbg !502
  %arrayidx927 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !502
  %503 = load i32, i32* %arrayidx927, align 16, !dbg !502
  %shl928 = shl i32 %503, 29, !dbg !502
  %xor929 = xor i32 %xor926, %shl928, !dbg !502
  %504 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !502
  %u930 = bitcast %union.ARIA_u128* %504 to [4 x i32]*, !dbg !502
  %arrayidx931 = getelementptr inbounds [4 x i32], [4 x i32]* %u930, i64 0, i64 3, !dbg !502
  store i32 %xor929, i32* %arrayidx931, align 4, !dbg !502
  br label %do.end932, !dbg !502

do.end932:                                        ; preds = %do.body895
  %505 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !504
  %incdec.ptr933 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %505, i32 1, !dbg !504
  store %union.ARIA_u128* %incdec.ptr933, %union.ARIA_u128** %rk, align 8, !dbg !504
  br label %do.body934, !dbg !505

do.body934:                                       ; preds = %do.end932
  %arrayidx935 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !506
  %506 = load i32, i32* %arrayidx935, align 16, !dbg !506
  %arrayidx936 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !506
  %507 = load i32, i32* %arrayidx936, align 8, !dbg !506
  %shr937 = lshr i32 %507, 3, !dbg !506
  %xor938 = xor i32 %506, %shr937, !dbg !506
  %arrayidx939 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !506
  %508 = load i32, i32* %arrayidx939, align 4, !dbg !506
  %shl940 = shl i32 %508, 29, !dbg !506
  %xor941 = xor i32 %xor938, %shl940, !dbg !506
  %509 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !506
  %u942 = bitcast %union.ARIA_u128* %509 to [4 x i32]*, !dbg !506
  %arrayidx943 = getelementptr inbounds [4 x i32], [4 x i32]* %u942, i64 0, i64 0, !dbg !506
  store i32 %xor941, i32* %arrayidx943, align 4, !dbg !506
  %arrayidx944 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !506
  %510 = load i32, i32* %arrayidx944, align 4, !dbg !506
  %arrayidx945 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !506
  %511 = load i32, i32* %arrayidx945, align 4, !dbg !506
  %shr946 = lshr i32 %511, 3, !dbg !506
  %xor947 = xor i32 %510, %shr946, !dbg !506
  %arrayidx948 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !506
  %512 = load i32, i32* %arrayidx948, align 8, !dbg !506
  %shl949 = shl i32 %512, 29, !dbg !506
  %xor950 = xor i32 %xor947, %shl949, !dbg !506
  %513 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !506
  %u951 = bitcast %union.ARIA_u128* %513 to [4 x i32]*, !dbg !506
  %arrayidx952 = getelementptr inbounds [4 x i32], [4 x i32]* %u951, i64 0, i64 1, !dbg !506
  store i32 %xor950, i32* %arrayidx952, align 4, !dbg !506
  %arrayidx953 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !506
  %514 = load i32, i32* %arrayidx953, align 8, !dbg !506
  %arrayidx954 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !506
  %515 = load i32, i32* %arrayidx954, align 16, !dbg !506
  %shr955 = lshr i32 %515, 3, !dbg !506
  %xor956 = xor i32 %514, %shr955, !dbg !506
  %arrayidx957 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !506
  %516 = load i32, i32* %arrayidx957, align 4, !dbg !506
  %shl958 = shl i32 %516, 29, !dbg !506
  %xor959 = xor i32 %xor956, %shl958, !dbg !506
  %517 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !506
  %u960 = bitcast %union.ARIA_u128* %517 to [4 x i32]*, !dbg !506
  %arrayidx961 = getelementptr inbounds [4 x i32], [4 x i32]* %u960, i64 0, i64 2, !dbg !506
  store i32 %xor959, i32* %arrayidx961, align 4, !dbg !506
  %arrayidx962 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !506
  %518 = load i32, i32* %arrayidx962, align 4, !dbg !506
  %arrayidx963 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !506
  %519 = load i32, i32* %arrayidx963, align 4, !dbg !506
  %shr964 = lshr i32 %519, 3, !dbg !506
  %xor965 = xor i32 %518, %shr964, !dbg !506
  %arrayidx966 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !506
  %520 = load i32, i32* %arrayidx966, align 16, !dbg !506
  %shl967 = shl i32 %520, 29, !dbg !506
  %xor968 = xor i32 %xor965, %shl967, !dbg !506
  %521 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !506
  %u969 = bitcast %union.ARIA_u128* %521 to [4 x i32]*, !dbg !506
  %arrayidx970 = getelementptr inbounds [4 x i32], [4 x i32]* %u969, i64 0, i64 3, !dbg !506
  store i32 %xor968, i32* %arrayidx970, align 4, !dbg !506
  br label %do.end971, !dbg !506

do.end971:                                        ; preds = %do.body934
  %522 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !508
  %incdec.ptr972 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %522, i32 1, !dbg !508
  store %union.ARIA_u128* %incdec.ptr972, %union.ARIA_u128** %rk, align 8, !dbg !508
  br label %do.body973, !dbg !509

do.body973:                                       ; preds = %do.end971
  %arrayidx974 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !510
  %523 = load i32, i32* %arrayidx974, align 16, !dbg !510
  %arrayidx975 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !510
  %524 = load i32, i32* %arrayidx975, align 8, !dbg !510
  %shr976 = lshr i32 %524, 3, !dbg !510
  %xor977 = xor i32 %523, %shr976, !dbg !510
  %arrayidx978 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !510
  %525 = load i32, i32* %arrayidx978, align 4, !dbg !510
  %shl979 = shl i32 %525, 29, !dbg !510
  %xor980 = xor i32 %xor977, %shl979, !dbg !510
  %526 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !510
  %u981 = bitcast %union.ARIA_u128* %526 to [4 x i32]*, !dbg !510
  %arrayidx982 = getelementptr inbounds [4 x i32], [4 x i32]* %u981, i64 0, i64 0, !dbg !510
  store i32 %xor980, i32* %arrayidx982, align 4, !dbg !510
  %arrayidx983 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !510
  %527 = load i32, i32* %arrayidx983, align 4, !dbg !510
  %arrayidx984 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !510
  %528 = load i32, i32* %arrayidx984, align 4, !dbg !510
  %shr985 = lshr i32 %528, 3, !dbg !510
  %xor986 = xor i32 %527, %shr985, !dbg !510
  %arrayidx987 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !510
  %529 = load i32, i32* %arrayidx987, align 8, !dbg !510
  %shl988 = shl i32 %529, 29, !dbg !510
  %xor989 = xor i32 %xor986, %shl988, !dbg !510
  %530 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !510
  %u990 = bitcast %union.ARIA_u128* %530 to [4 x i32]*, !dbg !510
  %arrayidx991 = getelementptr inbounds [4 x i32], [4 x i32]* %u990, i64 0, i64 1, !dbg !510
  store i32 %xor989, i32* %arrayidx991, align 4, !dbg !510
  %arrayidx992 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !510
  %531 = load i32, i32* %arrayidx992, align 8, !dbg !510
  %arrayidx993 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !510
  %532 = load i32, i32* %arrayidx993, align 16, !dbg !510
  %shr994 = lshr i32 %532, 3, !dbg !510
  %xor995 = xor i32 %531, %shr994, !dbg !510
  %arrayidx996 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !510
  %533 = load i32, i32* %arrayidx996, align 4, !dbg !510
  %shl997 = shl i32 %533, 29, !dbg !510
  %xor998 = xor i32 %xor995, %shl997, !dbg !510
  %534 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !510
  %u999 = bitcast %union.ARIA_u128* %534 to [4 x i32]*, !dbg !510
  %arrayidx1000 = getelementptr inbounds [4 x i32], [4 x i32]* %u999, i64 0, i64 2, !dbg !510
  store i32 %xor998, i32* %arrayidx1000, align 4, !dbg !510
  %arrayidx1001 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !510
  %535 = load i32, i32* %arrayidx1001, align 4, !dbg !510
  %arrayidx1002 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !510
  %536 = load i32, i32* %arrayidx1002, align 4, !dbg !510
  %shr1003 = lshr i32 %536, 3, !dbg !510
  %xor1004 = xor i32 %535, %shr1003, !dbg !510
  %arrayidx1005 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !510
  %537 = load i32, i32* %arrayidx1005, align 16, !dbg !510
  %shl1006 = shl i32 %537, 29, !dbg !510
  %xor1007 = xor i32 %xor1004, %shl1006, !dbg !510
  %538 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !510
  %u1008 = bitcast %union.ARIA_u128* %538 to [4 x i32]*, !dbg !510
  %arrayidx1009 = getelementptr inbounds [4 x i32], [4 x i32]* %u1008, i64 0, i64 3, !dbg !510
  store i32 %xor1007, i32* %arrayidx1009, align 4, !dbg !510
  br label %do.end1010, !dbg !510

do.end1010:                                       ; preds = %do.body973
  %539 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !512
  %incdec.ptr1011 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %539, i32 1, !dbg !512
  store %union.ARIA_u128* %incdec.ptr1011, %union.ARIA_u128** %rk, align 8, !dbg !512
  br label %do.body1012, !dbg !513

do.body1012:                                      ; preds = %do.end1010
  %arrayidx1013 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !514
  %540 = load i32, i32* %arrayidx1013, align 16, !dbg !514
  %arrayidx1014 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !514
  %541 = load i32, i32* %arrayidx1014, align 4, !dbg !514
  %shr1015 = lshr i32 %541, 1, !dbg !514
  %xor1016 = xor i32 %540, %shr1015, !dbg !514
  %arrayidx1017 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !514
  %542 = load i32, i32* %arrayidx1017, align 16, !dbg !514
  %shl1018 = shl i32 %542, 31, !dbg !514
  %xor1019 = xor i32 %xor1016, %shl1018, !dbg !514
  %543 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !514
  %u1020 = bitcast %union.ARIA_u128* %543 to [4 x i32]*, !dbg !514
  %arrayidx1021 = getelementptr inbounds [4 x i32], [4 x i32]* %u1020, i64 0, i64 0, !dbg !514
  store i32 %xor1019, i32* %arrayidx1021, align 4, !dbg !514
  %arrayidx1022 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !514
  %544 = load i32, i32* %arrayidx1022, align 4, !dbg !514
  %arrayidx1023 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !514
  %545 = load i32, i32* %arrayidx1023, align 8, !dbg !514
  %shr1024 = lshr i32 %545, 1, !dbg !514
  %xor1025 = xor i32 %544, %shr1024, !dbg !514
  %arrayidx1026 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !514
  %546 = load i32, i32* %arrayidx1026, align 4, !dbg !514
  %shl1027 = shl i32 %546, 31, !dbg !514
  %xor1028 = xor i32 %xor1025, %shl1027, !dbg !514
  %547 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !514
  %u1029 = bitcast %union.ARIA_u128* %547 to [4 x i32]*, !dbg !514
  %arrayidx1030 = getelementptr inbounds [4 x i32], [4 x i32]* %u1029, i64 0, i64 1, !dbg !514
  store i32 %xor1028, i32* %arrayidx1030, align 4, !dbg !514
  %arrayidx1031 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !514
  %548 = load i32, i32* %arrayidx1031, align 8, !dbg !514
  %arrayidx1032 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !514
  %549 = load i32, i32* %arrayidx1032, align 4, !dbg !514
  %shr1033 = lshr i32 %549, 1, !dbg !514
  %xor1034 = xor i32 %548, %shr1033, !dbg !514
  %arrayidx1035 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !514
  %550 = load i32, i32* %arrayidx1035, align 8, !dbg !514
  %shl1036 = shl i32 %550, 31, !dbg !514
  %xor1037 = xor i32 %xor1034, %shl1036, !dbg !514
  %551 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !514
  %u1038 = bitcast %union.ARIA_u128* %551 to [4 x i32]*, !dbg !514
  %arrayidx1039 = getelementptr inbounds [4 x i32], [4 x i32]* %u1038, i64 0, i64 2, !dbg !514
  store i32 %xor1037, i32* %arrayidx1039, align 4, !dbg !514
  %arrayidx1040 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !514
  %552 = load i32, i32* %arrayidx1040, align 4, !dbg !514
  %arrayidx1041 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !514
  %553 = load i32, i32* %arrayidx1041, align 16, !dbg !514
  %shr1042 = lshr i32 %553, 1, !dbg !514
  %xor1043 = xor i32 %552, %shr1042, !dbg !514
  %arrayidx1044 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !514
  %554 = load i32, i32* %arrayidx1044, align 4, !dbg !514
  %shl1045 = shl i32 %554, 31, !dbg !514
  %xor1046 = xor i32 %xor1043, %shl1045, !dbg !514
  %555 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !514
  %u1047 = bitcast %union.ARIA_u128* %555 to [4 x i32]*, !dbg !514
  %arrayidx1048 = getelementptr inbounds [4 x i32], [4 x i32]* %u1047, i64 0, i64 3, !dbg !514
  store i32 %xor1046, i32* %arrayidx1048, align 4, !dbg !514
  br label %do.end1049, !dbg !514

do.end1049:                                       ; preds = %do.body1012
  %556 = load i32, i32* %bits.addr, align 4, !dbg !516
  %cmp1050 = icmp sgt i32 %556, 128, !dbg !518
  br i1 %cmp1050, label %if.then1052, label %if.end1131, !dbg !519

if.then1052:                                      ; preds = %do.end1049
  %557 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !520
  %incdec.ptr1053 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %557, i32 1, !dbg !520
  store %union.ARIA_u128* %incdec.ptr1053, %union.ARIA_u128** %rk, align 8, !dbg !520
  br label %do.body1054, !dbg !522

do.body1054:                                      ; preds = %if.then1052
  %arrayidx1055 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !523
  %558 = load i32, i32* %arrayidx1055, align 16, !dbg !523
  %arrayidx1056 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !523
  %559 = load i32, i32* %arrayidx1056, align 4, !dbg !523
  %shr1057 = lshr i32 %559, 1, !dbg !523
  %xor1058 = xor i32 %558, %shr1057, !dbg !523
  %arrayidx1059 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !523
  %560 = load i32, i32* %arrayidx1059, align 16, !dbg !523
  %shl1060 = shl i32 %560, 31, !dbg !523
  %xor1061 = xor i32 %xor1058, %shl1060, !dbg !523
  %561 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !523
  %u1062 = bitcast %union.ARIA_u128* %561 to [4 x i32]*, !dbg !523
  %arrayidx1063 = getelementptr inbounds [4 x i32], [4 x i32]* %u1062, i64 0, i64 0, !dbg !523
  store i32 %xor1061, i32* %arrayidx1063, align 4, !dbg !523
  %arrayidx1064 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !523
  %562 = load i32, i32* %arrayidx1064, align 4, !dbg !523
  %arrayidx1065 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !523
  %563 = load i32, i32* %arrayidx1065, align 8, !dbg !523
  %shr1066 = lshr i32 %563, 1, !dbg !523
  %xor1067 = xor i32 %562, %shr1066, !dbg !523
  %arrayidx1068 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !523
  %564 = load i32, i32* %arrayidx1068, align 4, !dbg !523
  %shl1069 = shl i32 %564, 31, !dbg !523
  %xor1070 = xor i32 %xor1067, %shl1069, !dbg !523
  %565 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !523
  %u1071 = bitcast %union.ARIA_u128* %565 to [4 x i32]*, !dbg !523
  %arrayidx1072 = getelementptr inbounds [4 x i32], [4 x i32]* %u1071, i64 0, i64 1, !dbg !523
  store i32 %xor1070, i32* %arrayidx1072, align 4, !dbg !523
  %arrayidx1073 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !523
  %566 = load i32, i32* %arrayidx1073, align 8, !dbg !523
  %arrayidx1074 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !523
  %567 = load i32, i32* %arrayidx1074, align 4, !dbg !523
  %shr1075 = lshr i32 %567, 1, !dbg !523
  %xor1076 = xor i32 %566, %shr1075, !dbg !523
  %arrayidx1077 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !523
  %568 = load i32, i32* %arrayidx1077, align 8, !dbg !523
  %shl1078 = shl i32 %568, 31, !dbg !523
  %xor1079 = xor i32 %xor1076, %shl1078, !dbg !523
  %569 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !523
  %u1080 = bitcast %union.ARIA_u128* %569 to [4 x i32]*, !dbg !523
  %arrayidx1081 = getelementptr inbounds [4 x i32], [4 x i32]* %u1080, i64 0, i64 2, !dbg !523
  store i32 %xor1079, i32* %arrayidx1081, align 4, !dbg !523
  %arrayidx1082 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !523
  %570 = load i32, i32* %arrayidx1082, align 4, !dbg !523
  %arrayidx1083 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !523
  %571 = load i32, i32* %arrayidx1083, align 16, !dbg !523
  %shr1084 = lshr i32 %571, 1, !dbg !523
  %xor1085 = xor i32 %570, %shr1084, !dbg !523
  %arrayidx1086 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !523
  %572 = load i32, i32* %arrayidx1086, align 4, !dbg !523
  %shl1087 = shl i32 %572, 31, !dbg !523
  %xor1088 = xor i32 %xor1085, %shl1087, !dbg !523
  %573 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !523
  %u1089 = bitcast %union.ARIA_u128* %573 to [4 x i32]*, !dbg !523
  %arrayidx1090 = getelementptr inbounds [4 x i32], [4 x i32]* %u1089, i64 0, i64 3, !dbg !523
  store i32 %xor1088, i32* %arrayidx1090, align 4, !dbg !523
  br label %do.end1091, !dbg !523

do.end1091:                                       ; preds = %do.body1054
  %574 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !525
  %incdec.ptr1092 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %574, i32 1, !dbg !525
  store %union.ARIA_u128* %incdec.ptr1092, %union.ARIA_u128** %rk, align 8, !dbg !525
  br label %do.body1093, !dbg !526

do.body1093:                                      ; preds = %do.end1091
  %arrayidx1094 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 0, !dbg !527
  %575 = load i32, i32* %arrayidx1094, align 16, !dbg !527
  %arrayidx1095 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !527
  %576 = load i32, i32* %arrayidx1095, align 4, !dbg !527
  %shr1096 = lshr i32 %576, 1, !dbg !527
  %xor1097 = xor i32 %575, %shr1096, !dbg !527
  %arrayidx1098 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !527
  %577 = load i32, i32* %arrayidx1098, align 16, !dbg !527
  %shl1099 = shl i32 %577, 31, !dbg !527
  %xor1100 = xor i32 %xor1097, %shl1099, !dbg !527
  %578 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !527
  %u1101 = bitcast %union.ARIA_u128* %578 to [4 x i32]*, !dbg !527
  %arrayidx1102 = getelementptr inbounds [4 x i32], [4 x i32]* %u1101, i64 0, i64 0, !dbg !527
  store i32 %xor1100, i32* %arrayidx1102, align 4, !dbg !527
  %arrayidx1103 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 1, !dbg !527
  %579 = load i32, i32* %arrayidx1103, align 4, !dbg !527
  %arrayidx1104 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !527
  %580 = load i32, i32* %arrayidx1104, align 8, !dbg !527
  %shr1105 = lshr i32 %580, 1, !dbg !527
  %xor1106 = xor i32 %579, %shr1105, !dbg !527
  %arrayidx1107 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !527
  %581 = load i32, i32* %arrayidx1107, align 4, !dbg !527
  %shl1108 = shl i32 %581, 31, !dbg !527
  %xor1109 = xor i32 %xor1106, %shl1108, !dbg !527
  %582 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !527
  %u1110 = bitcast %union.ARIA_u128* %582 to [4 x i32]*, !dbg !527
  %arrayidx1111 = getelementptr inbounds [4 x i32], [4 x i32]* %u1110, i64 0, i64 1, !dbg !527
  store i32 %xor1109, i32* %arrayidx1111, align 4, !dbg !527
  %arrayidx1112 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 2, !dbg !527
  %583 = load i32, i32* %arrayidx1112, align 8, !dbg !527
  %arrayidx1113 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !527
  %584 = load i32, i32* %arrayidx1113, align 4, !dbg !527
  %shr1114 = lshr i32 %584, 1, !dbg !527
  %xor1115 = xor i32 %583, %shr1114, !dbg !527
  %arrayidx1116 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !527
  %585 = load i32, i32* %arrayidx1116, align 8, !dbg !527
  %shl1117 = shl i32 %585, 31, !dbg !527
  %xor1118 = xor i32 %xor1115, %shl1117, !dbg !527
  %586 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !527
  %u1119 = bitcast %union.ARIA_u128* %586 to [4 x i32]*, !dbg !527
  %arrayidx1120 = getelementptr inbounds [4 x i32], [4 x i32]* %u1119, i64 0, i64 2, !dbg !527
  store i32 %xor1118, i32* %arrayidx1120, align 4, !dbg !527
  %arrayidx1121 = getelementptr inbounds [4 x i32], [4 x i32]* %w2, i64 0, i64 3, !dbg !527
  %587 = load i32, i32* %arrayidx1121, align 4, !dbg !527
  %arrayidx1122 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !527
  %588 = load i32, i32* %arrayidx1122, align 16, !dbg !527
  %shr1123 = lshr i32 %588, 1, !dbg !527
  %xor1124 = xor i32 %587, %shr1123, !dbg !527
  %arrayidx1125 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !527
  %589 = load i32, i32* %arrayidx1125, align 4, !dbg !527
  %shl1126 = shl i32 %589, 31, !dbg !527
  %xor1127 = xor i32 %xor1124, %shl1126, !dbg !527
  %590 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !527
  %u1128 = bitcast %union.ARIA_u128* %590 to [4 x i32]*, !dbg !527
  %arrayidx1129 = getelementptr inbounds [4 x i32], [4 x i32]* %u1128, i64 0, i64 3, !dbg !527
  store i32 %xor1127, i32* %arrayidx1129, align 4, !dbg !527
  br label %do.end1130, !dbg !527

do.end1130:                                       ; preds = %do.body1093
  br label %if.end1131, !dbg !529

if.end1131:                                       ; preds = %do.end1130, %do.end1049
  %591 = load i32, i32* %bits.addr, align 4, !dbg !530
  %cmp1132 = icmp sgt i32 %591, 192, !dbg !532
  br i1 %cmp1132, label %if.then1134, label %if.end1213, !dbg !533

if.then1134:                                      ; preds = %if.end1131
  %592 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !534
  %incdec.ptr1135 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %592, i32 1, !dbg !534
  store %union.ARIA_u128* %incdec.ptr1135, %union.ARIA_u128** %rk, align 8, !dbg !534
  br label %do.body1136, !dbg !536

do.body1136:                                      ; preds = %if.then1134
  %arrayidx1137 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 0, !dbg !537
  %593 = load i32, i32* %arrayidx1137, align 16, !dbg !537
  %arrayidx1138 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !537
  %594 = load i32, i32* %arrayidx1138, align 4, !dbg !537
  %shr1139 = lshr i32 %594, 1, !dbg !537
  %xor1140 = xor i32 %593, %shr1139, !dbg !537
  %arrayidx1141 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !537
  %595 = load i32, i32* %arrayidx1141, align 16, !dbg !537
  %shl1142 = shl i32 %595, 31, !dbg !537
  %xor1143 = xor i32 %xor1140, %shl1142, !dbg !537
  %596 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !537
  %u1144 = bitcast %union.ARIA_u128* %596 to [4 x i32]*, !dbg !537
  %arrayidx1145 = getelementptr inbounds [4 x i32], [4 x i32]* %u1144, i64 0, i64 0, !dbg !537
  store i32 %xor1143, i32* %arrayidx1145, align 4, !dbg !537
  %arrayidx1146 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 1, !dbg !537
  %597 = load i32, i32* %arrayidx1146, align 4, !dbg !537
  %arrayidx1147 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !537
  %598 = load i32, i32* %arrayidx1147, align 8, !dbg !537
  %shr1148 = lshr i32 %598, 1, !dbg !537
  %xor1149 = xor i32 %597, %shr1148, !dbg !537
  %arrayidx1150 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !537
  %599 = load i32, i32* %arrayidx1150, align 4, !dbg !537
  %shl1151 = shl i32 %599, 31, !dbg !537
  %xor1152 = xor i32 %xor1149, %shl1151, !dbg !537
  %600 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !537
  %u1153 = bitcast %union.ARIA_u128* %600 to [4 x i32]*, !dbg !537
  %arrayidx1154 = getelementptr inbounds [4 x i32], [4 x i32]* %u1153, i64 0, i64 1, !dbg !537
  store i32 %xor1152, i32* %arrayidx1154, align 4, !dbg !537
  %arrayidx1155 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 2, !dbg !537
  %601 = load i32, i32* %arrayidx1155, align 8, !dbg !537
  %arrayidx1156 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !537
  %602 = load i32, i32* %arrayidx1156, align 4, !dbg !537
  %shr1157 = lshr i32 %602, 1, !dbg !537
  %xor1158 = xor i32 %601, %shr1157, !dbg !537
  %arrayidx1159 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !537
  %603 = load i32, i32* %arrayidx1159, align 8, !dbg !537
  %shl1160 = shl i32 %603, 31, !dbg !537
  %xor1161 = xor i32 %xor1158, %shl1160, !dbg !537
  %604 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !537
  %u1162 = bitcast %union.ARIA_u128* %604 to [4 x i32]*, !dbg !537
  %arrayidx1163 = getelementptr inbounds [4 x i32], [4 x i32]* %u1162, i64 0, i64 2, !dbg !537
  store i32 %xor1161, i32* %arrayidx1163, align 4, !dbg !537
  %arrayidx1164 = getelementptr inbounds [4 x i32], [4 x i32]* %w3, i64 0, i64 3, !dbg !537
  %605 = load i32, i32* %arrayidx1164, align 4, !dbg !537
  %arrayidx1165 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !537
  %606 = load i32, i32* %arrayidx1165, align 16, !dbg !537
  %shr1166 = lshr i32 %606, 1, !dbg !537
  %xor1167 = xor i32 %605, %shr1166, !dbg !537
  %arrayidx1168 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !537
  %607 = load i32, i32* %arrayidx1168, align 4, !dbg !537
  %shl1169 = shl i32 %607, 31, !dbg !537
  %xor1170 = xor i32 %xor1167, %shl1169, !dbg !537
  %608 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !537
  %u1171 = bitcast %union.ARIA_u128* %608 to [4 x i32]*, !dbg !537
  %arrayidx1172 = getelementptr inbounds [4 x i32], [4 x i32]* %u1171, i64 0, i64 3, !dbg !537
  store i32 %xor1170, i32* %arrayidx1172, align 4, !dbg !537
  br label %do.end1173, !dbg !537

do.end1173:                                       ; preds = %do.body1136
  %609 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !539
  %incdec.ptr1174 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %609, i32 1, !dbg !539
  store %union.ARIA_u128* %incdec.ptr1174, %union.ARIA_u128** %rk, align 8, !dbg !539
  br label %do.body1175, !dbg !540

do.body1175:                                      ; preds = %do.end1173
  %arrayidx1176 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 0, !dbg !541
  %610 = load i32, i32* %arrayidx1176, align 16, !dbg !541
  %arrayidx1177 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !541
  %611 = load i32, i32* %arrayidx1177, align 4, !dbg !541
  %shr1178 = lshr i32 %611, 13, !dbg !541
  %xor1179 = xor i32 %610, %shr1178, !dbg !541
  %arrayidx1180 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !541
  %612 = load i32, i32* %arrayidx1180, align 16, !dbg !541
  %shl1181 = shl i32 %612, 19, !dbg !541
  %xor1182 = xor i32 %xor1179, %shl1181, !dbg !541
  %613 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !541
  %u1183 = bitcast %union.ARIA_u128* %613 to [4 x i32]*, !dbg !541
  %arrayidx1184 = getelementptr inbounds [4 x i32], [4 x i32]* %u1183, i64 0, i64 0, !dbg !541
  store i32 %xor1182, i32* %arrayidx1184, align 4, !dbg !541
  %arrayidx1185 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 1, !dbg !541
  %614 = load i32, i32* %arrayidx1185, align 4, !dbg !541
  %arrayidx1186 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !541
  %615 = load i32, i32* %arrayidx1186, align 8, !dbg !541
  %shr1187 = lshr i32 %615, 13, !dbg !541
  %xor1188 = xor i32 %614, %shr1187, !dbg !541
  %arrayidx1189 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 1, !dbg !541
  %616 = load i32, i32* %arrayidx1189, align 4, !dbg !541
  %shl1190 = shl i32 %616, 19, !dbg !541
  %xor1191 = xor i32 %xor1188, %shl1190, !dbg !541
  %617 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !541
  %u1192 = bitcast %union.ARIA_u128* %617 to [4 x i32]*, !dbg !541
  %arrayidx1193 = getelementptr inbounds [4 x i32], [4 x i32]* %u1192, i64 0, i64 1, !dbg !541
  store i32 %xor1191, i32* %arrayidx1193, align 4, !dbg !541
  %arrayidx1194 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 2, !dbg !541
  %618 = load i32, i32* %arrayidx1194, align 8, !dbg !541
  %arrayidx1195 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !541
  %619 = load i32, i32* %arrayidx1195, align 4, !dbg !541
  %shr1196 = lshr i32 %619, 13, !dbg !541
  %xor1197 = xor i32 %618, %shr1196, !dbg !541
  %arrayidx1198 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 2, !dbg !541
  %620 = load i32, i32* %arrayidx1198, align 8, !dbg !541
  %shl1199 = shl i32 %620, 19, !dbg !541
  %xor1200 = xor i32 %xor1197, %shl1199, !dbg !541
  %621 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !541
  %u1201 = bitcast %union.ARIA_u128* %621 to [4 x i32]*, !dbg !541
  %arrayidx1202 = getelementptr inbounds [4 x i32], [4 x i32]* %u1201, i64 0, i64 2, !dbg !541
  store i32 %xor1200, i32* %arrayidx1202, align 4, !dbg !541
  %arrayidx1203 = getelementptr inbounds [4 x i32], [4 x i32]* %w0, i64 0, i64 3, !dbg !541
  %622 = load i32, i32* %arrayidx1203, align 4, !dbg !541
  %arrayidx1204 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 0, !dbg !541
  %623 = load i32, i32* %arrayidx1204, align 16, !dbg !541
  %shr1205 = lshr i32 %623, 13, !dbg !541
  %xor1206 = xor i32 %622, %shr1205, !dbg !541
  %arrayidx1207 = getelementptr inbounds [4 x i32], [4 x i32]* %w1, i64 0, i64 3, !dbg !541
  %624 = load i32, i32* %arrayidx1207, align 4, !dbg !541
  %shl1208 = shl i32 %624, 19, !dbg !541
  %xor1209 = xor i32 %xor1206, %shl1208, !dbg !541
  %625 = load %union.ARIA_u128*, %union.ARIA_u128** %rk, align 8, !dbg !541
  %u1210 = bitcast %union.ARIA_u128* %625 to [4 x i32]*, !dbg !541
  %arrayidx1211 = getelementptr inbounds [4 x i32], [4 x i32]* %u1210, i64 0, i64 3, !dbg !541
  store i32 %xor1209, i32* %arrayidx1211, align 4, !dbg !541
  br label %do.end1212, !dbg !541

do.end1212:                                       ; preds = %do.body1175
  br label %if.end1213, !dbg !543

if.end1213:                                       ; preds = %do.end1212, %if.end1131
  store i32 0, i32* %retval, align 4, !dbg !544
  br label %return, !dbg !544

return:                                           ; preds = %if.end1213, %if.then6, %if.then
  %626 = load i32, i32* %retval, align 4, !dbg !545
  ret i32 %626, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aria_set_decrypt_key(i8* %userKey, i32 %bits, %struct.aria_key_st* %key) #3 !dbg !546 {
entry:
  %retval.i = alloca i32, align 4
  %userKey.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %userKey.addr.i, metadata !223, metadata !DIExpression()), !dbg !547
  %bits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr.i, metadata !225, metadata !DIExpression()), !dbg !549
  %key.addr.i = alloca %struct.aria_key_st*, align 8
  call void @llvm.dbg.declare(metadata %struct.aria_key_st** %key.addr.i, metadata !227, metadata !DIExpression()), !dbg !550
  %reg0.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg0.i, metadata !229, metadata !DIExpression()), !dbg !551
  %reg1.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg1.i, metadata !231, metadata !DIExpression()), !dbg !552
  %reg2.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg2.i, metadata !233, metadata !DIExpression()), !dbg !553
  %reg3.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg3.i, metadata !235, metadata !DIExpression()), !dbg !554
  %w0.i = alloca [4 x i32], align 16
  call void @llvm.dbg.declare(metadata [4 x i32]* %w0.i, metadata !237, metadata !DIExpression()), !dbg !555
  %w1.i = alloca [4 x i32], align 16
  call void @llvm.dbg.declare(metadata [4 x i32]* %w1.i, metadata !240, metadata !DIExpression()), !dbg !556
  %w2.i = alloca [4 x i32], align 16
  call void @llvm.dbg.declare(metadata [4 x i32]* %w2.i, metadata !242, metadata !DIExpression()), !dbg !557
  %w3.i = alloca [4 x i32], align 16
  call void @llvm.dbg.declare(metadata [4 x i32]* %w3.i, metadata !244, metadata !DIExpression()), !dbg !558
  %ck.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %ck.i, metadata !246, metadata !DIExpression()), !dbg !559
  %rk.i = alloca %union.ARIA_u128*, align 8
  call void @llvm.dbg.declare(metadata %union.ARIA_u128** %rk.i, metadata !249, metadata !DIExpression()), !dbg !560
  %Nr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %Nr.i, metadata !252, metadata !DIExpression()), !dbg !561
  %retval = alloca i32, align 4
  %userKey.addr = alloca i8*, align 8
  %bits.addr = alloca i32, align 4
  %key.addr = alloca %struct.aria_key_st*, align 8
  %rk_head = alloca %union.ARIA_u128*, align 8
  %rk_tail = alloca %union.ARIA_u128*, align 8
  %w1 = alloca i32, align 4
  %w2 = alloca i32, align 4
  %reg0 = alloca i32, align 4
  %reg1 = alloca i32, align 4
  %reg2 = alloca i32, align 4
  %reg3 = alloca i32, align 4
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %r = alloca i32, align 4
  store i8* %userKey, i8** %userKey.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %userKey.addr, metadata !562, metadata !DIExpression()), !dbg !563
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !564, metadata !DIExpression()), !dbg !565
  store %struct.aria_key_st* %key, %struct.aria_key_st** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.aria_key_st** %key.addr, metadata !566, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata %union.ARIA_u128** %rk_head, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata %union.ARIA_u128** %rk_tail, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata i32* %w1, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata i32* %w2, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata i32* %reg0, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata i32* %reg1, metadata !578, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata i32* %reg2, metadata !580, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.declare(metadata i32* %reg3, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i32* %s0, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata i32* %s1, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata i32* %s2, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata i32* %s3, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata i32* %r, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = load i8*, i8** %userKey.addr, align 8, !dbg !594
  %1 = load i32, i32* %bits.addr, align 4, !dbg !595
  %2 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr, align 8, !dbg !596
  store i8* %0, i8** %userKey.addr.i, align 8
  store i32 %1, i32* %bits.addr.i, align 4
  store %struct.aria_key_st* %2, %struct.aria_key_st** %key.addr.i, align 8
  %3 = load i32, i32* %bits.addr.i, align 4, !dbg !597
  %add.i = add nsw i32 %3, 256, !dbg !598
  %div.i = sdiv i32 %add.i, 32, !dbg !599
  store i32 %div.i, i32* %Nr.i, align 4, !dbg !561
  %4 = load i8*, i8** %userKey.addr.i, align 8, !dbg !600
  %cmp.i = icmp eq i8* %4, null, !dbg !601
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i, !dbg !602

lor.lhs.false.i:                                  ; preds = %entry
  %5 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr.i, align 8, !dbg !603
  %cmp1.i = icmp eq %struct.aria_key_st* %5, null, !dbg !604
  br i1 %cmp1.i, label %if.then.i, label %if.end.i, !dbg !605

if.then.i:                                        ; preds = %lor.lhs.false.i, %entry
  store i32 -1, i32* %retval.i, align 4, !dbg !606
  br label %aria_set_encrypt_key.exit, !dbg !606

if.end.i:                                         ; preds = %lor.lhs.false.i
  %6 = load i32, i32* %bits.addr.i, align 4, !dbg !607
  %cmp2.i = icmp ne i32 %6, 128, !dbg !608
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end7.i, !dbg !609

land.lhs.true.i:                                  ; preds = %if.end.i
  %7 = load i32, i32* %bits.addr.i, align 4, !dbg !610
  %cmp3.i = icmp ne i32 %7, 192, !dbg !611
  br i1 %cmp3.i, label %land.lhs.true4.i, label %if.end7.i, !dbg !612

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %8 = load i32, i32* %bits.addr.i, align 4, !dbg !613
  %cmp5.i = icmp ne i32 %8, 256, !dbg !614
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i, !dbg !615

if.then6.i:                                       ; preds = %land.lhs.true4.i
  store i32 -2, i32* %retval.i, align 4, !dbg !616
  br label %aria_set_encrypt_key.exit, !dbg !616

if.end7.i:                                        ; preds = %land.lhs.true4.i, %land.lhs.true.i, %if.end.i
  %9 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr.i, align 8, !dbg !617
  %rd_key.i = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %9, i32 0, i32 0, !dbg !618
  %arraydecay.i = getelementptr inbounds [17 x %union.ARIA_u128], [17 x %union.ARIA_u128]* %rd_key.i, i64 0, i64 0, !dbg !617
  store %union.ARIA_u128* %arraydecay.i, %union.ARIA_u128** %rk.i, align 8, !dbg !619
  %10 = load i32, i32* %Nr.i, align 4, !dbg !620
  %11 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr.i, align 8, !dbg !621
  %rounds.i = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %11, i32 0, i32 1, !dbg !622
  store i32 %10, i32* %rounds.i, align 4, !dbg !623
  %12 = load i32, i32* %bits.addr.i, align 4, !dbg !624
  %sub.i = sub nsw i32 %12, 128, !dbg !625
  %div8.i = sdiv i32 %sub.i, 64, !dbg !626
  %idxprom.i = sext i32 %div8.i to i64, !dbg !627
  %arrayidx.i = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @Key_RC, i64 0, i64 %idxprom.i, !dbg !627
  %arrayidx9.i = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx.i, i64 0, i64 0, !dbg !627
  store i32* %arrayidx9.i, i32** %ck.i, align 8, !dbg !628
  %13 = load i8*, i8** %userKey.addr.i, align 8, !dbg !629
  %14 = load i8, i8* %13, align 1, !dbg !629
  %conv.i = zext i8 %14 to i32, !dbg !629
  %shl.i = shl i32 %conv.i, 24, !dbg !629
  %15 = load i8*, i8** %userKey.addr.i, align 8, !dbg !629
  %arrayidx11.i = getelementptr inbounds i8, i8* %15, i64 1, !dbg !629
  %16 = load i8, i8* %arrayidx11.i, align 1, !dbg !629
  %conv12.i = zext i8 %16 to i32, !dbg !629
  %shl13.i = shl i32 %conv12.i, 16, !dbg !629
  %xor.i = xor i32 %shl.i, %shl13.i, !dbg !629
  %17 = load i8*, i8** %userKey.addr.i, align 8, !dbg !629
  %arrayidx14.i = getelementptr inbounds i8, i8* %17, i64 2, !dbg !629
  %18 = load i8, i8* %arrayidx14.i, align 1, !dbg !629
  %conv15.i = zext i8 %18 to i32, !dbg !629
  %shl16.i = shl i32 %conv15.i, 8, !dbg !629
  %xor17.i = xor i32 %xor.i, %shl16.i, !dbg !629
  %19 = load i8*, i8** %userKey.addr.i, align 8, !dbg !629
  %arrayidx18.i = getelementptr inbounds i8, i8* %19, i64 3, !dbg !629
  %20 = load i8, i8* %arrayidx18.i, align 1, !dbg !629
  %conv19.i = zext i8 %20 to i32, !dbg !629
  %xor20.i = xor i32 %xor17.i, %conv19.i, !dbg !629
  %arrayidx21.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !630
  store i32 %xor20.i, i32* %arrayidx21.i, align 16, !dbg !631
  %21 = load i8*, i8** %userKey.addr.i, align 8, !dbg !632
  %arrayidx22.i = getelementptr inbounds i8, i8* %21, i64 4, !dbg !632
  %22 = load i8, i8* %arrayidx22.i, align 1, !dbg !632
  %conv23.i = zext i8 %22 to i32, !dbg !632
  %shl24.i = shl i32 %conv23.i, 24, !dbg !632
  %23 = load i8*, i8** %userKey.addr.i, align 8, !dbg !632
  %arrayidx25.i = getelementptr inbounds i8, i8* %23, i64 5, !dbg !632
  %24 = load i8, i8* %arrayidx25.i, align 1, !dbg !632
  %conv26.i = zext i8 %24 to i32, !dbg !632
  %shl27.i = shl i32 %conv26.i, 16, !dbg !632
  %xor28.i = xor i32 %shl24.i, %shl27.i, !dbg !632
  %25 = load i8*, i8** %userKey.addr.i, align 8, !dbg !632
  %arrayidx29.i = getelementptr inbounds i8, i8* %25, i64 6, !dbg !632
  %26 = load i8, i8* %arrayidx29.i, align 1, !dbg !632
  %conv30.i = zext i8 %26 to i32, !dbg !632
  %shl31.i = shl i32 %conv30.i, 8, !dbg !632
  %xor32.i = xor i32 %xor28.i, %shl31.i, !dbg !632
  %27 = load i8*, i8** %userKey.addr.i, align 8, !dbg !632
  %arrayidx33.i = getelementptr inbounds i8, i8* %27, i64 7, !dbg !632
  %28 = load i8, i8* %arrayidx33.i, align 1, !dbg !632
  %conv34.i = zext i8 %28 to i32, !dbg !632
  %xor35.i = xor i32 %xor32.i, %conv34.i, !dbg !632
  %arrayidx36.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !633
  store i32 %xor35.i, i32* %arrayidx36.i, align 4, !dbg !634
  %29 = load i8*, i8** %userKey.addr.i, align 8, !dbg !635
  %arrayidx37.i = getelementptr inbounds i8, i8* %29, i64 8, !dbg !635
  %30 = load i8, i8* %arrayidx37.i, align 1, !dbg !635
  %conv38.i = zext i8 %30 to i32, !dbg !635
  %shl39.i = shl i32 %conv38.i, 24, !dbg !635
  %31 = load i8*, i8** %userKey.addr.i, align 8, !dbg !635
  %arrayidx40.i = getelementptr inbounds i8, i8* %31, i64 9, !dbg !635
  %32 = load i8, i8* %arrayidx40.i, align 1, !dbg !635
  %conv41.i = zext i8 %32 to i32, !dbg !635
  %shl42.i = shl i32 %conv41.i, 16, !dbg !635
  %xor43.i = xor i32 %shl39.i, %shl42.i, !dbg !635
  %33 = load i8*, i8** %userKey.addr.i, align 8, !dbg !635
  %arrayidx44.i = getelementptr inbounds i8, i8* %33, i64 10, !dbg !635
  %34 = load i8, i8* %arrayidx44.i, align 1, !dbg !635
  %conv45.i = zext i8 %34 to i32, !dbg !635
  %shl46.i = shl i32 %conv45.i, 8, !dbg !635
  %xor47.i = xor i32 %xor43.i, %shl46.i, !dbg !635
  %35 = load i8*, i8** %userKey.addr.i, align 8, !dbg !635
  %arrayidx48.i = getelementptr inbounds i8, i8* %35, i64 11, !dbg !635
  %36 = load i8, i8* %arrayidx48.i, align 1, !dbg !635
  %conv49.i = zext i8 %36 to i32, !dbg !635
  %xor50.i = xor i32 %xor47.i, %conv49.i, !dbg !635
  %arrayidx51.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !636
  store i32 %xor50.i, i32* %arrayidx51.i, align 8, !dbg !637
  %37 = load i8*, i8** %userKey.addr.i, align 8, !dbg !638
  %arrayidx52.i = getelementptr inbounds i8, i8* %37, i64 12, !dbg !638
  %38 = load i8, i8* %arrayidx52.i, align 1, !dbg !638
  %conv53.i = zext i8 %38 to i32, !dbg !638
  %shl54.i = shl i32 %conv53.i, 24, !dbg !638
  %39 = load i8*, i8** %userKey.addr.i, align 8, !dbg !638
  %arrayidx55.i = getelementptr inbounds i8, i8* %39, i64 13, !dbg !638
  %40 = load i8, i8* %arrayidx55.i, align 1, !dbg !638
  %conv56.i = zext i8 %40 to i32, !dbg !638
  %shl57.i = shl i32 %conv56.i, 16, !dbg !638
  %xor58.i = xor i32 %shl54.i, %shl57.i, !dbg !638
  %41 = load i8*, i8** %userKey.addr.i, align 8, !dbg !638
  %arrayidx59.i = getelementptr inbounds i8, i8* %41, i64 14, !dbg !638
  %42 = load i8, i8* %arrayidx59.i, align 1, !dbg !638
  %conv60.i = zext i8 %42 to i32, !dbg !638
  %shl61.i = shl i32 %conv60.i, 8, !dbg !638
  %xor62.i = xor i32 %xor58.i, %shl61.i, !dbg !638
  %43 = load i8*, i8** %userKey.addr.i, align 8, !dbg !638
  %arrayidx63.i = getelementptr inbounds i8, i8* %43, i64 15, !dbg !638
  %44 = load i8, i8* %arrayidx63.i, align 1, !dbg !638
  %conv64.i = zext i8 %44 to i32, !dbg !638
  %xor65.i = xor i32 %xor62.i, %conv64.i, !dbg !638
  %arrayidx66.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !639
  store i32 %xor65.i, i32* %arrayidx66.i, align 4, !dbg !640
  %arrayidx67.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !641
  %45 = load i32, i32* %arrayidx67.i, align 16, !dbg !641
  %46 = load i32*, i32** %ck.i, align 8, !dbg !642
  %47 = load i32, i32* %46, align 4, !dbg !642
  %xor69.i = xor i32 %45, %47, !dbg !643
  store i32 %xor69.i, i32* %reg0.i, align 4, !dbg !644
  %arrayidx70.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !645
  %48 = load i32, i32* %arrayidx70.i, align 4, !dbg !645
  %49 = load i32*, i32** %ck.i, align 8, !dbg !646
  %arrayidx71.i = getelementptr inbounds i32, i32* %49, i64 1, !dbg !646
  %50 = load i32, i32* %arrayidx71.i, align 4, !dbg !646
  %xor72.i = xor i32 %48, %50, !dbg !647
  store i32 %xor72.i, i32* %reg1.i, align 4, !dbg !648
  %arrayidx73.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !649
  %51 = load i32, i32* %arrayidx73.i, align 8, !dbg !649
  %52 = load i32*, i32** %ck.i, align 8, !dbg !650
  %arrayidx74.i = getelementptr inbounds i32, i32* %52, i64 2, !dbg !650
  %53 = load i32, i32* %arrayidx74.i, align 4, !dbg !650
  %xor75.i = xor i32 %51, %53, !dbg !651
  store i32 %xor75.i, i32* %reg2.i, align 4, !dbg !652
  %arrayidx76.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !653
  %54 = load i32, i32* %arrayidx76.i, align 4, !dbg !653
  %55 = load i32*, i32** %ck.i, align 8, !dbg !654
  %arrayidx77.i = getelementptr inbounds i32, i32* %55, i64 3, !dbg !654
  %56 = load i32, i32* %arrayidx77.i, align 4, !dbg !654
  %xor78.i = xor i32 %54, %56, !dbg !655
  store i32 %xor78.i, i32* %reg3.i, align 4, !dbg !656
  %57 = load i32, i32* %reg0.i, align 4, !dbg !657
  %shr.i = lshr i32 %57, 24, !dbg !657
  %conv80.i = trunc i32 %shr.i to i8, !dbg !657
  %idxprom81.i = zext i8 %conv80.i to i64, !dbg !657
  %arrayidx82.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom81.i, !dbg !657
  %58 = load i32, i32* %arrayidx82.i, align 4, !dbg !657
  %59 = load i32, i32* %reg0.i, align 4, !dbg !657
  %shr83.i = lshr i32 %59, 16, !dbg !657
  %conv84.i = trunc i32 %shr83.i to i8, !dbg !657
  %idxprom85.i = zext i8 %conv84.i to i64, !dbg !657
  %arrayidx86.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom85.i, !dbg !657
  %60 = load i32, i32* %arrayidx86.i, align 4, !dbg !657
  %xor87.i = xor i32 %58, %60, !dbg !657
  %61 = load i32, i32* %reg0.i, align 4, !dbg !657
  %shr88.i = lshr i32 %61, 8, !dbg !657
  %conv89.i = trunc i32 %shr88.i to i8, !dbg !657
  %idxprom90.i = zext i8 %conv89.i to i64, !dbg !657
  %arrayidx91.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom90.i, !dbg !657
  %62 = load i32, i32* %arrayidx91.i, align 4, !dbg !657
  %xor92.i = xor i32 %xor87.i, %62, !dbg !657
  %63 = load i32, i32* %reg0.i, align 4, !dbg !657
  %conv94.i = trunc i32 %63 to i8, !dbg !657
  %idxprom95.i = zext i8 %conv94.i to i64, !dbg !657
  %arrayidx96.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom95.i, !dbg !657
  %64 = load i32, i32* %arrayidx96.i, align 4, !dbg !657
  %xor97.i = xor i32 %xor92.i, %64, !dbg !657
  store i32 %xor97.i, i32* %reg0.i, align 4, !dbg !657
  %65 = load i32, i32* %reg1.i, align 4, !dbg !657
  %shr98.i = lshr i32 %65, 24, !dbg !657
  %conv99.i = trunc i32 %shr98.i to i8, !dbg !657
  %idxprom100.i = zext i8 %conv99.i to i64, !dbg !657
  %arrayidx101.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom100.i, !dbg !657
  %66 = load i32, i32* %arrayidx101.i, align 4, !dbg !657
  %67 = load i32, i32* %reg1.i, align 4, !dbg !657
  %shr102.i = lshr i32 %67, 16, !dbg !657
  %conv103.i = trunc i32 %shr102.i to i8, !dbg !657
  %idxprom104.i = zext i8 %conv103.i to i64, !dbg !657
  %arrayidx105.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom104.i, !dbg !657
  %68 = load i32, i32* %arrayidx105.i, align 4, !dbg !657
  %xor106.i = xor i32 %66, %68, !dbg !657
  %69 = load i32, i32* %reg1.i, align 4, !dbg !657
  %shr107.i = lshr i32 %69, 8, !dbg !657
  %conv108.i = trunc i32 %shr107.i to i8, !dbg !657
  %idxprom109.i = zext i8 %conv108.i to i64, !dbg !657
  %arrayidx110.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom109.i, !dbg !657
  %70 = load i32, i32* %arrayidx110.i, align 4, !dbg !657
  %xor111.i = xor i32 %xor106.i, %70, !dbg !657
  %71 = load i32, i32* %reg1.i, align 4, !dbg !657
  %conv113.i = trunc i32 %71 to i8, !dbg !657
  %idxprom114.i = zext i8 %conv113.i to i64, !dbg !657
  %arrayidx115.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom114.i, !dbg !657
  %72 = load i32, i32* %arrayidx115.i, align 4, !dbg !657
  %xor116.i = xor i32 %xor111.i, %72, !dbg !657
  store i32 %xor116.i, i32* %reg1.i, align 4, !dbg !657
  %73 = load i32, i32* %reg2.i, align 4, !dbg !657
  %shr117.i = lshr i32 %73, 24, !dbg !657
  %conv118.i = trunc i32 %shr117.i to i8, !dbg !657
  %idxprom119.i = zext i8 %conv118.i to i64, !dbg !657
  %arrayidx120.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom119.i, !dbg !657
  %74 = load i32, i32* %arrayidx120.i, align 4, !dbg !657
  %75 = load i32, i32* %reg2.i, align 4, !dbg !657
  %shr121.i = lshr i32 %75, 16, !dbg !657
  %conv122.i = trunc i32 %shr121.i to i8, !dbg !657
  %idxprom123.i = zext i8 %conv122.i to i64, !dbg !657
  %arrayidx124.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom123.i, !dbg !657
  %76 = load i32, i32* %arrayidx124.i, align 4, !dbg !657
  %xor125.i = xor i32 %74, %76, !dbg !657
  %77 = load i32, i32* %reg2.i, align 4, !dbg !657
  %shr126.i = lshr i32 %77, 8, !dbg !657
  %conv127.i = trunc i32 %shr126.i to i8, !dbg !657
  %idxprom128.i = zext i8 %conv127.i to i64, !dbg !657
  %arrayidx129.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom128.i, !dbg !657
  %78 = load i32, i32* %arrayidx129.i, align 4, !dbg !657
  %xor130.i = xor i32 %xor125.i, %78, !dbg !657
  %79 = load i32, i32* %reg2.i, align 4, !dbg !657
  %conv132.i = trunc i32 %79 to i8, !dbg !657
  %idxprom133.i = zext i8 %conv132.i to i64, !dbg !657
  %arrayidx134.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom133.i, !dbg !657
  %80 = load i32, i32* %arrayidx134.i, align 4, !dbg !657
  %xor135.i = xor i32 %xor130.i, %80, !dbg !657
  store i32 %xor135.i, i32* %reg2.i, align 4, !dbg !657
  %81 = load i32, i32* %reg3.i, align 4, !dbg !657
  %shr136.i = lshr i32 %81, 24, !dbg !657
  %conv137.i = trunc i32 %shr136.i to i8, !dbg !657
  %idxprom138.i = zext i8 %conv137.i to i64, !dbg !657
  %arrayidx139.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom138.i, !dbg !657
  %82 = load i32, i32* %arrayidx139.i, align 4, !dbg !657
  %83 = load i32, i32* %reg3.i, align 4, !dbg !657
  %shr140.i = lshr i32 %83, 16, !dbg !657
  %conv141.i = trunc i32 %shr140.i to i8, !dbg !657
  %idxprom142.i = zext i8 %conv141.i to i64, !dbg !657
  %arrayidx143.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom142.i, !dbg !657
  %84 = load i32, i32* %arrayidx143.i, align 4, !dbg !657
  %xor144.i = xor i32 %82, %84, !dbg !657
  %85 = load i32, i32* %reg3.i, align 4, !dbg !657
  %shr145.i = lshr i32 %85, 8, !dbg !657
  %conv146.i = trunc i32 %shr145.i to i8, !dbg !657
  %idxprom147.i = zext i8 %conv146.i to i64, !dbg !657
  %arrayidx148.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom147.i, !dbg !657
  %86 = load i32, i32* %arrayidx148.i, align 4, !dbg !657
  %xor149.i = xor i32 %xor144.i, %86, !dbg !657
  %87 = load i32, i32* %reg3.i, align 4, !dbg !657
  %conv151.i = trunc i32 %87 to i8, !dbg !657
  %idxprom152.i = zext i8 %conv151.i to i64, !dbg !657
  %arrayidx153.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom152.i, !dbg !657
  %88 = load i32, i32* %arrayidx153.i, align 4, !dbg !657
  %xor154.i = xor i32 %xor149.i, %88, !dbg !657
  store i32 %xor154.i, i32* %reg3.i, align 4, !dbg !657
  %89 = load i32, i32* %reg2.i, align 4, !dbg !658
  %90 = load i32, i32* %reg1.i, align 4, !dbg !658
  %xor156.i = xor i32 %90, %89, !dbg !658
  store i32 %xor156.i, i32* %reg1.i, align 4, !dbg !658
  %91 = load i32, i32* %reg3.i, align 4, !dbg !658
  %92 = load i32, i32* %reg2.i, align 4, !dbg !658
  %xor157.i = xor i32 %92, %91, !dbg !658
  store i32 %xor157.i, i32* %reg2.i, align 4, !dbg !658
  %93 = load i32, i32* %reg1.i, align 4, !dbg !658
  %94 = load i32, i32* %reg0.i, align 4, !dbg !658
  %xor158.i = xor i32 %94, %93, !dbg !658
  store i32 %xor158.i, i32* %reg0.i, align 4, !dbg !658
  %95 = load i32, i32* %reg1.i, align 4, !dbg !658
  %96 = load i32, i32* %reg3.i, align 4, !dbg !658
  %xor159.i = xor i32 %96, %95, !dbg !658
  store i32 %xor159.i, i32* %reg3.i, align 4, !dbg !658
  %97 = load i32, i32* %reg0.i, align 4, !dbg !658
  %98 = load i32, i32* %reg2.i, align 4, !dbg !658
  %xor160.i = xor i32 %98, %97, !dbg !658
  store i32 %xor160.i, i32* %reg2.i, align 4, !dbg !658
  %99 = load i32, i32* %reg2.i, align 4, !dbg !658
  %100 = load i32, i32* %reg1.i, align 4, !dbg !658
  %xor161.i = xor i32 %100, %99, !dbg !658
  store i32 %xor161.i, i32* %reg1.i, align 4, !dbg !658
  %101 = load i32, i32* %reg1.i, align 4, !dbg !659
  %shl164.i = shl i32 %101, 8, !dbg !659
  %and.i = and i32 %shl164.i, -16711936, !dbg !659
  %102 = load i32, i32* %reg1.i, align 4, !dbg !659
  %shr165.i = lshr i32 %102, 8, !dbg !659
  %and166.i = and i32 %shr165.i, 16711935, !dbg !659
  %xor167.i = xor i32 %and.i, %and166.i, !dbg !659
  store i32 %xor167.i, i32* %reg1.i, align 4, !dbg !659
  %103 = load i32, i32* %reg2.i, align 4, !dbg !659
  %shr168.i = lshr i32 %103, 16, !dbg !659
  %104 = load i32, i32* %reg2.i, align 4, !dbg !659
  %shl169.i = shl i32 %104, 16, !dbg !659
  %or.i = or i32 %shr168.i, %shl169.i, !dbg !659
  store i32 %or.i, i32* %reg2.i, align 4, !dbg !659
  %105 = load i32, i32* %reg3.i, align 4, !dbg !659
  %shl170.i = shl i32 %105, 24, !dbg !659
  %106 = load i32, i32* %reg3.i, align 4, !dbg !659
  %shr171.i = lshr i32 %106, 24, !dbg !659
  %xor172.i = xor i32 %shl170.i, %shr171.i, !dbg !659
  %107 = load i32, i32* %reg3.i, align 4, !dbg !659
  %and173.i = and i32 %107, 65280, !dbg !659
  %shl174.i = shl i32 %and173.i, 8, !dbg !659
  %xor175.i = xor i32 %xor172.i, %shl174.i, !dbg !659
  %108 = load i32, i32* %reg3.i, align 4, !dbg !659
  %and176.i = and i32 %108, 16711680, !dbg !659
  %shr177.i = lshr i32 %and176.i, 8, !dbg !659
  %xor178.i = xor i32 %xor175.i, %shr177.i, !dbg !659
  store i32 %xor178.i, i32* %reg3.i, align 4, !dbg !659
  %109 = load i32, i32* %reg2.i, align 4, !dbg !660
  %110 = load i32, i32* %reg1.i, align 4, !dbg !660
  %xor181.i = xor i32 %110, %109, !dbg !660
  store i32 %xor181.i, i32* %reg1.i, align 4, !dbg !660
  %111 = load i32, i32* %reg3.i, align 4, !dbg !660
  %112 = load i32, i32* %reg2.i, align 4, !dbg !660
  %xor182.i = xor i32 %112, %111, !dbg !660
  store i32 %xor182.i, i32* %reg2.i, align 4, !dbg !660
  %113 = load i32, i32* %reg1.i, align 4, !dbg !660
  %114 = load i32, i32* %reg0.i, align 4, !dbg !660
  %xor183.i = xor i32 %114, %113, !dbg !660
  store i32 %xor183.i, i32* %reg0.i, align 4, !dbg !660
  %115 = load i32, i32* %reg1.i, align 4, !dbg !660
  %116 = load i32, i32* %reg3.i, align 4, !dbg !660
  %xor184.i = xor i32 %116, %115, !dbg !660
  store i32 %xor184.i, i32* %reg3.i, align 4, !dbg !660
  %117 = load i32, i32* %reg0.i, align 4, !dbg !660
  %118 = load i32, i32* %reg2.i, align 4, !dbg !660
  %xor185.i = xor i32 %118, %117, !dbg !660
  store i32 %xor185.i, i32* %reg2.i, align 4, !dbg !660
  %119 = load i32, i32* %reg2.i, align 4, !dbg !660
  %120 = load i32, i32* %reg1.i, align 4, !dbg !660
  %xor186.i = xor i32 %120, %119, !dbg !660
  store i32 %xor186.i, i32* %reg1.i, align 4, !dbg !660
  %121 = load i32, i32* %bits.addr.i, align 4, !dbg !661
  %cmp189.i = icmp sgt i32 %121, 128, !dbg !662
  br i1 %cmp189.i, label %if.then191.i, label %if.else258.i, !dbg !663

if.then191.i:                                     ; preds = %if.end7.i
  %122 = load i8*, i8** %userKey.addr.i, align 8, !dbg !664
  %arrayidx192.i = getelementptr inbounds i8, i8* %122, i64 16, !dbg !664
  %123 = load i8, i8* %arrayidx192.i, align 1, !dbg !664
  %conv193.i = zext i8 %123 to i32, !dbg !664
  %shl194.i = shl i32 %conv193.i, 24, !dbg !664
  %124 = load i8*, i8** %userKey.addr.i, align 8, !dbg !664
  %arrayidx195.i = getelementptr inbounds i8, i8* %124, i64 17, !dbg !664
  %125 = load i8, i8* %arrayidx195.i, align 1, !dbg !664
  %conv196.i = zext i8 %125 to i32, !dbg !664
  %shl197.i = shl i32 %conv196.i, 16, !dbg !664
  %xor198.i = xor i32 %shl194.i, %shl197.i, !dbg !664
  %126 = load i8*, i8** %userKey.addr.i, align 8, !dbg !664
  %arrayidx199.i = getelementptr inbounds i8, i8* %126, i64 18, !dbg !664
  %127 = load i8, i8* %arrayidx199.i, align 1, !dbg !664
  %conv200.i = zext i8 %127 to i32, !dbg !664
  %shl201.i = shl i32 %conv200.i, 8, !dbg !664
  %xor202.i = xor i32 %xor198.i, %shl201.i, !dbg !664
  %128 = load i8*, i8** %userKey.addr.i, align 8, !dbg !664
  %arrayidx203.i = getelementptr inbounds i8, i8* %128, i64 19, !dbg !664
  %129 = load i8, i8* %arrayidx203.i, align 1, !dbg !664
  %conv204.i = zext i8 %129 to i32, !dbg !664
  %xor205.i = xor i32 %xor202.i, %conv204.i, !dbg !664
  %arrayidx206.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !665
  store i32 %xor205.i, i32* %arrayidx206.i, align 16, !dbg !666
  %130 = load i8*, i8** %userKey.addr.i, align 8, !dbg !667
  %arrayidx207.i = getelementptr inbounds i8, i8* %130, i64 20, !dbg !667
  %131 = load i8, i8* %arrayidx207.i, align 1, !dbg !667
  %conv208.i = zext i8 %131 to i32, !dbg !667
  %shl209.i = shl i32 %conv208.i, 24, !dbg !667
  %132 = load i8*, i8** %userKey.addr.i, align 8, !dbg !667
  %arrayidx210.i = getelementptr inbounds i8, i8* %132, i64 21, !dbg !667
  %133 = load i8, i8* %arrayidx210.i, align 1, !dbg !667
  %conv211.i = zext i8 %133 to i32, !dbg !667
  %shl212.i = shl i32 %conv211.i, 16, !dbg !667
  %xor213.i = xor i32 %shl209.i, %shl212.i, !dbg !667
  %134 = load i8*, i8** %userKey.addr.i, align 8, !dbg !667
  %arrayidx214.i = getelementptr inbounds i8, i8* %134, i64 22, !dbg !667
  %135 = load i8, i8* %arrayidx214.i, align 1, !dbg !667
  %conv215.i = zext i8 %135 to i32, !dbg !667
  %shl216.i = shl i32 %conv215.i, 8, !dbg !667
  %xor217.i = xor i32 %xor213.i, %shl216.i, !dbg !667
  %136 = load i8*, i8** %userKey.addr.i, align 8, !dbg !667
  %arrayidx218.i = getelementptr inbounds i8, i8* %136, i64 23, !dbg !667
  %137 = load i8, i8* %arrayidx218.i, align 1, !dbg !667
  %conv219.i = zext i8 %137 to i32, !dbg !667
  %xor220.i = xor i32 %xor217.i, %conv219.i, !dbg !667
  %arrayidx221.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !668
  store i32 %xor220.i, i32* %arrayidx221.i, align 4, !dbg !669
  %138 = load i32, i32* %bits.addr.i, align 4, !dbg !670
  %cmp222.i = icmp sgt i32 %138, 192, !dbg !671
  br i1 %cmp222.i, label %if.then224.i, label %if.else.i, !dbg !672

if.then224.i:                                     ; preds = %if.then191.i
  %139 = load i8*, i8** %userKey.addr.i, align 8, !dbg !673
  %arrayidx225.i = getelementptr inbounds i8, i8* %139, i64 24, !dbg !673
  %140 = load i8, i8* %arrayidx225.i, align 1, !dbg !673
  %conv226.i = zext i8 %140 to i32, !dbg !673
  %shl227.i = shl i32 %conv226.i, 24, !dbg !673
  %141 = load i8*, i8** %userKey.addr.i, align 8, !dbg !673
  %arrayidx228.i = getelementptr inbounds i8, i8* %141, i64 25, !dbg !673
  %142 = load i8, i8* %arrayidx228.i, align 1, !dbg !673
  %conv229.i = zext i8 %142 to i32, !dbg !673
  %shl230.i = shl i32 %conv229.i, 16, !dbg !673
  %xor231.i = xor i32 %shl227.i, %shl230.i, !dbg !673
  %143 = load i8*, i8** %userKey.addr.i, align 8, !dbg !673
  %arrayidx232.i = getelementptr inbounds i8, i8* %143, i64 26, !dbg !673
  %144 = load i8, i8* %arrayidx232.i, align 1, !dbg !673
  %conv233.i = zext i8 %144 to i32, !dbg !673
  %shl234.i = shl i32 %conv233.i, 8, !dbg !673
  %xor235.i = xor i32 %xor231.i, %shl234.i, !dbg !673
  %145 = load i8*, i8** %userKey.addr.i, align 8, !dbg !673
  %arrayidx236.i = getelementptr inbounds i8, i8* %145, i64 27, !dbg !673
  %146 = load i8, i8* %arrayidx236.i, align 1, !dbg !673
  %conv237.i = zext i8 %146 to i32, !dbg !673
  %xor238.i = xor i32 %xor235.i, %conv237.i, !dbg !673
  %arrayidx239.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !674
  store i32 %xor238.i, i32* %arrayidx239.i, align 8, !dbg !675
  %147 = load i8*, i8** %userKey.addr.i, align 8, !dbg !676
  %arrayidx240.i = getelementptr inbounds i8, i8* %147, i64 28, !dbg !676
  %148 = load i8, i8* %arrayidx240.i, align 1, !dbg !676
  %conv241.i = zext i8 %148 to i32, !dbg !676
  %shl242.i = shl i32 %conv241.i, 24, !dbg !676
  %149 = load i8*, i8** %userKey.addr.i, align 8, !dbg !676
  %arrayidx243.i = getelementptr inbounds i8, i8* %149, i64 29, !dbg !676
  %150 = load i8, i8* %arrayidx243.i, align 1, !dbg !676
  %conv244.i = zext i8 %150 to i32, !dbg !676
  %shl245.i = shl i32 %conv244.i, 16, !dbg !676
  %xor246.i = xor i32 %shl242.i, %shl245.i, !dbg !676
  %151 = load i8*, i8** %userKey.addr.i, align 8, !dbg !676
  %arrayidx247.i = getelementptr inbounds i8, i8* %151, i64 30, !dbg !676
  %152 = load i8, i8* %arrayidx247.i, align 1, !dbg !676
  %conv248.i = zext i8 %152 to i32, !dbg !676
  %shl249.i = shl i32 %conv248.i, 8, !dbg !676
  %xor250.i = xor i32 %xor246.i, %shl249.i, !dbg !676
  %153 = load i8*, i8** %userKey.addr.i, align 8, !dbg !676
  %arrayidx251.i = getelementptr inbounds i8, i8* %153, i64 31, !dbg !676
  %154 = load i8, i8* %arrayidx251.i, align 1, !dbg !676
  %conv252.i = zext i8 %154 to i32, !dbg !676
  %xor253.i = xor i32 %xor250.i, %conv252.i, !dbg !676
  %arrayidx254.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !677
  store i32 %xor253.i, i32* %arrayidx254.i, align 4, !dbg !678
  br label %if.end257.i, !dbg !679

if.else.i:                                        ; preds = %if.then191.i
  %arrayidx255.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !680
  store i32 0, i32* %arrayidx255.i, align 4, !dbg !681
  %arrayidx256.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !682
  store i32 0, i32* %arrayidx256.i, align 8, !dbg !683
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.else.i, %if.then224.i
  br label %if.end263.i, !dbg !684

if.else258.i:                                     ; preds = %if.end7.i
  %arrayidx259.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !685
  store i32 0, i32* %arrayidx259.i, align 4, !dbg !686
  %arrayidx260.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !687
  store i32 0, i32* %arrayidx260.i, align 8, !dbg !688
  %arrayidx261.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !689
  store i32 0, i32* %arrayidx261.i, align 4, !dbg !690
  %arrayidx262.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !691
  store i32 0, i32* %arrayidx262.i, align 16, !dbg !692
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.else258.i, %if.end257.i
  %155 = load i32, i32* %reg0.i, align 4, !dbg !693
  %arrayidx264.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !694
  %156 = load i32, i32* %arrayidx264.i, align 16, !dbg !695
  %xor265.i = xor i32 %156, %155, !dbg !695
  store i32 %xor265.i, i32* %arrayidx264.i, align 16, !dbg !695
  %157 = load i32, i32* %reg1.i, align 4, !dbg !696
  %arrayidx266.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !697
  %158 = load i32, i32* %arrayidx266.i, align 4, !dbg !698
  %xor267.i = xor i32 %158, %157, !dbg !698
  store i32 %xor267.i, i32* %arrayidx266.i, align 4, !dbg !698
  %159 = load i32, i32* %reg2.i, align 4, !dbg !699
  %arrayidx268.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !700
  %160 = load i32, i32* %arrayidx268.i, align 8, !dbg !701
  %xor269.i = xor i32 %160, %159, !dbg !701
  store i32 %xor269.i, i32* %arrayidx268.i, align 8, !dbg !701
  %161 = load i32, i32* %reg3.i, align 4, !dbg !702
  %arrayidx270.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !703
  %162 = load i32, i32* %arrayidx270.i, align 4, !dbg !704
  %xor271.i = xor i32 %162, %161, !dbg !704
  store i32 %xor271.i, i32* %arrayidx270.i, align 4, !dbg !704
  %arrayidx272.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !705
  %163 = load i32, i32* %arrayidx272.i, align 16, !dbg !705
  store i32 %163, i32* %reg0.i, align 4, !dbg !706
  %arrayidx273.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !707
  %164 = load i32, i32* %arrayidx273.i, align 4, !dbg !707
  store i32 %164, i32* %reg1.i, align 4, !dbg !708
  %arrayidx274.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !709
  %165 = load i32, i32* %arrayidx274.i, align 8, !dbg !709
  store i32 %165, i32* %reg2.i, align 4, !dbg !710
  %arrayidx275.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !711
  %166 = load i32, i32* %arrayidx275.i, align 4, !dbg !711
  store i32 %166, i32* %reg3.i, align 4, !dbg !712
  %167 = load i32*, i32** %ck.i, align 8, !dbg !713
  %arrayidx276.i = getelementptr inbounds i32, i32* %167, i64 4, !dbg !713
  %168 = load i32, i32* %arrayidx276.i, align 4, !dbg !713
  %169 = load i32, i32* %reg0.i, align 4, !dbg !714
  %xor277.i = xor i32 %169, %168, !dbg !714
  store i32 %xor277.i, i32* %reg0.i, align 4, !dbg !714
  %170 = load i32*, i32** %ck.i, align 8, !dbg !715
  %arrayidx278.i = getelementptr inbounds i32, i32* %170, i64 5, !dbg !715
  %171 = load i32, i32* %arrayidx278.i, align 4, !dbg !715
  %172 = load i32, i32* %reg1.i, align 4, !dbg !716
  %xor279.i = xor i32 %172, %171, !dbg !716
  store i32 %xor279.i, i32* %reg1.i, align 4, !dbg !716
  %173 = load i32*, i32** %ck.i, align 8, !dbg !717
  %arrayidx280.i = getelementptr inbounds i32, i32* %173, i64 6, !dbg !717
  %174 = load i32, i32* %arrayidx280.i, align 4, !dbg !717
  %175 = load i32, i32* %reg2.i, align 4, !dbg !718
  %xor281.i = xor i32 %175, %174, !dbg !718
  store i32 %xor281.i, i32* %reg2.i, align 4, !dbg !718
  %176 = load i32*, i32** %ck.i, align 8, !dbg !719
  %arrayidx282.i = getelementptr inbounds i32, i32* %176, i64 7, !dbg !719
  %177 = load i32, i32* %arrayidx282.i, align 4, !dbg !719
  %178 = load i32, i32* %reg3.i, align 4, !dbg !720
  %xor283.i = xor i32 %178, %177, !dbg !720
  store i32 %xor283.i, i32* %reg3.i, align 4, !dbg !720
  %179 = load i32, i32* %reg0.i, align 4, !dbg !721
  %shr286.i = lshr i32 %179, 24, !dbg !721
  %conv287.i = trunc i32 %shr286.i to i8, !dbg !721
  %idxprom288.i = zext i8 %conv287.i to i64, !dbg !721
  %arrayidx289.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom288.i, !dbg !721
  %180 = load i32, i32* %arrayidx289.i, align 4, !dbg !721
  %181 = load i32, i32* %reg0.i, align 4, !dbg !721
  %shr290.i = lshr i32 %181, 16, !dbg !721
  %conv291.i = trunc i32 %shr290.i to i8, !dbg !721
  %idxprom292.i = zext i8 %conv291.i to i64, !dbg !721
  %arrayidx293.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom292.i, !dbg !721
  %182 = load i32, i32* %arrayidx293.i, align 4, !dbg !721
  %xor294.i = xor i32 %180, %182, !dbg !721
  %183 = load i32, i32* %reg0.i, align 4, !dbg !721
  %shr295.i = lshr i32 %183, 8, !dbg !721
  %conv296.i = trunc i32 %shr295.i to i8, !dbg !721
  %idxprom297.i = zext i8 %conv296.i to i64, !dbg !721
  %arrayidx298.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom297.i, !dbg !721
  %184 = load i32, i32* %arrayidx298.i, align 4, !dbg !721
  %xor299.i = xor i32 %xor294.i, %184, !dbg !721
  %185 = load i32, i32* %reg0.i, align 4, !dbg !721
  %conv301.i = trunc i32 %185 to i8, !dbg !721
  %idxprom302.i = zext i8 %conv301.i to i64, !dbg !721
  %arrayidx303.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom302.i, !dbg !721
  %186 = load i32, i32* %arrayidx303.i, align 4, !dbg !721
  %xor304.i = xor i32 %xor299.i, %186, !dbg !721
  store i32 %xor304.i, i32* %reg0.i, align 4, !dbg !721
  %187 = load i32, i32* %reg1.i, align 4, !dbg !721
  %shr305.i = lshr i32 %187, 24, !dbg !721
  %conv306.i = trunc i32 %shr305.i to i8, !dbg !721
  %idxprom307.i = zext i8 %conv306.i to i64, !dbg !721
  %arrayidx308.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom307.i, !dbg !721
  %188 = load i32, i32* %arrayidx308.i, align 4, !dbg !721
  %189 = load i32, i32* %reg1.i, align 4, !dbg !721
  %shr309.i = lshr i32 %189, 16, !dbg !721
  %conv310.i = trunc i32 %shr309.i to i8, !dbg !721
  %idxprom311.i = zext i8 %conv310.i to i64, !dbg !721
  %arrayidx312.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom311.i, !dbg !721
  %190 = load i32, i32* %arrayidx312.i, align 4, !dbg !721
  %xor313.i = xor i32 %188, %190, !dbg !721
  %191 = load i32, i32* %reg1.i, align 4, !dbg !721
  %shr314.i = lshr i32 %191, 8, !dbg !721
  %conv315.i = trunc i32 %shr314.i to i8, !dbg !721
  %idxprom316.i = zext i8 %conv315.i to i64, !dbg !721
  %arrayidx317.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom316.i, !dbg !721
  %192 = load i32, i32* %arrayidx317.i, align 4, !dbg !721
  %xor318.i = xor i32 %xor313.i, %192, !dbg !721
  %193 = load i32, i32* %reg1.i, align 4, !dbg !721
  %conv320.i = trunc i32 %193 to i8, !dbg !721
  %idxprom321.i = zext i8 %conv320.i to i64, !dbg !721
  %arrayidx322.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom321.i, !dbg !721
  %194 = load i32, i32* %arrayidx322.i, align 4, !dbg !721
  %xor323.i = xor i32 %xor318.i, %194, !dbg !721
  store i32 %xor323.i, i32* %reg1.i, align 4, !dbg !721
  %195 = load i32, i32* %reg2.i, align 4, !dbg !721
  %shr324.i = lshr i32 %195, 24, !dbg !721
  %conv325.i = trunc i32 %shr324.i to i8, !dbg !721
  %idxprom326.i = zext i8 %conv325.i to i64, !dbg !721
  %arrayidx327.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom326.i, !dbg !721
  %196 = load i32, i32* %arrayidx327.i, align 4, !dbg !721
  %197 = load i32, i32* %reg2.i, align 4, !dbg !721
  %shr328.i = lshr i32 %197, 16, !dbg !721
  %conv329.i = trunc i32 %shr328.i to i8, !dbg !721
  %idxprom330.i = zext i8 %conv329.i to i64, !dbg !721
  %arrayidx331.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom330.i, !dbg !721
  %198 = load i32, i32* %arrayidx331.i, align 4, !dbg !721
  %xor332.i = xor i32 %196, %198, !dbg !721
  %199 = load i32, i32* %reg2.i, align 4, !dbg !721
  %shr333.i = lshr i32 %199, 8, !dbg !721
  %conv334.i = trunc i32 %shr333.i to i8, !dbg !721
  %idxprom335.i = zext i8 %conv334.i to i64, !dbg !721
  %arrayidx336.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom335.i, !dbg !721
  %200 = load i32, i32* %arrayidx336.i, align 4, !dbg !721
  %xor337.i = xor i32 %xor332.i, %200, !dbg !721
  %201 = load i32, i32* %reg2.i, align 4, !dbg !721
  %conv339.i = trunc i32 %201 to i8, !dbg !721
  %idxprom340.i = zext i8 %conv339.i to i64, !dbg !721
  %arrayidx341.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom340.i, !dbg !721
  %202 = load i32, i32* %arrayidx341.i, align 4, !dbg !721
  %xor342.i = xor i32 %xor337.i, %202, !dbg !721
  store i32 %xor342.i, i32* %reg2.i, align 4, !dbg !721
  %203 = load i32, i32* %reg3.i, align 4, !dbg !721
  %shr343.i = lshr i32 %203, 24, !dbg !721
  %conv344.i = trunc i32 %shr343.i to i8, !dbg !721
  %idxprom345.i = zext i8 %conv344.i to i64, !dbg !721
  %arrayidx346.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom345.i, !dbg !721
  %204 = load i32, i32* %arrayidx346.i, align 4, !dbg !721
  %205 = load i32, i32* %reg3.i, align 4, !dbg !721
  %shr347.i = lshr i32 %205, 16, !dbg !721
  %conv348.i = trunc i32 %shr347.i to i8, !dbg !721
  %idxprom349.i = zext i8 %conv348.i to i64, !dbg !721
  %arrayidx350.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom349.i, !dbg !721
  %206 = load i32, i32* %arrayidx350.i, align 4, !dbg !721
  %xor351.i = xor i32 %204, %206, !dbg !721
  %207 = load i32, i32* %reg3.i, align 4, !dbg !721
  %shr352.i = lshr i32 %207, 8, !dbg !721
  %conv353.i = trunc i32 %shr352.i to i8, !dbg !721
  %idxprom354.i = zext i8 %conv353.i to i64, !dbg !721
  %arrayidx355.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom354.i, !dbg !721
  %208 = load i32, i32* %arrayidx355.i, align 4, !dbg !721
  %xor356.i = xor i32 %xor351.i, %208, !dbg !721
  %209 = load i32, i32* %reg3.i, align 4, !dbg !721
  %conv358.i = trunc i32 %209 to i8, !dbg !721
  %idxprom359.i = zext i8 %conv358.i to i64, !dbg !721
  %arrayidx360.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom359.i, !dbg !721
  %210 = load i32, i32* %arrayidx360.i, align 4, !dbg !721
  %xor361.i = xor i32 %xor356.i, %210, !dbg !721
  store i32 %xor361.i, i32* %reg3.i, align 4, !dbg !721
  %211 = load i32, i32* %reg2.i, align 4, !dbg !722
  %212 = load i32, i32* %reg1.i, align 4, !dbg !722
  %xor364.i = xor i32 %212, %211, !dbg !722
  store i32 %xor364.i, i32* %reg1.i, align 4, !dbg !722
  %213 = load i32, i32* %reg3.i, align 4, !dbg !722
  %214 = load i32, i32* %reg2.i, align 4, !dbg !722
  %xor365.i = xor i32 %214, %213, !dbg !722
  store i32 %xor365.i, i32* %reg2.i, align 4, !dbg !722
  %215 = load i32, i32* %reg1.i, align 4, !dbg !722
  %216 = load i32, i32* %reg0.i, align 4, !dbg !722
  %xor366.i = xor i32 %216, %215, !dbg !722
  store i32 %xor366.i, i32* %reg0.i, align 4, !dbg !722
  %217 = load i32, i32* %reg1.i, align 4, !dbg !722
  %218 = load i32, i32* %reg3.i, align 4, !dbg !722
  %xor367.i = xor i32 %218, %217, !dbg !722
  store i32 %xor367.i, i32* %reg3.i, align 4, !dbg !722
  %219 = load i32, i32* %reg0.i, align 4, !dbg !722
  %220 = load i32, i32* %reg2.i, align 4, !dbg !722
  %xor368.i = xor i32 %220, %219, !dbg !722
  store i32 %xor368.i, i32* %reg2.i, align 4, !dbg !722
  %221 = load i32, i32* %reg2.i, align 4, !dbg !722
  %222 = load i32, i32* %reg1.i, align 4, !dbg !722
  %xor369.i = xor i32 %222, %221, !dbg !722
  store i32 %xor369.i, i32* %reg1.i, align 4, !dbg !722
  %223 = load i32, i32* %reg3.i, align 4, !dbg !723
  %shl372.i = shl i32 %223, 8, !dbg !723
  %and373.i = and i32 %shl372.i, -16711936, !dbg !723
  %224 = load i32, i32* %reg3.i, align 4, !dbg !723
  %shr374.i = lshr i32 %224, 8, !dbg !723
  %and375.i = and i32 %shr374.i, 16711935, !dbg !723
  %xor376.i = xor i32 %and373.i, %and375.i, !dbg !723
  store i32 %xor376.i, i32* %reg3.i, align 4, !dbg !723
  %225 = load i32, i32* %reg0.i, align 4, !dbg !723
  %shr377.i = lshr i32 %225, 16, !dbg !723
  %226 = load i32, i32* %reg0.i, align 4, !dbg !723
  %shl378.i = shl i32 %226, 16, !dbg !723
  %or379.i = or i32 %shr377.i, %shl378.i, !dbg !723
  store i32 %or379.i, i32* %reg0.i, align 4, !dbg !723
  %227 = load i32, i32* %reg1.i, align 4, !dbg !723
  %shl380.i = shl i32 %227, 24, !dbg !723
  %228 = load i32, i32* %reg1.i, align 4, !dbg !723
  %shr381.i = lshr i32 %228, 24, !dbg !723
  %xor382.i = xor i32 %shl380.i, %shr381.i, !dbg !723
  %229 = load i32, i32* %reg1.i, align 4, !dbg !723
  %and383.i = and i32 %229, 65280, !dbg !723
  %shl384.i = shl i32 %and383.i, 8, !dbg !723
  %xor385.i = xor i32 %xor382.i, %shl384.i, !dbg !723
  %230 = load i32, i32* %reg1.i, align 4, !dbg !723
  %and386.i = and i32 %230, 16711680, !dbg !723
  %shr387.i = lshr i32 %and386.i, 8, !dbg !723
  %xor388.i = xor i32 %xor385.i, %shr387.i, !dbg !723
  store i32 %xor388.i, i32* %reg1.i, align 4, !dbg !723
  %231 = load i32, i32* %reg2.i, align 4, !dbg !724
  %232 = load i32, i32* %reg1.i, align 4, !dbg !724
  %xor391.i = xor i32 %232, %231, !dbg !724
  store i32 %xor391.i, i32* %reg1.i, align 4, !dbg !724
  %233 = load i32, i32* %reg3.i, align 4, !dbg !724
  %234 = load i32, i32* %reg2.i, align 4, !dbg !724
  %xor392.i = xor i32 %234, %233, !dbg !724
  store i32 %xor392.i, i32* %reg2.i, align 4, !dbg !724
  %235 = load i32, i32* %reg1.i, align 4, !dbg !724
  %236 = load i32, i32* %reg0.i, align 4, !dbg !724
  %xor393.i = xor i32 %236, %235, !dbg !724
  store i32 %xor393.i, i32* %reg0.i, align 4, !dbg !724
  %237 = load i32, i32* %reg1.i, align 4, !dbg !724
  %238 = load i32, i32* %reg3.i, align 4, !dbg !724
  %xor394.i = xor i32 %238, %237, !dbg !724
  store i32 %xor394.i, i32* %reg3.i, align 4, !dbg !724
  %239 = load i32, i32* %reg0.i, align 4, !dbg !724
  %240 = load i32, i32* %reg2.i, align 4, !dbg !724
  %xor395.i = xor i32 %240, %239, !dbg !724
  store i32 %xor395.i, i32* %reg2.i, align 4, !dbg !724
  %241 = load i32, i32* %reg2.i, align 4, !dbg !724
  %242 = load i32, i32* %reg1.i, align 4, !dbg !724
  %xor396.i = xor i32 %242, %241, !dbg !724
  store i32 %xor396.i, i32* %reg1.i, align 4, !dbg !724
  %arrayidx399.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !725
  %243 = load i32, i32* %arrayidx399.i, align 16, !dbg !725
  %244 = load i32, i32* %reg0.i, align 4, !dbg !726
  %xor400.i = xor i32 %244, %243, !dbg !726
  store i32 %xor400.i, i32* %reg0.i, align 4, !dbg !726
  %arrayidx401.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !727
  %245 = load i32, i32* %arrayidx401.i, align 4, !dbg !727
  %246 = load i32, i32* %reg1.i, align 4, !dbg !728
  %xor402.i = xor i32 %246, %245, !dbg !728
  store i32 %xor402.i, i32* %reg1.i, align 4, !dbg !728
  %arrayidx403.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !729
  %247 = load i32, i32* %arrayidx403.i, align 8, !dbg !729
  %248 = load i32, i32* %reg2.i, align 4, !dbg !730
  %xor404.i = xor i32 %248, %247, !dbg !730
  store i32 %xor404.i, i32* %reg2.i, align 4, !dbg !730
  %arrayidx405.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !731
  %249 = load i32, i32* %arrayidx405.i, align 4, !dbg !731
  %250 = load i32, i32* %reg3.i, align 4, !dbg !732
  %xor406.i = xor i32 %250, %249, !dbg !732
  store i32 %xor406.i, i32* %reg3.i, align 4, !dbg !732
  %251 = load i32, i32* %reg0.i, align 4, !dbg !733
  %arrayidx407.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !734
  store i32 %251, i32* %arrayidx407.i, align 16, !dbg !735
  %252 = load i32, i32* %reg1.i, align 4, !dbg !736
  %arrayidx408.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !737
  store i32 %252, i32* %arrayidx408.i, align 4, !dbg !738
  %253 = load i32, i32* %reg2.i, align 4, !dbg !739
  %arrayidx409.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !740
  store i32 %253, i32* %arrayidx409.i, align 8, !dbg !741
  %254 = load i32, i32* %reg3.i, align 4, !dbg !742
  %arrayidx410.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !743
  store i32 %254, i32* %arrayidx410.i, align 4, !dbg !744
  %255 = load i32*, i32** %ck.i, align 8, !dbg !745
  %arrayidx411.i = getelementptr inbounds i32, i32* %255, i64 8, !dbg !745
  %256 = load i32, i32* %arrayidx411.i, align 4, !dbg !745
  %257 = load i32, i32* %reg0.i, align 4, !dbg !746
  %xor412.i = xor i32 %257, %256, !dbg !746
  store i32 %xor412.i, i32* %reg0.i, align 4, !dbg !746
  %258 = load i32*, i32** %ck.i, align 8, !dbg !747
  %arrayidx413.i = getelementptr inbounds i32, i32* %258, i64 9, !dbg !747
  %259 = load i32, i32* %arrayidx413.i, align 4, !dbg !747
  %260 = load i32, i32* %reg1.i, align 4, !dbg !748
  %xor414.i = xor i32 %260, %259, !dbg !748
  store i32 %xor414.i, i32* %reg1.i, align 4, !dbg !748
  %261 = load i32*, i32** %ck.i, align 8, !dbg !749
  %arrayidx415.i = getelementptr inbounds i32, i32* %261, i64 10, !dbg !749
  %262 = load i32, i32* %arrayidx415.i, align 4, !dbg !749
  %263 = load i32, i32* %reg2.i, align 4, !dbg !750
  %xor416.i = xor i32 %263, %262, !dbg !750
  store i32 %xor416.i, i32* %reg2.i, align 4, !dbg !750
  %264 = load i32*, i32** %ck.i, align 8, !dbg !751
  %arrayidx417.i = getelementptr inbounds i32, i32* %264, i64 11, !dbg !751
  %265 = load i32, i32* %arrayidx417.i, align 4, !dbg !751
  %266 = load i32, i32* %reg3.i, align 4, !dbg !752
  %xor418.i = xor i32 %266, %265, !dbg !752
  store i32 %xor418.i, i32* %reg3.i, align 4, !dbg !752
  %267 = load i32, i32* %reg0.i, align 4, !dbg !753
  %shr421.i = lshr i32 %267, 24, !dbg !753
  %conv422.i = trunc i32 %shr421.i to i8, !dbg !753
  %idxprom423.i = zext i8 %conv422.i to i64, !dbg !753
  %arrayidx424.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom423.i, !dbg !753
  %268 = load i32, i32* %arrayidx424.i, align 4, !dbg !753
  %269 = load i32, i32* %reg0.i, align 4, !dbg !753
  %shr425.i = lshr i32 %269, 16, !dbg !753
  %conv426.i = trunc i32 %shr425.i to i8, !dbg !753
  %idxprom427.i = zext i8 %conv426.i to i64, !dbg !753
  %arrayidx428.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom427.i, !dbg !753
  %270 = load i32, i32* %arrayidx428.i, align 4, !dbg !753
  %xor429.i = xor i32 %268, %270, !dbg !753
  %271 = load i32, i32* %reg0.i, align 4, !dbg !753
  %shr430.i = lshr i32 %271, 8, !dbg !753
  %conv431.i = trunc i32 %shr430.i to i8, !dbg !753
  %idxprom432.i = zext i8 %conv431.i to i64, !dbg !753
  %arrayidx433.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom432.i, !dbg !753
  %272 = load i32, i32* %arrayidx433.i, align 4, !dbg !753
  %xor434.i = xor i32 %xor429.i, %272, !dbg !753
  %273 = load i32, i32* %reg0.i, align 4, !dbg !753
  %conv436.i = trunc i32 %273 to i8, !dbg !753
  %idxprom437.i = zext i8 %conv436.i to i64, !dbg !753
  %arrayidx438.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom437.i, !dbg !753
  %274 = load i32, i32* %arrayidx438.i, align 4, !dbg !753
  %xor439.i = xor i32 %xor434.i, %274, !dbg !753
  store i32 %xor439.i, i32* %reg0.i, align 4, !dbg !753
  %275 = load i32, i32* %reg1.i, align 4, !dbg !753
  %shr440.i = lshr i32 %275, 24, !dbg !753
  %conv441.i = trunc i32 %shr440.i to i8, !dbg !753
  %idxprom442.i = zext i8 %conv441.i to i64, !dbg !753
  %arrayidx443.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom442.i, !dbg !753
  %276 = load i32, i32* %arrayidx443.i, align 4, !dbg !753
  %277 = load i32, i32* %reg1.i, align 4, !dbg !753
  %shr444.i = lshr i32 %277, 16, !dbg !753
  %conv445.i = trunc i32 %shr444.i to i8, !dbg !753
  %idxprom446.i = zext i8 %conv445.i to i64, !dbg !753
  %arrayidx447.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom446.i, !dbg !753
  %278 = load i32, i32* %arrayidx447.i, align 4, !dbg !753
  %xor448.i = xor i32 %276, %278, !dbg !753
  %279 = load i32, i32* %reg1.i, align 4, !dbg !753
  %shr449.i = lshr i32 %279, 8, !dbg !753
  %conv450.i = trunc i32 %shr449.i to i8, !dbg !753
  %idxprom451.i = zext i8 %conv450.i to i64, !dbg !753
  %arrayidx452.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom451.i, !dbg !753
  %280 = load i32, i32* %arrayidx452.i, align 4, !dbg !753
  %xor453.i = xor i32 %xor448.i, %280, !dbg !753
  %281 = load i32, i32* %reg1.i, align 4, !dbg !753
  %conv455.i = trunc i32 %281 to i8, !dbg !753
  %idxprom456.i = zext i8 %conv455.i to i64, !dbg !753
  %arrayidx457.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom456.i, !dbg !753
  %282 = load i32, i32* %arrayidx457.i, align 4, !dbg !753
  %xor458.i = xor i32 %xor453.i, %282, !dbg !753
  store i32 %xor458.i, i32* %reg1.i, align 4, !dbg !753
  %283 = load i32, i32* %reg2.i, align 4, !dbg !753
  %shr459.i = lshr i32 %283, 24, !dbg !753
  %conv460.i = trunc i32 %shr459.i to i8, !dbg !753
  %idxprom461.i = zext i8 %conv460.i to i64, !dbg !753
  %arrayidx462.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom461.i, !dbg !753
  %284 = load i32, i32* %arrayidx462.i, align 4, !dbg !753
  %285 = load i32, i32* %reg2.i, align 4, !dbg !753
  %shr463.i = lshr i32 %285, 16, !dbg !753
  %conv464.i = trunc i32 %shr463.i to i8, !dbg !753
  %idxprom465.i = zext i8 %conv464.i to i64, !dbg !753
  %arrayidx466.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom465.i, !dbg !753
  %286 = load i32, i32* %arrayidx466.i, align 4, !dbg !753
  %xor467.i = xor i32 %284, %286, !dbg !753
  %287 = load i32, i32* %reg2.i, align 4, !dbg !753
  %shr468.i = lshr i32 %287, 8, !dbg !753
  %conv469.i = trunc i32 %shr468.i to i8, !dbg !753
  %idxprom470.i = zext i8 %conv469.i to i64, !dbg !753
  %arrayidx471.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom470.i, !dbg !753
  %288 = load i32, i32* %arrayidx471.i, align 4, !dbg !753
  %xor472.i = xor i32 %xor467.i, %288, !dbg !753
  %289 = load i32, i32* %reg2.i, align 4, !dbg !753
  %conv474.i = trunc i32 %289 to i8, !dbg !753
  %idxprom475.i = zext i8 %conv474.i to i64, !dbg !753
  %arrayidx476.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom475.i, !dbg !753
  %290 = load i32, i32* %arrayidx476.i, align 4, !dbg !753
  %xor477.i = xor i32 %xor472.i, %290, !dbg !753
  store i32 %xor477.i, i32* %reg2.i, align 4, !dbg !753
  %291 = load i32, i32* %reg3.i, align 4, !dbg !753
  %shr478.i = lshr i32 %291, 24, !dbg !753
  %conv479.i = trunc i32 %shr478.i to i8, !dbg !753
  %idxprom480.i = zext i8 %conv479.i to i64, !dbg !753
  %arrayidx481.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom480.i, !dbg !753
  %292 = load i32, i32* %arrayidx481.i, align 4, !dbg !753
  %293 = load i32, i32* %reg3.i, align 4, !dbg !753
  %shr482.i = lshr i32 %293, 16, !dbg !753
  %conv483.i = trunc i32 %shr482.i to i8, !dbg !753
  %idxprom484.i = zext i8 %conv483.i to i64, !dbg !753
  %arrayidx485.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom484.i, !dbg !753
  %294 = load i32, i32* %arrayidx485.i, align 4, !dbg !753
  %xor486.i = xor i32 %292, %294, !dbg !753
  %295 = load i32, i32* %reg3.i, align 4, !dbg !753
  %shr487.i = lshr i32 %295, 8, !dbg !753
  %conv488.i = trunc i32 %shr487.i to i8, !dbg !753
  %idxprom489.i = zext i8 %conv488.i to i64, !dbg !753
  %arrayidx490.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom489.i, !dbg !753
  %296 = load i32, i32* %arrayidx490.i, align 4, !dbg !753
  %xor491.i = xor i32 %xor486.i, %296, !dbg !753
  %297 = load i32, i32* %reg3.i, align 4, !dbg !753
  %conv493.i = trunc i32 %297 to i8, !dbg !753
  %idxprom494.i = zext i8 %conv493.i to i64, !dbg !753
  %arrayidx495.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom494.i, !dbg !753
  %298 = load i32, i32* %arrayidx495.i, align 4, !dbg !753
  %xor496.i = xor i32 %xor491.i, %298, !dbg !753
  store i32 %xor496.i, i32* %reg3.i, align 4, !dbg !753
  %299 = load i32, i32* %reg2.i, align 4, !dbg !754
  %300 = load i32, i32* %reg1.i, align 4, !dbg !754
  %xor499.i = xor i32 %300, %299, !dbg !754
  store i32 %xor499.i, i32* %reg1.i, align 4, !dbg !754
  %301 = load i32, i32* %reg3.i, align 4, !dbg !754
  %302 = load i32, i32* %reg2.i, align 4, !dbg !754
  %xor500.i = xor i32 %302, %301, !dbg !754
  store i32 %xor500.i, i32* %reg2.i, align 4, !dbg !754
  %303 = load i32, i32* %reg1.i, align 4, !dbg !754
  %304 = load i32, i32* %reg0.i, align 4, !dbg !754
  %xor501.i = xor i32 %304, %303, !dbg !754
  store i32 %xor501.i, i32* %reg0.i, align 4, !dbg !754
  %305 = load i32, i32* %reg1.i, align 4, !dbg !754
  %306 = load i32, i32* %reg3.i, align 4, !dbg !754
  %xor502.i = xor i32 %306, %305, !dbg !754
  store i32 %xor502.i, i32* %reg3.i, align 4, !dbg !754
  %307 = load i32, i32* %reg0.i, align 4, !dbg !754
  %308 = load i32, i32* %reg2.i, align 4, !dbg !754
  %xor503.i = xor i32 %308, %307, !dbg !754
  store i32 %xor503.i, i32* %reg2.i, align 4, !dbg !754
  %309 = load i32, i32* %reg2.i, align 4, !dbg !754
  %310 = load i32, i32* %reg1.i, align 4, !dbg !754
  %xor504.i = xor i32 %310, %309, !dbg !754
  store i32 %xor504.i, i32* %reg1.i, align 4, !dbg !754
  %311 = load i32, i32* %reg1.i, align 4, !dbg !755
  %shl507.i = shl i32 %311, 8, !dbg !755
  %and508.i = and i32 %shl507.i, -16711936, !dbg !755
  %312 = load i32, i32* %reg1.i, align 4, !dbg !755
  %shr509.i = lshr i32 %312, 8, !dbg !755
  %and510.i = and i32 %shr509.i, 16711935, !dbg !755
  %xor511.i = xor i32 %and508.i, %and510.i, !dbg !755
  store i32 %xor511.i, i32* %reg1.i, align 4, !dbg !755
  %313 = load i32, i32* %reg2.i, align 4, !dbg !755
  %shr512.i = lshr i32 %313, 16, !dbg !755
  %314 = load i32, i32* %reg2.i, align 4, !dbg !755
  %shl513.i = shl i32 %314, 16, !dbg !755
  %or514.i = or i32 %shr512.i, %shl513.i, !dbg !755
  store i32 %or514.i, i32* %reg2.i, align 4, !dbg !755
  %315 = load i32, i32* %reg3.i, align 4, !dbg !755
  %shl515.i = shl i32 %315, 24, !dbg !755
  %316 = load i32, i32* %reg3.i, align 4, !dbg !755
  %shr516.i = lshr i32 %316, 24, !dbg !755
  %xor517.i = xor i32 %shl515.i, %shr516.i, !dbg !755
  %317 = load i32, i32* %reg3.i, align 4, !dbg !755
  %and518.i = and i32 %317, 65280, !dbg !755
  %shl519.i = shl i32 %and518.i, 8, !dbg !755
  %xor520.i = xor i32 %xor517.i, %shl519.i, !dbg !755
  %318 = load i32, i32* %reg3.i, align 4, !dbg !755
  %and521.i = and i32 %318, 16711680, !dbg !755
  %shr522.i = lshr i32 %and521.i, 8, !dbg !755
  %xor523.i = xor i32 %xor520.i, %shr522.i, !dbg !755
  store i32 %xor523.i, i32* %reg3.i, align 4, !dbg !755
  %319 = load i32, i32* %reg2.i, align 4, !dbg !756
  %320 = load i32, i32* %reg1.i, align 4, !dbg !756
  %xor526.i = xor i32 %320, %319, !dbg !756
  store i32 %xor526.i, i32* %reg1.i, align 4, !dbg !756
  %321 = load i32, i32* %reg3.i, align 4, !dbg !756
  %322 = load i32, i32* %reg2.i, align 4, !dbg !756
  %xor527.i = xor i32 %322, %321, !dbg !756
  store i32 %xor527.i, i32* %reg2.i, align 4, !dbg !756
  %323 = load i32, i32* %reg1.i, align 4, !dbg !756
  %324 = load i32, i32* %reg0.i, align 4, !dbg !756
  %xor528.i = xor i32 %324, %323, !dbg !756
  store i32 %xor528.i, i32* %reg0.i, align 4, !dbg !756
  %325 = load i32, i32* %reg1.i, align 4, !dbg !756
  %326 = load i32, i32* %reg3.i, align 4, !dbg !756
  %xor529.i = xor i32 %326, %325, !dbg !756
  store i32 %xor529.i, i32* %reg3.i, align 4, !dbg !756
  %327 = load i32, i32* %reg0.i, align 4, !dbg !756
  %328 = load i32, i32* %reg2.i, align 4, !dbg !756
  %xor530.i = xor i32 %328, %327, !dbg !756
  store i32 %xor530.i, i32* %reg2.i, align 4, !dbg !756
  %329 = load i32, i32* %reg2.i, align 4, !dbg !756
  %330 = load i32, i32* %reg1.i, align 4, !dbg !756
  %xor531.i = xor i32 %330, %329, !dbg !756
  store i32 %xor531.i, i32* %reg1.i, align 4, !dbg !756
  %331 = load i32, i32* %reg0.i, align 4, !dbg !757
  %arrayidx534.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !758
  %332 = load i32, i32* %arrayidx534.i, align 16, !dbg !758
  %xor535.i = xor i32 %331, %332, !dbg !759
  %arrayidx536.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !760
  store i32 %xor535.i, i32* %arrayidx536.i, align 16, !dbg !761
  %333 = load i32, i32* %reg1.i, align 4, !dbg !762
  %arrayidx537.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !763
  %334 = load i32, i32* %arrayidx537.i, align 4, !dbg !763
  %xor538.i = xor i32 %333, %334, !dbg !764
  %arrayidx539.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !765
  store i32 %xor538.i, i32* %arrayidx539.i, align 4, !dbg !766
  %335 = load i32, i32* %reg2.i, align 4, !dbg !767
  %arrayidx540.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !768
  %336 = load i32, i32* %arrayidx540.i, align 8, !dbg !768
  %xor541.i = xor i32 %335, %336, !dbg !769
  %arrayidx542.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !770
  store i32 %xor541.i, i32* %arrayidx542.i, align 8, !dbg !771
  %337 = load i32, i32* %reg3.i, align 4, !dbg !772
  %arrayidx543.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !773
  %338 = load i32, i32* %arrayidx543.i, align 4, !dbg !773
  %xor544.i = xor i32 %337, %338, !dbg !774
  %arrayidx545.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !775
  store i32 %xor544.i, i32* %arrayidx545.i, align 4, !dbg !776
  %arrayidx547.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !777
  %339 = load i32, i32* %arrayidx547.i, align 16, !dbg !777
  %arrayidx548.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !777
  %340 = load i32, i32* %arrayidx548.i, align 16, !dbg !777
  %shr549.i = lshr i32 %340, 19, !dbg !777
  %xor550.i = xor i32 %339, %shr549.i, !dbg !777
  %arrayidx551.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !777
  %341 = load i32, i32* %arrayidx551.i, align 4, !dbg !777
  %shl552.i = shl i32 %341, 13, !dbg !777
  %xor553.i = xor i32 %xor550.i, %shl552.i, !dbg !777
  %342 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !777
  %u.i = bitcast %union.ARIA_u128* %342 to [4 x i32]*, !dbg !777
  %arrayidx554.i = getelementptr inbounds [4 x i32], [4 x i32]* %u.i, i64 0, i64 0, !dbg !777
  store i32 %xor553.i, i32* %arrayidx554.i, align 4, !dbg !777
  %arrayidx555.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !777
  %343 = load i32, i32* %arrayidx555.i, align 4, !dbg !777
  %arrayidx556.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !777
  %344 = load i32, i32* %arrayidx556.i, align 4, !dbg !777
  %shr557.i = lshr i32 %344, 19, !dbg !777
  %xor558.i = xor i32 %343, %shr557.i, !dbg !777
  %arrayidx559.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !777
  %345 = load i32, i32* %arrayidx559.i, align 16, !dbg !777
  %shl560.i = shl i32 %345, 13, !dbg !777
  %xor561.i = xor i32 %xor558.i, %shl560.i, !dbg !777
  %346 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !777
  %u562.i = bitcast %union.ARIA_u128* %346 to [4 x i32]*, !dbg !777
  %arrayidx563.i = getelementptr inbounds [4 x i32], [4 x i32]* %u562.i, i64 0, i64 1, !dbg !777
  store i32 %xor561.i, i32* %arrayidx563.i, align 4, !dbg !777
  %arrayidx564.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !777
  %347 = load i32, i32* %arrayidx564.i, align 8, !dbg !777
  %arrayidx565.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !777
  %348 = load i32, i32* %arrayidx565.i, align 8, !dbg !777
  %shr566.i = lshr i32 %348, 19, !dbg !777
  %xor567.i = xor i32 %347, %shr566.i, !dbg !777
  %arrayidx568.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !777
  %349 = load i32, i32* %arrayidx568.i, align 4, !dbg !777
  %shl569.i = shl i32 %349, 13, !dbg !777
  %xor570.i = xor i32 %xor567.i, %shl569.i, !dbg !777
  %350 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !777
  %u571.i = bitcast %union.ARIA_u128* %350 to [4 x i32]*, !dbg !777
  %arrayidx572.i = getelementptr inbounds [4 x i32], [4 x i32]* %u571.i, i64 0, i64 2, !dbg !777
  store i32 %xor570.i, i32* %arrayidx572.i, align 4, !dbg !777
  %arrayidx573.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !777
  %351 = load i32, i32* %arrayidx573.i, align 4, !dbg !777
  %arrayidx574.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !777
  %352 = load i32, i32* %arrayidx574.i, align 4, !dbg !777
  %shr575.i = lshr i32 %352, 19, !dbg !777
  %xor576.i = xor i32 %351, %shr575.i, !dbg !777
  %arrayidx577.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !777
  %353 = load i32, i32* %arrayidx577.i, align 8, !dbg !777
  %shl578.i = shl i32 %353, 13, !dbg !777
  %xor579.i = xor i32 %xor576.i, %shl578.i, !dbg !777
  %354 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !777
  %u580.i = bitcast %union.ARIA_u128* %354 to [4 x i32]*, !dbg !777
  %arrayidx581.i = getelementptr inbounds [4 x i32], [4 x i32]* %u580.i, i64 0, i64 3, !dbg !777
  store i32 %xor579.i, i32* %arrayidx581.i, align 4, !dbg !777
  %355 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !778
  %incdec.ptr.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %355, i32 1, !dbg !778
  store %union.ARIA_u128* %incdec.ptr.i, %union.ARIA_u128** %rk.i, align 8, !dbg !778
  %arrayidx584.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !779
  %356 = load i32, i32* %arrayidx584.i, align 16, !dbg !779
  %arrayidx585.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !779
  %357 = load i32, i32* %arrayidx585.i, align 16, !dbg !779
  %shr586.i = lshr i32 %357, 19, !dbg !779
  %xor587.i = xor i32 %356, %shr586.i, !dbg !779
  %arrayidx588.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !779
  %358 = load i32, i32* %arrayidx588.i, align 4, !dbg !779
  %shl589.i = shl i32 %358, 13, !dbg !779
  %xor590.i = xor i32 %xor587.i, %shl589.i, !dbg !779
  %359 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !779
  %u591.i = bitcast %union.ARIA_u128* %359 to [4 x i32]*, !dbg !779
  %arrayidx592.i = getelementptr inbounds [4 x i32], [4 x i32]* %u591.i, i64 0, i64 0, !dbg !779
  store i32 %xor590.i, i32* %arrayidx592.i, align 4, !dbg !779
  %arrayidx593.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !779
  %360 = load i32, i32* %arrayidx593.i, align 4, !dbg !779
  %arrayidx594.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !779
  %361 = load i32, i32* %arrayidx594.i, align 4, !dbg !779
  %shr595.i = lshr i32 %361, 19, !dbg !779
  %xor596.i = xor i32 %360, %shr595.i, !dbg !779
  %arrayidx597.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !779
  %362 = load i32, i32* %arrayidx597.i, align 16, !dbg !779
  %shl598.i = shl i32 %362, 13, !dbg !779
  %xor599.i = xor i32 %xor596.i, %shl598.i, !dbg !779
  %363 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !779
  %u600.i = bitcast %union.ARIA_u128* %363 to [4 x i32]*, !dbg !779
  %arrayidx601.i = getelementptr inbounds [4 x i32], [4 x i32]* %u600.i, i64 0, i64 1, !dbg !779
  store i32 %xor599.i, i32* %arrayidx601.i, align 4, !dbg !779
  %arrayidx602.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !779
  %364 = load i32, i32* %arrayidx602.i, align 8, !dbg !779
  %arrayidx603.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !779
  %365 = load i32, i32* %arrayidx603.i, align 8, !dbg !779
  %shr604.i = lshr i32 %365, 19, !dbg !779
  %xor605.i = xor i32 %364, %shr604.i, !dbg !779
  %arrayidx606.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !779
  %366 = load i32, i32* %arrayidx606.i, align 4, !dbg !779
  %shl607.i = shl i32 %366, 13, !dbg !779
  %xor608.i = xor i32 %xor605.i, %shl607.i, !dbg !779
  %367 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !779
  %u609.i = bitcast %union.ARIA_u128* %367 to [4 x i32]*, !dbg !779
  %arrayidx610.i = getelementptr inbounds [4 x i32], [4 x i32]* %u609.i, i64 0, i64 2, !dbg !779
  store i32 %xor608.i, i32* %arrayidx610.i, align 4, !dbg !779
  %arrayidx611.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !779
  %368 = load i32, i32* %arrayidx611.i, align 4, !dbg !779
  %arrayidx612.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !779
  %369 = load i32, i32* %arrayidx612.i, align 4, !dbg !779
  %shr613.i = lshr i32 %369, 19, !dbg !779
  %xor614.i = xor i32 %368, %shr613.i, !dbg !779
  %arrayidx615.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !779
  %370 = load i32, i32* %arrayidx615.i, align 8, !dbg !779
  %shl616.i = shl i32 %370, 13, !dbg !779
  %xor617.i = xor i32 %xor614.i, %shl616.i, !dbg !779
  %371 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !779
  %u618.i = bitcast %union.ARIA_u128* %371 to [4 x i32]*, !dbg !779
  %arrayidx619.i = getelementptr inbounds [4 x i32], [4 x i32]* %u618.i, i64 0, i64 3, !dbg !779
  store i32 %xor617.i, i32* %arrayidx619.i, align 4, !dbg !779
  %372 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !780
  %incdec.ptr621.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %372, i32 1, !dbg !780
  store %union.ARIA_u128* %incdec.ptr621.i, %union.ARIA_u128** %rk.i, align 8, !dbg !780
  %arrayidx623.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !781
  %373 = load i32, i32* %arrayidx623.i, align 16, !dbg !781
  %arrayidx624.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !781
  %374 = load i32, i32* %arrayidx624.i, align 16, !dbg !781
  %shr625.i = lshr i32 %374, 19, !dbg !781
  %xor626.i = xor i32 %373, %shr625.i, !dbg !781
  %arrayidx627.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !781
  %375 = load i32, i32* %arrayidx627.i, align 4, !dbg !781
  %shl628.i = shl i32 %375, 13, !dbg !781
  %xor629.i = xor i32 %xor626.i, %shl628.i, !dbg !781
  %376 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !781
  %u630.i = bitcast %union.ARIA_u128* %376 to [4 x i32]*, !dbg !781
  %arrayidx631.i = getelementptr inbounds [4 x i32], [4 x i32]* %u630.i, i64 0, i64 0, !dbg !781
  store i32 %xor629.i, i32* %arrayidx631.i, align 4, !dbg !781
  %arrayidx632.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !781
  %377 = load i32, i32* %arrayidx632.i, align 4, !dbg !781
  %arrayidx633.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !781
  %378 = load i32, i32* %arrayidx633.i, align 4, !dbg !781
  %shr634.i = lshr i32 %378, 19, !dbg !781
  %xor635.i = xor i32 %377, %shr634.i, !dbg !781
  %arrayidx636.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !781
  %379 = load i32, i32* %arrayidx636.i, align 16, !dbg !781
  %shl637.i = shl i32 %379, 13, !dbg !781
  %xor638.i = xor i32 %xor635.i, %shl637.i, !dbg !781
  %380 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !781
  %u639.i = bitcast %union.ARIA_u128* %380 to [4 x i32]*, !dbg !781
  %arrayidx640.i = getelementptr inbounds [4 x i32], [4 x i32]* %u639.i, i64 0, i64 1, !dbg !781
  store i32 %xor638.i, i32* %arrayidx640.i, align 4, !dbg !781
  %arrayidx641.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !781
  %381 = load i32, i32* %arrayidx641.i, align 8, !dbg !781
  %arrayidx642.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !781
  %382 = load i32, i32* %arrayidx642.i, align 8, !dbg !781
  %shr643.i = lshr i32 %382, 19, !dbg !781
  %xor644.i = xor i32 %381, %shr643.i, !dbg !781
  %arrayidx645.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !781
  %383 = load i32, i32* %arrayidx645.i, align 4, !dbg !781
  %shl646.i = shl i32 %383, 13, !dbg !781
  %xor647.i = xor i32 %xor644.i, %shl646.i, !dbg !781
  %384 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !781
  %u648.i = bitcast %union.ARIA_u128* %384 to [4 x i32]*, !dbg !781
  %arrayidx649.i = getelementptr inbounds [4 x i32], [4 x i32]* %u648.i, i64 0, i64 2, !dbg !781
  store i32 %xor647.i, i32* %arrayidx649.i, align 4, !dbg !781
  %arrayidx650.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !781
  %385 = load i32, i32* %arrayidx650.i, align 4, !dbg !781
  %arrayidx651.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !781
  %386 = load i32, i32* %arrayidx651.i, align 4, !dbg !781
  %shr652.i = lshr i32 %386, 19, !dbg !781
  %xor653.i = xor i32 %385, %shr652.i, !dbg !781
  %arrayidx654.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !781
  %387 = load i32, i32* %arrayidx654.i, align 8, !dbg !781
  %shl655.i = shl i32 %387, 13, !dbg !781
  %xor656.i = xor i32 %xor653.i, %shl655.i, !dbg !781
  %388 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !781
  %u657.i = bitcast %union.ARIA_u128* %388 to [4 x i32]*, !dbg !781
  %arrayidx658.i = getelementptr inbounds [4 x i32], [4 x i32]* %u657.i, i64 0, i64 3, !dbg !781
  store i32 %xor656.i, i32* %arrayidx658.i, align 4, !dbg !781
  %389 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !782
  %incdec.ptr660.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %389, i32 1, !dbg !782
  store %union.ARIA_u128* %incdec.ptr660.i, %union.ARIA_u128** %rk.i, align 8, !dbg !782
  %arrayidx662.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !783
  %390 = load i32, i32* %arrayidx662.i, align 16, !dbg !783
  %arrayidx663.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !783
  %391 = load i32, i32* %arrayidx663.i, align 16, !dbg !783
  %shr664.i = lshr i32 %391, 19, !dbg !783
  %xor665.i = xor i32 %390, %shr664.i, !dbg !783
  %arrayidx666.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !783
  %392 = load i32, i32* %arrayidx666.i, align 4, !dbg !783
  %shl667.i = shl i32 %392, 13, !dbg !783
  %xor668.i = xor i32 %xor665.i, %shl667.i, !dbg !783
  %393 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !783
  %u669.i = bitcast %union.ARIA_u128* %393 to [4 x i32]*, !dbg !783
  %arrayidx670.i = getelementptr inbounds [4 x i32], [4 x i32]* %u669.i, i64 0, i64 0, !dbg !783
  store i32 %xor668.i, i32* %arrayidx670.i, align 4, !dbg !783
  %arrayidx671.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !783
  %394 = load i32, i32* %arrayidx671.i, align 4, !dbg !783
  %arrayidx672.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !783
  %395 = load i32, i32* %arrayidx672.i, align 4, !dbg !783
  %shr673.i = lshr i32 %395, 19, !dbg !783
  %xor674.i = xor i32 %394, %shr673.i, !dbg !783
  %arrayidx675.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !783
  %396 = load i32, i32* %arrayidx675.i, align 16, !dbg !783
  %shl676.i = shl i32 %396, 13, !dbg !783
  %xor677.i = xor i32 %xor674.i, %shl676.i, !dbg !783
  %397 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !783
  %u678.i = bitcast %union.ARIA_u128* %397 to [4 x i32]*, !dbg !783
  %arrayidx679.i = getelementptr inbounds [4 x i32], [4 x i32]* %u678.i, i64 0, i64 1, !dbg !783
  store i32 %xor677.i, i32* %arrayidx679.i, align 4, !dbg !783
  %arrayidx680.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !783
  %398 = load i32, i32* %arrayidx680.i, align 8, !dbg !783
  %arrayidx681.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !783
  %399 = load i32, i32* %arrayidx681.i, align 8, !dbg !783
  %shr682.i = lshr i32 %399, 19, !dbg !783
  %xor683.i = xor i32 %398, %shr682.i, !dbg !783
  %arrayidx684.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !783
  %400 = load i32, i32* %arrayidx684.i, align 4, !dbg !783
  %shl685.i = shl i32 %400, 13, !dbg !783
  %xor686.i = xor i32 %xor683.i, %shl685.i, !dbg !783
  %401 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !783
  %u687.i = bitcast %union.ARIA_u128* %401 to [4 x i32]*, !dbg !783
  %arrayidx688.i = getelementptr inbounds [4 x i32], [4 x i32]* %u687.i, i64 0, i64 2, !dbg !783
  store i32 %xor686.i, i32* %arrayidx688.i, align 4, !dbg !783
  %arrayidx689.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !783
  %402 = load i32, i32* %arrayidx689.i, align 4, !dbg !783
  %arrayidx690.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !783
  %403 = load i32, i32* %arrayidx690.i, align 4, !dbg !783
  %shr691.i = lshr i32 %403, 19, !dbg !783
  %xor692.i = xor i32 %402, %shr691.i, !dbg !783
  %arrayidx693.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !783
  %404 = load i32, i32* %arrayidx693.i, align 8, !dbg !783
  %shl694.i = shl i32 %404, 13, !dbg !783
  %xor695.i = xor i32 %xor692.i, %shl694.i, !dbg !783
  %405 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !783
  %u696.i = bitcast %union.ARIA_u128* %405 to [4 x i32]*, !dbg !783
  %arrayidx697.i = getelementptr inbounds [4 x i32], [4 x i32]* %u696.i, i64 0, i64 3, !dbg !783
  store i32 %xor695.i, i32* %arrayidx697.i, align 4, !dbg !783
  %406 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !784
  %incdec.ptr699.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %406, i32 1, !dbg !784
  store %union.ARIA_u128* %incdec.ptr699.i, %union.ARIA_u128** %rk.i, align 8, !dbg !784
  %arrayidx701.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !785
  %407 = load i32, i32* %arrayidx701.i, align 16, !dbg !785
  %arrayidx702.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !785
  %408 = load i32, i32* %arrayidx702.i, align 16, !dbg !785
  %shr703.i = lshr i32 %408, 31, !dbg !785
  %xor704.i = xor i32 %407, %shr703.i, !dbg !785
  %arrayidx705.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !785
  %409 = load i32, i32* %arrayidx705.i, align 4, !dbg !785
  %shl706.i = shl i32 %409, 1, !dbg !785
  %xor707.i = xor i32 %xor704.i, %shl706.i, !dbg !785
  %410 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !785
  %u708.i = bitcast %union.ARIA_u128* %410 to [4 x i32]*, !dbg !785
  %arrayidx709.i = getelementptr inbounds [4 x i32], [4 x i32]* %u708.i, i64 0, i64 0, !dbg !785
  store i32 %xor707.i, i32* %arrayidx709.i, align 4, !dbg !785
  %arrayidx710.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !785
  %411 = load i32, i32* %arrayidx710.i, align 4, !dbg !785
  %arrayidx711.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !785
  %412 = load i32, i32* %arrayidx711.i, align 4, !dbg !785
  %shr712.i = lshr i32 %412, 31, !dbg !785
  %xor713.i = xor i32 %411, %shr712.i, !dbg !785
  %arrayidx714.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !785
  %413 = load i32, i32* %arrayidx714.i, align 16, !dbg !785
  %shl715.i = shl i32 %413, 1, !dbg !785
  %xor716.i = xor i32 %xor713.i, %shl715.i, !dbg !785
  %414 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !785
  %u717.i = bitcast %union.ARIA_u128* %414 to [4 x i32]*, !dbg !785
  %arrayidx718.i = getelementptr inbounds [4 x i32], [4 x i32]* %u717.i, i64 0, i64 1, !dbg !785
  store i32 %xor716.i, i32* %arrayidx718.i, align 4, !dbg !785
  %arrayidx719.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !785
  %415 = load i32, i32* %arrayidx719.i, align 8, !dbg !785
  %arrayidx720.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !785
  %416 = load i32, i32* %arrayidx720.i, align 8, !dbg !785
  %shr721.i = lshr i32 %416, 31, !dbg !785
  %xor722.i = xor i32 %415, %shr721.i, !dbg !785
  %arrayidx723.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !785
  %417 = load i32, i32* %arrayidx723.i, align 4, !dbg !785
  %shl724.i = shl i32 %417, 1, !dbg !785
  %xor725.i = xor i32 %xor722.i, %shl724.i, !dbg !785
  %418 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !785
  %u726.i = bitcast %union.ARIA_u128* %418 to [4 x i32]*, !dbg !785
  %arrayidx727.i = getelementptr inbounds [4 x i32], [4 x i32]* %u726.i, i64 0, i64 2, !dbg !785
  store i32 %xor725.i, i32* %arrayidx727.i, align 4, !dbg !785
  %arrayidx728.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !785
  %419 = load i32, i32* %arrayidx728.i, align 4, !dbg !785
  %arrayidx729.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !785
  %420 = load i32, i32* %arrayidx729.i, align 4, !dbg !785
  %shr730.i = lshr i32 %420, 31, !dbg !785
  %xor731.i = xor i32 %419, %shr730.i, !dbg !785
  %arrayidx732.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !785
  %421 = load i32, i32* %arrayidx732.i, align 8, !dbg !785
  %shl733.i = shl i32 %421, 1, !dbg !785
  %xor734.i = xor i32 %xor731.i, %shl733.i, !dbg !785
  %422 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !785
  %u735.i = bitcast %union.ARIA_u128* %422 to [4 x i32]*, !dbg !785
  %arrayidx736.i = getelementptr inbounds [4 x i32], [4 x i32]* %u735.i, i64 0, i64 3, !dbg !785
  store i32 %xor734.i, i32* %arrayidx736.i, align 4, !dbg !785
  %423 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !786
  %incdec.ptr738.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %423, i32 1, !dbg !786
  store %union.ARIA_u128* %incdec.ptr738.i, %union.ARIA_u128** %rk.i, align 8, !dbg !786
  %arrayidx740.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !787
  %424 = load i32, i32* %arrayidx740.i, align 16, !dbg !787
  %arrayidx741.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !787
  %425 = load i32, i32* %arrayidx741.i, align 16, !dbg !787
  %shr742.i = lshr i32 %425, 31, !dbg !787
  %xor743.i = xor i32 %424, %shr742.i, !dbg !787
  %arrayidx744.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !787
  %426 = load i32, i32* %arrayidx744.i, align 4, !dbg !787
  %shl745.i = shl i32 %426, 1, !dbg !787
  %xor746.i = xor i32 %xor743.i, %shl745.i, !dbg !787
  %427 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !787
  %u747.i = bitcast %union.ARIA_u128* %427 to [4 x i32]*, !dbg !787
  %arrayidx748.i = getelementptr inbounds [4 x i32], [4 x i32]* %u747.i, i64 0, i64 0, !dbg !787
  store i32 %xor746.i, i32* %arrayidx748.i, align 4, !dbg !787
  %arrayidx749.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !787
  %428 = load i32, i32* %arrayidx749.i, align 4, !dbg !787
  %arrayidx750.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !787
  %429 = load i32, i32* %arrayidx750.i, align 4, !dbg !787
  %shr751.i = lshr i32 %429, 31, !dbg !787
  %xor752.i = xor i32 %428, %shr751.i, !dbg !787
  %arrayidx753.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !787
  %430 = load i32, i32* %arrayidx753.i, align 16, !dbg !787
  %shl754.i = shl i32 %430, 1, !dbg !787
  %xor755.i = xor i32 %xor752.i, %shl754.i, !dbg !787
  %431 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !787
  %u756.i = bitcast %union.ARIA_u128* %431 to [4 x i32]*, !dbg !787
  %arrayidx757.i = getelementptr inbounds [4 x i32], [4 x i32]* %u756.i, i64 0, i64 1, !dbg !787
  store i32 %xor755.i, i32* %arrayidx757.i, align 4, !dbg !787
  %arrayidx758.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !787
  %432 = load i32, i32* %arrayidx758.i, align 8, !dbg !787
  %arrayidx759.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !787
  %433 = load i32, i32* %arrayidx759.i, align 8, !dbg !787
  %shr760.i = lshr i32 %433, 31, !dbg !787
  %xor761.i = xor i32 %432, %shr760.i, !dbg !787
  %arrayidx762.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !787
  %434 = load i32, i32* %arrayidx762.i, align 4, !dbg !787
  %shl763.i = shl i32 %434, 1, !dbg !787
  %xor764.i = xor i32 %xor761.i, %shl763.i, !dbg !787
  %435 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !787
  %u765.i = bitcast %union.ARIA_u128* %435 to [4 x i32]*, !dbg !787
  %arrayidx766.i = getelementptr inbounds [4 x i32], [4 x i32]* %u765.i, i64 0, i64 2, !dbg !787
  store i32 %xor764.i, i32* %arrayidx766.i, align 4, !dbg !787
  %arrayidx767.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !787
  %436 = load i32, i32* %arrayidx767.i, align 4, !dbg !787
  %arrayidx768.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !787
  %437 = load i32, i32* %arrayidx768.i, align 4, !dbg !787
  %shr769.i = lshr i32 %437, 31, !dbg !787
  %xor770.i = xor i32 %436, %shr769.i, !dbg !787
  %arrayidx771.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !787
  %438 = load i32, i32* %arrayidx771.i, align 8, !dbg !787
  %shl772.i = shl i32 %438, 1, !dbg !787
  %xor773.i = xor i32 %xor770.i, %shl772.i, !dbg !787
  %439 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !787
  %u774.i = bitcast %union.ARIA_u128* %439 to [4 x i32]*, !dbg !787
  %arrayidx775.i = getelementptr inbounds [4 x i32], [4 x i32]* %u774.i, i64 0, i64 3, !dbg !787
  store i32 %xor773.i, i32* %arrayidx775.i, align 4, !dbg !787
  %440 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !788
  %incdec.ptr777.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %440, i32 1, !dbg !788
  store %union.ARIA_u128* %incdec.ptr777.i, %union.ARIA_u128** %rk.i, align 8, !dbg !788
  %arrayidx779.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !789
  %441 = load i32, i32* %arrayidx779.i, align 16, !dbg !789
  %arrayidx780.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !789
  %442 = load i32, i32* %arrayidx780.i, align 16, !dbg !789
  %shr781.i = lshr i32 %442, 31, !dbg !789
  %xor782.i = xor i32 %441, %shr781.i, !dbg !789
  %arrayidx783.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !789
  %443 = load i32, i32* %arrayidx783.i, align 4, !dbg !789
  %shl784.i = shl i32 %443, 1, !dbg !789
  %xor785.i = xor i32 %xor782.i, %shl784.i, !dbg !789
  %444 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !789
  %u786.i = bitcast %union.ARIA_u128* %444 to [4 x i32]*, !dbg !789
  %arrayidx787.i = getelementptr inbounds [4 x i32], [4 x i32]* %u786.i, i64 0, i64 0, !dbg !789
  store i32 %xor785.i, i32* %arrayidx787.i, align 4, !dbg !789
  %arrayidx788.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !789
  %445 = load i32, i32* %arrayidx788.i, align 4, !dbg !789
  %arrayidx789.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !789
  %446 = load i32, i32* %arrayidx789.i, align 4, !dbg !789
  %shr790.i = lshr i32 %446, 31, !dbg !789
  %xor791.i = xor i32 %445, %shr790.i, !dbg !789
  %arrayidx792.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !789
  %447 = load i32, i32* %arrayidx792.i, align 16, !dbg !789
  %shl793.i = shl i32 %447, 1, !dbg !789
  %xor794.i = xor i32 %xor791.i, %shl793.i, !dbg !789
  %448 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !789
  %u795.i = bitcast %union.ARIA_u128* %448 to [4 x i32]*, !dbg !789
  %arrayidx796.i = getelementptr inbounds [4 x i32], [4 x i32]* %u795.i, i64 0, i64 1, !dbg !789
  store i32 %xor794.i, i32* %arrayidx796.i, align 4, !dbg !789
  %arrayidx797.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !789
  %449 = load i32, i32* %arrayidx797.i, align 8, !dbg !789
  %arrayidx798.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !789
  %450 = load i32, i32* %arrayidx798.i, align 8, !dbg !789
  %shr799.i = lshr i32 %450, 31, !dbg !789
  %xor800.i = xor i32 %449, %shr799.i, !dbg !789
  %arrayidx801.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !789
  %451 = load i32, i32* %arrayidx801.i, align 4, !dbg !789
  %shl802.i = shl i32 %451, 1, !dbg !789
  %xor803.i = xor i32 %xor800.i, %shl802.i, !dbg !789
  %452 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !789
  %u804.i = bitcast %union.ARIA_u128* %452 to [4 x i32]*, !dbg !789
  %arrayidx805.i = getelementptr inbounds [4 x i32], [4 x i32]* %u804.i, i64 0, i64 2, !dbg !789
  store i32 %xor803.i, i32* %arrayidx805.i, align 4, !dbg !789
  %arrayidx806.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !789
  %453 = load i32, i32* %arrayidx806.i, align 4, !dbg !789
  %arrayidx807.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !789
  %454 = load i32, i32* %arrayidx807.i, align 4, !dbg !789
  %shr808.i = lshr i32 %454, 31, !dbg !789
  %xor809.i = xor i32 %453, %shr808.i, !dbg !789
  %arrayidx810.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !789
  %455 = load i32, i32* %arrayidx810.i, align 8, !dbg !789
  %shl811.i = shl i32 %455, 1, !dbg !789
  %xor812.i = xor i32 %xor809.i, %shl811.i, !dbg !789
  %456 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !789
  %u813.i = bitcast %union.ARIA_u128* %456 to [4 x i32]*, !dbg !789
  %arrayidx814.i = getelementptr inbounds [4 x i32], [4 x i32]* %u813.i, i64 0, i64 3, !dbg !789
  store i32 %xor812.i, i32* %arrayidx814.i, align 4, !dbg !789
  %457 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !790
  %incdec.ptr816.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %457, i32 1, !dbg !790
  store %union.ARIA_u128* %incdec.ptr816.i, %union.ARIA_u128** %rk.i, align 8, !dbg !790
  %arrayidx818.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !791
  %458 = load i32, i32* %arrayidx818.i, align 16, !dbg !791
  %arrayidx819.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !791
  %459 = load i32, i32* %arrayidx819.i, align 16, !dbg !791
  %shr820.i = lshr i32 %459, 31, !dbg !791
  %xor821.i = xor i32 %458, %shr820.i, !dbg !791
  %arrayidx822.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !791
  %460 = load i32, i32* %arrayidx822.i, align 4, !dbg !791
  %shl823.i = shl i32 %460, 1, !dbg !791
  %xor824.i = xor i32 %xor821.i, %shl823.i, !dbg !791
  %461 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !791
  %u825.i = bitcast %union.ARIA_u128* %461 to [4 x i32]*, !dbg !791
  %arrayidx826.i = getelementptr inbounds [4 x i32], [4 x i32]* %u825.i, i64 0, i64 0, !dbg !791
  store i32 %xor824.i, i32* %arrayidx826.i, align 4, !dbg !791
  %arrayidx827.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !791
  %462 = load i32, i32* %arrayidx827.i, align 4, !dbg !791
  %arrayidx828.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !791
  %463 = load i32, i32* %arrayidx828.i, align 4, !dbg !791
  %shr829.i = lshr i32 %463, 31, !dbg !791
  %xor830.i = xor i32 %462, %shr829.i, !dbg !791
  %arrayidx831.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !791
  %464 = load i32, i32* %arrayidx831.i, align 16, !dbg !791
  %shl832.i = shl i32 %464, 1, !dbg !791
  %xor833.i = xor i32 %xor830.i, %shl832.i, !dbg !791
  %465 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !791
  %u834.i = bitcast %union.ARIA_u128* %465 to [4 x i32]*, !dbg !791
  %arrayidx835.i = getelementptr inbounds [4 x i32], [4 x i32]* %u834.i, i64 0, i64 1, !dbg !791
  store i32 %xor833.i, i32* %arrayidx835.i, align 4, !dbg !791
  %arrayidx836.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !791
  %466 = load i32, i32* %arrayidx836.i, align 8, !dbg !791
  %arrayidx837.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !791
  %467 = load i32, i32* %arrayidx837.i, align 8, !dbg !791
  %shr838.i = lshr i32 %467, 31, !dbg !791
  %xor839.i = xor i32 %466, %shr838.i, !dbg !791
  %arrayidx840.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !791
  %468 = load i32, i32* %arrayidx840.i, align 4, !dbg !791
  %shl841.i = shl i32 %468, 1, !dbg !791
  %xor842.i = xor i32 %xor839.i, %shl841.i, !dbg !791
  %469 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !791
  %u843.i = bitcast %union.ARIA_u128* %469 to [4 x i32]*, !dbg !791
  %arrayidx844.i = getelementptr inbounds [4 x i32], [4 x i32]* %u843.i, i64 0, i64 2, !dbg !791
  store i32 %xor842.i, i32* %arrayidx844.i, align 4, !dbg !791
  %arrayidx845.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !791
  %470 = load i32, i32* %arrayidx845.i, align 4, !dbg !791
  %arrayidx846.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !791
  %471 = load i32, i32* %arrayidx846.i, align 4, !dbg !791
  %shr847.i = lshr i32 %471, 31, !dbg !791
  %xor848.i = xor i32 %470, %shr847.i, !dbg !791
  %arrayidx849.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !791
  %472 = load i32, i32* %arrayidx849.i, align 8, !dbg !791
  %shl850.i = shl i32 %472, 1, !dbg !791
  %xor851.i = xor i32 %xor848.i, %shl850.i, !dbg !791
  %473 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !791
  %u852.i = bitcast %union.ARIA_u128* %473 to [4 x i32]*, !dbg !791
  %arrayidx853.i = getelementptr inbounds [4 x i32], [4 x i32]* %u852.i, i64 0, i64 3, !dbg !791
  store i32 %xor851.i, i32* %arrayidx853.i, align 4, !dbg !791
  %474 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !792
  %incdec.ptr855.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %474, i32 1, !dbg !792
  store %union.ARIA_u128* %incdec.ptr855.i, %union.ARIA_u128** %rk.i, align 8, !dbg !792
  %arrayidx857.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !793
  %475 = load i32, i32* %arrayidx857.i, align 16, !dbg !793
  %arrayidx858.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !793
  %476 = load i32, i32* %arrayidx858.i, align 8, !dbg !793
  %shr859.i = lshr i32 %476, 3, !dbg !793
  %xor860.i = xor i32 %475, %shr859.i, !dbg !793
  %arrayidx861.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !793
  %477 = load i32, i32* %arrayidx861.i, align 4, !dbg !793
  %shl862.i = shl i32 %477, 29, !dbg !793
  %xor863.i = xor i32 %xor860.i, %shl862.i, !dbg !793
  %478 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !793
  %u864.i = bitcast %union.ARIA_u128* %478 to [4 x i32]*, !dbg !793
  %arrayidx865.i = getelementptr inbounds [4 x i32], [4 x i32]* %u864.i, i64 0, i64 0, !dbg !793
  store i32 %xor863.i, i32* %arrayidx865.i, align 4, !dbg !793
  %arrayidx866.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !793
  %479 = load i32, i32* %arrayidx866.i, align 4, !dbg !793
  %arrayidx867.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !793
  %480 = load i32, i32* %arrayidx867.i, align 4, !dbg !793
  %shr868.i = lshr i32 %480, 3, !dbg !793
  %xor869.i = xor i32 %479, %shr868.i, !dbg !793
  %arrayidx870.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !793
  %481 = load i32, i32* %arrayidx870.i, align 8, !dbg !793
  %shl871.i = shl i32 %481, 29, !dbg !793
  %xor872.i = xor i32 %xor869.i, %shl871.i, !dbg !793
  %482 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !793
  %u873.i = bitcast %union.ARIA_u128* %482 to [4 x i32]*, !dbg !793
  %arrayidx874.i = getelementptr inbounds [4 x i32], [4 x i32]* %u873.i, i64 0, i64 1, !dbg !793
  store i32 %xor872.i, i32* %arrayidx874.i, align 4, !dbg !793
  %arrayidx875.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !793
  %483 = load i32, i32* %arrayidx875.i, align 8, !dbg !793
  %arrayidx876.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !793
  %484 = load i32, i32* %arrayidx876.i, align 16, !dbg !793
  %shr877.i = lshr i32 %484, 3, !dbg !793
  %xor878.i = xor i32 %483, %shr877.i, !dbg !793
  %arrayidx879.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !793
  %485 = load i32, i32* %arrayidx879.i, align 4, !dbg !793
  %shl880.i = shl i32 %485, 29, !dbg !793
  %xor881.i = xor i32 %xor878.i, %shl880.i, !dbg !793
  %486 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !793
  %u882.i = bitcast %union.ARIA_u128* %486 to [4 x i32]*, !dbg !793
  %arrayidx883.i = getelementptr inbounds [4 x i32], [4 x i32]* %u882.i, i64 0, i64 2, !dbg !793
  store i32 %xor881.i, i32* %arrayidx883.i, align 4, !dbg !793
  %arrayidx884.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !793
  %487 = load i32, i32* %arrayidx884.i, align 4, !dbg !793
  %arrayidx885.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !793
  %488 = load i32, i32* %arrayidx885.i, align 4, !dbg !793
  %shr886.i = lshr i32 %488, 3, !dbg !793
  %xor887.i = xor i32 %487, %shr886.i, !dbg !793
  %arrayidx888.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !793
  %489 = load i32, i32* %arrayidx888.i, align 16, !dbg !793
  %shl889.i = shl i32 %489, 29, !dbg !793
  %xor890.i = xor i32 %xor887.i, %shl889.i, !dbg !793
  %490 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !793
  %u891.i = bitcast %union.ARIA_u128* %490 to [4 x i32]*, !dbg !793
  %arrayidx892.i = getelementptr inbounds [4 x i32], [4 x i32]* %u891.i, i64 0, i64 3, !dbg !793
  store i32 %xor890.i, i32* %arrayidx892.i, align 4, !dbg !793
  %491 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !794
  %incdec.ptr894.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %491, i32 1, !dbg !794
  store %union.ARIA_u128* %incdec.ptr894.i, %union.ARIA_u128** %rk.i, align 8, !dbg !794
  %arrayidx896.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !795
  %492 = load i32, i32* %arrayidx896.i, align 16, !dbg !795
  %arrayidx897.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !795
  %493 = load i32, i32* %arrayidx897.i, align 8, !dbg !795
  %shr898.i = lshr i32 %493, 3, !dbg !795
  %xor899.i = xor i32 %492, %shr898.i, !dbg !795
  %arrayidx900.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !795
  %494 = load i32, i32* %arrayidx900.i, align 4, !dbg !795
  %shl901.i = shl i32 %494, 29, !dbg !795
  %xor902.i = xor i32 %xor899.i, %shl901.i, !dbg !795
  %495 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !795
  %u903.i = bitcast %union.ARIA_u128* %495 to [4 x i32]*, !dbg !795
  %arrayidx904.i = getelementptr inbounds [4 x i32], [4 x i32]* %u903.i, i64 0, i64 0, !dbg !795
  store i32 %xor902.i, i32* %arrayidx904.i, align 4, !dbg !795
  %arrayidx905.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !795
  %496 = load i32, i32* %arrayidx905.i, align 4, !dbg !795
  %arrayidx906.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !795
  %497 = load i32, i32* %arrayidx906.i, align 4, !dbg !795
  %shr907.i = lshr i32 %497, 3, !dbg !795
  %xor908.i = xor i32 %496, %shr907.i, !dbg !795
  %arrayidx909.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !795
  %498 = load i32, i32* %arrayidx909.i, align 8, !dbg !795
  %shl910.i = shl i32 %498, 29, !dbg !795
  %xor911.i = xor i32 %xor908.i, %shl910.i, !dbg !795
  %499 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !795
  %u912.i = bitcast %union.ARIA_u128* %499 to [4 x i32]*, !dbg !795
  %arrayidx913.i = getelementptr inbounds [4 x i32], [4 x i32]* %u912.i, i64 0, i64 1, !dbg !795
  store i32 %xor911.i, i32* %arrayidx913.i, align 4, !dbg !795
  %arrayidx914.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !795
  %500 = load i32, i32* %arrayidx914.i, align 8, !dbg !795
  %arrayidx915.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !795
  %501 = load i32, i32* %arrayidx915.i, align 16, !dbg !795
  %shr916.i = lshr i32 %501, 3, !dbg !795
  %xor917.i = xor i32 %500, %shr916.i, !dbg !795
  %arrayidx918.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !795
  %502 = load i32, i32* %arrayidx918.i, align 4, !dbg !795
  %shl919.i = shl i32 %502, 29, !dbg !795
  %xor920.i = xor i32 %xor917.i, %shl919.i, !dbg !795
  %503 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !795
  %u921.i = bitcast %union.ARIA_u128* %503 to [4 x i32]*, !dbg !795
  %arrayidx922.i = getelementptr inbounds [4 x i32], [4 x i32]* %u921.i, i64 0, i64 2, !dbg !795
  store i32 %xor920.i, i32* %arrayidx922.i, align 4, !dbg !795
  %arrayidx923.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !795
  %504 = load i32, i32* %arrayidx923.i, align 4, !dbg !795
  %arrayidx924.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !795
  %505 = load i32, i32* %arrayidx924.i, align 4, !dbg !795
  %shr925.i = lshr i32 %505, 3, !dbg !795
  %xor926.i = xor i32 %504, %shr925.i, !dbg !795
  %arrayidx927.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !795
  %506 = load i32, i32* %arrayidx927.i, align 16, !dbg !795
  %shl928.i = shl i32 %506, 29, !dbg !795
  %xor929.i = xor i32 %xor926.i, %shl928.i, !dbg !795
  %507 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !795
  %u930.i = bitcast %union.ARIA_u128* %507 to [4 x i32]*, !dbg !795
  %arrayidx931.i = getelementptr inbounds [4 x i32], [4 x i32]* %u930.i, i64 0, i64 3, !dbg !795
  store i32 %xor929.i, i32* %arrayidx931.i, align 4, !dbg !795
  %508 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !796
  %incdec.ptr933.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %508, i32 1, !dbg !796
  store %union.ARIA_u128* %incdec.ptr933.i, %union.ARIA_u128** %rk.i, align 8, !dbg !796
  %arrayidx935.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !797
  %509 = load i32, i32* %arrayidx935.i, align 16, !dbg !797
  %arrayidx936.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !797
  %510 = load i32, i32* %arrayidx936.i, align 8, !dbg !797
  %shr937.i = lshr i32 %510, 3, !dbg !797
  %xor938.i = xor i32 %509, %shr937.i, !dbg !797
  %arrayidx939.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !797
  %511 = load i32, i32* %arrayidx939.i, align 4, !dbg !797
  %shl940.i = shl i32 %511, 29, !dbg !797
  %xor941.i = xor i32 %xor938.i, %shl940.i, !dbg !797
  %512 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !797
  %u942.i = bitcast %union.ARIA_u128* %512 to [4 x i32]*, !dbg !797
  %arrayidx943.i = getelementptr inbounds [4 x i32], [4 x i32]* %u942.i, i64 0, i64 0, !dbg !797
  store i32 %xor941.i, i32* %arrayidx943.i, align 4, !dbg !797
  %arrayidx944.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !797
  %513 = load i32, i32* %arrayidx944.i, align 4, !dbg !797
  %arrayidx945.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !797
  %514 = load i32, i32* %arrayidx945.i, align 4, !dbg !797
  %shr946.i = lshr i32 %514, 3, !dbg !797
  %xor947.i = xor i32 %513, %shr946.i, !dbg !797
  %arrayidx948.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !797
  %515 = load i32, i32* %arrayidx948.i, align 8, !dbg !797
  %shl949.i = shl i32 %515, 29, !dbg !797
  %xor950.i = xor i32 %xor947.i, %shl949.i, !dbg !797
  %516 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !797
  %u951.i = bitcast %union.ARIA_u128* %516 to [4 x i32]*, !dbg !797
  %arrayidx952.i = getelementptr inbounds [4 x i32], [4 x i32]* %u951.i, i64 0, i64 1, !dbg !797
  store i32 %xor950.i, i32* %arrayidx952.i, align 4, !dbg !797
  %arrayidx953.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !797
  %517 = load i32, i32* %arrayidx953.i, align 8, !dbg !797
  %arrayidx954.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !797
  %518 = load i32, i32* %arrayidx954.i, align 16, !dbg !797
  %shr955.i = lshr i32 %518, 3, !dbg !797
  %xor956.i = xor i32 %517, %shr955.i, !dbg !797
  %arrayidx957.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !797
  %519 = load i32, i32* %arrayidx957.i, align 4, !dbg !797
  %shl958.i = shl i32 %519, 29, !dbg !797
  %xor959.i = xor i32 %xor956.i, %shl958.i, !dbg !797
  %520 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !797
  %u960.i = bitcast %union.ARIA_u128* %520 to [4 x i32]*, !dbg !797
  %arrayidx961.i = getelementptr inbounds [4 x i32], [4 x i32]* %u960.i, i64 0, i64 2, !dbg !797
  store i32 %xor959.i, i32* %arrayidx961.i, align 4, !dbg !797
  %arrayidx962.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !797
  %521 = load i32, i32* %arrayidx962.i, align 4, !dbg !797
  %arrayidx963.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !797
  %522 = load i32, i32* %arrayidx963.i, align 4, !dbg !797
  %shr964.i = lshr i32 %522, 3, !dbg !797
  %xor965.i = xor i32 %521, %shr964.i, !dbg !797
  %arrayidx966.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !797
  %523 = load i32, i32* %arrayidx966.i, align 16, !dbg !797
  %shl967.i = shl i32 %523, 29, !dbg !797
  %xor968.i = xor i32 %xor965.i, %shl967.i, !dbg !797
  %524 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !797
  %u969.i = bitcast %union.ARIA_u128* %524 to [4 x i32]*, !dbg !797
  %arrayidx970.i = getelementptr inbounds [4 x i32], [4 x i32]* %u969.i, i64 0, i64 3, !dbg !797
  store i32 %xor968.i, i32* %arrayidx970.i, align 4, !dbg !797
  %525 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !798
  %incdec.ptr972.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %525, i32 1, !dbg !798
  store %union.ARIA_u128* %incdec.ptr972.i, %union.ARIA_u128** %rk.i, align 8, !dbg !798
  %arrayidx974.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !799
  %526 = load i32, i32* %arrayidx974.i, align 16, !dbg !799
  %arrayidx975.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !799
  %527 = load i32, i32* %arrayidx975.i, align 8, !dbg !799
  %shr976.i = lshr i32 %527, 3, !dbg !799
  %xor977.i = xor i32 %526, %shr976.i, !dbg !799
  %arrayidx978.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !799
  %528 = load i32, i32* %arrayidx978.i, align 4, !dbg !799
  %shl979.i = shl i32 %528, 29, !dbg !799
  %xor980.i = xor i32 %xor977.i, %shl979.i, !dbg !799
  %529 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !799
  %u981.i = bitcast %union.ARIA_u128* %529 to [4 x i32]*, !dbg !799
  %arrayidx982.i = getelementptr inbounds [4 x i32], [4 x i32]* %u981.i, i64 0, i64 0, !dbg !799
  store i32 %xor980.i, i32* %arrayidx982.i, align 4, !dbg !799
  %arrayidx983.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !799
  %530 = load i32, i32* %arrayidx983.i, align 4, !dbg !799
  %arrayidx984.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !799
  %531 = load i32, i32* %arrayidx984.i, align 4, !dbg !799
  %shr985.i = lshr i32 %531, 3, !dbg !799
  %xor986.i = xor i32 %530, %shr985.i, !dbg !799
  %arrayidx987.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !799
  %532 = load i32, i32* %arrayidx987.i, align 8, !dbg !799
  %shl988.i = shl i32 %532, 29, !dbg !799
  %xor989.i = xor i32 %xor986.i, %shl988.i, !dbg !799
  %533 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !799
  %u990.i = bitcast %union.ARIA_u128* %533 to [4 x i32]*, !dbg !799
  %arrayidx991.i = getelementptr inbounds [4 x i32], [4 x i32]* %u990.i, i64 0, i64 1, !dbg !799
  store i32 %xor989.i, i32* %arrayidx991.i, align 4, !dbg !799
  %arrayidx992.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !799
  %534 = load i32, i32* %arrayidx992.i, align 8, !dbg !799
  %arrayidx993.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !799
  %535 = load i32, i32* %arrayidx993.i, align 16, !dbg !799
  %shr994.i = lshr i32 %535, 3, !dbg !799
  %xor995.i = xor i32 %534, %shr994.i, !dbg !799
  %arrayidx996.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !799
  %536 = load i32, i32* %arrayidx996.i, align 4, !dbg !799
  %shl997.i = shl i32 %536, 29, !dbg !799
  %xor998.i = xor i32 %xor995.i, %shl997.i, !dbg !799
  %537 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !799
  %u999.i = bitcast %union.ARIA_u128* %537 to [4 x i32]*, !dbg !799
  %arrayidx1000.i = getelementptr inbounds [4 x i32], [4 x i32]* %u999.i, i64 0, i64 2, !dbg !799
  store i32 %xor998.i, i32* %arrayidx1000.i, align 4, !dbg !799
  %arrayidx1001.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !799
  %538 = load i32, i32* %arrayidx1001.i, align 4, !dbg !799
  %arrayidx1002.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !799
  %539 = load i32, i32* %arrayidx1002.i, align 4, !dbg !799
  %shr1003.i = lshr i32 %539, 3, !dbg !799
  %xor1004.i = xor i32 %538, %shr1003.i, !dbg !799
  %arrayidx1005.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !799
  %540 = load i32, i32* %arrayidx1005.i, align 16, !dbg !799
  %shl1006.i = shl i32 %540, 29, !dbg !799
  %xor1007.i = xor i32 %xor1004.i, %shl1006.i, !dbg !799
  %541 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !799
  %u1008.i = bitcast %union.ARIA_u128* %541 to [4 x i32]*, !dbg !799
  %arrayidx1009.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1008.i, i64 0, i64 3, !dbg !799
  store i32 %xor1007.i, i32* %arrayidx1009.i, align 4, !dbg !799
  %542 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !800
  %incdec.ptr1011.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %542, i32 1, !dbg !800
  store %union.ARIA_u128* %incdec.ptr1011.i, %union.ARIA_u128** %rk.i, align 8, !dbg !800
  %arrayidx1013.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !801
  %543 = load i32, i32* %arrayidx1013.i, align 16, !dbg !801
  %arrayidx1014.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !801
  %544 = load i32, i32* %arrayidx1014.i, align 4, !dbg !801
  %shr1015.i = lshr i32 %544, 1, !dbg !801
  %xor1016.i = xor i32 %543, %shr1015.i, !dbg !801
  %arrayidx1017.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !801
  %545 = load i32, i32* %arrayidx1017.i, align 16, !dbg !801
  %shl1018.i = shl i32 %545, 31, !dbg !801
  %xor1019.i = xor i32 %xor1016.i, %shl1018.i, !dbg !801
  %546 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !801
  %u1020.i = bitcast %union.ARIA_u128* %546 to [4 x i32]*, !dbg !801
  %arrayidx1021.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1020.i, i64 0, i64 0, !dbg !801
  store i32 %xor1019.i, i32* %arrayidx1021.i, align 4, !dbg !801
  %arrayidx1022.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !801
  %547 = load i32, i32* %arrayidx1022.i, align 4, !dbg !801
  %arrayidx1023.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !801
  %548 = load i32, i32* %arrayidx1023.i, align 8, !dbg !801
  %shr1024.i = lshr i32 %548, 1, !dbg !801
  %xor1025.i = xor i32 %547, %shr1024.i, !dbg !801
  %arrayidx1026.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !801
  %549 = load i32, i32* %arrayidx1026.i, align 4, !dbg !801
  %shl1027.i = shl i32 %549, 31, !dbg !801
  %xor1028.i = xor i32 %xor1025.i, %shl1027.i, !dbg !801
  %550 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !801
  %u1029.i = bitcast %union.ARIA_u128* %550 to [4 x i32]*, !dbg !801
  %arrayidx1030.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1029.i, i64 0, i64 1, !dbg !801
  store i32 %xor1028.i, i32* %arrayidx1030.i, align 4, !dbg !801
  %arrayidx1031.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !801
  %551 = load i32, i32* %arrayidx1031.i, align 8, !dbg !801
  %arrayidx1032.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !801
  %552 = load i32, i32* %arrayidx1032.i, align 4, !dbg !801
  %shr1033.i = lshr i32 %552, 1, !dbg !801
  %xor1034.i = xor i32 %551, %shr1033.i, !dbg !801
  %arrayidx1035.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !801
  %553 = load i32, i32* %arrayidx1035.i, align 8, !dbg !801
  %shl1036.i = shl i32 %553, 31, !dbg !801
  %xor1037.i = xor i32 %xor1034.i, %shl1036.i, !dbg !801
  %554 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !801
  %u1038.i = bitcast %union.ARIA_u128* %554 to [4 x i32]*, !dbg !801
  %arrayidx1039.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1038.i, i64 0, i64 2, !dbg !801
  store i32 %xor1037.i, i32* %arrayidx1039.i, align 4, !dbg !801
  %arrayidx1040.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !801
  %555 = load i32, i32* %arrayidx1040.i, align 4, !dbg !801
  %arrayidx1041.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !801
  %556 = load i32, i32* %arrayidx1041.i, align 16, !dbg !801
  %shr1042.i = lshr i32 %556, 1, !dbg !801
  %xor1043.i = xor i32 %555, %shr1042.i, !dbg !801
  %arrayidx1044.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !801
  %557 = load i32, i32* %arrayidx1044.i, align 4, !dbg !801
  %shl1045.i = shl i32 %557, 31, !dbg !801
  %xor1046.i = xor i32 %xor1043.i, %shl1045.i, !dbg !801
  %558 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !801
  %u1047.i = bitcast %union.ARIA_u128* %558 to [4 x i32]*, !dbg !801
  %arrayidx1048.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1047.i, i64 0, i64 3, !dbg !801
  store i32 %xor1046.i, i32* %arrayidx1048.i, align 4, !dbg !801
  %559 = load i32, i32* %bits.addr.i, align 4, !dbg !802
  %cmp1050.i = icmp sgt i32 %559, 128, !dbg !803
  br i1 %cmp1050.i, label %if.then1052.i, label %if.end1131.i, !dbg !804

if.then1052.i:                                    ; preds = %if.end263.i
  %560 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !805
  %incdec.ptr1053.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %560, i32 1, !dbg !805
  store %union.ARIA_u128* %incdec.ptr1053.i, %union.ARIA_u128** %rk.i, align 8, !dbg !805
  %arrayidx1055.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !806
  %561 = load i32, i32* %arrayidx1055.i, align 16, !dbg !806
  %arrayidx1056.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !806
  %562 = load i32, i32* %arrayidx1056.i, align 4, !dbg !806
  %shr1057.i = lshr i32 %562, 1, !dbg !806
  %xor1058.i = xor i32 %561, %shr1057.i, !dbg !806
  %arrayidx1059.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !806
  %563 = load i32, i32* %arrayidx1059.i, align 16, !dbg !806
  %shl1060.i = shl i32 %563, 31, !dbg !806
  %xor1061.i = xor i32 %xor1058.i, %shl1060.i, !dbg !806
  %564 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !806
  %u1062.i = bitcast %union.ARIA_u128* %564 to [4 x i32]*, !dbg !806
  %arrayidx1063.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1062.i, i64 0, i64 0, !dbg !806
  store i32 %xor1061.i, i32* %arrayidx1063.i, align 4, !dbg !806
  %arrayidx1064.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !806
  %565 = load i32, i32* %arrayidx1064.i, align 4, !dbg !806
  %arrayidx1065.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !806
  %566 = load i32, i32* %arrayidx1065.i, align 8, !dbg !806
  %shr1066.i = lshr i32 %566, 1, !dbg !806
  %xor1067.i = xor i32 %565, %shr1066.i, !dbg !806
  %arrayidx1068.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !806
  %567 = load i32, i32* %arrayidx1068.i, align 4, !dbg !806
  %shl1069.i = shl i32 %567, 31, !dbg !806
  %xor1070.i = xor i32 %xor1067.i, %shl1069.i, !dbg !806
  %568 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !806
  %u1071.i = bitcast %union.ARIA_u128* %568 to [4 x i32]*, !dbg !806
  %arrayidx1072.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1071.i, i64 0, i64 1, !dbg !806
  store i32 %xor1070.i, i32* %arrayidx1072.i, align 4, !dbg !806
  %arrayidx1073.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !806
  %569 = load i32, i32* %arrayidx1073.i, align 8, !dbg !806
  %arrayidx1074.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !806
  %570 = load i32, i32* %arrayidx1074.i, align 4, !dbg !806
  %shr1075.i = lshr i32 %570, 1, !dbg !806
  %xor1076.i = xor i32 %569, %shr1075.i, !dbg !806
  %arrayidx1077.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !806
  %571 = load i32, i32* %arrayidx1077.i, align 8, !dbg !806
  %shl1078.i = shl i32 %571, 31, !dbg !806
  %xor1079.i = xor i32 %xor1076.i, %shl1078.i, !dbg !806
  %572 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !806
  %u1080.i = bitcast %union.ARIA_u128* %572 to [4 x i32]*, !dbg !806
  %arrayidx1081.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1080.i, i64 0, i64 2, !dbg !806
  store i32 %xor1079.i, i32* %arrayidx1081.i, align 4, !dbg !806
  %arrayidx1082.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !806
  %573 = load i32, i32* %arrayidx1082.i, align 4, !dbg !806
  %arrayidx1083.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !806
  %574 = load i32, i32* %arrayidx1083.i, align 16, !dbg !806
  %shr1084.i = lshr i32 %574, 1, !dbg !806
  %xor1085.i = xor i32 %573, %shr1084.i, !dbg !806
  %arrayidx1086.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !806
  %575 = load i32, i32* %arrayidx1086.i, align 4, !dbg !806
  %shl1087.i = shl i32 %575, 31, !dbg !806
  %xor1088.i = xor i32 %xor1085.i, %shl1087.i, !dbg !806
  %576 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !806
  %u1089.i = bitcast %union.ARIA_u128* %576 to [4 x i32]*, !dbg !806
  %arrayidx1090.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1089.i, i64 0, i64 3, !dbg !806
  store i32 %xor1088.i, i32* %arrayidx1090.i, align 4, !dbg !806
  %577 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !807
  %incdec.ptr1092.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %577, i32 1, !dbg !807
  store %union.ARIA_u128* %incdec.ptr1092.i, %union.ARIA_u128** %rk.i, align 8, !dbg !807
  %arrayidx1094.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !808
  %578 = load i32, i32* %arrayidx1094.i, align 16, !dbg !808
  %arrayidx1095.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !808
  %579 = load i32, i32* %arrayidx1095.i, align 4, !dbg !808
  %shr1096.i = lshr i32 %579, 1, !dbg !808
  %xor1097.i = xor i32 %578, %shr1096.i, !dbg !808
  %arrayidx1098.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !808
  %580 = load i32, i32* %arrayidx1098.i, align 16, !dbg !808
  %shl1099.i = shl i32 %580, 31, !dbg !808
  %xor1100.i = xor i32 %xor1097.i, %shl1099.i, !dbg !808
  %581 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !808
  %u1101.i = bitcast %union.ARIA_u128* %581 to [4 x i32]*, !dbg !808
  %arrayidx1102.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1101.i, i64 0, i64 0, !dbg !808
  store i32 %xor1100.i, i32* %arrayidx1102.i, align 4, !dbg !808
  %arrayidx1103.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !808
  %582 = load i32, i32* %arrayidx1103.i, align 4, !dbg !808
  %arrayidx1104.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !808
  %583 = load i32, i32* %arrayidx1104.i, align 8, !dbg !808
  %shr1105.i = lshr i32 %583, 1, !dbg !808
  %xor1106.i = xor i32 %582, %shr1105.i, !dbg !808
  %arrayidx1107.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !808
  %584 = load i32, i32* %arrayidx1107.i, align 4, !dbg !808
  %shl1108.i = shl i32 %584, 31, !dbg !808
  %xor1109.i = xor i32 %xor1106.i, %shl1108.i, !dbg !808
  %585 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !808
  %u1110.i = bitcast %union.ARIA_u128* %585 to [4 x i32]*, !dbg !808
  %arrayidx1111.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1110.i, i64 0, i64 1, !dbg !808
  store i32 %xor1109.i, i32* %arrayidx1111.i, align 4, !dbg !808
  %arrayidx1112.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !808
  %586 = load i32, i32* %arrayidx1112.i, align 8, !dbg !808
  %arrayidx1113.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !808
  %587 = load i32, i32* %arrayidx1113.i, align 4, !dbg !808
  %shr1114.i = lshr i32 %587, 1, !dbg !808
  %xor1115.i = xor i32 %586, %shr1114.i, !dbg !808
  %arrayidx1116.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !808
  %588 = load i32, i32* %arrayidx1116.i, align 8, !dbg !808
  %shl1117.i = shl i32 %588, 31, !dbg !808
  %xor1118.i = xor i32 %xor1115.i, %shl1117.i, !dbg !808
  %589 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !808
  %u1119.i = bitcast %union.ARIA_u128* %589 to [4 x i32]*, !dbg !808
  %arrayidx1120.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1119.i, i64 0, i64 2, !dbg !808
  store i32 %xor1118.i, i32* %arrayidx1120.i, align 4, !dbg !808
  %arrayidx1121.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !808
  %590 = load i32, i32* %arrayidx1121.i, align 4, !dbg !808
  %arrayidx1122.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !808
  %591 = load i32, i32* %arrayidx1122.i, align 16, !dbg !808
  %shr1123.i = lshr i32 %591, 1, !dbg !808
  %xor1124.i = xor i32 %590, %shr1123.i, !dbg !808
  %arrayidx1125.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !808
  %592 = load i32, i32* %arrayidx1125.i, align 4, !dbg !808
  %shl1126.i = shl i32 %592, 31, !dbg !808
  %xor1127.i = xor i32 %xor1124.i, %shl1126.i, !dbg !808
  %593 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !808
  %u1128.i = bitcast %union.ARIA_u128* %593 to [4 x i32]*, !dbg !808
  %arrayidx1129.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1128.i, i64 0, i64 3, !dbg !808
  store i32 %xor1127.i, i32* %arrayidx1129.i, align 4, !dbg !808
  br label %if.end1131.i, !dbg !809

if.end1131.i:                                     ; preds = %if.then1052.i, %if.end263.i
  %594 = load i32, i32* %bits.addr.i, align 4, !dbg !810
  %cmp1132.i = icmp sgt i32 %594, 192, !dbg !811
  br i1 %cmp1132.i, label %if.then1134.i, label %if.end1213.i, !dbg !812

if.then1134.i:                                    ; preds = %if.end1131.i
  %595 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !813
  %incdec.ptr1135.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %595, i32 1, !dbg !813
  store %union.ARIA_u128* %incdec.ptr1135.i, %union.ARIA_u128** %rk.i, align 8, !dbg !813
  %arrayidx1137.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !814
  %596 = load i32, i32* %arrayidx1137.i, align 16, !dbg !814
  %arrayidx1138.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !814
  %597 = load i32, i32* %arrayidx1138.i, align 4, !dbg !814
  %shr1139.i = lshr i32 %597, 1, !dbg !814
  %xor1140.i = xor i32 %596, %shr1139.i, !dbg !814
  %arrayidx1141.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !814
  %598 = load i32, i32* %arrayidx1141.i, align 16, !dbg !814
  %shl1142.i = shl i32 %598, 31, !dbg !814
  %xor1143.i = xor i32 %xor1140.i, %shl1142.i, !dbg !814
  %599 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !814
  %u1144.i = bitcast %union.ARIA_u128* %599 to [4 x i32]*, !dbg !814
  %arrayidx1145.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1144.i, i64 0, i64 0, !dbg !814
  store i32 %xor1143.i, i32* %arrayidx1145.i, align 4, !dbg !814
  %arrayidx1146.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !814
  %600 = load i32, i32* %arrayidx1146.i, align 4, !dbg !814
  %arrayidx1147.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !814
  %601 = load i32, i32* %arrayidx1147.i, align 8, !dbg !814
  %shr1148.i = lshr i32 %601, 1, !dbg !814
  %xor1149.i = xor i32 %600, %shr1148.i, !dbg !814
  %arrayidx1150.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !814
  %602 = load i32, i32* %arrayidx1150.i, align 4, !dbg !814
  %shl1151.i = shl i32 %602, 31, !dbg !814
  %xor1152.i = xor i32 %xor1149.i, %shl1151.i, !dbg !814
  %603 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !814
  %u1153.i = bitcast %union.ARIA_u128* %603 to [4 x i32]*, !dbg !814
  %arrayidx1154.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1153.i, i64 0, i64 1, !dbg !814
  store i32 %xor1152.i, i32* %arrayidx1154.i, align 4, !dbg !814
  %arrayidx1155.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !814
  %604 = load i32, i32* %arrayidx1155.i, align 8, !dbg !814
  %arrayidx1156.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !814
  %605 = load i32, i32* %arrayidx1156.i, align 4, !dbg !814
  %shr1157.i = lshr i32 %605, 1, !dbg !814
  %xor1158.i = xor i32 %604, %shr1157.i, !dbg !814
  %arrayidx1159.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !814
  %606 = load i32, i32* %arrayidx1159.i, align 8, !dbg !814
  %shl1160.i = shl i32 %606, 31, !dbg !814
  %xor1161.i = xor i32 %xor1158.i, %shl1160.i, !dbg !814
  %607 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !814
  %u1162.i = bitcast %union.ARIA_u128* %607 to [4 x i32]*, !dbg !814
  %arrayidx1163.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1162.i, i64 0, i64 2, !dbg !814
  store i32 %xor1161.i, i32* %arrayidx1163.i, align 4, !dbg !814
  %arrayidx1164.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !814
  %608 = load i32, i32* %arrayidx1164.i, align 4, !dbg !814
  %arrayidx1165.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !814
  %609 = load i32, i32* %arrayidx1165.i, align 16, !dbg !814
  %shr1166.i = lshr i32 %609, 1, !dbg !814
  %xor1167.i = xor i32 %608, %shr1166.i, !dbg !814
  %arrayidx1168.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !814
  %610 = load i32, i32* %arrayidx1168.i, align 4, !dbg !814
  %shl1169.i = shl i32 %610, 31, !dbg !814
  %xor1170.i = xor i32 %xor1167.i, %shl1169.i, !dbg !814
  %611 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !814
  %u1171.i = bitcast %union.ARIA_u128* %611 to [4 x i32]*, !dbg !814
  %arrayidx1172.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1171.i, i64 0, i64 3, !dbg !814
  store i32 %xor1170.i, i32* %arrayidx1172.i, align 4, !dbg !814
  %612 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !815
  %incdec.ptr1174.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %612, i32 1, !dbg !815
  store %union.ARIA_u128* %incdec.ptr1174.i, %union.ARIA_u128** %rk.i, align 8, !dbg !815
  %arrayidx1176.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !816
  %613 = load i32, i32* %arrayidx1176.i, align 16, !dbg !816
  %arrayidx1177.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !816
  %614 = load i32, i32* %arrayidx1177.i, align 4, !dbg !816
  %shr1178.i = lshr i32 %614, 13, !dbg !816
  %xor1179.i = xor i32 %613, %shr1178.i, !dbg !816
  %arrayidx1180.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !816
  %615 = load i32, i32* %arrayidx1180.i, align 16, !dbg !816
  %shl1181.i = shl i32 %615, 19, !dbg !816
  %xor1182.i = xor i32 %xor1179.i, %shl1181.i, !dbg !816
  %616 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !816
  %u1183.i = bitcast %union.ARIA_u128* %616 to [4 x i32]*, !dbg !816
  %arrayidx1184.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1183.i, i64 0, i64 0, !dbg !816
  store i32 %xor1182.i, i32* %arrayidx1184.i, align 4, !dbg !816
  %arrayidx1185.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !816
  %617 = load i32, i32* %arrayidx1185.i, align 4, !dbg !816
  %arrayidx1186.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !816
  %618 = load i32, i32* %arrayidx1186.i, align 8, !dbg !816
  %shr1187.i = lshr i32 %618, 13, !dbg !816
  %xor1188.i = xor i32 %617, %shr1187.i, !dbg !816
  %arrayidx1189.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !816
  %619 = load i32, i32* %arrayidx1189.i, align 4, !dbg !816
  %shl1190.i = shl i32 %619, 19, !dbg !816
  %xor1191.i = xor i32 %xor1188.i, %shl1190.i, !dbg !816
  %620 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !816
  %u1192.i = bitcast %union.ARIA_u128* %620 to [4 x i32]*, !dbg !816
  %arrayidx1193.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1192.i, i64 0, i64 1, !dbg !816
  store i32 %xor1191.i, i32* %arrayidx1193.i, align 4, !dbg !816
  %arrayidx1194.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !816
  %621 = load i32, i32* %arrayidx1194.i, align 8, !dbg !816
  %arrayidx1195.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !816
  %622 = load i32, i32* %arrayidx1195.i, align 4, !dbg !816
  %shr1196.i = lshr i32 %622, 13, !dbg !816
  %xor1197.i = xor i32 %621, %shr1196.i, !dbg !816
  %arrayidx1198.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !816
  %623 = load i32, i32* %arrayidx1198.i, align 8, !dbg !816
  %shl1199.i = shl i32 %623, 19, !dbg !816
  %xor1200.i = xor i32 %xor1197.i, %shl1199.i, !dbg !816
  %624 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !816
  %u1201.i = bitcast %union.ARIA_u128* %624 to [4 x i32]*, !dbg !816
  %arrayidx1202.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1201.i, i64 0, i64 2, !dbg !816
  store i32 %xor1200.i, i32* %arrayidx1202.i, align 4, !dbg !816
  %arrayidx1203.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !816
  %625 = load i32, i32* %arrayidx1203.i, align 4, !dbg !816
  %arrayidx1204.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !816
  %626 = load i32, i32* %arrayidx1204.i, align 16, !dbg !816
  %shr1205.i = lshr i32 %626, 13, !dbg !816
  %xor1206.i = xor i32 %625, %shr1205.i, !dbg !816
  %arrayidx1207.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !816
  %627 = load i32, i32* %arrayidx1207.i, align 4, !dbg !816
  %shl1208.i = shl i32 %627, 19, !dbg !816
  %xor1209.i = xor i32 %xor1206.i, %shl1208.i, !dbg !816
  %628 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !816
  %u1210.i = bitcast %union.ARIA_u128* %628 to [4 x i32]*, !dbg !816
  %arrayidx1211.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1210.i, i64 0, i64 3, !dbg !816
  store i32 %xor1209.i, i32* %arrayidx1211.i, align 4, !dbg !816
  br label %if.end1213.i, !dbg !817

if.end1213.i:                                     ; preds = %if.then1134.i, %if.end1131.i
  store i32 0, i32* %retval.i, align 4, !dbg !818
  br label %aria_set_encrypt_key.exit, !dbg !818

aria_set_encrypt_key.exit:                        ; preds = %if.then.i, %if.then6.i, %if.end1213.i
  %629 = load i32, i32* %retval.i, align 4, !dbg !819
  store i32 %629, i32* %r, align 4, !dbg !593
  %630 = load i32, i32* %r, align 4, !dbg !820
  %cmp = icmp ne i32 %630, 0, !dbg !822
  br i1 %cmp, label %if.then, label %if.end, !dbg !823

if.then:                                          ; preds = %aria_set_encrypt_key.exit
  %631 = load i32, i32* %r, align 4, !dbg !824
  store i32 %631, i32* %retval, align 4, !dbg !826
  br label %return, !dbg !826

if.end:                                           ; preds = %aria_set_encrypt_key.exit
  %632 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr, align 8, !dbg !827
  %rd_key = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %632, i32 0, i32 0, !dbg !828
  %arraydecay = getelementptr inbounds [17 x %union.ARIA_u128], [17 x %union.ARIA_u128]* %rd_key, i64 0, i64 0, !dbg !827
  store %union.ARIA_u128* %arraydecay, %union.ARIA_u128** %rk_head, align 8, !dbg !829
  %633 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !830
  %634 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr, align 8, !dbg !831
  %rounds = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %634, i32 0, i32 1, !dbg !832
  %635 = load i32, i32* %rounds, align 4, !dbg !832
  %idx.ext = zext i32 %635 to i64, !dbg !833
  %add.ptr = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %633, i64 %idx.ext, !dbg !833
  store %union.ARIA_u128* %add.ptr, %union.ARIA_u128** %rk_tail, align 8, !dbg !834
  %636 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !835
  %u = bitcast %union.ARIA_u128* %636 to [4 x i32]*, !dbg !836
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %u, i64 0, i64 0, !dbg !835
  %637 = load i32, i32* %arrayidx, align 4, !dbg !835
  store i32 %637, i32* %reg0, align 4, !dbg !837
  %638 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !838
  %u1 = bitcast %union.ARIA_u128* %638 to [4 x i32]*, !dbg !839
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %u1, i64 0, i64 1, !dbg !838
  %639 = load i32, i32* %arrayidx2, align 4, !dbg !838
  store i32 %639, i32* %reg1, align 4, !dbg !840
  %640 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !841
  %u3 = bitcast %union.ARIA_u128* %640 to [4 x i32]*, !dbg !842
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %u3, i64 0, i64 2, !dbg !841
  %641 = load i32, i32* %arrayidx4, align 4, !dbg !841
  store i32 %641, i32* %reg2, align 4, !dbg !843
  %642 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !844
  %u5 = bitcast %union.ARIA_u128* %642 to [4 x i32]*, !dbg !845
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %u5, i64 0, i64 3, !dbg !844
  %643 = load i32, i32* %arrayidx6, align 4, !dbg !844
  store i32 %643, i32* %reg3, align 4, !dbg !846
  %644 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !847
  %645 = bitcast %union.ARIA_u128* %644 to i8*, !dbg !848
  %646 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !849
  %647 = bitcast %union.ARIA_u128* %646 to i8*, !dbg !848
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %645, i8* align 4 %647, i64 16, i1 false), !dbg !848
  %648 = load i32, i32* %reg0, align 4, !dbg !850
  %649 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !851
  %u7 = bitcast %union.ARIA_u128* %649 to [4 x i32]*, !dbg !852
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %u7, i64 0, i64 0, !dbg !851
  store i32 %648, i32* %arrayidx8, align 4, !dbg !853
  %650 = load i32, i32* %reg1, align 4, !dbg !854
  %651 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !855
  %u9 = bitcast %union.ARIA_u128* %651 to [4 x i32]*, !dbg !856
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %u9, i64 0, i64 1, !dbg !855
  store i32 %650, i32* %arrayidx10, align 4, !dbg !857
  %652 = load i32, i32* %reg2, align 4, !dbg !858
  %653 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !859
  %u11 = bitcast %union.ARIA_u128* %653 to [4 x i32]*, !dbg !860
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %u11, i64 0, i64 2, !dbg !859
  store i32 %652, i32* %arrayidx12, align 4, !dbg !861
  %654 = load i32, i32* %reg3, align 4, !dbg !862
  %655 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !863
  %u13 = bitcast %union.ARIA_u128* %655 to [4 x i32]*, !dbg !864
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %u13, i64 0, i64 3, !dbg !863
  store i32 %654, i32* %arrayidx14, align 4, !dbg !865
  %656 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !866
  %incdec.ptr = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %656, i32 1, !dbg !866
  store %union.ARIA_u128* %incdec.ptr, %union.ARIA_u128** %rk_head, align 8, !dbg !866
  %657 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !867
  %incdec.ptr15 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %657, i32 -1, !dbg !867
  store %union.ARIA_u128* %incdec.ptr15, %union.ARIA_u128** %rk_tail, align 8, !dbg !867
  br label %for.cond, !dbg !868

for.cond:                                         ; preds = %for.inc, %if.end
  %658 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !869
  %659 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !872
  %cmp16 = icmp ult %union.ARIA_u128* %658, %659, !dbg !873
  br i1 %cmp16, label %for.body, label %for.end, !dbg !874

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !875

do.body:                                          ; preds = %for.body
  %660 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !877
  %u17 = bitcast %union.ARIA_u128* %660 to [4 x i32]*, !dbg !877
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %u17, i64 0, i64 0, !dbg !877
  %661 = load i32, i32* %arrayidx18, align 4, !dbg !877
  store i32 %661, i32* %w1, align 4, !dbg !877
  %662 = load i32, i32* %w1, align 4, !dbg !877
  %shr = lshr i32 %662, 8, !dbg !877
  %663 = load i32, i32* %w1, align 4, !dbg !877
  %shl = shl i32 %663, 24, !dbg !877
  %or = or i32 %shr, %shl, !dbg !877
  store i32 %or, i32* %w2, align 4, !dbg !877
  %664 = load i32, i32* %w2, align 4, !dbg !877
  %665 = load i32, i32* %w1, align 4, !dbg !877
  %666 = load i32, i32* %w2, align 4, !dbg !877
  %xor = xor i32 %665, %666, !dbg !877
  %shr19 = lshr i32 %xor, 16, !dbg !877
  %667 = load i32, i32* %w1, align 4, !dbg !877
  %668 = load i32, i32* %w2, align 4, !dbg !877
  %xor20 = xor i32 %667, %668, !dbg !877
  %shl21 = shl i32 %xor20, 16, !dbg !877
  %or22 = or i32 %shr19, %shl21, !dbg !877
  %xor23 = xor i32 %664, %or22, !dbg !877
  store i32 %xor23, i32* %reg0, align 4, !dbg !877
  br label %do.end, !dbg !877

do.end:                                           ; preds = %do.body
  br label %do.body24, !dbg !879

do.body24:                                        ; preds = %do.end
  %669 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !880
  %u25 = bitcast %union.ARIA_u128* %669 to [4 x i32]*, !dbg !880
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %u25, i64 0, i64 1, !dbg !880
  %670 = load i32, i32* %arrayidx26, align 4, !dbg !880
  store i32 %670, i32* %w1, align 4, !dbg !880
  %671 = load i32, i32* %w1, align 4, !dbg !880
  %shr27 = lshr i32 %671, 8, !dbg !880
  %672 = load i32, i32* %w1, align 4, !dbg !880
  %shl28 = shl i32 %672, 24, !dbg !880
  %or29 = or i32 %shr27, %shl28, !dbg !880
  store i32 %or29, i32* %w2, align 4, !dbg !880
  %673 = load i32, i32* %w2, align 4, !dbg !880
  %674 = load i32, i32* %w1, align 4, !dbg !880
  %675 = load i32, i32* %w2, align 4, !dbg !880
  %xor30 = xor i32 %674, %675, !dbg !880
  %shr31 = lshr i32 %xor30, 16, !dbg !880
  %676 = load i32, i32* %w1, align 4, !dbg !880
  %677 = load i32, i32* %w2, align 4, !dbg !880
  %xor32 = xor i32 %676, %677, !dbg !880
  %shl33 = shl i32 %xor32, 16, !dbg !880
  %or34 = or i32 %shr31, %shl33, !dbg !880
  %xor35 = xor i32 %673, %or34, !dbg !880
  store i32 %xor35, i32* %reg1, align 4, !dbg !880
  br label %do.end36, !dbg !880

do.end36:                                         ; preds = %do.body24
  br label %do.body37, !dbg !882

do.body37:                                        ; preds = %do.end36
  %678 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !883
  %u38 = bitcast %union.ARIA_u128* %678 to [4 x i32]*, !dbg !883
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %u38, i64 0, i64 2, !dbg !883
  %679 = load i32, i32* %arrayidx39, align 4, !dbg !883
  store i32 %679, i32* %w1, align 4, !dbg !883
  %680 = load i32, i32* %w1, align 4, !dbg !883
  %shr40 = lshr i32 %680, 8, !dbg !883
  %681 = load i32, i32* %w1, align 4, !dbg !883
  %shl41 = shl i32 %681, 24, !dbg !883
  %or42 = or i32 %shr40, %shl41, !dbg !883
  store i32 %or42, i32* %w2, align 4, !dbg !883
  %682 = load i32, i32* %w2, align 4, !dbg !883
  %683 = load i32, i32* %w1, align 4, !dbg !883
  %684 = load i32, i32* %w2, align 4, !dbg !883
  %xor43 = xor i32 %683, %684, !dbg !883
  %shr44 = lshr i32 %xor43, 16, !dbg !883
  %685 = load i32, i32* %w1, align 4, !dbg !883
  %686 = load i32, i32* %w2, align 4, !dbg !883
  %xor45 = xor i32 %685, %686, !dbg !883
  %shl46 = shl i32 %xor45, 16, !dbg !883
  %or47 = or i32 %shr44, %shl46, !dbg !883
  %xor48 = xor i32 %682, %or47, !dbg !883
  store i32 %xor48, i32* %reg2, align 4, !dbg !883
  br label %do.end49, !dbg !883

do.end49:                                         ; preds = %do.body37
  br label %do.body50, !dbg !885

do.body50:                                        ; preds = %do.end49
  %687 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !886
  %u51 = bitcast %union.ARIA_u128* %687 to [4 x i32]*, !dbg !886
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %u51, i64 0, i64 3, !dbg !886
  %688 = load i32, i32* %arrayidx52, align 4, !dbg !886
  store i32 %688, i32* %w1, align 4, !dbg !886
  %689 = load i32, i32* %w1, align 4, !dbg !886
  %shr53 = lshr i32 %689, 8, !dbg !886
  %690 = load i32, i32* %w1, align 4, !dbg !886
  %shl54 = shl i32 %690, 24, !dbg !886
  %or55 = or i32 %shr53, %shl54, !dbg !886
  store i32 %or55, i32* %w2, align 4, !dbg !886
  %691 = load i32, i32* %w2, align 4, !dbg !886
  %692 = load i32, i32* %w1, align 4, !dbg !886
  %693 = load i32, i32* %w2, align 4, !dbg !886
  %xor56 = xor i32 %692, %693, !dbg !886
  %shr57 = lshr i32 %xor56, 16, !dbg !886
  %694 = load i32, i32* %w1, align 4, !dbg !886
  %695 = load i32, i32* %w2, align 4, !dbg !886
  %xor58 = xor i32 %694, %695, !dbg !886
  %shl59 = shl i32 %xor58, 16, !dbg !886
  %or60 = or i32 %shr57, %shl59, !dbg !886
  %xor61 = xor i32 %691, %or60, !dbg !886
  store i32 %xor61, i32* %reg3, align 4, !dbg !886
  br label %do.end62, !dbg !886

do.end62:                                         ; preds = %do.body50
  br label %do.body63, !dbg !888

do.body63:                                        ; preds = %do.end62
  %696 = load i32, i32* %reg2, align 4, !dbg !889
  %697 = load i32, i32* %reg1, align 4, !dbg !889
  %xor64 = xor i32 %697, %696, !dbg !889
  store i32 %xor64, i32* %reg1, align 4, !dbg !889
  %698 = load i32, i32* %reg3, align 4, !dbg !889
  %699 = load i32, i32* %reg2, align 4, !dbg !889
  %xor65 = xor i32 %699, %698, !dbg !889
  store i32 %xor65, i32* %reg2, align 4, !dbg !889
  %700 = load i32, i32* %reg1, align 4, !dbg !889
  %701 = load i32, i32* %reg0, align 4, !dbg !889
  %xor66 = xor i32 %701, %700, !dbg !889
  store i32 %xor66, i32* %reg0, align 4, !dbg !889
  %702 = load i32, i32* %reg1, align 4, !dbg !889
  %703 = load i32, i32* %reg3, align 4, !dbg !889
  %xor67 = xor i32 %703, %702, !dbg !889
  store i32 %xor67, i32* %reg3, align 4, !dbg !889
  %704 = load i32, i32* %reg0, align 4, !dbg !889
  %705 = load i32, i32* %reg2, align 4, !dbg !889
  %xor68 = xor i32 %705, %704, !dbg !889
  store i32 %xor68, i32* %reg2, align 4, !dbg !889
  %706 = load i32, i32* %reg2, align 4, !dbg !889
  %707 = load i32, i32* %reg1, align 4, !dbg !889
  %xor69 = xor i32 %707, %706, !dbg !889
  store i32 %xor69, i32* %reg1, align 4, !dbg !889
  br label %do.end70, !dbg !889

do.end70:                                         ; preds = %do.body63
  br label %do.body71, !dbg !891

do.body71:                                        ; preds = %do.end70
  %708 = load i32, i32* %reg1, align 4, !dbg !892
  %shl72 = shl i32 %708, 8, !dbg !892
  %and = and i32 %shl72, -16711936, !dbg !892
  %709 = load i32, i32* %reg1, align 4, !dbg !892
  %shr73 = lshr i32 %709, 8, !dbg !892
  %and74 = and i32 %shr73, 16711935, !dbg !892
  %xor75 = xor i32 %and, %and74, !dbg !892
  store i32 %xor75, i32* %reg1, align 4, !dbg !892
  %710 = load i32, i32* %reg2, align 4, !dbg !892
  %shr76 = lshr i32 %710, 16, !dbg !892
  %711 = load i32, i32* %reg2, align 4, !dbg !892
  %shl77 = shl i32 %711, 16, !dbg !892
  %or78 = or i32 %shr76, %shl77, !dbg !892
  store i32 %or78, i32* %reg2, align 4, !dbg !892
  %712 = load i32, i32* %reg3, align 4, !dbg !892
  %shl79 = shl i32 %712, 24, !dbg !892
  %713 = load i32, i32* %reg3, align 4, !dbg !892
  %shr80 = lshr i32 %713, 24, !dbg !892
  %xor81 = xor i32 %shl79, %shr80, !dbg !892
  %714 = load i32, i32* %reg3, align 4, !dbg !892
  %and82 = and i32 %714, 65280, !dbg !892
  %shl83 = shl i32 %and82, 8, !dbg !892
  %xor84 = xor i32 %xor81, %shl83, !dbg !892
  %715 = load i32, i32* %reg3, align 4, !dbg !892
  %and85 = and i32 %715, 16711680, !dbg !892
  %shr86 = lshr i32 %and85, 8, !dbg !892
  %xor87 = xor i32 %xor84, %shr86, !dbg !892
  store i32 %xor87, i32* %reg3, align 4, !dbg !892
  br label %do.end88, !dbg !892

do.end88:                                         ; preds = %do.body71
  br label %do.body89, !dbg !894

do.body89:                                        ; preds = %do.end88
  %716 = load i32, i32* %reg2, align 4, !dbg !895
  %717 = load i32, i32* %reg1, align 4, !dbg !895
  %xor90 = xor i32 %717, %716, !dbg !895
  store i32 %xor90, i32* %reg1, align 4, !dbg !895
  %718 = load i32, i32* %reg3, align 4, !dbg !895
  %719 = load i32, i32* %reg2, align 4, !dbg !895
  %xor91 = xor i32 %719, %718, !dbg !895
  store i32 %xor91, i32* %reg2, align 4, !dbg !895
  %720 = load i32, i32* %reg1, align 4, !dbg !895
  %721 = load i32, i32* %reg0, align 4, !dbg !895
  %xor92 = xor i32 %721, %720, !dbg !895
  store i32 %xor92, i32* %reg0, align 4, !dbg !895
  %722 = load i32, i32* %reg1, align 4, !dbg !895
  %723 = load i32, i32* %reg3, align 4, !dbg !895
  %xor93 = xor i32 %723, %722, !dbg !895
  store i32 %xor93, i32* %reg3, align 4, !dbg !895
  %724 = load i32, i32* %reg0, align 4, !dbg !895
  %725 = load i32, i32* %reg2, align 4, !dbg !895
  %xor94 = xor i32 %725, %724, !dbg !895
  store i32 %xor94, i32* %reg2, align 4, !dbg !895
  %726 = load i32, i32* %reg2, align 4, !dbg !895
  %727 = load i32, i32* %reg1, align 4, !dbg !895
  %xor95 = xor i32 %727, %726, !dbg !895
  store i32 %xor95, i32* %reg1, align 4, !dbg !895
  br label %do.end96, !dbg !895

do.end96:                                         ; preds = %do.body89
  %728 = load i32, i32* %reg0, align 4, !dbg !897
  store i32 %728, i32* %s0, align 4, !dbg !898
  %729 = load i32, i32* %reg1, align 4, !dbg !899
  store i32 %729, i32* %s1, align 4, !dbg !900
  %730 = load i32, i32* %reg2, align 4, !dbg !901
  store i32 %730, i32* %s2, align 4, !dbg !902
  %731 = load i32, i32* %reg3, align 4, !dbg !903
  store i32 %731, i32* %s3, align 4, !dbg !904
  br label %do.body97, !dbg !905

do.body97:                                        ; preds = %do.end96
  %732 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !906
  %u98 = bitcast %union.ARIA_u128* %732 to [4 x i32]*, !dbg !906
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %u98, i64 0, i64 0, !dbg !906
  %733 = load i32, i32* %arrayidx99, align 4, !dbg !906
  store i32 %733, i32* %w1, align 4, !dbg !906
  %734 = load i32, i32* %w1, align 4, !dbg !906
  %shr100 = lshr i32 %734, 8, !dbg !906
  %735 = load i32, i32* %w1, align 4, !dbg !906
  %shl101 = shl i32 %735, 24, !dbg !906
  %or102 = or i32 %shr100, %shl101, !dbg !906
  store i32 %or102, i32* %w2, align 4, !dbg !906
  %736 = load i32, i32* %w2, align 4, !dbg !906
  %737 = load i32, i32* %w1, align 4, !dbg !906
  %738 = load i32, i32* %w2, align 4, !dbg !906
  %xor103 = xor i32 %737, %738, !dbg !906
  %shr104 = lshr i32 %xor103, 16, !dbg !906
  %739 = load i32, i32* %w1, align 4, !dbg !906
  %740 = load i32, i32* %w2, align 4, !dbg !906
  %xor105 = xor i32 %739, %740, !dbg !906
  %shl106 = shl i32 %xor105, 16, !dbg !906
  %or107 = or i32 %shr104, %shl106, !dbg !906
  %xor108 = xor i32 %736, %or107, !dbg !906
  store i32 %xor108, i32* %reg0, align 4, !dbg !906
  br label %do.end109, !dbg !906

do.end109:                                        ; preds = %do.body97
  br label %do.body110, !dbg !908

do.body110:                                       ; preds = %do.end109
  %741 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !909
  %u111 = bitcast %union.ARIA_u128* %741 to [4 x i32]*, !dbg !909
  %arrayidx112 = getelementptr inbounds [4 x i32], [4 x i32]* %u111, i64 0, i64 1, !dbg !909
  %742 = load i32, i32* %arrayidx112, align 4, !dbg !909
  store i32 %742, i32* %w1, align 4, !dbg !909
  %743 = load i32, i32* %w1, align 4, !dbg !909
  %shr113 = lshr i32 %743, 8, !dbg !909
  %744 = load i32, i32* %w1, align 4, !dbg !909
  %shl114 = shl i32 %744, 24, !dbg !909
  %or115 = or i32 %shr113, %shl114, !dbg !909
  store i32 %or115, i32* %w2, align 4, !dbg !909
  %745 = load i32, i32* %w2, align 4, !dbg !909
  %746 = load i32, i32* %w1, align 4, !dbg !909
  %747 = load i32, i32* %w2, align 4, !dbg !909
  %xor116 = xor i32 %746, %747, !dbg !909
  %shr117 = lshr i32 %xor116, 16, !dbg !909
  %748 = load i32, i32* %w1, align 4, !dbg !909
  %749 = load i32, i32* %w2, align 4, !dbg !909
  %xor118 = xor i32 %748, %749, !dbg !909
  %shl119 = shl i32 %xor118, 16, !dbg !909
  %or120 = or i32 %shr117, %shl119, !dbg !909
  %xor121 = xor i32 %745, %or120, !dbg !909
  store i32 %xor121, i32* %reg1, align 4, !dbg !909
  br label %do.end122, !dbg !909

do.end122:                                        ; preds = %do.body110
  br label %do.body123, !dbg !911

do.body123:                                       ; preds = %do.end122
  %750 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !912
  %u124 = bitcast %union.ARIA_u128* %750 to [4 x i32]*, !dbg !912
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %u124, i64 0, i64 2, !dbg !912
  %751 = load i32, i32* %arrayidx125, align 4, !dbg !912
  store i32 %751, i32* %w1, align 4, !dbg !912
  %752 = load i32, i32* %w1, align 4, !dbg !912
  %shr126 = lshr i32 %752, 8, !dbg !912
  %753 = load i32, i32* %w1, align 4, !dbg !912
  %shl127 = shl i32 %753, 24, !dbg !912
  %or128 = or i32 %shr126, %shl127, !dbg !912
  store i32 %or128, i32* %w2, align 4, !dbg !912
  %754 = load i32, i32* %w2, align 4, !dbg !912
  %755 = load i32, i32* %w1, align 4, !dbg !912
  %756 = load i32, i32* %w2, align 4, !dbg !912
  %xor129 = xor i32 %755, %756, !dbg !912
  %shr130 = lshr i32 %xor129, 16, !dbg !912
  %757 = load i32, i32* %w1, align 4, !dbg !912
  %758 = load i32, i32* %w2, align 4, !dbg !912
  %xor131 = xor i32 %757, %758, !dbg !912
  %shl132 = shl i32 %xor131, 16, !dbg !912
  %or133 = or i32 %shr130, %shl132, !dbg !912
  %xor134 = xor i32 %754, %or133, !dbg !912
  store i32 %xor134, i32* %reg2, align 4, !dbg !912
  br label %do.end135, !dbg !912

do.end135:                                        ; preds = %do.body123
  br label %do.body136, !dbg !914

do.body136:                                       ; preds = %do.end135
  %759 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !915
  %u137 = bitcast %union.ARIA_u128* %759 to [4 x i32]*, !dbg !915
  %arrayidx138 = getelementptr inbounds [4 x i32], [4 x i32]* %u137, i64 0, i64 3, !dbg !915
  %760 = load i32, i32* %arrayidx138, align 4, !dbg !915
  store i32 %760, i32* %w1, align 4, !dbg !915
  %761 = load i32, i32* %w1, align 4, !dbg !915
  %shr139 = lshr i32 %761, 8, !dbg !915
  %762 = load i32, i32* %w1, align 4, !dbg !915
  %shl140 = shl i32 %762, 24, !dbg !915
  %or141 = or i32 %shr139, %shl140, !dbg !915
  store i32 %or141, i32* %w2, align 4, !dbg !915
  %763 = load i32, i32* %w2, align 4, !dbg !915
  %764 = load i32, i32* %w1, align 4, !dbg !915
  %765 = load i32, i32* %w2, align 4, !dbg !915
  %xor142 = xor i32 %764, %765, !dbg !915
  %shr143 = lshr i32 %xor142, 16, !dbg !915
  %766 = load i32, i32* %w1, align 4, !dbg !915
  %767 = load i32, i32* %w2, align 4, !dbg !915
  %xor144 = xor i32 %766, %767, !dbg !915
  %shl145 = shl i32 %xor144, 16, !dbg !915
  %or146 = or i32 %shr143, %shl145, !dbg !915
  %xor147 = xor i32 %763, %or146, !dbg !915
  store i32 %xor147, i32* %reg3, align 4, !dbg !915
  br label %do.end148, !dbg !915

do.end148:                                        ; preds = %do.body136
  br label %do.body149, !dbg !917

do.body149:                                       ; preds = %do.end148
  %768 = load i32, i32* %reg2, align 4, !dbg !918
  %769 = load i32, i32* %reg1, align 4, !dbg !918
  %xor150 = xor i32 %769, %768, !dbg !918
  store i32 %xor150, i32* %reg1, align 4, !dbg !918
  %770 = load i32, i32* %reg3, align 4, !dbg !918
  %771 = load i32, i32* %reg2, align 4, !dbg !918
  %xor151 = xor i32 %771, %770, !dbg !918
  store i32 %xor151, i32* %reg2, align 4, !dbg !918
  %772 = load i32, i32* %reg1, align 4, !dbg !918
  %773 = load i32, i32* %reg0, align 4, !dbg !918
  %xor152 = xor i32 %773, %772, !dbg !918
  store i32 %xor152, i32* %reg0, align 4, !dbg !918
  %774 = load i32, i32* %reg1, align 4, !dbg !918
  %775 = load i32, i32* %reg3, align 4, !dbg !918
  %xor153 = xor i32 %775, %774, !dbg !918
  store i32 %xor153, i32* %reg3, align 4, !dbg !918
  %776 = load i32, i32* %reg0, align 4, !dbg !918
  %777 = load i32, i32* %reg2, align 4, !dbg !918
  %xor154 = xor i32 %777, %776, !dbg !918
  store i32 %xor154, i32* %reg2, align 4, !dbg !918
  %778 = load i32, i32* %reg2, align 4, !dbg !918
  %779 = load i32, i32* %reg1, align 4, !dbg !918
  %xor155 = xor i32 %779, %778, !dbg !918
  store i32 %xor155, i32* %reg1, align 4, !dbg !918
  br label %do.end156, !dbg !918

do.end156:                                        ; preds = %do.body149
  br label %do.body157, !dbg !920

do.body157:                                       ; preds = %do.end156
  %780 = load i32, i32* %reg1, align 4, !dbg !921
  %shl158 = shl i32 %780, 8, !dbg !921
  %and159 = and i32 %shl158, -16711936, !dbg !921
  %781 = load i32, i32* %reg1, align 4, !dbg !921
  %shr160 = lshr i32 %781, 8, !dbg !921
  %and161 = and i32 %shr160, 16711935, !dbg !921
  %xor162 = xor i32 %and159, %and161, !dbg !921
  store i32 %xor162, i32* %reg1, align 4, !dbg !921
  %782 = load i32, i32* %reg2, align 4, !dbg !921
  %shr163 = lshr i32 %782, 16, !dbg !921
  %783 = load i32, i32* %reg2, align 4, !dbg !921
  %shl164 = shl i32 %783, 16, !dbg !921
  %or165 = or i32 %shr163, %shl164, !dbg !921
  store i32 %or165, i32* %reg2, align 4, !dbg !921
  %784 = load i32, i32* %reg3, align 4, !dbg !921
  %shl166 = shl i32 %784, 24, !dbg !921
  %785 = load i32, i32* %reg3, align 4, !dbg !921
  %shr167 = lshr i32 %785, 24, !dbg !921
  %xor168 = xor i32 %shl166, %shr167, !dbg !921
  %786 = load i32, i32* %reg3, align 4, !dbg !921
  %and169 = and i32 %786, 65280, !dbg !921
  %shl170 = shl i32 %and169, 8, !dbg !921
  %xor171 = xor i32 %xor168, %shl170, !dbg !921
  %787 = load i32, i32* %reg3, align 4, !dbg !921
  %and172 = and i32 %787, 16711680, !dbg !921
  %shr173 = lshr i32 %and172, 8, !dbg !921
  %xor174 = xor i32 %xor171, %shr173, !dbg !921
  store i32 %xor174, i32* %reg3, align 4, !dbg !921
  br label %do.end175, !dbg !921

do.end175:                                        ; preds = %do.body157
  br label %do.body176, !dbg !923

do.body176:                                       ; preds = %do.end175
  %788 = load i32, i32* %reg2, align 4, !dbg !924
  %789 = load i32, i32* %reg1, align 4, !dbg !924
  %xor177 = xor i32 %789, %788, !dbg !924
  store i32 %xor177, i32* %reg1, align 4, !dbg !924
  %790 = load i32, i32* %reg3, align 4, !dbg !924
  %791 = load i32, i32* %reg2, align 4, !dbg !924
  %xor178 = xor i32 %791, %790, !dbg !924
  store i32 %xor178, i32* %reg2, align 4, !dbg !924
  %792 = load i32, i32* %reg1, align 4, !dbg !924
  %793 = load i32, i32* %reg0, align 4, !dbg !924
  %xor179 = xor i32 %793, %792, !dbg !924
  store i32 %xor179, i32* %reg0, align 4, !dbg !924
  %794 = load i32, i32* %reg1, align 4, !dbg !924
  %795 = load i32, i32* %reg3, align 4, !dbg !924
  %xor180 = xor i32 %795, %794, !dbg !924
  store i32 %xor180, i32* %reg3, align 4, !dbg !924
  %796 = load i32, i32* %reg0, align 4, !dbg !924
  %797 = load i32, i32* %reg2, align 4, !dbg !924
  %xor181 = xor i32 %797, %796, !dbg !924
  store i32 %xor181, i32* %reg2, align 4, !dbg !924
  %798 = load i32, i32* %reg2, align 4, !dbg !924
  %799 = load i32, i32* %reg1, align 4, !dbg !924
  %xor182 = xor i32 %799, %798, !dbg !924
  store i32 %xor182, i32* %reg1, align 4, !dbg !924
  br label %do.end183, !dbg !924

do.end183:                                        ; preds = %do.body176
  %800 = load i32, i32* %reg0, align 4, !dbg !926
  %801 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !927
  %u184 = bitcast %union.ARIA_u128* %801 to [4 x i32]*, !dbg !928
  %arrayidx185 = getelementptr inbounds [4 x i32], [4 x i32]* %u184, i64 0, i64 0, !dbg !927
  store i32 %800, i32* %arrayidx185, align 4, !dbg !929
  %802 = load i32, i32* %reg1, align 4, !dbg !930
  %803 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !931
  %u186 = bitcast %union.ARIA_u128* %803 to [4 x i32]*, !dbg !932
  %arrayidx187 = getelementptr inbounds [4 x i32], [4 x i32]* %u186, i64 0, i64 1, !dbg !931
  store i32 %802, i32* %arrayidx187, align 4, !dbg !933
  %804 = load i32, i32* %reg2, align 4, !dbg !934
  %805 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !935
  %u188 = bitcast %union.ARIA_u128* %805 to [4 x i32]*, !dbg !936
  %arrayidx189 = getelementptr inbounds [4 x i32], [4 x i32]* %u188, i64 0, i64 2, !dbg !935
  store i32 %804, i32* %arrayidx189, align 4, !dbg !937
  %806 = load i32, i32* %reg3, align 4, !dbg !938
  %807 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !939
  %u190 = bitcast %union.ARIA_u128* %807 to [4 x i32]*, !dbg !940
  %arrayidx191 = getelementptr inbounds [4 x i32], [4 x i32]* %u190, i64 0, i64 3, !dbg !939
  store i32 %806, i32* %arrayidx191, align 4, !dbg !941
  %808 = load i32, i32* %s0, align 4, !dbg !942
  %809 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !943
  %u192 = bitcast %union.ARIA_u128* %809 to [4 x i32]*, !dbg !944
  %arrayidx193 = getelementptr inbounds [4 x i32], [4 x i32]* %u192, i64 0, i64 0, !dbg !943
  store i32 %808, i32* %arrayidx193, align 4, !dbg !945
  %810 = load i32, i32* %s1, align 4, !dbg !946
  %811 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !947
  %u194 = bitcast %union.ARIA_u128* %811 to [4 x i32]*, !dbg !948
  %arrayidx195 = getelementptr inbounds [4 x i32], [4 x i32]* %u194, i64 0, i64 1, !dbg !947
  store i32 %810, i32* %arrayidx195, align 4, !dbg !949
  %812 = load i32, i32* %s2, align 4, !dbg !950
  %813 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !951
  %u196 = bitcast %union.ARIA_u128* %813 to [4 x i32]*, !dbg !952
  %arrayidx197 = getelementptr inbounds [4 x i32], [4 x i32]* %u196, i64 0, i64 2, !dbg !951
  store i32 %812, i32* %arrayidx197, align 4, !dbg !953
  %814 = load i32, i32* %s3, align 4, !dbg !954
  %815 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !955
  %u198 = bitcast %union.ARIA_u128* %815 to [4 x i32]*, !dbg !956
  %arrayidx199 = getelementptr inbounds [4 x i32], [4 x i32]* %u198, i64 0, i64 3, !dbg !955
  store i32 %814, i32* %arrayidx199, align 4, !dbg !957
  br label %for.inc, !dbg !958

for.inc:                                          ; preds = %do.end183
  %816 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !959
  %incdec.ptr200 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %816, i32 1, !dbg !959
  store %union.ARIA_u128* %incdec.ptr200, %union.ARIA_u128** %rk_head, align 8, !dbg !959
  %817 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !960
  %incdec.ptr201 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %817, i32 -1, !dbg !960
  store %union.ARIA_u128* %incdec.ptr201, %union.ARIA_u128** %rk_tail, align 8, !dbg !960
  br label %for.cond, !dbg !961, !llvm.loop !962

for.end:                                          ; preds = %for.cond
  br label %do.body202, !dbg !964

do.body202:                                       ; preds = %for.end
  %818 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !965
  %u203 = bitcast %union.ARIA_u128* %818 to [4 x i32]*, !dbg !965
  %arrayidx204 = getelementptr inbounds [4 x i32], [4 x i32]* %u203, i64 0, i64 0, !dbg !965
  %819 = load i32, i32* %arrayidx204, align 4, !dbg !965
  store i32 %819, i32* %w1, align 4, !dbg !965
  %820 = load i32, i32* %w1, align 4, !dbg !965
  %shr205 = lshr i32 %820, 8, !dbg !965
  %821 = load i32, i32* %w1, align 4, !dbg !965
  %shl206 = shl i32 %821, 24, !dbg !965
  %or207 = or i32 %shr205, %shl206, !dbg !965
  store i32 %or207, i32* %w2, align 4, !dbg !965
  %822 = load i32, i32* %w2, align 4, !dbg !965
  %823 = load i32, i32* %w1, align 4, !dbg !965
  %824 = load i32, i32* %w2, align 4, !dbg !965
  %xor208 = xor i32 %823, %824, !dbg !965
  %shr209 = lshr i32 %xor208, 16, !dbg !965
  %825 = load i32, i32* %w1, align 4, !dbg !965
  %826 = load i32, i32* %w2, align 4, !dbg !965
  %xor210 = xor i32 %825, %826, !dbg !965
  %shl211 = shl i32 %xor210, 16, !dbg !965
  %or212 = or i32 %shr209, %shl211, !dbg !965
  %xor213 = xor i32 %822, %or212, !dbg !965
  store i32 %xor213, i32* %reg0, align 4, !dbg !965
  br label %do.end214, !dbg !965

do.end214:                                        ; preds = %do.body202
  br label %do.body215, !dbg !967

do.body215:                                       ; preds = %do.end214
  %827 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !968
  %u216 = bitcast %union.ARIA_u128* %827 to [4 x i32]*, !dbg !968
  %arrayidx217 = getelementptr inbounds [4 x i32], [4 x i32]* %u216, i64 0, i64 1, !dbg !968
  %828 = load i32, i32* %arrayidx217, align 4, !dbg !968
  store i32 %828, i32* %w1, align 4, !dbg !968
  %829 = load i32, i32* %w1, align 4, !dbg !968
  %shr218 = lshr i32 %829, 8, !dbg !968
  %830 = load i32, i32* %w1, align 4, !dbg !968
  %shl219 = shl i32 %830, 24, !dbg !968
  %or220 = or i32 %shr218, %shl219, !dbg !968
  store i32 %or220, i32* %w2, align 4, !dbg !968
  %831 = load i32, i32* %w2, align 4, !dbg !968
  %832 = load i32, i32* %w1, align 4, !dbg !968
  %833 = load i32, i32* %w2, align 4, !dbg !968
  %xor221 = xor i32 %832, %833, !dbg !968
  %shr222 = lshr i32 %xor221, 16, !dbg !968
  %834 = load i32, i32* %w1, align 4, !dbg !968
  %835 = load i32, i32* %w2, align 4, !dbg !968
  %xor223 = xor i32 %834, %835, !dbg !968
  %shl224 = shl i32 %xor223, 16, !dbg !968
  %or225 = or i32 %shr222, %shl224, !dbg !968
  %xor226 = xor i32 %831, %or225, !dbg !968
  store i32 %xor226, i32* %reg1, align 4, !dbg !968
  br label %do.end227, !dbg !968

do.end227:                                        ; preds = %do.body215
  br label %do.body228, !dbg !970

do.body228:                                       ; preds = %do.end227
  %836 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !971
  %u229 = bitcast %union.ARIA_u128* %836 to [4 x i32]*, !dbg !971
  %arrayidx230 = getelementptr inbounds [4 x i32], [4 x i32]* %u229, i64 0, i64 2, !dbg !971
  %837 = load i32, i32* %arrayidx230, align 4, !dbg !971
  store i32 %837, i32* %w1, align 4, !dbg !971
  %838 = load i32, i32* %w1, align 4, !dbg !971
  %shr231 = lshr i32 %838, 8, !dbg !971
  %839 = load i32, i32* %w1, align 4, !dbg !971
  %shl232 = shl i32 %839, 24, !dbg !971
  %or233 = or i32 %shr231, %shl232, !dbg !971
  store i32 %or233, i32* %w2, align 4, !dbg !971
  %840 = load i32, i32* %w2, align 4, !dbg !971
  %841 = load i32, i32* %w1, align 4, !dbg !971
  %842 = load i32, i32* %w2, align 4, !dbg !971
  %xor234 = xor i32 %841, %842, !dbg !971
  %shr235 = lshr i32 %xor234, 16, !dbg !971
  %843 = load i32, i32* %w1, align 4, !dbg !971
  %844 = load i32, i32* %w2, align 4, !dbg !971
  %xor236 = xor i32 %843, %844, !dbg !971
  %shl237 = shl i32 %xor236, 16, !dbg !971
  %or238 = or i32 %shr235, %shl237, !dbg !971
  %xor239 = xor i32 %840, %or238, !dbg !971
  store i32 %xor239, i32* %reg2, align 4, !dbg !971
  br label %do.end240, !dbg !971

do.end240:                                        ; preds = %do.body228
  br label %do.body241, !dbg !973

do.body241:                                       ; preds = %do.end240
  %845 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_head, align 8, !dbg !974
  %u242 = bitcast %union.ARIA_u128* %845 to [4 x i32]*, !dbg !974
  %arrayidx243 = getelementptr inbounds [4 x i32], [4 x i32]* %u242, i64 0, i64 3, !dbg !974
  %846 = load i32, i32* %arrayidx243, align 4, !dbg !974
  store i32 %846, i32* %w1, align 4, !dbg !974
  %847 = load i32, i32* %w1, align 4, !dbg !974
  %shr244 = lshr i32 %847, 8, !dbg !974
  %848 = load i32, i32* %w1, align 4, !dbg !974
  %shl245 = shl i32 %848, 24, !dbg !974
  %or246 = or i32 %shr244, %shl245, !dbg !974
  store i32 %or246, i32* %w2, align 4, !dbg !974
  %849 = load i32, i32* %w2, align 4, !dbg !974
  %850 = load i32, i32* %w1, align 4, !dbg !974
  %851 = load i32, i32* %w2, align 4, !dbg !974
  %xor247 = xor i32 %850, %851, !dbg !974
  %shr248 = lshr i32 %xor247, 16, !dbg !974
  %852 = load i32, i32* %w1, align 4, !dbg !974
  %853 = load i32, i32* %w2, align 4, !dbg !974
  %xor249 = xor i32 %852, %853, !dbg !974
  %shl250 = shl i32 %xor249, 16, !dbg !974
  %or251 = or i32 %shr248, %shl250, !dbg !974
  %xor252 = xor i32 %849, %or251, !dbg !974
  store i32 %xor252, i32* %reg3, align 4, !dbg !974
  br label %do.end253, !dbg !974

do.end253:                                        ; preds = %do.body241
  br label %do.body254, !dbg !976

do.body254:                                       ; preds = %do.end253
  %854 = load i32, i32* %reg2, align 4, !dbg !977
  %855 = load i32, i32* %reg1, align 4, !dbg !977
  %xor255 = xor i32 %855, %854, !dbg !977
  store i32 %xor255, i32* %reg1, align 4, !dbg !977
  %856 = load i32, i32* %reg3, align 4, !dbg !977
  %857 = load i32, i32* %reg2, align 4, !dbg !977
  %xor256 = xor i32 %857, %856, !dbg !977
  store i32 %xor256, i32* %reg2, align 4, !dbg !977
  %858 = load i32, i32* %reg1, align 4, !dbg !977
  %859 = load i32, i32* %reg0, align 4, !dbg !977
  %xor257 = xor i32 %859, %858, !dbg !977
  store i32 %xor257, i32* %reg0, align 4, !dbg !977
  %860 = load i32, i32* %reg1, align 4, !dbg !977
  %861 = load i32, i32* %reg3, align 4, !dbg !977
  %xor258 = xor i32 %861, %860, !dbg !977
  store i32 %xor258, i32* %reg3, align 4, !dbg !977
  %862 = load i32, i32* %reg0, align 4, !dbg !977
  %863 = load i32, i32* %reg2, align 4, !dbg !977
  %xor259 = xor i32 %863, %862, !dbg !977
  store i32 %xor259, i32* %reg2, align 4, !dbg !977
  %864 = load i32, i32* %reg2, align 4, !dbg !977
  %865 = load i32, i32* %reg1, align 4, !dbg !977
  %xor260 = xor i32 %865, %864, !dbg !977
  store i32 %xor260, i32* %reg1, align 4, !dbg !977
  br label %do.end261, !dbg !977

do.end261:                                        ; preds = %do.body254
  br label %do.body262, !dbg !979

do.body262:                                       ; preds = %do.end261
  %866 = load i32, i32* %reg1, align 4, !dbg !980
  %shl263 = shl i32 %866, 8, !dbg !980
  %and264 = and i32 %shl263, -16711936, !dbg !980
  %867 = load i32, i32* %reg1, align 4, !dbg !980
  %shr265 = lshr i32 %867, 8, !dbg !980
  %and266 = and i32 %shr265, 16711935, !dbg !980
  %xor267 = xor i32 %and264, %and266, !dbg !980
  store i32 %xor267, i32* %reg1, align 4, !dbg !980
  %868 = load i32, i32* %reg2, align 4, !dbg !980
  %shr268 = lshr i32 %868, 16, !dbg !980
  %869 = load i32, i32* %reg2, align 4, !dbg !980
  %shl269 = shl i32 %869, 16, !dbg !980
  %or270 = or i32 %shr268, %shl269, !dbg !980
  store i32 %or270, i32* %reg2, align 4, !dbg !980
  %870 = load i32, i32* %reg3, align 4, !dbg !980
  %shl271 = shl i32 %870, 24, !dbg !980
  %871 = load i32, i32* %reg3, align 4, !dbg !980
  %shr272 = lshr i32 %871, 24, !dbg !980
  %xor273 = xor i32 %shl271, %shr272, !dbg !980
  %872 = load i32, i32* %reg3, align 4, !dbg !980
  %and274 = and i32 %872, 65280, !dbg !980
  %shl275 = shl i32 %and274, 8, !dbg !980
  %xor276 = xor i32 %xor273, %shl275, !dbg !980
  %873 = load i32, i32* %reg3, align 4, !dbg !980
  %and277 = and i32 %873, 16711680, !dbg !980
  %shr278 = lshr i32 %and277, 8, !dbg !980
  %xor279 = xor i32 %xor276, %shr278, !dbg !980
  store i32 %xor279, i32* %reg3, align 4, !dbg !980
  br label %do.end280, !dbg !980

do.end280:                                        ; preds = %do.body262
  br label %do.body281, !dbg !982

do.body281:                                       ; preds = %do.end280
  %874 = load i32, i32* %reg2, align 4, !dbg !983
  %875 = load i32, i32* %reg1, align 4, !dbg !983
  %xor282 = xor i32 %875, %874, !dbg !983
  store i32 %xor282, i32* %reg1, align 4, !dbg !983
  %876 = load i32, i32* %reg3, align 4, !dbg !983
  %877 = load i32, i32* %reg2, align 4, !dbg !983
  %xor283 = xor i32 %877, %876, !dbg !983
  store i32 %xor283, i32* %reg2, align 4, !dbg !983
  %878 = load i32, i32* %reg1, align 4, !dbg !983
  %879 = load i32, i32* %reg0, align 4, !dbg !983
  %xor284 = xor i32 %879, %878, !dbg !983
  store i32 %xor284, i32* %reg0, align 4, !dbg !983
  %880 = load i32, i32* %reg1, align 4, !dbg !983
  %881 = load i32, i32* %reg3, align 4, !dbg !983
  %xor285 = xor i32 %881, %880, !dbg !983
  store i32 %xor285, i32* %reg3, align 4, !dbg !983
  %882 = load i32, i32* %reg0, align 4, !dbg !983
  %883 = load i32, i32* %reg2, align 4, !dbg !983
  %xor286 = xor i32 %883, %882, !dbg !983
  store i32 %xor286, i32* %reg2, align 4, !dbg !983
  %884 = load i32, i32* %reg2, align 4, !dbg !983
  %885 = load i32, i32* %reg1, align 4, !dbg !983
  %xor287 = xor i32 %885, %884, !dbg !983
  store i32 %xor287, i32* %reg1, align 4, !dbg !983
  br label %do.end288, !dbg !983

do.end288:                                        ; preds = %do.body281
  %886 = load i32, i32* %reg0, align 4, !dbg !985
  %887 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !986
  %u289 = bitcast %union.ARIA_u128* %887 to [4 x i32]*, !dbg !987
  %arrayidx290 = getelementptr inbounds [4 x i32], [4 x i32]* %u289, i64 0, i64 0, !dbg !986
  store i32 %886, i32* %arrayidx290, align 4, !dbg !988
  %888 = load i32, i32* %reg1, align 4, !dbg !989
  %889 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !990
  %u291 = bitcast %union.ARIA_u128* %889 to [4 x i32]*, !dbg !991
  %arrayidx292 = getelementptr inbounds [4 x i32], [4 x i32]* %u291, i64 0, i64 1, !dbg !990
  store i32 %888, i32* %arrayidx292, align 4, !dbg !992
  %890 = load i32, i32* %reg2, align 4, !dbg !993
  %891 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !994
  %u293 = bitcast %union.ARIA_u128* %891 to [4 x i32]*, !dbg !995
  %arrayidx294 = getelementptr inbounds [4 x i32], [4 x i32]* %u293, i64 0, i64 2, !dbg !994
  store i32 %890, i32* %arrayidx294, align 4, !dbg !996
  %892 = load i32, i32* %reg3, align 4, !dbg !997
  %893 = load %union.ARIA_u128*, %union.ARIA_u128** %rk_tail, align 8, !dbg !998
  %u295 = bitcast %union.ARIA_u128* %893 to [4 x i32]*, !dbg !999
  %arrayidx296 = getelementptr inbounds [4 x i32], [4 x i32]* %u295, i64 0, i64 3, !dbg !998
  store i32 %892, i32* %arrayidx296, align 4, !dbg !1000
  store i32 0, i32* %retval, align 4, !dbg !1001
  br label %return, !dbg !1001

return:                                           ; preds = %do.end288, %if.then
  %894 = load i32, i32* %retval, align 4, !dbg !1002
  ret i32 %894, !dbg !1002
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #3 !dbg !1003 {
entry:
  %in.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %in.addr.i, metadata !71, metadata !DIExpression()), !dbg !1006
  %out.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %out.addr.i, metadata !73, metadata !DIExpression()), !dbg !1009
  %key.addr.i23 = alloca %struct.aria_key_st*, align 8
  call void @llvm.dbg.declare(metadata %struct.aria_key_st** %key.addr.i23, metadata !75, metadata !DIExpression()), !dbg !1010
  %reg0.i24 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg0.i24, metadata !77, metadata !DIExpression()), !dbg !1011
  %reg1.i25 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg1.i25, metadata !79, metadata !DIExpression()), !dbg !1012
  %reg2.i26 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg2.i26, metadata !81, metadata !DIExpression()), !dbg !1013
  %reg3.i27 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg3.i27, metadata !83, metadata !DIExpression()), !dbg !1014
  %Nr.i28 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %Nr.i28, metadata !85, metadata !DIExpression()), !dbg !1015
  %rk.i29 = alloca %union.ARIA_u128*, align 8
  call void @llvm.dbg.declare(metadata %union.ARIA_u128** %rk.i29, metadata !88, metadata !DIExpression()), !dbg !1016
  %retval.i = alloca i32, align 4
  %userKey.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %userKey.addr.i, metadata !223, metadata !DIExpression()), !dbg !1017
  %bits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr.i, metadata !225, metadata !DIExpression()), !dbg !1019
  %key.addr.i = alloca %struct.aria_key_st*, align 8
  call void @llvm.dbg.declare(metadata %struct.aria_key_st** %key.addr.i, metadata !227, metadata !DIExpression()), !dbg !1020
  %reg0.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg0.i, metadata !229, metadata !DIExpression()), !dbg !1021
  %reg1.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg1.i, metadata !231, metadata !DIExpression()), !dbg !1022
  %reg2.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg2.i, metadata !233, metadata !DIExpression()), !dbg !1023
  %reg3.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %reg3.i, metadata !235, metadata !DIExpression()), !dbg !1024
  %w0.i = alloca [4 x i32], align 16
  call void @llvm.dbg.declare(metadata [4 x i32]* %w0.i, metadata !237, metadata !DIExpression()), !dbg !1025
  %w1.i = alloca [4 x i32], align 16
  call void @llvm.dbg.declare(metadata [4 x i32]* %w1.i, metadata !240, metadata !DIExpression()), !dbg !1026
  %w2.i = alloca [4 x i32], align 16
  call void @llvm.dbg.declare(metadata [4 x i32]* %w2.i, metadata !242, metadata !DIExpression()), !dbg !1027
  %w3.i = alloca [4 x i32], align 16
  call void @llvm.dbg.declare(metadata [4 x i32]* %w3.i, metadata !244, metadata !DIExpression()), !dbg !1028
  %ck.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %ck.i, metadata !246, metadata !DIExpression()), !dbg !1029
  %rk.i = alloca %union.ARIA_u128*, align 8
  call void @llvm.dbg.declare(metadata %union.ARIA_u128** %rk.i, metadata !249, metadata !DIExpression()), !dbg !1030
  %Nr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %Nr.i, metadata !252, metadata !DIExpression()), !dbg !1031
  %retval = alloca i32, align 4
  %enc_key = alloca %struct.aria_key_st, align 4
  %enc_out = alloca [256 x i8], align 16
  %charset = alloca [94 x i8], align 16
  %length = alloca i64, align 8
  %size = alloca i32, align 4
  %round = alloca i64, align 8
  %i = alloca i32, align 4
  %buff = alloca i8*, align 8
  %input = alloca i8*, align 8
  %n = alloca i64, align 8
  %key = alloca i32, align 4
  %in = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.aria_key_st* %enc_key, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata [256 x i8]* %enc_out, metadata !1034, metadata !DIExpression()), !dbg !1036
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key, i64 0, i64 0), i8** %userKey.addr.i, align 8
  store i32 256, i32* %bits.addr.i, align 4
  store %struct.aria_key_st* %enc_key, %struct.aria_key_st** %key.addr.i, align 8
  %0 = load i32, i32* %bits.addr.i, align 4, !dbg !1037
  %add.i = add nsw i32 %0, 256, !dbg !1038
  %div.i = sdiv i32 %add.i, 32, !dbg !1039
  store i32 %div.i, i32* %Nr.i, align 4, !dbg !1031
  %1 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1040
  %cmp.i = icmp eq i8* %1, null, !dbg !1041
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i, !dbg !1042

lor.lhs.false.i:                                  ; preds = %entry
  %2 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr.i, align 8, !dbg !1043
  %cmp1.i = icmp eq %struct.aria_key_st* %2, null, !dbg !1044
  br i1 %cmp1.i, label %if.then.i, label %if.end.i, !dbg !1045

if.then.i:                                        ; preds = %lor.lhs.false.i, %entry
  store i32 -1, i32* %retval.i, align 4, !dbg !1046
  br label %aria_set_encrypt_key.exit, !dbg !1046

if.end.i:                                         ; preds = %lor.lhs.false.i
  %3 = load i32, i32* %bits.addr.i, align 4, !dbg !1047
  %cmp2.i = icmp ne i32 %3, 128, !dbg !1048
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end7.i, !dbg !1049

land.lhs.true.i:                                  ; preds = %if.end.i
  %4 = load i32, i32* %bits.addr.i, align 4, !dbg !1050
  %cmp3.i = icmp ne i32 %4, 192, !dbg !1051
  br i1 %cmp3.i, label %land.lhs.true4.i, label %if.end7.i, !dbg !1052

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %5 = load i32, i32* %bits.addr.i, align 4, !dbg !1053
  %cmp5.i = icmp ne i32 %5, 256, !dbg !1054
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i, !dbg !1055

if.then6.i:                                       ; preds = %land.lhs.true4.i
  store i32 -2, i32* %retval.i, align 4, !dbg !1056
  br label %aria_set_encrypt_key.exit, !dbg !1056

if.end7.i:                                        ; preds = %land.lhs.true4.i, %land.lhs.true.i, %if.end.i
  %6 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr.i, align 8, !dbg !1057
  %rd_key.i = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %6, i32 0, i32 0, !dbg !1058
  %arraydecay.i = getelementptr inbounds [17 x %union.ARIA_u128], [17 x %union.ARIA_u128]* %rd_key.i, i64 0, i64 0, !dbg !1057
  store %union.ARIA_u128* %arraydecay.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1059
  %7 = load i32, i32* %Nr.i, align 4, !dbg !1060
  %8 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr.i, align 8, !dbg !1061
  %rounds.i = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %8, i32 0, i32 1, !dbg !1062
  store i32 %7, i32* %rounds.i, align 4, !dbg !1063
  %9 = load i32, i32* %bits.addr.i, align 4, !dbg !1064
  %sub.i = sub nsw i32 %9, 128, !dbg !1065
  %div8.i = sdiv i32 %sub.i, 64, !dbg !1066
  %idxprom.i = sext i32 %div8.i to i64, !dbg !1067
  %arrayidx.i = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @Key_RC, i64 0, i64 %idxprom.i, !dbg !1067
  %arrayidx9.i = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx.i, i64 0, i64 0, !dbg !1067
  store i32* %arrayidx9.i, i32** %ck.i, align 8, !dbg !1068
  %10 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1069
  %11 = load i8, i8* %10, align 1, !dbg !1069
  %conv.i = zext i8 %11 to i32, !dbg !1069
  %shl.i = shl i32 %conv.i, 24, !dbg !1069
  %12 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1069
  %arrayidx11.i = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1069
  %13 = load i8, i8* %arrayidx11.i, align 1, !dbg !1069
  %conv12.i = zext i8 %13 to i32, !dbg !1069
  %shl13.i = shl i32 %conv12.i, 16, !dbg !1069
  %xor.i = xor i32 %shl.i, %shl13.i, !dbg !1069
  %14 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1069
  %arrayidx14.i = getelementptr inbounds i8, i8* %14, i64 2, !dbg !1069
  %15 = load i8, i8* %arrayidx14.i, align 1, !dbg !1069
  %conv15.i = zext i8 %15 to i32, !dbg !1069
  %shl16.i = shl i32 %conv15.i, 8, !dbg !1069
  %xor17.i = xor i32 %xor.i, %shl16.i, !dbg !1069
  %16 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1069
  %arrayidx18.i = getelementptr inbounds i8, i8* %16, i64 3, !dbg !1069
  %17 = load i8, i8* %arrayidx18.i, align 1, !dbg !1069
  %conv19.i = zext i8 %17 to i32, !dbg !1069
  %xor20.i = xor i32 %xor17.i, %conv19.i, !dbg !1069
  %arrayidx21.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1070
  store i32 %xor20.i, i32* %arrayidx21.i, align 16, !dbg !1071
  %18 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1072
  %arrayidx22.i = getelementptr inbounds i8, i8* %18, i64 4, !dbg !1072
  %19 = load i8, i8* %arrayidx22.i, align 1, !dbg !1072
  %conv23.i = zext i8 %19 to i32, !dbg !1072
  %shl24.i = shl i32 %conv23.i, 24, !dbg !1072
  %20 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1072
  %arrayidx25.i = getelementptr inbounds i8, i8* %20, i64 5, !dbg !1072
  %21 = load i8, i8* %arrayidx25.i, align 1, !dbg !1072
  %conv26.i = zext i8 %21 to i32, !dbg !1072
  %shl27.i = shl i32 %conv26.i, 16, !dbg !1072
  %xor28.i = xor i32 %shl24.i, %shl27.i, !dbg !1072
  %22 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1072
  %arrayidx29.i = getelementptr inbounds i8, i8* %22, i64 6, !dbg !1072
  %23 = load i8, i8* %arrayidx29.i, align 1, !dbg !1072
  %conv30.i = zext i8 %23 to i32, !dbg !1072
  %shl31.i = shl i32 %conv30.i, 8, !dbg !1072
  %xor32.i = xor i32 %xor28.i, %shl31.i, !dbg !1072
  %24 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1072
  %arrayidx33.i = getelementptr inbounds i8, i8* %24, i64 7, !dbg !1072
  %25 = load i8, i8* %arrayidx33.i, align 1, !dbg !1072
  %conv34.i = zext i8 %25 to i32, !dbg !1072
  %xor35.i = xor i32 %xor32.i, %conv34.i, !dbg !1072
  %arrayidx36.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1073
  store i32 %xor35.i, i32* %arrayidx36.i, align 4, !dbg !1074
  %26 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1075
  %arrayidx37.i = getelementptr inbounds i8, i8* %26, i64 8, !dbg !1075
  %27 = load i8, i8* %arrayidx37.i, align 1, !dbg !1075
  %conv38.i = zext i8 %27 to i32, !dbg !1075
  %shl39.i = shl i32 %conv38.i, 24, !dbg !1075
  %28 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1075
  %arrayidx40.i = getelementptr inbounds i8, i8* %28, i64 9, !dbg !1075
  %29 = load i8, i8* %arrayidx40.i, align 1, !dbg !1075
  %conv41.i = zext i8 %29 to i32, !dbg !1075
  %shl42.i = shl i32 %conv41.i, 16, !dbg !1075
  %xor43.i = xor i32 %shl39.i, %shl42.i, !dbg !1075
  %30 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1075
  %arrayidx44.i = getelementptr inbounds i8, i8* %30, i64 10, !dbg !1075
  %31 = load i8, i8* %arrayidx44.i, align 1, !dbg !1075
  %conv45.i = zext i8 %31 to i32, !dbg !1075
  %shl46.i = shl i32 %conv45.i, 8, !dbg !1075
  %xor47.i = xor i32 %xor43.i, %shl46.i, !dbg !1075
  %32 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1075
  %arrayidx48.i = getelementptr inbounds i8, i8* %32, i64 11, !dbg !1075
  %33 = load i8, i8* %arrayidx48.i, align 1, !dbg !1075
  %conv49.i = zext i8 %33 to i32, !dbg !1075
  %xor50.i = xor i32 %xor47.i, %conv49.i, !dbg !1075
  %arrayidx51.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1076
  store i32 %xor50.i, i32* %arrayidx51.i, align 8, !dbg !1077
  %34 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1078
  %arrayidx52.i = getelementptr inbounds i8, i8* %34, i64 12, !dbg !1078
  %35 = load i8, i8* %arrayidx52.i, align 1, !dbg !1078
  %conv53.i = zext i8 %35 to i32, !dbg !1078
  %shl54.i = shl i32 %conv53.i, 24, !dbg !1078
  %36 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1078
  %arrayidx55.i = getelementptr inbounds i8, i8* %36, i64 13, !dbg !1078
  %37 = load i8, i8* %arrayidx55.i, align 1, !dbg !1078
  %conv56.i = zext i8 %37 to i32, !dbg !1078
  %shl57.i = shl i32 %conv56.i, 16, !dbg !1078
  %xor58.i = xor i32 %shl54.i, %shl57.i, !dbg !1078
  %38 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1078
  %arrayidx59.i = getelementptr inbounds i8, i8* %38, i64 14, !dbg !1078
  %39 = load i8, i8* %arrayidx59.i, align 1, !dbg !1078
  %conv60.i = zext i8 %39 to i32, !dbg !1078
  %shl61.i = shl i32 %conv60.i, 8, !dbg !1078
  %xor62.i = xor i32 %xor58.i, %shl61.i, !dbg !1078
  %40 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1078
  %arrayidx63.i = getelementptr inbounds i8, i8* %40, i64 15, !dbg !1078
  %41 = load i8, i8* %arrayidx63.i, align 1, !dbg !1078
  %conv64.i = zext i8 %41 to i32, !dbg !1078
  %xor65.i = xor i32 %xor62.i, %conv64.i, !dbg !1078
  %arrayidx66.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1079
  store i32 %xor65.i, i32* %arrayidx66.i, align 4, !dbg !1080
  %arrayidx67.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1081
  %42 = load i32, i32* %arrayidx67.i, align 16, !dbg !1081
  %43 = load i32*, i32** %ck.i, align 8, !dbg !1082
  %44 = load i32, i32* %43, align 4, !dbg !1082
  %xor69.i = xor i32 %42, %44, !dbg !1083
  store i32 %xor69.i, i32* %reg0.i, align 4, !dbg !1084
  %arrayidx70.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1085
  %45 = load i32, i32* %arrayidx70.i, align 4, !dbg !1085
  %46 = load i32*, i32** %ck.i, align 8, !dbg !1086
  %arrayidx71.i = getelementptr inbounds i32, i32* %46, i64 1, !dbg !1086
  %47 = load i32, i32* %arrayidx71.i, align 4, !dbg !1086
  %xor72.i = xor i32 %45, %47, !dbg !1087
  store i32 %xor72.i, i32* %reg1.i, align 4, !dbg !1088
  %arrayidx73.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1089
  %48 = load i32, i32* %arrayidx73.i, align 8, !dbg !1089
  %49 = load i32*, i32** %ck.i, align 8, !dbg !1090
  %arrayidx74.i = getelementptr inbounds i32, i32* %49, i64 2, !dbg !1090
  %50 = load i32, i32* %arrayidx74.i, align 4, !dbg !1090
  %xor75.i = xor i32 %48, %50, !dbg !1091
  store i32 %xor75.i, i32* %reg2.i, align 4, !dbg !1092
  %arrayidx76.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1093
  %51 = load i32, i32* %arrayidx76.i, align 4, !dbg !1093
  %52 = load i32*, i32** %ck.i, align 8, !dbg !1094
  %arrayidx77.i = getelementptr inbounds i32, i32* %52, i64 3, !dbg !1094
  %53 = load i32, i32* %arrayidx77.i, align 4, !dbg !1094
  %xor78.i = xor i32 %51, %53, !dbg !1095
  store i32 %xor78.i, i32* %reg3.i, align 4, !dbg !1096
  %54 = load i32, i32* %reg0.i, align 4, !dbg !1097
  %shr.i = lshr i32 %54, 24, !dbg !1097
  %conv80.i = trunc i32 %shr.i to i8, !dbg !1097
  %idxprom81.i = zext i8 %conv80.i to i64, !dbg !1097
  %arrayidx82.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom81.i, !dbg !1097
  %55 = load i32, i32* %arrayidx82.i, align 4, !dbg !1097
  %56 = load i32, i32* %reg0.i, align 4, !dbg !1097
  %shr83.i = lshr i32 %56, 16, !dbg !1097
  %conv84.i = trunc i32 %shr83.i to i8, !dbg !1097
  %idxprom85.i = zext i8 %conv84.i to i64, !dbg !1097
  %arrayidx86.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom85.i, !dbg !1097
  %57 = load i32, i32* %arrayidx86.i, align 4, !dbg !1097
  %xor87.i = xor i32 %55, %57, !dbg !1097
  %58 = load i32, i32* %reg0.i, align 4, !dbg !1097
  %shr88.i = lshr i32 %58, 8, !dbg !1097
  %conv89.i = trunc i32 %shr88.i to i8, !dbg !1097
  %idxprom90.i = zext i8 %conv89.i to i64, !dbg !1097
  %arrayidx91.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom90.i, !dbg !1097
  %59 = load i32, i32* %arrayidx91.i, align 4, !dbg !1097
  %xor92.i = xor i32 %xor87.i, %59, !dbg !1097
  %60 = load i32, i32* %reg0.i, align 4, !dbg !1097
  %conv94.i = trunc i32 %60 to i8, !dbg !1097
  %idxprom95.i = zext i8 %conv94.i to i64, !dbg !1097
  %arrayidx96.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom95.i, !dbg !1097
  %61 = load i32, i32* %arrayidx96.i, align 4, !dbg !1097
  %xor97.i = xor i32 %xor92.i, %61, !dbg !1097
  store i32 %xor97.i, i32* %reg0.i, align 4, !dbg !1097
  %62 = load i32, i32* %reg1.i, align 4, !dbg !1097
  %shr98.i = lshr i32 %62, 24, !dbg !1097
  %conv99.i = trunc i32 %shr98.i to i8, !dbg !1097
  %idxprom100.i = zext i8 %conv99.i to i64, !dbg !1097
  %arrayidx101.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom100.i, !dbg !1097
  %63 = load i32, i32* %arrayidx101.i, align 4, !dbg !1097
  %64 = load i32, i32* %reg1.i, align 4, !dbg !1097
  %shr102.i = lshr i32 %64, 16, !dbg !1097
  %conv103.i = trunc i32 %shr102.i to i8, !dbg !1097
  %idxprom104.i = zext i8 %conv103.i to i64, !dbg !1097
  %arrayidx105.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom104.i, !dbg !1097
  %65 = load i32, i32* %arrayidx105.i, align 4, !dbg !1097
  %xor106.i = xor i32 %63, %65, !dbg !1097
  %66 = load i32, i32* %reg1.i, align 4, !dbg !1097
  %shr107.i = lshr i32 %66, 8, !dbg !1097
  %conv108.i = trunc i32 %shr107.i to i8, !dbg !1097
  %idxprom109.i = zext i8 %conv108.i to i64, !dbg !1097
  %arrayidx110.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom109.i, !dbg !1097
  %67 = load i32, i32* %arrayidx110.i, align 4, !dbg !1097
  %xor111.i = xor i32 %xor106.i, %67, !dbg !1097
  %68 = load i32, i32* %reg1.i, align 4, !dbg !1097
  %conv113.i = trunc i32 %68 to i8, !dbg !1097
  %idxprom114.i = zext i8 %conv113.i to i64, !dbg !1097
  %arrayidx115.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom114.i, !dbg !1097
  %69 = load i32, i32* %arrayidx115.i, align 4, !dbg !1097
  %xor116.i = xor i32 %xor111.i, %69, !dbg !1097
  store i32 %xor116.i, i32* %reg1.i, align 4, !dbg !1097
  %70 = load i32, i32* %reg2.i, align 4, !dbg !1097
  %shr117.i = lshr i32 %70, 24, !dbg !1097
  %conv118.i = trunc i32 %shr117.i to i8, !dbg !1097
  %idxprom119.i = zext i8 %conv118.i to i64, !dbg !1097
  %arrayidx120.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom119.i, !dbg !1097
  %71 = load i32, i32* %arrayidx120.i, align 4, !dbg !1097
  %72 = load i32, i32* %reg2.i, align 4, !dbg !1097
  %shr121.i = lshr i32 %72, 16, !dbg !1097
  %conv122.i = trunc i32 %shr121.i to i8, !dbg !1097
  %idxprom123.i = zext i8 %conv122.i to i64, !dbg !1097
  %arrayidx124.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom123.i, !dbg !1097
  %73 = load i32, i32* %arrayidx124.i, align 4, !dbg !1097
  %xor125.i = xor i32 %71, %73, !dbg !1097
  %74 = load i32, i32* %reg2.i, align 4, !dbg !1097
  %shr126.i = lshr i32 %74, 8, !dbg !1097
  %conv127.i = trunc i32 %shr126.i to i8, !dbg !1097
  %idxprom128.i = zext i8 %conv127.i to i64, !dbg !1097
  %arrayidx129.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom128.i, !dbg !1097
  %75 = load i32, i32* %arrayidx129.i, align 4, !dbg !1097
  %xor130.i = xor i32 %xor125.i, %75, !dbg !1097
  %76 = load i32, i32* %reg2.i, align 4, !dbg !1097
  %conv132.i = trunc i32 %76 to i8, !dbg !1097
  %idxprom133.i = zext i8 %conv132.i to i64, !dbg !1097
  %arrayidx134.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom133.i, !dbg !1097
  %77 = load i32, i32* %arrayidx134.i, align 4, !dbg !1097
  %xor135.i = xor i32 %xor130.i, %77, !dbg !1097
  store i32 %xor135.i, i32* %reg2.i, align 4, !dbg !1097
  %78 = load i32, i32* %reg3.i, align 4, !dbg !1097
  %shr136.i = lshr i32 %78, 24, !dbg !1097
  %conv137.i = trunc i32 %shr136.i to i8, !dbg !1097
  %idxprom138.i = zext i8 %conv137.i to i64, !dbg !1097
  %arrayidx139.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom138.i, !dbg !1097
  %79 = load i32, i32* %arrayidx139.i, align 4, !dbg !1097
  %80 = load i32, i32* %reg3.i, align 4, !dbg !1097
  %shr140.i = lshr i32 %80, 16, !dbg !1097
  %conv141.i = trunc i32 %shr140.i to i8, !dbg !1097
  %idxprom142.i = zext i8 %conv141.i to i64, !dbg !1097
  %arrayidx143.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom142.i, !dbg !1097
  %81 = load i32, i32* %arrayidx143.i, align 4, !dbg !1097
  %xor144.i = xor i32 %79, %81, !dbg !1097
  %82 = load i32, i32* %reg3.i, align 4, !dbg !1097
  %shr145.i = lshr i32 %82, 8, !dbg !1097
  %conv146.i = trunc i32 %shr145.i to i8, !dbg !1097
  %idxprom147.i = zext i8 %conv146.i to i64, !dbg !1097
  %arrayidx148.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom147.i, !dbg !1097
  %83 = load i32, i32* %arrayidx148.i, align 4, !dbg !1097
  %xor149.i = xor i32 %xor144.i, %83, !dbg !1097
  %84 = load i32, i32* %reg3.i, align 4, !dbg !1097
  %conv151.i = trunc i32 %84 to i8, !dbg !1097
  %idxprom152.i = zext i8 %conv151.i to i64, !dbg !1097
  %arrayidx153.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom152.i, !dbg !1097
  %85 = load i32, i32* %arrayidx153.i, align 4, !dbg !1097
  %xor154.i = xor i32 %xor149.i, %85, !dbg !1097
  store i32 %xor154.i, i32* %reg3.i, align 4, !dbg !1097
  %86 = load i32, i32* %reg2.i, align 4, !dbg !1098
  %87 = load i32, i32* %reg1.i, align 4, !dbg !1098
  %xor156.i = xor i32 %87, %86, !dbg !1098
  store i32 %xor156.i, i32* %reg1.i, align 4, !dbg !1098
  %88 = load i32, i32* %reg3.i, align 4, !dbg !1098
  %89 = load i32, i32* %reg2.i, align 4, !dbg !1098
  %xor157.i = xor i32 %89, %88, !dbg !1098
  store i32 %xor157.i, i32* %reg2.i, align 4, !dbg !1098
  %90 = load i32, i32* %reg1.i, align 4, !dbg !1098
  %91 = load i32, i32* %reg0.i, align 4, !dbg !1098
  %xor158.i = xor i32 %91, %90, !dbg !1098
  store i32 %xor158.i, i32* %reg0.i, align 4, !dbg !1098
  %92 = load i32, i32* %reg1.i, align 4, !dbg !1098
  %93 = load i32, i32* %reg3.i, align 4, !dbg !1098
  %xor159.i = xor i32 %93, %92, !dbg !1098
  store i32 %xor159.i, i32* %reg3.i, align 4, !dbg !1098
  %94 = load i32, i32* %reg0.i, align 4, !dbg !1098
  %95 = load i32, i32* %reg2.i, align 4, !dbg !1098
  %xor160.i = xor i32 %95, %94, !dbg !1098
  store i32 %xor160.i, i32* %reg2.i, align 4, !dbg !1098
  %96 = load i32, i32* %reg2.i, align 4, !dbg !1098
  %97 = load i32, i32* %reg1.i, align 4, !dbg !1098
  %xor161.i = xor i32 %97, %96, !dbg !1098
  store i32 %xor161.i, i32* %reg1.i, align 4, !dbg !1098
  %98 = load i32, i32* %reg1.i, align 4, !dbg !1099
  %shl164.i = shl i32 %98, 8, !dbg !1099
  %and.i = and i32 %shl164.i, -16711936, !dbg !1099
  %99 = load i32, i32* %reg1.i, align 4, !dbg !1099
  %shr165.i = lshr i32 %99, 8, !dbg !1099
  %and166.i = and i32 %shr165.i, 16711935, !dbg !1099
  %xor167.i = xor i32 %and.i, %and166.i, !dbg !1099
  store i32 %xor167.i, i32* %reg1.i, align 4, !dbg !1099
  %100 = load i32, i32* %reg2.i, align 4, !dbg !1099
  %shr168.i = lshr i32 %100, 16, !dbg !1099
  %101 = load i32, i32* %reg2.i, align 4, !dbg !1099
  %shl169.i = shl i32 %101, 16, !dbg !1099
  %or.i = or i32 %shr168.i, %shl169.i, !dbg !1099
  store i32 %or.i, i32* %reg2.i, align 4, !dbg !1099
  %102 = load i32, i32* %reg3.i, align 4, !dbg !1099
  %shl170.i = shl i32 %102, 24, !dbg !1099
  %103 = load i32, i32* %reg3.i, align 4, !dbg !1099
  %shr171.i = lshr i32 %103, 24, !dbg !1099
  %xor172.i = xor i32 %shl170.i, %shr171.i, !dbg !1099
  %104 = load i32, i32* %reg3.i, align 4, !dbg !1099
  %and173.i = and i32 %104, 65280, !dbg !1099
  %shl174.i = shl i32 %and173.i, 8, !dbg !1099
  %xor175.i = xor i32 %xor172.i, %shl174.i, !dbg !1099
  %105 = load i32, i32* %reg3.i, align 4, !dbg !1099
  %and176.i = and i32 %105, 16711680, !dbg !1099
  %shr177.i = lshr i32 %and176.i, 8, !dbg !1099
  %xor178.i = xor i32 %xor175.i, %shr177.i, !dbg !1099
  store i32 %xor178.i, i32* %reg3.i, align 4, !dbg !1099
  %106 = load i32, i32* %reg2.i, align 4, !dbg !1100
  %107 = load i32, i32* %reg1.i, align 4, !dbg !1100
  %xor181.i = xor i32 %107, %106, !dbg !1100
  store i32 %xor181.i, i32* %reg1.i, align 4, !dbg !1100
  %108 = load i32, i32* %reg3.i, align 4, !dbg !1100
  %109 = load i32, i32* %reg2.i, align 4, !dbg !1100
  %xor182.i = xor i32 %109, %108, !dbg !1100
  store i32 %xor182.i, i32* %reg2.i, align 4, !dbg !1100
  %110 = load i32, i32* %reg1.i, align 4, !dbg !1100
  %111 = load i32, i32* %reg0.i, align 4, !dbg !1100
  %xor183.i = xor i32 %111, %110, !dbg !1100
  store i32 %xor183.i, i32* %reg0.i, align 4, !dbg !1100
  %112 = load i32, i32* %reg1.i, align 4, !dbg !1100
  %113 = load i32, i32* %reg3.i, align 4, !dbg !1100
  %xor184.i = xor i32 %113, %112, !dbg !1100
  store i32 %xor184.i, i32* %reg3.i, align 4, !dbg !1100
  %114 = load i32, i32* %reg0.i, align 4, !dbg !1100
  %115 = load i32, i32* %reg2.i, align 4, !dbg !1100
  %xor185.i = xor i32 %115, %114, !dbg !1100
  store i32 %xor185.i, i32* %reg2.i, align 4, !dbg !1100
  %116 = load i32, i32* %reg2.i, align 4, !dbg !1100
  %117 = load i32, i32* %reg1.i, align 4, !dbg !1100
  %xor186.i = xor i32 %117, %116, !dbg !1100
  store i32 %xor186.i, i32* %reg1.i, align 4, !dbg !1100
  %118 = load i32, i32* %bits.addr.i, align 4, !dbg !1101
  %cmp189.i = icmp sgt i32 %118, 128, !dbg !1102
  br i1 %cmp189.i, label %if.then191.i, label %if.else258.i, !dbg !1103

if.then191.i:                                     ; preds = %if.end7.i
  %119 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1104
  %arrayidx192.i = getelementptr inbounds i8, i8* %119, i64 16, !dbg !1104
  %120 = load i8, i8* %arrayidx192.i, align 1, !dbg !1104
  %conv193.i = zext i8 %120 to i32, !dbg !1104
  %shl194.i = shl i32 %conv193.i, 24, !dbg !1104
  %121 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1104
  %arrayidx195.i = getelementptr inbounds i8, i8* %121, i64 17, !dbg !1104
  %122 = load i8, i8* %arrayidx195.i, align 1, !dbg !1104
  %conv196.i = zext i8 %122 to i32, !dbg !1104
  %shl197.i = shl i32 %conv196.i, 16, !dbg !1104
  %xor198.i = xor i32 %shl194.i, %shl197.i, !dbg !1104
  %123 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1104
  %arrayidx199.i = getelementptr inbounds i8, i8* %123, i64 18, !dbg !1104
  %124 = load i8, i8* %arrayidx199.i, align 1, !dbg !1104
  %conv200.i = zext i8 %124 to i32, !dbg !1104
  %shl201.i = shl i32 %conv200.i, 8, !dbg !1104
  %xor202.i = xor i32 %xor198.i, %shl201.i, !dbg !1104
  %125 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1104
  %arrayidx203.i = getelementptr inbounds i8, i8* %125, i64 19, !dbg !1104
  %126 = load i8, i8* %arrayidx203.i, align 1, !dbg !1104
  %conv204.i = zext i8 %126 to i32, !dbg !1104
  %xor205.i = xor i32 %xor202.i, %conv204.i, !dbg !1104
  %arrayidx206.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1105
  store i32 %xor205.i, i32* %arrayidx206.i, align 16, !dbg !1106
  %127 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1107
  %arrayidx207.i = getelementptr inbounds i8, i8* %127, i64 20, !dbg !1107
  %128 = load i8, i8* %arrayidx207.i, align 1, !dbg !1107
  %conv208.i = zext i8 %128 to i32, !dbg !1107
  %shl209.i = shl i32 %conv208.i, 24, !dbg !1107
  %129 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1107
  %arrayidx210.i = getelementptr inbounds i8, i8* %129, i64 21, !dbg !1107
  %130 = load i8, i8* %arrayidx210.i, align 1, !dbg !1107
  %conv211.i = zext i8 %130 to i32, !dbg !1107
  %shl212.i = shl i32 %conv211.i, 16, !dbg !1107
  %xor213.i = xor i32 %shl209.i, %shl212.i, !dbg !1107
  %131 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1107
  %arrayidx214.i = getelementptr inbounds i8, i8* %131, i64 22, !dbg !1107
  %132 = load i8, i8* %arrayidx214.i, align 1, !dbg !1107
  %conv215.i = zext i8 %132 to i32, !dbg !1107
  %shl216.i = shl i32 %conv215.i, 8, !dbg !1107
  %xor217.i = xor i32 %xor213.i, %shl216.i, !dbg !1107
  %133 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1107
  %arrayidx218.i = getelementptr inbounds i8, i8* %133, i64 23, !dbg !1107
  %134 = load i8, i8* %arrayidx218.i, align 1, !dbg !1107
  %conv219.i = zext i8 %134 to i32, !dbg !1107
  %xor220.i = xor i32 %xor217.i, %conv219.i, !dbg !1107
  %arrayidx221.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1108
  store i32 %xor220.i, i32* %arrayidx221.i, align 4, !dbg !1109
  %135 = load i32, i32* %bits.addr.i, align 4, !dbg !1110
  %cmp222.i = icmp sgt i32 %135, 192, !dbg !1111
  br i1 %cmp222.i, label %if.then224.i, label %if.else.i, !dbg !1112

if.then224.i:                                     ; preds = %if.then191.i
  %136 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1113
  %arrayidx225.i = getelementptr inbounds i8, i8* %136, i64 24, !dbg !1113
  %137 = load i8, i8* %arrayidx225.i, align 1, !dbg !1113
  %conv226.i = zext i8 %137 to i32, !dbg !1113
  %shl227.i = shl i32 %conv226.i, 24, !dbg !1113
  %138 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1113
  %arrayidx228.i = getelementptr inbounds i8, i8* %138, i64 25, !dbg !1113
  %139 = load i8, i8* %arrayidx228.i, align 1, !dbg !1113
  %conv229.i = zext i8 %139 to i32, !dbg !1113
  %shl230.i = shl i32 %conv229.i, 16, !dbg !1113
  %xor231.i = xor i32 %shl227.i, %shl230.i, !dbg !1113
  %140 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1113
  %arrayidx232.i = getelementptr inbounds i8, i8* %140, i64 26, !dbg !1113
  %141 = load i8, i8* %arrayidx232.i, align 1, !dbg !1113
  %conv233.i = zext i8 %141 to i32, !dbg !1113
  %shl234.i = shl i32 %conv233.i, 8, !dbg !1113
  %xor235.i = xor i32 %xor231.i, %shl234.i, !dbg !1113
  %142 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1113
  %arrayidx236.i = getelementptr inbounds i8, i8* %142, i64 27, !dbg !1113
  %143 = load i8, i8* %arrayidx236.i, align 1, !dbg !1113
  %conv237.i = zext i8 %143 to i32, !dbg !1113
  %xor238.i = xor i32 %xor235.i, %conv237.i, !dbg !1113
  %arrayidx239.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1114
  store i32 %xor238.i, i32* %arrayidx239.i, align 8, !dbg !1115
  %144 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1116
  %arrayidx240.i = getelementptr inbounds i8, i8* %144, i64 28, !dbg !1116
  %145 = load i8, i8* %arrayidx240.i, align 1, !dbg !1116
  %conv241.i = zext i8 %145 to i32, !dbg !1116
  %shl242.i = shl i32 %conv241.i, 24, !dbg !1116
  %146 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1116
  %arrayidx243.i = getelementptr inbounds i8, i8* %146, i64 29, !dbg !1116
  %147 = load i8, i8* %arrayidx243.i, align 1, !dbg !1116
  %conv244.i = zext i8 %147 to i32, !dbg !1116
  %shl245.i = shl i32 %conv244.i, 16, !dbg !1116
  %xor246.i = xor i32 %shl242.i, %shl245.i, !dbg !1116
  %148 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1116
  %arrayidx247.i = getelementptr inbounds i8, i8* %148, i64 30, !dbg !1116
  %149 = load i8, i8* %arrayidx247.i, align 1, !dbg !1116
  %conv248.i = zext i8 %149 to i32, !dbg !1116
  %shl249.i = shl i32 %conv248.i, 8, !dbg !1116
  %xor250.i = xor i32 %xor246.i, %shl249.i, !dbg !1116
  %150 = load i8*, i8** %userKey.addr.i, align 8, !dbg !1116
  %arrayidx251.i = getelementptr inbounds i8, i8* %150, i64 31, !dbg !1116
  %151 = load i8, i8* %arrayidx251.i, align 1, !dbg !1116
  %conv252.i = zext i8 %151 to i32, !dbg !1116
  %xor253.i = xor i32 %xor250.i, %conv252.i, !dbg !1116
  %arrayidx254.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1117
  store i32 %xor253.i, i32* %arrayidx254.i, align 4, !dbg !1118
  br label %if.end257.i, !dbg !1119

if.else.i:                                        ; preds = %if.then191.i
  %arrayidx255.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1120
  store i32 0, i32* %arrayidx255.i, align 4, !dbg !1121
  %arrayidx256.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1122
  store i32 0, i32* %arrayidx256.i, align 8, !dbg !1123
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.else.i, %if.then224.i
  br label %if.end263.i, !dbg !1124

if.else258.i:                                     ; preds = %if.end7.i
  %arrayidx259.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1125
  store i32 0, i32* %arrayidx259.i, align 4, !dbg !1126
  %arrayidx260.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1127
  store i32 0, i32* %arrayidx260.i, align 8, !dbg !1128
  %arrayidx261.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1129
  store i32 0, i32* %arrayidx261.i, align 4, !dbg !1130
  %arrayidx262.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1131
  store i32 0, i32* %arrayidx262.i, align 16, !dbg !1132
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.else258.i, %if.end257.i
  %152 = load i32, i32* %reg0.i, align 4, !dbg !1133
  %arrayidx264.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1134
  %153 = load i32, i32* %arrayidx264.i, align 16, !dbg !1135
  %xor265.i = xor i32 %153, %152, !dbg !1135
  store i32 %xor265.i, i32* %arrayidx264.i, align 16, !dbg !1135
  %154 = load i32, i32* %reg1.i, align 4, !dbg !1136
  %arrayidx266.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1137
  %155 = load i32, i32* %arrayidx266.i, align 4, !dbg !1138
  %xor267.i = xor i32 %155, %154, !dbg !1138
  store i32 %xor267.i, i32* %arrayidx266.i, align 4, !dbg !1138
  %156 = load i32, i32* %reg2.i, align 4, !dbg !1139
  %arrayidx268.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1140
  %157 = load i32, i32* %arrayidx268.i, align 8, !dbg !1141
  %xor269.i = xor i32 %157, %156, !dbg !1141
  store i32 %xor269.i, i32* %arrayidx268.i, align 8, !dbg !1141
  %158 = load i32, i32* %reg3.i, align 4, !dbg !1142
  %arrayidx270.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1143
  %159 = load i32, i32* %arrayidx270.i, align 4, !dbg !1144
  %xor271.i = xor i32 %159, %158, !dbg !1144
  store i32 %xor271.i, i32* %arrayidx270.i, align 4, !dbg !1144
  %arrayidx272.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1145
  %160 = load i32, i32* %arrayidx272.i, align 16, !dbg !1145
  store i32 %160, i32* %reg0.i, align 4, !dbg !1146
  %arrayidx273.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1147
  %161 = load i32, i32* %arrayidx273.i, align 4, !dbg !1147
  store i32 %161, i32* %reg1.i, align 4, !dbg !1148
  %arrayidx274.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1149
  %162 = load i32, i32* %arrayidx274.i, align 8, !dbg !1149
  store i32 %162, i32* %reg2.i, align 4, !dbg !1150
  %arrayidx275.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1151
  %163 = load i32, i32* %arrayidx275.i, align 4, !dbg !1151
  store i32 %163, i32* %reg3.i, align 4, !dbg !1152
  %164 = load i32*, i32** %ck.i, align 8, !dbg !1153
  %arrayidx276.i = getelementptr inbounds i32, i32* %164, i64 4, !dbg !1153
  %165 = load i32, i32* %arrayidx276.i, align 4, !dbg !1153
  %166 = load i32, i32* %reg0.i, align 4, !dbg !1154
  %xor277.i = xor i32 %166, %165, !dbg !1154
  store i32 %xor277.i, i32* %reg0.i, align 4, !dbg !1154
  %167 = load i32*, i32** %ck.i, align 8, !dbg !1155
  %arrayidx278.i = getelementptr inbounds i32, i32* %167, i64 5, !dbg !1155
  %168 = load i32, i32* %arrayidx278.i, align 4, !dbg !1155
  %169 = load i32, i32* %reg1.i, align 4, !dbg !1156
  %xor279.i = xor i32 %169, %168, !dbg !1156
  store i32 %xor279.i, i32* %reg1.i, align 4, !dbg !1156
  %170 = load i32*, i32** %ck.i, align 8, !dbg !1157
  %arrayidx280.i = getelementptr inbounds i32, i32* %170, i64 6, !dbg !1157
  %171 = load i32, i32* %arrayidx280.i, align 4, !dbg !1157
  %172 = load i32, i32* %reg2.i, align 4, !dbg !1158
  %xor281.i = xor i32 %172, %171, !dbg !1158
  store i32 %xor281.i, i32* %reg2.i, align 4, !dbg !1158
  %173 = load i32*, i32** %ck.i, align 8, !dbg !1159
  %arrayidx282.i = getelementptr inbounds i32, i32* %173, i64 7, !dbg !1159
  %174 = load i32, i32* %arrayidx282.i, align 4, !dbg !1159
  %175 = load i32, i32* %reg3.i, align 4, !dbg !1160
  %xor283.i = xor i32 %175, %174, !dbg !1160
  store i32 %xor283.i, i32* %reg3.i, align 4, !dbg !1160
  %176 = load i32, i32* %reg0.i, align 4, !dbg !1161
  %shr286.i = lshr i32 %176, 24, !dbg !1161
  %conv287.i = trunc i32 %shr286.i to i8, !dbg !1161
  %idxprom288.i = zext i8 %conv287.i to i64, !dbg !1161
  %arrayidx289.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom288.i, !dbg !1161
  %177 = load i32, i32* %arrayidx289.i, align 4, !dbg !1161
  %178 = load i32, i32* %reg0.i, align 4, !dbg !1161
  %shr290.i = lshr i32 %178, 16, !dbg !1161
  %conv291.i = trunc i32 %shr290.i to i8, !dbg !1161
  %idxprom292.i = zext i8 %conv291.i to i64, !dbg !1161
  %arrayidx293.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom292.i, !dbg !1161
  %179 = load i32, i32* %arrayidx293.i, align 4, !dbg !1161
  %xor294.i = xor i32 %177, %179, !dbg !1161
  %180 = load i32, i32* %reg0.i, align 4, !dbg !1161
  %shr295.i = lshr i32 %180, 8, !dbg !1161
  %conv296.i = trunc i32 %shr295.i to i8, !dbg !1161
  %idxprom297.i = zext i8 %conv296.i to i64, !dbg !1161
  %arrayidx298.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom297.i, !dbg !1161
  %181 = load i32, i32* %arrayidx298.i, align 4, !dbg !1161
  %xor299.i = xor i32 %xor294.i, %181, !dbg !1161
  %182 = load i32, i32* %reg0.i, align 4, !dbg !1161
  %conv301.i = trunc i32 %182 to i8, !dbg !1161
  %idxprom302.i = zext i8 %conv301.i to i64, !dbg !1161
  %arrayidx303.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom302.i, !dbg !1161
  %183 = load i32, i32* %arrayidx303.i, align 4, !dbg !1161
  %xor304.i = xor i32 %xor299.i, %183, !dbg !1161
  store i32 %xor304.i, i32* %reg0.i, align 4, !dbg !1161
  %184 = load i32, i32* %reg1.i, align 4, !dbg !1161
  %shr305.i = lshr i32 %184, 24, !dbg !1161
  %conv306.i = trunc i32 %shr305.i to i8, !dbg !1161
  %idxprom307.i = zext i8 %conv306.i to i64, !dbg !1161
  %arrayidx308.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom307.i, !dbg !1161
  %185 = load i32, i32* %arrayidx308.i, align 4, !dbg !1161
  %186 = load i32, i32* %reg1.i, align 4, !dbg !1161
  %shr309.i = lshr i32 %186, 16, !dbg !1161
  %conv310.i = trunc i32 %shr309.i to i8, !dbg !1161
  %idxprom311.i = zext i8 %conv310.i to i64, !dbg !1161
  %arrayidx312.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom311.i, !dbg !1161
  %187 = load i32, i32* %arrayidx312.i, align 4, !dbg !1161
  %xor313.i = xor i32 %185, %187, !dbg !1161
  %188 = load i32, i32* %reg1.i, align 4, !dbg !1161
  %shr314.i = lshr i32 %188, 8, !dbg !1161
  %conv315.i = trunc i32 %shr314.i to i8, !dbg !1161
  %idxprom316.i = zext i8 %conv315.i to i64, !dbg !1161
  %arrayidx317.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom316.i, !dbg !1161
  %189 = load i32, i32* %arrayidx317.i, align 4, !dbg !1161
  %xor318.i = xor i32 %xor313.i, %189, !dbg !1161
  %190 = load i32, i32* %reg1.i, align 4, !dbg !1161
  %conv320.i = trunc i32 %190 to i8, !dbg !1161
  %idxprom321.i = zext i8 %conv320.i to i64, !dbg !1161
  %arrayidx322.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom321.i, !dbg !1161
  %191 = load i32, i32* %arrayidx322.i, align 4, !dbg !1161
  %xor323.i = xor i32 %xor318.i, %191, !dbg !1161
  store i32 %xor323.i, i32* %reg1.i, align 4, !dbg !1161
  %192 = load i32, i32* %reg2.i, align 4, !dbg !1161
  %shr324.i = lshr i32 %192, 24, !dbg !1161
  %conv325.i = trunc i32 %shr324.i to i8, !dbg !1161
  %idxprom326.i = zext i8 %conv325.i to i64, !dbg !1161
  %arrayidx327.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom326.i, !dbg !1161
  %193 = load i32, i32* %arrayidx327.i, align 4, !dbg !1161
  %194 = load i32, i32* %reg2.i, align 4, !dbg !1161
  %shr328.i = lshr i32 %194, 16, !dbg !1161
  %conv329.i = trunc i32 %shr328.i to i8, !dbg !1161
  %idxprom330.i = zext i8 %conv329.i to i64, !dbg !1161
  %arrayidx331.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom330.i, !dbg !1161
  %195 = load i32, i32* %arrayidx331.i, align 4, !dbg !1161
  %xor332.i = xor i32 %193, %195, !dbg !1161
  %196 = load i32, i32* %reg2.i, align 4, !dbg !1161
  %shr333.i = lshr i32 %196, 8, !dbg !1161
  %conv334.i = trunc i32 %shr333.i to i8, !dbg !1161
  %idxprom335.i = zext i8 %conv334.i to i64, !dbg !1161
  %arrayidx336.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom335.i, !dbg !1161
  %197 = load i32, i32* %arrayidx336.i, align 4, !dbg !1161
  %xor337.i = xor i32 %xor332.i, %197, !dbg !1161
  %198 = load i32, i32* %reg2.i, align 4, !dbg !1161
  %conv339.i = trunc i32 %198 to i8, !dbg !1161
  %idxprom340.i = zext i8 %conv339.i to i64, !dbg !1161
  %arrayidx341.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom340.i, !dbg !1161
  %199 = load i32, i32* %arrayidx341.i, align 4, !dbg !1161
  %xor342.i = xor i32 %xor337.i, %199, !dbg !1161
  store i32 %xor342.i, i32* %reg2.i, align 4, !dbg !1161
  %200 = load i32, i32* %reg3.i, align 4, !dbg !1161
  %shr343.i = lshr i32 %200, 24, !dbg !1161
  %conv344.i = trunc i32 %shr343.i to i8, !dbg !1161
  %idxprom345.i = zext i8 %conv344.i to i64, !dbg !1161
  %arrayidx346.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom345.i, !dbg !1161
  %201 = load i32, i32* %arrayidx346.i, align 4, !dbg !1161
  %202 = load i32, i32* %reg3.i, align 4, !dbg !1161
  %shr347.i = lshr i32 %202, 16, !dbg !1161
  %conv348.i = trunc i32 %shr347.i to i8, !dbg !1161
  %idxprom349.i = zext i8 %conv348.i to i64, !dbg !1161
  %arrayidx350.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom349.i, !dbg !1161
  %203 = load i32, i32* %arrayidx350.i, align 4, !dbg !1161
  %xor351.i = xor i32 %201, %203, !dbg !1161
  %204 = load i32, i32* %reg3.i, align 4, !dbg !1161
  %shr352.i = lshr i32 %204, 8, !dbg !1161
  %conv353.i = trunc i32 %shr352.i to i8, !dbg !1161
  %idxprom354.i = zext i8 %conv353.i to i64, !dbg !1161
  %arrayidx355.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom354.i, !dbg !1161
  %205 = load i32, i32* %arrayidx355.i, align 4, !dbg !1161
  %xor356.i = xor i32 %xor351.i, %205, !dbg !1161
  %206 = load i32, i32* %reg3.i, align 4, !dbg !1161
  %conv358.i = trunc i32 %206 to i8, !dbg !1161
  %idxprom359.i = zext i8 %conv358.i to i64, !dbg !1161
  %arrayidx360.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom359.i, !dbg !1161
  %207 = load i32, i32* %arrayidx360.i, align 4, !dbg !1161
  %xor361.i = xor i32 %xor356.i, %207, !dbg !1161
  store i32 %xor361.i, i32* %reg3.i, align 4, !dbg !1161
  %208 = load i32, i32* %reg2.i, align 4, !dbg !1162
  %209 = load i32, i32* %reg1.i, align 4, !dbg !1162
  %xor364.i = xor i32 %209, %208, !dbg !1162
  store i32 %xor364.i, i32* %reg1.i, align 4, !dbg !1162
  %210 = load i32, i32* %reg3.i, align 4, !dbg !1162
  %211 = load i32, i32* %reg2.i, align 4, !dbg !1162
  %xor365.i = xor i32 %211, %210, !dbg !1162
  store i32 %xor365.i, i32* %reg2.i, align 4, !dbg !1162
  %212 = load i32, i32* %reg1.i, align 4, !dbg !1162
  %213 = load i32, i32* %reg0.i, align 4, !dbg !1162
  %xor366.i = xor i32 %213, %212, !dbg !1162
  store i32 %xor366.i, i32* %reg0.i, align 4, !dbg !1162
  %214 = load i32, i32* %reg1.i, align 4, !dbg !1162
  %215 = load i32, i32* %reg3.i, align 4, !dbg !1162
  %xor367.i = xor i32 %215, %214, !dbg !1162
  store i32 %xor367.i, i32* %reg3.i, align 4, !dbg !1162
  %216 = load i32, i32* %reg0.i, align 4, !dbg !1162
  %217 = load i32, i32* %reg2.i, align 4, !dbg !1162
  %xor368.i = xor i32 %217, %216, !dbg !1162
  store i32 %xor368.i, i32* %reg2.i, align 4, !dbg !1162
  %218 = load i32, i32* %reg2.i, align 4, !dbg !1162
  %219 = load i32, i32* %reg1.i, align 4, !dbg !1162
  %xor369.i = xor i32 %219, %218, !dbg !1162
  store i32 %xor369.i, i32* %reg1.i, align 4, !dbg !1162
  %220 = load i32, i32* %reg3.i, align 4, !dbg !1163
  %shl372.i = shl i32 %220, 8, !dbg !1163
  %and373.i = and i32 %shl372.i, -16711936, !dbg !1163
  %221 = load i32, i32* %reg3.i, align 4, !dbg !1163
  %shr374.i = lshr i32 %221, 8, !dbg !1163
  %and375.i = and i32 %shr374.i, 16711935, !dbg !1163
  %xor376.i = xor i32 %and373.i, %and375.i, !dbg !1163
  store i32 %xor376.i, i32* %reg3.i, align 4, !dbg !1163
  %222 = load i32, i32* %reg0.i, align 4, !dbg !1163
  %shr377.i = lshr i32 %222, 16, !dbg !1163
  %223 = load i32, i32* %reg0.i, align 4, !dbg !1163
  %shl378.i = shl i32 %223, 16, !dbg !1163
  %or379.i = or i32 %shr377.i, %shl378.i, !dbg !1163
  store i32 %or379.i, i32* %reg0.i, align 4, !dbg !1163
  %224 = load i32, i32* %reg1.i, align 4, !dbg !1163
  %shl380.i = shl i32 %224, 24, !dbg !1163
  %225 = load i32, i32* %reg1.i, align 4, !dbg !1163
  %shr381.i = lshr i32 %225, 24, !dbg !1163
  %xor382.i = xor i32 %shl380.i, %shr381.i, !dbg !1163
  %226 = load i32, i32* %reg1.i, align 4, !dbg !1163
  %and383.i = and i32 %226, 65280, !dbg !1163
  %shl384.i = shl i32 %and383.i, 8, !dbg !1163
  %xor385.i = xor i32 %xor382.i, %shl384.i, !dbg !1163
  %227 = load i32, i32* %reg1.i, align 4, !dbg !1163
  %and386.i = and i32 %227, 16711680, !dbg !1163
  %shr387.i = lshr i32 %and386.i, 8, !dbg !1163
  %xor388.i = xor i32 %xor385.i, %shr387.i, !dbg !1163
  store i32 %xor388.i, i32* %reg1.i, align 4, !dbg !1163
  %228 = load i32, i32* %reg2.i, align 4, !dbg !1164
  %229 = load i32, i32* %reg1.i, align 4, !dbg !1164
  %xor391.i = xor i32 %229, %228, !dbg !1164
  store i32 %xor391.i, i32* %reg1.i, align 4, !dbg !1164
  %230 = load i32, i32* %reg3.i, align 4, !dbg !1164
  %231 = load i32, i32* %reg2.i, align 4, !dbg !1164
  %xor392.i = xor i32 %231, %230, !dbg !1164
  store i32 %xor392.i, i32* %reg2.i, align 4, !dbg !1164
  %232 = load i32, i32* %reg1.i, align 4, !dbg !1164
  %233 = load i32, i32* %reg0.i, align 4, !dbg !1164
  %xor393.i = xor i32 %233, %232, !dbg !1164
  store i32 %xor393.i, i32* %reg0.i, align 4, !dbg !1164
  %234 = load i32, i32* %reg1.i, align 4, !dbg !1164
  %235 = load i32, i32* %reg3.i, align 4, !dbg !1164
  %xor394.i = xor i32 %235, %234, !dbg !1164
  store i32 %xor394.i, i32* %reg3.i, align 4, !dbg !1164
  %236 = load i32, i32* %reg0.i, align 4, !dbg !1164
  %237 = load i32, i32* %reg2.i, align 4, !dbg !1164
  %xor395.i = xor i32 %237, %236, !dbg !1164
  store i32 %xor395.i, i32* %reg2.i, align 4, !dbg !1164
  %238 = load i32, i32* %reg2.i, align 4, !dbg !1164
  %239 = load i32, i32* %reg1.i, align 4, !dbg !1164
  %xor396.i = xor i32 %239, %238, !dbg !1164
  store i32 %xor396.i, i32* %reg1.i, align 4, !dbg !1164
  %arrayidx399.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1165
  %240 = load i32, i32* %arrayidx399.i, align 16, !dbg !1165
  %241 = load i32, i32* %reg0.i, align 4, !dbg !1166
  %xor400.i = xor i32 %241, %240, !dbg !1166
  store i32 %xor400.i, i32* %reg0.i, align 4, !dbg !1166
  %arrayidx401.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1167
  %242 = load i32, i32* %arrayidx401.i, align 4, !dbg !1167
  %243 = load i32, i32* %reg1.i, align 4, !dbg !1168
  %xor402.i = xor i32 %243, %242, !dbg !1168
  store i32 %xor402.i, i32* %reg1.i, align 4, !dbg !1168
  %arrayidx403.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1169
  %244 = load i32, i32* %arrayidx403.i, align 8, !dbg !1169
  %245 = load i32, i32* %reg2.i, align 4, !dbg !1170
  %xor404.i = xor i32 %245, %244, !dbg !1170
  store i32 %xor404.i, i32* %reg2.i, align 4, !dbg !1170
  %arrayidx405.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1171
  %246 = load i32, i32* %arrayidx405.i, align 4, !dbg !1171
  %247 = load i32, i32* %reg3.i, align 4, !dbg !1172
  %xor406.i = xor i32 %247, %246, !dbg !1172
  store i32 %xor406.i, i32* %reg3.i, align 4, !dbg !1172
  %248 = load i32, i32* %reg0.i, align 4, !dbg !1173
  %arrayidx407.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1174
  store i32 %248, i32* %arrayidx407.i, align 16, !dbg !1175
  %249 = load i32, i32* %reg1.i, align 4, !dbg !1176
  %arrayidx408.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1177
  store i32 %249, i32* %arrayidx408.i, align 4, !dbg !1178
  %250 = load i32, i32* %reg2.i, align 4, !dbg !1179
  %arrayidx409.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1180
  store i32 %250, i32* %arrayidx409.i, align 8, !dbg !1181
  %251 = load i32, i32* %reg3.i, align 4, !dbg !1182
  %arrayidx410.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1183
  store i32 %251, i32* %arrayidx410.i, align 4, !dbg !1184
  %252 = load i32*, i32** %ck.i, align 8, !dbg !1185
  %arrayidx411.i = getelementptr inbounds i32, i32* %252, i64 8, !dbg !1185
  %253 = load i32, i32* %arrayidx411.i, align 4, !dbg !1185
  %254 = load i32, i32* %reg0.i, align 4, !dbg !1186
  %xor412.i = xor i32 %254, %253, !dbg !1186
  store i32 %xor412.i, i32* %reg0.i, align 4, !dbg !1186
  %255 = load i32*, i32** %ck.i, align 8, !dbg !1187
  %arrayidx413.i = getelementptr inbounds i32, i32* %255, i64 9, !dbg !1187
  %256 = load i32, i32* %arrayidx413.i, align 4, !dbg !1187
  %257 = load i32, i32* %reg1.i, align 4, !dbg !1188
  %xor414.i = xor i32 %257, %256, !dbg !1188
  store i32 %xor414.i, i32* %reg1.i, align 4, !dbg !1188
  %258 = load i32*, i32** %ck.i, align 8, !dbg !1189
  %arrayidx415.i = getelementptr inbounds i32, i32* %258, i64 10, !dbg !1189
  %259 = load i32, i32* %arrayidx415.i, align 4, !dbg !1189
  %260 = load i32, i32* %reg2.i, align 4, !dbg !1190
  %xor416.i = xor i32 %260, %259, !dbg !1190
  store i32 %xor416.i, i32* %reg2.i, align 4, !dbg !1190
  %261 = load i32*, i32** %ck.i, align 8, !dbg !1191
  %arrayidx417.i = getelementptr inbounds i32, i32* %261, i64 11, !dbg !1191
  %262 = load i32, i32* %arrayidx417.i, align 4, !dbg !1191
  %263 = load i32, i32* %reg3.i, align 4, !dbg !1192
  %xor418.i = xor i32 %263, %262, !dbg !1192
  store i32 %xor418.i, i32* %reg3.i, align 4, !dbg !1192
  %264 = load i32, i32* %reg0.i, align 4, !dbg !1193
  %shr421.i = lshr i32 %264, 24, !dbg !1193
  %conv422.i = trunc i32 %shr421.i to i8, !dbg !1193
  %idxprom423.i = zext i8 %conv422.i to i64, !dbg !1193
  %arrayidx424.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom423.i, !dbg !1193
  %265 = load i32, i32* %arrayidx424.i, align 4, !dbg !1193
  %266 = load i32, i32* %reg0.i, align 4, !dbg !1193
  %shr425.i = lshr i32 %266, 16, !dbg !1193
  %conv426.i = trunc i32 %shr425.i to i8, !dbg !1193
  %idxprom427.i = zext i8 %conv426.i to i64, !dbg !1193
  %arrayidx428.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom427.i, !dbg !1193
  %267 = load i32, i32* %arrayidx428.i, align 4, !dbg !1193
  %xor429.i = xor i32 %265, %267, !dbg !1193
  %268 = load i32, i32* %reg0.i, align 4, !dbg !1193
  %shr430.i = lshr i32 %268, 8, !dbg !1193
  %conv431.i = trunc i32 %shr430.i to i8, !dbg !1193
  %idxprom432.i = zext i8 %conv431.i to i64, !dbg !1193
  %arrayidx433.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom432.i, !dbg !1193
  %269 = load i32, i32* %arrayidx433.i, align 4, !dbg !1193
  %xor434.i = xor i32 %xor429.i, %269, !dbg !1193
  %270 = load i32, i32* %reg0.i, align 4, !dbg !1193
  %conv436.i = trunc i32 %270 to i8, !dbg !1193
  %idxprom437.i = zext i8 %conv436.i to i64, !dbg !1193
  %arrayidx438.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom437.i, !dbg !1193
  %271 = load i32, i32* %arrayidx438.i, align 4, !dbg !1193
  %xor439.i = xor i32 %xor434.i, %271, !dbg !1193
  store i32 %xor439.i, i32* %reg0.i, align 4, !dbg !1193
  %272 = load i32, i32* %reg1.i, align 4, !dbg !1193
  %shr440.i = lshr i32 %272, 24, !dbg !1193
  %conv441.i = trunc i32 %shr440.i to i8, !dbg !1193
  %idxprom442.i = zext i8 %conv441.i to i64, !dbg !1193
  %arrayidx443.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom442.i, !dbg !1193
  %273 = load i32, i32* %arrayidx443.i, align 4, !dbg !1193
  %274 = load i32, i32* %reg1.i, align 4, !dbg !1193
  %shr444.i = lshr i32 %274, 16, !dbg !1193
  %conv445.i = trunc i32 %shr444.i to i8, !dbg !1193
  %idxprom446.i = zext i8 %conv445.i to i64, !dbg !1193
  %arrayidx447.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom446.i, !dbg !1193
  %275 = load i32, i32* %arrayidx447.i, align 4, !dbg !1193
  %xor448.i = xor i32 %273, %275, !dbg !1193
  %276 = load i32, i32* %reg1.i, align 4, !dbg !1193
  %shr449.i = lshr i32 %276, 8, !dbg !1193
  %conv450.i = trunc i32 %shr449.i to i8, !dbg !1193
  %idxprom451.i = zext i8 %conv450.i to i64, !dbg !1193
  %arrayidx452.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom451.i, !dbg !1193
  %277 = load i32, i32* %arrayidx452.i, align 4, !dbg !1193
  %xor453.i = xor i32 %xor448.i, %277, !dbg !1193
  %278 = load i32, i32* %reg1.i, align 4, !dbg !1193
  %conv455.i = trunc i32 %278 to i8, !dbg !1193
  %idxprom456.i = zext i8 %conv455.i to i64, !dbg !1193
  %arrayidx457.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom456.i, !dbg !1193
  %279 = load i32, i32* %arrayidx457.i, align 4, !dbg !1193
  %xor458.i = xor i32 %xor453.i, %279, !dbg !1193
  store i32 %xor458.i, i32* %reg1.i, align 4, !dbg !1193
  %280 = load i32, i32* %reg2.i, align 4, !dbg !1193
  %shr459.i = lshr i32 %280, 24, !dbg !1193
  %conv460.i = trunc i32 %shr459.i to i8, !dbg !1193
  %idxprom461.i = zext i8 %conv460.i to i64, !dbg !1193
  %arrayidx462.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom461.i, !dbg !1193
  %281 = load i32, i32* %arrayidx462.i, align 4, !dbg !1193
  %282 = load i32, i32* %reg2.i, align 4, !dbg !1193
  %shr463.i = lshr i32 %282, 16, !dbg !1193
  %conv464.i = trunc i32 %shr463.i to i8, !dbg !1193
  %idxprom465.i = zext i8 %conv464.i to i64, !dbg !1193
  %arrayidx466.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom465.i, !dbg !1193
  %283 = load i32, i32* %arrayidx466.i, align 4, !dbg !1193
  %xor467.i = xor i32 %281, %283, !dbg !1193
  %284 = load i32, i32* %reg2.i, align 4, !dbg !1193
  %shr468.i = lshr i32 %284, 8, !dbg !1193
  %conv469.i = trunc i32 %shr468.i to i8, !dbg !1193
  %idxprom470.i = zext i8 %conv469.i to i64, !dbg !1193
  %arrayidx471.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom470.i, !dbg !1193
  %285 = load i32, i32* %arrayidx471.i, align 4, !dbg !1193
  %xor472.i = xor i32 %xor467.i, %285, !dbg !1193
  %286 = load i32, i32* %reg2.i, align 4, !dbg !1193
  %conv474.i = trunc i32 %286 to i8, !dbg !1193
  %idxprom475.i = zext i8 %conv474.i to i64, !dbg !1193
  %arrayidx476.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom475.i, !dbg !1193
  %287 = load i32, i32* %arrayidx476.i, align 4, !dbg !1193
  %xor477.i = xor i32 %xor472.i, %287, !dbg !1193
  store i32 %xor477.i, i32* %reg2.i, align 4, !dbg !1193
  %288 = load i32, i32* %reg3.i, align 4, !dbg !1193
  %shr478.i = lshr i32 %288, 24, !dbg !1193
  %conv479.i = trunc i32 %shr478.i to i8, !dbg !1193
  %idxprom480.i = zext i8 %conv479.i to i64, !dbg !1193
  %arrayidx481.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom480.i, !dbg !1193
  %289 = load i32, i32* %arrayidx481.i, align 4, !dbg !1193
  %290 = load i32, i32* %reg3.i, align 4, !dbg !1193
  %shr482.i = lshr i32 %290, 16, !dbg !1193
  %conv483.i = trunc i32 %shr482.i to i8, !dbg !1193
  %idxprom484.i = zext i8 %conv483.i to i64, !dbg !1193
  %arrayidx485.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom484.i, !dbg !1193
  %291 = load i32, i32* %arrayidx485.i, align 4, !dbg !1193
  %xor486.i = xor i32 %289, %291, !dbg !1193
  %292 = load i32, i32* %reg3.i, align 4, !dbg !1193
  %shr487.i = lshr i32 %292, 8, !dbg !1193
  %conv488.i = trunc i32 %shr487.i to i8, !dbg !1193
  %idxprom489.i = zext i8 %conv488.i to i64, !dbg !1193
  %arrayidx490.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom489.i, !dbg !1193
  %293 = load i32, i32* %arrayidx490.i, align 4, !dbg !1193
  %xor491.i = xor i32 %xor486.i, %293, !dbg !1193
  %294 = load i32, i32* %reg3.i, align 4, !dbg !1193
  %conv493.i = trunc i32 %294 to i8, !dbg !1193
  %idxprom494.i = zext i8 %conv493.i to i64, !dbg !1193
  %arrayidx495.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom494.i, !dbg !1193
  %295 = load i32, i32* %arrayidx495.i, align 4, !dbg !1193
  %xor496.i = xor i32 %xor491.i, %295, !dbg !1193
  store i32 %xor496.i, i32* %reg3.i, align 4, !dbg !1193
  %296 = load i32, i32* %reg2.i, align 4, !dbg !1194
  %297 = load i32, i32* %reg1.i, align 4, !dbg !1194
  %xor499.i = xor i32 %297, %296, !dbg !1194
  store i32 %xor499.i, i32* %reg1.i, align 4, !dbg !1194
  %298 = load i32, i32* %reg3.i, align 4, !dbg !1194
  %299 = load i32, i32* %reg2.i, align 4, !dbg !1194
  %xor500.i = xor i32 %299, %298, !dbg !1194
  store i32 %xor500.i, i32* %reg2.i, align 4, !dbg !1194
  %300 = load i32, i32* %reg1.i, align 4, !dbg !1194
  %301 = load i32, i32* %reg0.i, align 4, !dbg !1194
  %xor501.i = xor i32 %301, %300, !dbg !1194
  store i32 %xor501.i, i32* %reg0.i, align 4, !dbg !1194
  %302 = load i32, i32* %reg1.i, align 4, !dbg !1194
  %303 = load i32, i32* %reg3.i, align 4, !dbg !1194
  %xor502.i = xor i32 %303, %302, !dbg !1194
  store i32 %xor502.i, i32* %reg3.i, align 4, !dbg !1194
  %304 = load i32, i32* %reg0.i, align 4, !dbg !1194
  %305 = load i32, i32* %reg2.i, align 4, !dbg !1194
  %xor503.i = xor i32 %305, %304, !dbg !1194
  store i32 %xor503.i, i32* %reg2.i, align 4, !dbg !1194
  %306 = load i32, i32* %reg2.i, align 4, !dbg !1194
  %307 = load i32, i32* %reg1.i, align 4, !dbg !1194
  %xor504.i = xor i32 %307, %306, !dbg !1194
  store i32 %xor504.i, i32* %reg1.i, align 4, !dbg !1194
  %308 = load i32, i32* %reg1.i, align 4, !dbg !1195
  %shl507.i = shl i32 %308, 8, !dbg !1195
  %and508.i = and i32 %shl507.i, -16711936, !dbg !1195
  %309 = load i32, i32* %reg1.i, align 4, !dbg !1195
  %shr509.i = lshr i32 %309, 8, !dbg !1195
  %and510.i = and i32 %shr509.i, 16711935, !dbg !1195
  %xor511.i = xor i32 %and508.i, %and510.i, !dbg !1195
  store i32 %xor511.i, i32* %reg1.i, align 4, !dbg !1195
  %310 = load i32, i32* %reg2.i, align 4, !dbg !1195
  %shr512.i = lshr i32 %310, 16, !dbg !1195
  %311 = load i32, i32* %reg2.i, align 4, !dbg !1195
  %shl513.i = shl i32 %311, 16, !dbg !1195
  %or514.i = or i32 %shr512.i, %shl513.i, !dbg !1195
  store i32 %or514.i, i32* %reg2.i, align 4, !dbg !1195
  %312 = load i32, i32* %reg3.i, align 4, !dbg !1195
  %shl515.i = shl i32 %312, 24, !dbg !1195
  %313 = load i32, i32* %reg3.i, align 4, !dbg !1195
  %shr516.i = lshr i32 %313, 24, !dbg !1195
  %xor517.i = xor i32 %shl515.i, %shr516.i, !dbg !1195
  %314 = load i32, i32* %reg3.i, align 4, !dbg !1195
  %and518.i = and i32 %314, 65280, !dbg !1195
  %shl519.i = shl i32 %and518.i, 8, !dbg !1195
  %xor520.i = xor i32 %xor517.i, %shl519.i, !dbg !1195
  %315 = load i32, i32* %reg3.i, align 4, !dbg !1195
  %and521.i = and i32 %315, 16711680, !dbg !1195
  %shr522.i = lshr i32 %and521.i, 8, !dbg !1195
  %xor523.i = xor i32 %xor520.i, %shr522.i, !dbg !1195
  store i32 %xor523.i, i32* %reg3.i, align 4, !dbg !1195
  %316 = load i32, i32* %reg2.i, align 4, !dbg !1196
  %317 = load i32, i32* %reg1.i, align 4, !dbg !1196
  %xor526.i = xor i32 %317, %316, !dbg !1196
  store i32 %xor526.i, i32* %reg1.i, align 4, !dbg !1196
  %318 = load i32, i32* %reg3.i, align 4, !dbg !1196
  %319 = load i32, i32* %reg2.i, align 4, !dbg !1196
  %xor527.i = xor i32 %319, %318, !dbg !1196
  store i32 %xor527.i, i32* %reg2.i, align 4, !dbg !1196
  %320 = load i32, i32* %reg1.i, align 4, !dbg !1196
  %321 = load i32, i32* %reg0.i, align 4, !dbg !1196
  %xor528.i = xor i32 %321, %320, !dbg !1196
  store i32 %xor528.i, i32* %reg0.i, align 4, !dbg !1196
  %322 = load i32, i32* %reg1.i, align 4, !dbg !1196
  %323 = load i32, i32* %reg3.i, align 4, !dbg !1196
  %xor529.i = xor i32 %323, %322, !dbg !1196
  store i32 %xor529.i, i32* %reg3.i, align 4, !dbg !1196
  %324 = load i32, i32* %reg0.i, align 4, !dbg !1196
  %325 = load i32, i32* %reg2.i, align 4, !dbg !1196
  %xor530.i = xor i32 %325, %324, !dbg !1196
  store i32 %xor530.i, i32* %reg2.i, align 4, !dbg !1196
  %326 = load i32, i32* %reg2.i, align 4, !dbg !1196
  %327 = load i32, i32* %reg1.i, align 4, !dbg !1196
  %xor531.i = xor i32 %327, %326, !dbg !1196
  store i32 %xor531.i, i32* %reg1.i, align 4, !dbg !1196
  %328 = load i32, i32* %reg0.i, align 4, !dbg !1197
  %arrayidx534.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1198
  %329 = load i32, i32* %arrayidx534.i, align 16, !dbg !1198
  %xor535.i = xor i32 %328, %329, !dbg !1199
  %arrayidx536.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1200
  store i32 %xor535.i, i32* %arrayidx536.i, align 16, !dbg !1201
  %330 = load i32, i32* %reg1.i, align 4, !dbg !1202
  %arrayidx537.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1203
  %331 = load i32, i32* %arrayidx537.i, align 4, !dbg !1203
  %xor538.i = xor i32 %330, %331, !dbg !1204
  %arrayidx539.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1205
  store i32 %xor538.i, i32* %arrayidx539.i, align 4, !dbg !1206
  %332 = load i32, i32* %reg2.i, align 4, !dbg !1207
  %arrayidx540.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1208
  %333 = load i32, i32* %arrayidx540.i, align 8, !dbg !1208
  %xor541.i = xor i32 %332, %333, !dbg !1209
  %arrayidx542.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1210
  store i32 %xor541.i, i32* %arrayidx542.i, align 8, !dbg !1211
  %334 = load i32, i32* %reg3.i, align 4, !dbg !1212
  %arrayidx543.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1213
  %335 = load i32, i32* %arrayidx543.i, align 4, !dbg !1213
  %xor544.i = xor i32 %334, %335, !dbg !1214
  %arrayidx545.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1215
  store i32 %xor544.i, i32* %arrayidx545.i, align 4, !dbg !1216
  %arrayidx547.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1217
  %336 = load i32, i32* %arrayidx547.i, align 16, !dbg !1217
  %arrayidx548.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1217
  %337 = load i32, i32* %arrayidx548.i, align 16, !dbg !1217
  %shr549.i = lshr i32 %337, 19, !dbg !1217
  %xor550.i = xor i32 %336, %shr549.i, !dbg !1217
  %arrayidx551.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1217
  %338 = load i32, i32* %arrayidx551.i, align 4, !dbg !1217
  %shl552.i = shl i32 %338, 13, !dbg !1217
  %xor553.i = xor i32 %xor550.i, %shl552.i, !dbg !1217
  %339 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1217
  %u.i = bitcast %union.ARIA_u128* %339 to [4 x i32]*, !dbg !1217
  %arrayidx554.i = getelementptr inbounds [4 x i32], [4 x i32]* %u.i, i64 0, i64 0, !dbg !1217
  store i32 %xor553.i, i32* %arrayidx554.i, align 4, !dbg !1217
  %arrayidx555.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1217
  %340 = load i32, i32* %arrayidx555.i, align 4, !dbg !1217
  %arrayidx556.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1217
  %341 = load i32, i32* %arrayidx556.i, align 4, !dbg !1217
  %shr557.i = lshr i32 %341, 19, !dbg !1217
  %xor558.i = xor i32 %340, %shr557.i, !dbg !1217
  %arrayidx559.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1217
  %342 = load i32, i32* %arrayidx559.i, align 16, !dbg !1217
  %shl560.i = shl i32 %342, 13, !dbg !1217
  %xor561.i = xor i32 %xor558.i, %shl560.i, !dbg !1217
  %343 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1217
  %u562.i = bitcast %union.ARIA_u128* %343 to [4 x i32]*, !dbg !1217
  %arrayidx563.i = getelementptr inbounds [4 x i32], [4 x i32]* %u562.i, i64 0, i64 1, !dbg !1217
  store i32 %xor561.i, i32* %arrayidx563.i, align 4, !dbg !1217
  %arrayidx564.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1217
  %344 = load i32, i32* %arrayidx564.i, align 8, !dbg !1217
  %arrayidx565.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1217
  %345 = load i32, i32* %arrayidx565.i, align 8, !dbg !1217
  %shr566.i = lshr i32 %345, 19, !dbg !1217
  %xor567.i = xor i32 %344, %shr566.i, !dbg !1217
  %arrayidx568.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1217
  %346 = load i32, i32* %arrayidx568.i, align 4, !dbg !1217
  %shl569.i = shl i32 %346, 13, !dbg !1217
  %xor570.i = xor i32 %xor567.i, %shl569.i, !dbg !1217
  %347 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1217
  %u571.i = bitcast %union.ARIA_u128* %347 to [4 x i32]*, !dbg !1217
  %arrayidx572.i = getelementptr inbounds [4 x i32], [4 x i32]* %u571.i, i64 0, i64 2, !dbg !1217
  store i32 %xor570.i, i32* %arrayidx572.i, align 4, !dbg !1217
  %arrayidx573.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1217
  %348 = load i32, i32* %arrayidx573.i, align 4, !dbg !1217
  %arrayidx574.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1217
  %349 = load i32, i32* %arrayidx574.i, align 4, !dbg !1217
  %shr575.i = lshr i32 %349, 19, !dbg !1217
  %xor576.i = xor i32 %348, %shr575.i, !dbg !1217
  %arrayidx577.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1217
  %350 = load i32, i32* %arrayidx577.i, align 8, !dbg !1217
  %shl578.i = shl i32 %350, 13, !dbg !1217
  %xor579.i = xor i32 %xor576.i, %shl578.i, !dbg !1217
  %351 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1217
  %u580.i = bitcast %union.ARIA_u128* %351 to [4 x i32]*, !dbg !1217
  %arrayidx581.i = getelementptr inbounds [4 x i32], [4 x i32]* %u580.i, i64 0, i64 3, !dbg !1217
  store i32 %xor579.i, i32* %arrayidx581.i, align 4, !dbg !1217
  %352 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1218
  %incdec.ptr.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %352, i32 1, !dbg !1218
  store %union.ARIA_u128* %incdec.ptr.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1218
  %arrayidx584.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1219
  %353 = load i32, i32* %arrayidx584.i, align 16, !dbg !1219
  %arrayidx585.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1219
  %354 = load i32, i32* %arrayidx585.i, align 16, !dbg !1219
  %shr586.i = lshr i32 %354, 19, !dbg !1219
  %xor587.i = xor i32 %353, %shr586.i, !dbg !1219
  %arrayidx588.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1219
  %355 = load i32, i32* %arrayidx588.i, align 4, !dbg !1219
  %shl589.i = shl i32 %355, 13, !dbg !1219
  %xor590.i = xor i32 %xor587.i, %shl589.i, !dbg !1219
  %356 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1219
  %u591.i = bitcast %union.ARIA_u128* %356 to [4 x i32]*, !dbg !1219
  %arrayidx592.i = getelementptr inbounds [4 x i32], [4 x i32]* %u591.i, i64 0, i64 0, !dbg !1219
  store i32 %xor590.i, i32* %arrayidx592.i, align 4, !dbg !1219
  %arrayidx593.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1219
  %357 = load i32, i32* %arrayidx593.i, align 4, !dbg !1219
  %arrayidx594.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1219
  %358 = load i32, i32* %arrayidx594.i, align 4, !dbg !1219
  %shr595.i = lshr i32 %358, 19, !dbg !1219
  %xor596.i = xor i32 %357, %shr595.i, !dbg !1219
  %arrayidx597.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1219
  %359 = load i32, i32* %arrayidx597.i, align 16, !dbg !1219
  %shl598.i = shl i32 %359, 13, !dbg !1219
  %xor599.i = xor i32 %xor596.i, %shl598.i, !dbg !1219
  %360 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1219
  %u600.i = bitcast %union.ARIA_u128* %360 to [4 x i32]*, !dbg !1219
  %arrayidx601.i = getelementptr inbounds [4 x i32], [4 x i32]* %u600.i, i64 0, i64 1, !dbg !1219
  store i32 %xor599.i, i32* %arrayidx601.i, align 4, !dbg !1219
  %arrayidx602.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1219
  %361 = load i32, i32* %arrayidx602.i, align 8, !dbg !1219
  %arrayidx603.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1219
  %362 = load i32, i32* %arrayidx603.i, align 8, !dbg !1219
  %shr604.i = lshr i32 %362, 19, !dbg !1219
  %xor605.i = xor i32 %361, %shr604.i, !dbg !1219
  %arrayidx606.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1219
  %363 = load i32, i32* %arrayidx606.i, align 4, !dbg !1219
  %shl607.i = shl i32 %363, 13, !dbg !1219
  %xor608.i = xor i32 %xor605.i, %shl607.i, !dbg !1219
  %364 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1219
  %u609.i = bitcast %union.ARIA_u128* %364 to [4 x i32]*, !dbg !1219
  %arrayidx610.i = getelementptr inbounds [4 x i32], [4 x i32]* %u609.i, i64 0, i64 2, !dbg !1219
  store i32 %xor608.i, i32* %arrayidx610.i, align 4, !dbg !1219
  %arrayidx611.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1219
  %365 = load i32, i32* %arrayidx611.i, align 4, !dbg !1219
  %arrayidx612.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1219
  %366 = load i32, i32* %arrayidx612.i, align 4, !dbg !1219
  %shr613.i = lshr i32 %366, 19, !dbg !1219
  %xor614.i = xor i32 %365, %shr613.i, !dbg !1219
  %arrayidx615.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1219
  %367 = load i32, i32* %arrayidx615.i, align 8, !dbg !1219
  %shl616.i = shl i32 %367, 13, !dbg !1219
  %xor617.i = xor i32 %xor614.i, %shl616.i, !dbg !1219
  %368 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1219
  %u618.i = bitcast %union.ARIA_u128* %368 to [4 x i32]*, !dbg !1219
  %arrayidx619.i = getelementptr inbounds [4 x i32], [4 x i32]* %u618.i, i64 0, i64 3, !dbg !1219
  store i32 %xor617.i, i32* %arrayidx619.i, align 4, !dbg !1219
  %369 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1220
  %incdec.ptr621.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %369, i32 1, !dbg !1220
  store %union.ARIA_u128* %incdec.ptr621.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1220
  %arrayidx623.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1221
  %370 = load i32, i32* %arrayidx623.i, align 16, !dbg !1221
  %arrayidx624.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1221
  %371 = load i32, i32* %arrayidx624.i, align 16, !dbg !1221
  %shr625.i = lshr i32 %371, 19, !dbg !1221
  %xor626.i = xor i32 %370, %shr625.i, !dbg !1221
  %arrayidx627.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1221
  %372 = load i32, i32* %arrayidx627.i, align 4, !dbg !1221
  %shl628.i = shl i32 %372, 13, !dbg !1221
  %xor629.i = xor i32 %xor626.i, %shl628.i, !dbg !1221
  %373 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1221
  %u630.i = bitcast %union.ARIA_u128* %373 to [4 x i32]*, !dbg !1221
  %arrayidx631.i = getelementptr inbounds [4 x i32], [4 x i32]* %u630.i, i64 0, i64 0, !dbg !1221
  store i32 %xor629.i, i32* %arrayidx631.i, align 4, !dbg !1221
  %arrayidx632.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1221
  %374 = load i32, i32* %arrayidx632.i, align 4, !dbg !1221
  %arrayidx633.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1221
  %375 = load i32, i32* %arrayidx633.i, align 4, !dbg !1221
  %shr634.i = lshr i32 %375, 19, !dbg !1221
  %xor635.i = xor i32 %374, %shr634.i, !dbg !1221
  %arrayidx636.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1221
  %376 = load i32, i32* %arrayidx636.i, align 16, !dbg !1221
  %shl637.i = shl i32 %376, 13, !dbg !1221
  %xor638.i = xor i32 %xor635.i, %shl637.i, !dbg !1221
  %377 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1221
  %u639.i = bitcast %union.ARIA_u128* %377 to [4 x i32]*, !dbg !1221
  %arrayidx640.i = getelementptr inbounds [4 x i32], [4 x i32]* %u639.i, i64 0, i64 1, !dbg !1221
  store i32 %xor638.i, i32* %arrayidx640.i, align 4, !dbg !1221
  %arrayidx641.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1221
  %378 = load i32, i32* %arrayidx641.i, align 8, !dbg !1221
  %arrayidx642.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1221
  %379 = load i32, i32* %arrayidx642.i, align 8, !dbg !1221
  %shr643.i = lshr i32 %379, 19, !dbg !1221
  %xor644.i = xor i32 %378, %shr643.i, !dbg !1221
  %arrayidx645.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1221
  %380 = load i32, i32* %arrayidx645.i, align 4, !dbg !1221
  %shl646.i = shl i32 %380, 13, !dbg !1221
  %xor647.i = xor i32 %xor644.i, %shl646.i, !dbg !1221
  %381 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1221
  %u648.i = bitcast %union.ARIA_u128* %381 to [4 x i32]*, !dbg !1221
  %arrayidx649.i = getelementptr inbounds [4 x i32], [4 x i32]* %u648.i, i64 0, i64 2, !dbg !1221
  store i32 %xor647.i, i32* %arrayidx649.i, align 4, !dbg !1221
  %arrayidx650.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1221
  %382 = load i32, i32* %arrayidx650.i, align 4, !dbg !1221
  %arrayidx651.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1221
  %383 = load i32, i32* %arrayidx651.i, align 4, !dbg !1221
  %shr652.i = lshr i32 %383, 19, !dbg !1221
  %xor653.i = xor i32 %382, %shr652.i, !dbg !1221
  %arrayidx654.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1221
  %384 = load i32, i32* %arrayidx654.i, align 8, !dbg !1221
  %shl655.i = shl i32 %384, 13, !dbg !1221
  %xor656.i = xor i32 %xor653.i, %shl655.i, !dbg !1221
  %385 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1221
  %u657.i = bitcast %union.ARIA_u128* %385 to [4 x i32]*, !dbg !1221
  %arrayidx658.i = getelementptr inbounds [4 x i32], [4 x i32]* %u657.i, i64 0, i64 3, !dbg !1221
  store i32 %xor656.i, i32* %arrayidx658.i, align 4, !dbg !1221
  %386 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1222
  %incdec.ptr660.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %386, i32 1, !dbg !1222
  store %union.ARIA_u128* %incdec.ptr660.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1222
  %arrayidx662.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1223
  %387 = load i32, i32* %arrayidx662.i, align 16, !dbg !1223
  %arrayidx663.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1223
  %388 = load i32, i32* %arrayidx663.i, align 16, !dbg !1223
  %shr664.i = lshr i32 %388, 19, !dbg !1223
  %xor665.i = xor i32 %387, %shr664.i, !dbg !1223
  %arrayidx666.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1223
  %389 = load i32, i32* %arrayidx666.i, align 4, !dbg !1223
  %shl667.i = shl i32 %389, 13, !dbg !1223
  %xor668.i = xor i32 %xor665.i, %shl667.i, !dbg !1223
  %390 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1223
  %u669.i = bitcast %union.ARIA_u128* %390 to [4 x i32]*, !dbg !1223
  %arrayidx670.i = getelementptr inbounds [4 x i32], [4 x i32]* %u669.i, i64 0, i64 0, !dbg !1223
  store i32 %xor668.i, i32* %arrayidx670.i, align 4, !dbg !1223
  %arrayidx671.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1223
  %391 = load i32, i32* %arrayidx671.i, align 4, !dbg !1223
  %arrayidx672.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1223
  %392 = load i32, i32* %arrayidx672.i, align 4, !dbg !1223
  %shr673.i = lshr i32 %392, 19, !dbg !1223
  %xor674.i = xor i32 %391, %shr673.i, !dbg !1223
  %arrayidx675.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1223
  %393 = load i32, i32* %arrayidx675.i, align 16, !dbg !1223
  %shl676.i = shl i32 %393, 13, !dbg !1223
  %xor677.i = xor i32 %xor674.i, %shl676.i, !dbg !1223
  %394 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1223
  %u678.i = bitcast %union.ARIA_u128* %394 to [4 x i32]*, !dbg !1223
  %arrayidx679.i = getelementptr inbounds [4 x i32], [4 x i32]* %u678.i, i64 0, i64 1, !dbg !1223
  store i32 %xor677.i, i32* %arrayidx679.i, align 4, !dbg !1223
  %arrayidx680.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1223
  %395 = load i32, i32* %arrayidx680.i, align 8, !dbg !1223
  %arrayidx681.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1223
  %396 = load i32, i32* %arrayidx681.i, align 8, !dbg !1223
  %shr682.i = lshr i32 %396, 19, !dbg !1223
  %xor683.i = xor i32 %395, %shr682.i, !dbg !1223
  %arrayidx684.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1223
  %397 = load i32, i32* %arrayidx684.i, align 4, !dbg !1223
  %shl685.i = shl i32 %397, 13, !dbg !1223
  %xor686.i = xor i32 %xor683.i, %shl685.i, !dbg !1223
  %398 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1223
  %u687.i = bitcast %union.ARIA_u128* %398 to [4 x i32]*, !dbg !1223
  %arrayidx688.i = getelementptr inbounds [4 x i32], [4 x i32]* %u687.i, i64 0, i64 2, !dbg !1223
  store i32 %xor686.i, i32* %arrayidx688.i, align 4, !dbg !1223
  %arrayidx689.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1223
  %399 = load i32, i32* %arrayidx689.i, align 4, !dbg !1223
  %arrayidx690.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1223
  %400 = load i32, i32* %arrayidx690.i, align 4, !dbg !1223
  %shr691.i = lshr i32 %400, 19, !dbg !1223
  %xor692.i = xor i32 %399, %shr691.i, !dbg !1223
  %arrayidx693.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1223
  %401 = load i32, i32* %arrayidx693.i, align 8, !dbg !1223
  %shl694.i = shl i32 %401, 13, !dbg !1223
  %xor695.i = xor i32 %xor692.i, %shl694.i, !dbg !1223
  %402 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1223
  %u696.i = bitcast %union.ARIA_u128* %402 to [4 x i32]*, !dbg !1223
  %arrayidx697.i = getelementptr inbounds [4 x i32], [4 x i32]* %u696.i, i64 0, i64 3, !dbg !1223
  store i32 %xor695.i, i32* %arrayidx697.i, align 4, !dbg !1223
  %403 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1224
  %incdec.ptr699.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %403, i32 1, !dbg !1224
  store %union.ARIA_u128* %incdec.ptr699.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1224
  %arrayidx701.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1225
  %404 = load i32, i32* %arrayidx701.i, align 16, !dbg !1225
  %arrayidx702.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1225
  %405 = load i32, i32* %arrayidx702.i, align 16, !dbg !1225
  %shr703.i = lshr i32 %405, 31, !dbg !1225
  %xor704.i = xor i32 %404, %shr703.i, !dbg !1225
  %arrayidx705.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1225
  %406 = load i32, i32* %arrayidx705.i, align 4, !dbg !1225
  %shl706.i = shl i32 %406, 1, !dbg !1225
  %xor707.i = xor i32 %xor704.i, %shl706.i, !dbg !1225
  %407 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1225
  %u708.i = bitcast %union.ARIA_u128* %407 to [4 x i32]*, !dbg !1225
  %arrayidx709.i = getelementptr inbounds [4 x i32], [4 x i32]* %u708.i, i64 0, i64 0, !dbg !1225
  store i32 %xor707.i, i32* %arrayidx709.i, align 4, !dbg !1225
  %arrayidx710.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1225
  %408 = load i32, i32* %arrayidx710.i, align 4, !dbg !1225
  %arrayidx711.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1225
  %409 = load i32, i32* %arrayidx711.i, align 4, !dbg !1225
  %shr712.i = lshr i32 %409, 31, !dbg !1225
  %xor713.i = xor i32 %408, %shr712.i, !dbg !1225
  %arrayidx714.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1225
  %410 = load i32, i32* %arrayidx714.i, align 16, !dbg !1225
  %shl715.i = shl i32 %410, 1, !dbg !1225
  %xor716.i = xor i32 %xor713.i, %shl715.i, !dbg !1225
  %411 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1225
  %u717.i = bitcast %union.ARIA_u128* %411 to [4 x i32]*, !dbg !1225
  %arrayidx718.i = getelementptr inbounds [4 x i32], [4 x i32]* %u717.i, i64 0, i64 1, !dbg !1225
  store i32 %xor716.i, i32* %arrayidx718.i, align 4, !dbg !1225
  %arrayidx719.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1225
  %412 = load i32, i32* %arrayidx719.i, align 8, !dbg !1225
  %arrayidx720.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1225
  %413 = load i32, i32* %arrayidx720.i, align 8, !dbg !1225
  %shr721.i = lshr i32 %413, 31, !dbg !1225
  %xor722.i = xor i32 %412, %shr721.i, !dbg !1225
  %arrayidx723.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1225
  %414 = load i32, i32* %arrayidx723.i, align 4, !dbg !1225
  %shl724.i = shl i32 %414, 1, !dbg !1225
  %xor725.i = xor i32 %xor722.i, %shl724.i, !dbg !1225
  %415 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1225
  %u726.i = bitcast %union.ARIA_u128* %415 to [4 x i32]*, !dbg !1225
  %arrayidx727.i = getelementptr inbounds [4 x i32], [4 x i32]* %u726.i, i64 0, i64 2, !dbg !1225
  store i32 %xor725.i, i32* %arrayidx727.i, align 4, !dbg !1225
  %arrayidx728.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1225
  %416 = load i32, i32* %arrayidx728.i, align 4, !dbg !1225
  %arrayidx729.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1225
  %417 = load i32, i32* %arrayidx729.i, align 4, !dbg !1225
  %shr730.i = lshr i32 %417, 31, !dbg !1225
  %xor731.i = xor i32 %416, %shr730.i, !dbg !1225
  %arrayidx732.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1225
  %418 = load i32, i32* %arrayidx732.i, align 8, !dbg !1225
  %shl733.i = shl i32 %418, 1, !dbg !1225
  %xor734.i = xor i32 %xor731.i, %shl733.i, !dbg !1225
  %419 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1225
  %u735.i = bitcast %union.ARIA_u128* %419 to [4 x i32]*, !dbg !1225
  %arrayidx736.i = getelementptr inbounds [4 x i32], [4 x i32]* %u735.i, i64 0, i64 3, !dbg !1225
  store i32 %xor734.i, i32* %arrayidx736.i, align 4, !dbg !1225
  %420 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1226
  %incdec.ptr738.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %420, i32 1, !dbg !1226
  store %union.ARIA_u128* %incdec.ptr738.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1226
  %arrayidx740.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1227
  %421 = load i32, i32* %arrayidx740.i, align 16, !dbg !1227
  %arrayidx741.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1227
  %422 = load i32, i32* %arrayidx741.i, align 16, !dbg !1227
  %shr742.i = lshr i32 %422, 31, !dbg !1227
  %xor743.i = xor i32 %421, %shr742.i, !dbg !1227
  %arrayidx744.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1227
  %423 = load i32, i32* %arrayidx744.i, align 4, !dbg !1227
  %shl745.i = shl i32 %423, 1, !dbg !1227
  %xor746.i = xor i32 %xor743.i, %shl745.i, !dbg !1227
  %424 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1227
  %u747.i = bitcast %union.ARIA_u128* %424 to [4 x i32]*, !dbg !1227
  %arrayidx748.i = getelementptr inbounds [4 x i32], [4 x i32]* %u747.i, i64 0, i64 0, !dbg !1227
  store i32 %xor746.i, i32* %arrayidx748.i, align 4, !dbg !1227
  %arrayidx749.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1227
  %425 = load i32, i32* %arrayidx749.i, align 4, !dbg !1227
  %arrayidx750.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1227
  %426 = load i32, i32* %arrayidx750.i, align 4, !dbg !1227
  %shr751.i = lshr i32 %426, 31, !dbg !1227
  %xor752.i = xor i32 %425, %shr751.i, !dbg !1227
  %arrayidx753.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1227
  %427 = load i32, i32* %arrayidx753.i, align 16, !dbg !1227
  %shl754.i = shl i32 %427, 1, !dbg !1227
  %xor755.i = xor i32 %xor752.i, %shl754.i, !dbg !1227
  %428 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1227
  %u756.i = bitcast %union.ARIA_u128* %428 to [4 x i32]*, !dbg !1227
  %arrayidx757.i = getelementptr inbounds [4 x i32], [4 x i32]* %u756.i, i64 0, i64 1, !dbg !1227
  store i32 %xor755.i, i32* %arrayidx757.i, align 4, !dbg !1227
  %arrayidx758.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1227
  %429 = load i32, i32* %arrayidx758.i, align 8, !dbg !1227
  %arrayidx759.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1227
  %430 = load i32, i32* %arrayidx759.i, align 8, !dbg !1227
  %shr760.i = lshr i32 %430, 31, !dbg !1227
  %xor761.i = xor i32 %429, %shr760.i, !dbg !1227
  %arrayidx762.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1227
  %431 = load i32, i32* %arrayidx762.i, align 4, !dbg !1227
  %shl763.i = shl i32 %431, 1, !dbg !1227
  %xor764.i = xor i32 %xor761.i, %shl763.i, !dbg !1227
  %432 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1227
  %u765.i = bitcast %union.ARIA_u128* %432 to [4 x i32]*, !dbg !1227
  %arrayidx766.i = getelementptr inbounds [4 x i32], [4 x i32]* %u765.i, i64 0, i64 2, !dbg !1227
  store i32 %xor764.i, i32* %arrayidx766.i, align 4, !dbg !1227
  %arrayidx767.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1227
  %433 = load i32, i32* %arrayidx767.i, align 4, !dbg !1227
  %arrayidx768.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1227
  %434 = load i32, i32* %arrayidx768.i, align 4, !dbg !1227
  %shr769.i = lshr i32 %434, 31, !dbg !1227
  %xor770.i = xor i32 %433, %shr769.i, !dbg !1227
  %arrayidx771.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1227
  %435 = load i32, i32* %arrayidx771.i, align 8, !dbg !1227
  %shl772.i = shl i32 %435, 1, !dbg !1227
  %xor773.i = xor i32 %xor770.i, %shl772.i, !dbg !1227
  %436 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1227
  %u774.i = bitcast %union.ARIA_u128* %436 to [4 x i32]*, !dbg !1227
  %arrayidx775.i = getelementptr inbounds [4 x i32], [4 x i32]* %u774.i, i64 0, i64 3, !dbg !1227
  store i32 %xor773.i, i32* %arrayidx775.i, align 4, !dbg !1227
  %437 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1228
  %incdec.ptr777.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %437, i32 1, !dbg !1228
  store %union.ARIA_u128* %incdec.ptr777.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1228
  %arrayidx779.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1229
  %438 = load i32, i32* %arrayidx779.i, align 16, !dbg !1229
  %arrayidx780.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1229
  %439 = load i32, i32* %arrayidx780.i, align 16, !dbg !1229
  %shr781.i = lshr i32 %439, 31, !dbg !1229
  %xor782.i = xor i32 %438, %shr781.i, !dbg !1229
  %arrayidx783.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1229
  %440 = load i32, i32* %arrayidx783.i, align 4, !dbg !1229
  %shl784.i = shl i32 %440, 1, !dbg !1229
  %xor785.i = xor i32 %xor782.i, %shl784.i, !dbg !1229
  %441 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1229
  %u786.i = bitcast %union.ARIA_u128* %441 to [4 x i32]*, !dbg !1229
  %arrayidx787.i = getelementptr inbounds [4 x i32], [4 x i32]* %u786.i, i64 0, i64 0, !dbg !1229
  store i32 %xor785.i, i32* %arrayidx787.i, align 4, !dbg !1229
  %arrayidx788.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1229
  %442 = load i32, i32* %arrayidx788.i, align 4, !dbg !1229
  %arrayidx789.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1229
  %443 = load i32, i32* %arrayidx789.i, align 4, !dbg !1229
  %shr790.i = lshr i32 %443, 31, !dbg !1229
  %xor791.i = xor i32 %442, %shr790.i, !dbg !1229
  %arrayidx792.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1229
  %444 = load i32, i32* %arrayidx792.i, align 16, !dbg !1229
  %shl793.i = shl i32 %444, 1, !dbg !1229
  %xor794.i = xor i32 %xor791.i, %shl793.i, !dbg !1229
  %445 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1229
  %u795.i = bitcast %union.ARIA_u128* %445 to [4 x i32]*, !dbg !1229
  %arrayidx796.i = getelementptr inbounds [4 x i32], [4 x i32]* %u795.i, i64 0, i64 1, !dbg !1229
  store i32 %xor794.i, i32* %arrayidx796.i, align 4, !dbg !1229
  %arrayidx797.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1229
  %446 = load i32, i32* %arrayidx797.i, align 8, !dbg !1229
  %arrayidx798.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1229
  %447 = load i32, i32* %arrayidx798.i, align 8, !dbg !1229
  %shr799.i = lshr i32 %447, 31, !dbg !1229
  %xor800.i = xor i32 %446, %shr799.i, !dbg !1229
  %arrayidx801.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1229
  %448 = load i32, i32* %arrayidx801.i, align 4, !dbg !1229
  %shl802.i = shl i32 %448, 1, !dbg !1229
  %xor803.i = xor i32 %xor800.i, %shl802.i, !dbg !1229
  %449 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1229
  %u804.i = bitcast %union.ARIA_u128* %449 to [4 x i32]*, !dbg !1229
  %arrayidx805.i = getelementptr inbounds [4 x i32], [4 x i32]* %u804.i, i64 0, i64 2, !dbg !1229
  store i32 %xor803.i, i32* %arrayidx805.i, align 4, !dbg !1229
  %arrayidx806.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1229
  %450 = load i32, i32* %arrayidx806.i, align 4, !dbg !1229
  %arrayidx807.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1229
  %451 = load i32, i32* %arrayidx807.i, align 4, !dbg !1229
  %shr808.i = lshr i32 %451, 31, !dbg !1229
  %xor809.i = xor i32 %450, %shr808.i, !dbg !1229
  %arrayidx810.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1229
  %452 = load i32, i32* %arrayidx810.i, align 8, !dbg !1229
  %shl811.i = shl i32 %452, 1, !dbg !1229
  %xor812.i = xor i32 %xor809.i, %shl811.i, !dbg !1229
  %453 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1229
  %u813.i = bitcast %union.ARIA_u128* %453 to [4 x i32]*, !dbg !1229
  %arrayidx814.i = getelementptr inbounds [4 x i32], [4 x i32]* %u813.i, i64 0, i64 3, !dbg !1229
  store i32 %xor812.i, i32* %arrayidx814.i, align 4, !dbg !1229
  %454 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1230
  %incdec.ptr816.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %454, i32 1, !dbg !1230
  store %union.ARIA_u128* %incdec.ptr816.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1230
  %arrayidx818.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1231
  %455 = load i32, i32* %arrayidx818.i, align 16, !dbg !1231
  %arrayidx819.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1231
  %456 = load i32, i32* %arrayidx819.i, align 16, !dbg !1231
  %shr820.i = lshr i32 %456, 31, !dbg !1231
  %xor821.i = xor i32 %455, %shr820.i, !dbg !1231
  %arrayidx822.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1231
  %457 = load i32, i32* %arrayidx822.i, align 4, !dbg !1231
  %shl823.i = shl i32 %457, 1, !dbg !1231
  %xor824.i = xor i32 %xor821.i, %shl823.i, !dbg !1231
  %458 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1231
  %u825.i = bitcast %union.ARIA_u128* %458 to [4 x i32]*, !dbg !1231
  %arrayidx826.i = getelementptr inbounds [4 x i32], [4 x i32]* %u825.i, i64 0, i64 0, !dbg !1231
  store i32 %xor824.i, i32* %arrayidx826.i, align 4, !dbg !1231
  %arrayidx827.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1231
  %459 = load i32, i32* %arrayidx827.i, align 4, !dbg !1231
  %arrayidx828.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1231
  %460 = load i32, i32* %arrayidx828.i, align 4, !dbg !1231
  %shr829.i = lshr i32 %460, 31, !dbg !1231
  %xor830.i = xor i32 %459, %shr829.i, !dbg !1231
  %arrayidx831.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1231
  %461 = load i32, i32* %arrayidx831.i, align 16, !dbg !1231
  %shl832.i = shl i32 %461, 1, !dbg !1231
  %xor833.i = xor i32 %xor830.i, %shl832.i, !dbg !1231
  %462 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1231
  %u834.i = bitcast %union.ARIA_u128* %462 to [4 x i32]*, !dbg !1231
  %arrayidx835.i = getelementptr inbounds [4 x i32], [4 x i32]* %u834.i, i64 0, i64 1, !dbg !1231
  store i32 %xor833.i, i32* %arrayidx835.i, align 4, !dbg !1231
  %arrayidx836.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1231
  %463 = load i32, i32* %arrayidx836.i, align 8, !dbg !1231
  %arrayidx837.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1231
  %464 = load i32, i32* %arrayidx837.i, align 8, !dbg !1231
  %shr838.i = lshr i32 %464, 31, !dbg !1231
  %xor839.i = xor i32 %463, %shr838.i, !dbg !1231
  %arrayidx840.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1231
  %465 = load i32, i32* %arrayidx840.i, align 4, !dbg !1231
  %shl841.i = shl i32 %465, 1, !dbg !1231
  %xor842.i = xor i32 %xor839.i, %shl841.i, !dbg !1231
  %466 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1231
  %u843.i = bitcast %union.ARIA_u128* %466 to [4 x i32]*, !dbg !1231
  %arrayidx844.i = getelementptr inbounds [4 x i32], [4 x i32]* %u843.i, i64 0, i64 2, !dbg !1231
  store i32 %xor842.i, i32* %arrayidx844.i, align 4, !dbg !1231
  %arrayidx845.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1231
  %467 = load i32, i32* %arrayidx845.i, align 4, !dbg !1231
  %arrayidx846.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1231
  %468 = load i32, i32* %arrayidx846.i, align 4, !dbg !1231
  %shr847.i = lshr i32 %468, 31, !dbg !1231
  %xor848.i = xor i32 %467, %shr847.i, !dbg !1231
  %arrayidx849.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1231
  %469 = load i32, i32* %arrayidx849.i, align 8, !dbg !1231
  %shl850.i = shl i32 %469, 1, !dbg !1231
  %xor851.i = xor i32 %xor848.i, %shl850.i, !dbg !1231
  %470 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1231
  %u852.i = bitcast %union.ARIA_u128* %470 to [4 x i32]*, !dbg !1231
  %arrayidx853.i = getelementptr inbounds [4 x i32], [4 x i32]* %u852.i, i64 0, i64 3, !dbg !1231
  store i32 %xor851.i, i32* %arrayidx853.i, align 4, !dbg !1231
  %471 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1232
  %incdec.ptr855.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %471, i32 1, !dbg !1232
  store %union.ARIA_u128* %incdec.ptr855.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1232
  %arrayidx857.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1233
  %472 = load i32, i32* %arrayidx857.i, align 16, !dbg !1233
  %arrayidx858.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1233
  %473 = load i32, i32* %arrayidx858.i, align 8, !dbg !1233
  %shr859.i = lshr i32 %473, 3, !dbg !1233
  %xor860.i = xor i32 %472, %shr859.i, !dbg !1233
  %arrayidx861.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1233
  %474 = load i32, i32* %arrayidx861.i, align 4, !dbg !1233
  %shl862.i = shl i32 %474, 29, !dbg !1233
  %xor863.i = xor i32 %xor860.i, %shl862.i, !dbg !1233
  %475 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1233
  %u864.i = bitcast %union.ARIA_u128* %475 to [4 x i32]*, !dbg !1233
  %arrayidx865.i = getelementptr inbounds [4 x i32], [4 x i32]* %u864.i, i64 0, i64 0, !dbg !1233
  store i32 %xor863.i, i32* %arrayidx865.i, align 4, !dbg !1233
  %arrayidx866.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1233
  %476 = load i32, i32* %arrayidx866.i, align 4, !dbg !1233
  %arrayidx867.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1233
  %477 = load i32, i32* %arrayidx867.i, align 4, !dbg !1233
  %shr868.i = lshr i32 %477, 3, !dbg !1233
  %xor869.i = xor i32 %476, %shr868.i, !dbg !1233
  %arrayidx870.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1233
  %478 = load i32, i32* %arrayidx870.i, align 8, !dbg !1233
  %shl871.i = shl i32 %478, 29, !dbg !1233
  %xor872.i = xor i32 %xor869.i, %shl871.i, !dbg !1233
  %479 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1233
  %u873.i = bitcast %union.ARIA_u128* %479 to [4 x i32]*, !dbg !1233
  %arrayidx874.i = getelementptr inbounds [4 x i32], [4 x i32]* %u873.i, i64 0, i64 1, !dbg !1233
  store i32 %xor872.i, i32* %arrayidx874.i, align 4, !dbg !1233
  %arrayidx875.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1233
  %480 = load i32, i32* %arrayidx875.i, align 8, !dbg !1233
  %arrayidx876.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1233
  %481 = load i32, i32* %arrayidx876.i, align 16, !dbg !1233
  %shr877.i = lshr i32 %481, 3, !dbg !1233
  %xor878.i = xor i32 %480, %shr877.i, !dbg !1233
  %arrayidx879.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1233
  %482 = load i32, i32* %arrayidx879.i, align 4, !dbg !1233
  %shl880.i = shl i32 %482, 29, !dbg !1233
  %xor881.i = xor i32 %xor878.i, %shl880.i, !dbg !1233
  %483 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1233
  %u882.i = bitcast %union.ARIA_u128* %483 to [4 x i32]*, !dbg !1233
  %arrayidx883.i = getelementptr inbounds [4 x i32], [4 x i32]* %u882.i, i64 0, i64 2, !dbg !1233
  store i32 %xor881.i, i32* %arrayidx883.i, align 4, !dbg !1233
  %arrayidx884.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1233
  %484 = load i32, i32* %arrayidx884.i, align 4, !dbg !1233
  %arrayidx885.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1233
  %485 = load i32, i32* %arrayidx885.i, align 4, !dbg !1233
  %shr886.i = lshr i32 %485, 3, !dbg !1233
  %xor887.i = xor i32 %484, %shr886.i, !dbg !1233
  %arrayidx888.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1233
  %486 = load i32, i32* %arrayidx888.i, align 16, !dbg !1233
  %shl889.i = shl i32 %486, 29, !dbg !1233
  %xor890.i = xor i32 %xor887.i, %shl889.i, !dbg !1233
  %487 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1233
  %u891.i = bitcast %union.ARIA_u128* %487 to [4 x i32]*, !dbg !1233
  %arrayidx892.i = getelementptr inbounds [4 x i32], [4 x i32]* %u891.i, i64 0, i64 3, !dbg !1233
  store i32 %xor890.i, i32* %arrayidx892.i, align 4, !dbg !1233
  %488 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1234
  %incdec.ptr894.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %488, i32 1, !dbg !1234
  store %union.ARIA_u128* %incdec.ptr894.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1234
  %arrayidx896.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1235
  %489 = load i32, i32* %arrayidx896.i, align 16, !dbg !1235
  %arrayidx897.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1235
  %490 = load i32, i32* %arrayidx897.i, align 8, !dbg !1235
  %shr898.i = lshr i32 %490, 3, !dbg !1235
  %xor899.i = xor i32 %489, %shr898.i, !dbg !1235
  %arrayidx900.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1235
  %491 = load i32, i32* %arrayidx900.i, align 4, !dbg !1235
  %shl901.i = shl i32 %491, 29, !dbg !1235
  %xor902.i = xor i32 %xor899.i, %shl901.i, !dbg !1235
  %492 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1235
  %u903.i = bitcast %union.ARIA_u128* %492 to [4 x i32]*, !dbg !1235
  %arrayidx904.i = getelementptr inbounds [4 x i32], [4 x i32]* %u903.i, i64 0, i64 0, !dbg !1235
  store i32 %xor902.i, i32* %arrayidx904.i, align 4, !dbg !1235
  %arrayidx905.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1235
  %493 = load i32, i32* %arrayidx905.i, align 4, !dbg !1235
  %arrayidx906.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1235
  %494 = load i32, i32* %arrayidx906.i, align 4, !dbg !1235
  %shr907.i = lshr i32 %494, 3, !dbg !1235
  %xor908.i = xor i32 %493, %shr907.i, !dbg !1235
  %arrayidx909.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1235
  %495 = load i32, i32* %arrayidx909.i, align 8, !dbg !1235
  %shl910.i = shl i32 %495, 29, !dbg !1235
  %xor911.i = xor i32 %xor908.i, %shl910.i, !dbg !1235
  %496 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1235
  %u912.i = bitcast %union.ARIA_u128* %496 to [4 x i32]*, !dbg !1235
  %arrayidx913.i = getelementptr inbounds [4 x i32], [4 x i32]* %u912.i, i64 0, i64 1, !dbg !1235
  store i32 %xor911.i, i32* %arrayidx913.i, align 4, !dbg !1235
  %arrayidx914.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1235
  %497 = load i32, i32* %arrayidx914.i, align 8, !dbg !1235
  %arrayidx915.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1235
  %498 = load i32, i32* %arrayidx915.i, align 16, !dbg !1235
  %shr916.i = lshr i32 %498, 3, !dbg !1235
  %xor917.i = xor i32 %497, %shr916.i, !dbg !1235
  %arrayidx918.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1235
  %499 = load i32, i32* %arrayidx918.i, align 4, !dbg !1235
  %shl919.i = shl i32 %499, 29, !dbg !1235
  %xor920.i = xor i32 %xor917.i, %shl919.i, !dbg !1235
  %500 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1235
  %u921.i = bitcast %union.ARIA_u128* %500 to [4 x i32]*, !dbg !1235
  %arrayidx922.i = getelementptr inbounds [4 x i32], [4 x i32]* %u921.i, i64 0, i64 2, !dbg !1235
  store i32 %xor920.i, i32* %arrayidx922.i, align 4, !dbg !1235
  %arrayidx923.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1235
  %501 = load i32, i32* %arrayidx923.i, align 4, !dbg !1235
  %arrayidx924.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1235
  %502 = load i32, i32* %arrayidx924.i, align 4, !dbg !1235
  %shr925.i = lshr i32 %502, 3, !dbg !1235
  %xor926.i = xor i32 %501, %shr925.i, !dbg !1235
  %arrayidx927.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1235
  %503 = load i32, i32* %arrayidx927.i, align 16, !dbg !1235
  %shl928.i = shl i32 %503, 29, !dbg !1235
  %xor929.i = xor i32 %xor926.i, %shl928.i, !dbg !1235
  %504 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1235
  %u930.i = bitcast %union.ARIA_u128* %504 to [4 x i32]*, !dbg !1235
  %arrayidx931.i = getelementptr inbounds [4 x i32], [4 x i32]* %u930.i, i64 0, i64 3, !dbg !1235
  store i32 %xor929.i, i32* %arrayidx931.i, align 4, !dbg !1235
  %505 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1236
  %incdec.ptr933.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %505, i32 1, !dbg !1236
  store %union.ARIA_u128* %incdec.ptr933.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1236
  %arrayidx935.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1237
  %506 = load i32, i32* %arrayidx935.i, align 16, !dbg !1237
  %arrayidx936.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1237
  %507 = load i32, i32* %arrayidx936.i, align 8, !dbg !1237
  %shr937.i = lshr i32 %507, 3, !dbg !1237
  %xor938.i = xor i32 %506, %shr937.i, !dbg !1237
  %arrayidx939.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1237
  %508 = load i32, i32* %arrayidx939.i, align 4, !dbg !1237
  %shl940.i = shl i32 %508, 29, !dbg !1237
  %xor941.i = xor i32 %xor938.i, %shl940.i, !dbg !1237
  %509 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1237
  %u942.i = bitcast %union.ARIA_u128* %509 to [4 x i32]*, !dbg !1237
  %arrayidx943.i = getelementptr inbounds [4 x i32], [4 x i32]* %u942.i, i64 0, i64 0, !dbg !1237
  store i32 %xor941.i, i32* %arrayidx943.i, align 4, !dbg !1237
  %arrayidx944.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1237
  %510 = load i32, i32* %arrayidx944.i, align 4, !dbg !1237
  %arrayidx945.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1237
  %511 = load i32, i32* %arrayidx945.i, align 4, !dbg !1237
  %shr946.i = lshr i32 %511, 3, !dbg !1237
  %xor947.i = xor i32 %510, %shr946.i, !dbg !1237
  %arrayidx948.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1237
  %512 = load i32, i32* %arrayidx948.i, align 8, !dbg !1237
  %shl949.i = shl i32 %512, 29, !dbg !1237
  %xor950.i = xor i32 %xor947.i, %shl949.i, !dbg !1237
  %513 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1237
  %u951.i = bitcast %union.ARIA_u128* %513 to [4 x i32]*, !dbg !1237
  %arrayidx952.i = getelementptr inbounds [4 x i32], [4 x i32]* %u951.i, i64 0, i64 1, !dbg !1237
  store i32 %xor950.i, i32* %arrayidx952.i, align 4, !dbg !1237
  %arrayidx953.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1237
  %514 = load i32, i32* %arrayidx953.i, align 8, !dbg !1237
  %arrayidx954.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1237
  %515 = load i32, i32* %arrayidx954.i, align 16, !dbg !1237
  %shr955.i = lshr i32 %515, 3, !dbg !1237
  %xor956.i = xor i32 %514, %shr955.i, !dbg !1237
  %arrayidx957.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1237
  %516 = load i32, i32* %arrayidx957.i, align 4, !dbg !1237
  %shl958.i = shl i32 %516, 29, !dbg !1237
  %xor959.i = xor i32 %xor956.i, %shl958.i, !dbg !1237
  %517 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1237
  %u960.i = bitcast %union.ARIA_u128* %517 to [4 x i32]*, !dbg !1237
  %arrayidx961.i = getelementptr inbounds [4 x i32], [4 x i32]* %u960.i, i64 0, i64 2, !dbg !1237
  store i32 %xor959.i, i32* %arrayidx961.i, align 4, !dbg !1237
  %arrayidx962.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1237
  %518 = load i32, i32* %arrayidx962.i, align 4, !dbg !1237
  %arrayidx963.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1237
  %519 = load i32, i32* %arrayidx963.i, align 4, !dbg !1237
  %shr964.i = lshr i32 %519, 3, !dbg !1237
  %xor965.i = xor i32 %518, %shr964.i, !dbg !1237
  %arrayidx966.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1237
  %520 = load i32, i32* %arrayidx966.i, align 16, !dbg !1237
  %shl967.i = shl i32 %520, 29, !dbg !1237
  %xor968.i = xor i32 %xor965.i, %shl967.i, !dbg !1237
  %521 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1237
  %u969.i = bitcast %union.ARIA_u128* %521 to [4 x i32]*, !dbg !1237
  %arrayidx970.i = getelementptr inbounds [4 x i32], [4 x i32]* %u969.i, i64 0, i64 3, !dbg !1237
  store i32 %xor968.i, i32* %arrayidx970.i, align 4, !dbg !1237
  %522 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1238
  %incdec.ptr972.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %522, i32 1, !dbg !1238
  store %union.ARIA_u128* %incdec.ptr972.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1238
  %arrayidx974.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1239
  %523 = load i32, i32* %arrayidx974.i, align 16, !dbg !1239
  %arrayidx975.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1239
  %524 = load i32, i32* %arrayidx975.i, align 8, !dbg !1239
  %shr976.i = lshr i32 %524, 3, !dbg !1239
  %xor977.i = xor i32 %523, %shr976.i, !dbg !1239
  %arrayidx978.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1239
  %525 = load i32, i32* %arrayidx978.i, align 4, !dbg !1239
  %shl979.i = shl i32 %525, 29, !dbg !1239
  %xor980.i = xor i32 %xor977.i, %shl979.i, !dbg !1239
  %526 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1239
  %u981.i = bitcast %union.ARIA_u128* %526 to [4 x i32]*, !dbg !1239
  %arrayidx982.i = getelementptr inbounds [4 x i32], [4 x i32]* %u981.i, i64 0, i64 0, !dbg !1239
  store i32 %xor980.i, i32* %arrayidx982.i, align 4, !dbg !1239
  %arrayidx983.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1239
  %527 = load i32, i32* %arrayidx983.i, align 4, !dbg !1239
  %arrayidx984.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1239
  %528 = load i32, i32* %arrayidx984.i, align 4, !dbg !1239
  %shr985.i = lshr i32 %528, 3, !dbg !1239
  %xor986.i = xor i32 %527, %shr985.i, !dbg !1239
  %arrayidx987.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1239
  %529 = load i32, i32* %arrayidx987.i, align 8, !dbg !1239
  %shl988.i = shl i32 %529, 29, !dbg !1239
  %xor989.i = xor i32 %xor986.i, %shl988.i, !dbg !1239
  %530 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1239
  %u990.i = bitcast %union.ARIA_u128* %530 to [4 x i32]*, !dbg !1239
  %arrayidx991.i = getelementptr inbounds [4 x i32], [4 x i32]* %u990.i, i64 0, i64 1, !dbg !1239
  store i32 %xor989.i, i32* %arrayidx991.i, align 4, !dbg !1239
  %arrayidx992.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1239
  %531 = load i32, i32* %arrayidx992.i, align 8, !dbg !1239
  %arrayidx993.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1239
  %532 = load i32, i32* %arrayidx993.i, align 16, !dbg !1239
  %shr994.i = lshr i32 %532, 3, !dbg !1239
  %xor995.i = xor i32 %531, %shr994.i, !dbg !1239
  %arrayidx996.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1239
  %533 = load i32, i32* %arrayidx996.i, align 4, !dbg !1239
  %shl997.i = shl i32 %533, 29, !dbg !1239
  %xor998.i = xor i32 %xor995.i, %shl997.i, !dbg !1239
  %534 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1239
  %u999.i = bitcast %union.ARIA_u128* %534 to [4 x i32]*, !dbg !1239
  %arrayidx1000.i = getelementptr inbounds [4 x i32], [4 x i32]* %u999.i, i64 0, i64 2, !dbg !1239
  store i32 %xor998.i, i32* %arrayidx1000.i, align 4, !dbg !1239
  %arrayidx1001.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1239
  %535 = load i32, i32* %arrayidx1001.i, align 4, !dbg !1239
  %arrayidx1002.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1239
  %536 = load i32, i32* %arrayidx1002.i, align 4, !dbg !1239
  %shr1003.i = lshr i32 %536, 3, !dbg !1239
  %xor1004.i = xor i32 %535, %shr1003.i, !dbg !1239
  %arrayidx1005.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1239
  %537 = load i32, i32* %arrayidx1005.i, align 16, !dbg !1239
  %shl1006.i = shl i32 %537, 29, !dbg !1239
  %xor1007.i = xor i32 %xor1004.i, %shl1006.i, !dbg !1239
  %538 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1239
  %u1008.i = bitcast %union.ARIA_u128* %538 to [4 x i32]*, !dbg !1239
  %arrayidx1009.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1008.i, i64 0, i64 3, !dbg !1239
  store i32 %xor1007.i, i32* %arrayidx1009.i, align 4, !dbg !1239
  %539 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1240
  %incdec.ptr1011.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %539, i32 1, !dbg !1240
  store %union.ARIA_u128* %incdec.ptr1011.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1240
  %arrayidx1013.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1241
  %540 = load i32, i32* %arrayidx1013.i, align 16, !dbg !1241
  %arrayidx1014.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1241
  %541 = load i32, i32* %arrayidx1014.i, align 4, !dbg !1241
  %shr1015.i = lshr i32 %541, 1, !dbg !1241
  %xor1016.i = xor i32 %540, %shr1015.i, !dbg !1241
  %arrayidx1017.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1241
  %542 = load i32, i32* %arrayidx1017.i, align 16, !dbg !1241
  %shl1018.i = shl i32 %542, 31, !dbg !1241
  %xor1019.i = xor i32 %xor1016.i, %shl1018.i, !dbg !1241
  %543 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1241
  %u1020.i = bitcast %union.ARIA_u128* %543 to [4 x i32]*, !dbg !1241
  %arrayidx1021.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1020.i, i64 0, i64 0, !dbg !1241
  store i32 %xor1019.i, i32* %arrayidx1021.i, align 4, !dbg !1241
  %arrayidx1022.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1241
  %544 = load i32, i32* %arrayidx1022.i, align 4, !dbg !1241
  %arrayidx1023.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1241
  %545 = load i32, i32* %arrayidx1023.i, align 8, !dbg !1241
  %shr1024.i = lshr i32 %545, 1, !dbg !1241
  %xor1025.i = xor i32 %544, %shr1024.i, !dbg !1241
  %arrayidx1026.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1241
  %546 = load i32, i32* %arrayidx1026.i, align 4, !dbg !1241
  %shl1027.i = shl i32 %546, 31, !dbg !1241
  %xor1028.i = xor i32 %xor1025.i, %shl1027.i, !dbg !1241
  %547 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1241
  %u1029.i = bitcast %union.ARIA_u128* %547 to [4 x i32]*, !dbg !1241
  %arrayidx1030.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1029.i, i64 0, i64 1, !dbg !1241
  store i32 %xor1028.i, i32* %arrayidx1030.i, align 4, !dbg !1241
  %arrayidx1031.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1241
  %548 = load i32, i32* %arrayidx1031.i, align 8, !dbg !1241
  %arrayidx1032.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1241
  %549 = load i32, i32* %arrayidx1032.i, align 4, !dbg !1241
  %shr1033.i = lshr i32 %549, 1, !dbg !1241
  %xor1034.i = xor i32 %548, %shr1033.i, !dbg !1241
  %arrayidx1035.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1241
  %550 = load i32, i32* %arrayidx1035.i, align 8, !dbg !1241
  %shl1036.i = shl i32 %550, 31, !dbg !1241
  %xor1037.i = xor i32 %xor1034.i, %shl1036.i, !dbg !1241
  %551 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1241
  %u1038.i = bitcast %union.ARIA_u128* %551 to [4 x i32]*, !dbg !1241
  %arrayidx1039.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1038.i, i64 0, i64 2, !dbg !1241
  store i32 %xor1037.i, i32* %arrayidx1039.i, align 4, !dbg !1241
  %arrayidx1040.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1241
  %552 = load i32, i32* %arrayidx1040.i, align 4, !dbg !1241
  %arrayidx1041.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1241
  %553 = load i32, i32* %arrayidx1041.i, align 16, !dbg !1241
  %shr1042.i = lshr i32 %553, 1, !dbg !1241
  %xor1043.i = xor i32 %552, %shr1042.i, !dbg !1241
  %arrayidx1044.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1241
  %554 = load i32, i32* %arrayidx1044.i, align 4, !dbg !1241
  %shl1045.i = shl i32 %554, 31, !dbg !1241
  %xor1046.i = xor i32 %xor1043.i, %shl1045.i, !dbg !1241
  %555 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1241
  %u1047.i = bitcast %union.ARIA_u128* %555 to [4 x i32]*, !dbg !1241
  %arrayidx1048.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1047.i, i64 0, i64 3, !dbg !1241
  store i32 %xor1046.i, i32* %arrayidx1048.i, align 4, !dbg !1241
  %556 = load i32, i32* %bits.addr.i, align 4, !dbg !1242
  %cmp1050.i = icmp sgt i32 %556, 128, !dbg !1243
  br i1 %cmp1050.i, label %if.then1052.i, label %if.end1131.i, !dbg !1244

if.then1052.i:                                    ; preds = %if.end263.i
  %557 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1245
  %incdec.ptr1053.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %557, i32 1, !dbg !1245
  store %union.ARIA_u128* %incdec.ptr1053.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1245
  %arrayidx1055.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1246
  %558 = load i32, i32* %arrayidx1055.i, align 16, !dbg !1246
  %arrayidx1056.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1246
  %559 = load i32, i32* %arrayidx1056.i, align 4, !dbg !1246
  %shr1057.i = lshr i32 %559, 1, !dbg !1246
  %xor1058.i = xor i32 %558, %shr1057.i, !dbg !1246
  %arrayidx1059.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1246
  %560 = load i32, i32* %arrayidx1059.i, align 16, !dbg !1246
  %shl1060.i = shl i32 %560, 31, !dbg !1246
  %xor1061.i = xor i32 %xor1058.i, %shl1060.i, !dbg !1246
  %561 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1246
  %u1062.i = bitcast %union.ARIA_u128* %561 to [4 x i32]*, !dbg !1246
  %arrayidx1063.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1062.i, i64 0, i64 0, !dbg !1246
  store i32 %xor1061.i, i32* %arrayidx1063.i, align 4, !dbg !1246
  %arrayidx1064.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1246
  %562 = load i32, i32* %arrayidx1064.i, align 4, !dbg !1246
  %arrayidx1065.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1246
  %563 = load i32, i32* %arrayidx1065.i, align 8, !dbg !1246
  %shr1066.i = lshr i32 %563, 1, !dbg !1246
  %xor1067.i = xor i32 %562, %shr1066.i, !dbg !1246
  %arrayidx1068.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1246
  %564 = load i32, i32* %arrayidx1068.i, align 4, !dbg !1246
  %shl1069.i = shl i32 %564, 31, !dbg !1246
  %xor1070.i = xor i32 %xor1067.i, %shl1069.i, !dbg !1246
  %565 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1246
  %u1071.i = bitcast %union.ARIA_u128* %565 to [4 x i32]*, !dbg !1246
  %arrayidx1072.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1071.i, i64 0, i64 1, !dbg !1246
  store i32 %xor1070.i, i32* %arrayidx1072.i, align 4, !dbg !1246
  %arrayidx1073.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1246
  %566 = load i32, i32* %arrayidx1073.i, align 8, !dbg !1246
  %arrayidx1074.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1246
  %567 = load i32, i32* %arrayidx1074.i, align 4, !dbg !1246
  %shr1075.i = lshr i32 %567, 1, !dbg !1246
  %xor1076.i = xor i32 %566, %shr1075.i, !dbg !1246
  %arrayidx1077.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1246
  %568 = load i32, i32* %arrayidx1077.i, align 8, !dbg !1246
  %shl1078.i = shl i32 %568, 31, !dbg !1246
  %xor1079.i = xor i32 %xor1076.i, %shl1078.i, !dbg !1246
  %569 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1246
  %u1080.i = bitcast %union.ARIA_u128* %569 to [4 x i32]*, !dbg !1246
  %arrayidx1081.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1080.i, i64 0, i64 2, !dbg !1246
  store i32 %xor1079.i, i32* %arrayidx1081.i, align 4, !dbg !1246
  %arrayidx1082.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1246
  %570 = load i32, i32* %arrayidx1082.i, align 4, !dbg !1246
  %arrayidx1083.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1246
  %571 = load i32, i32* %arrayidx1083.i, align 16, !dbg !1246
  %shr1084.i = lshr i32 %571, 1, !dbg !1246
  %xor1085.i = xor i32 %570, %shr1084.i, !dbg !1246
  %arrayidx1086.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1246
  %572 = load i32, i32* %arrayidx1086.i, align 4, !dbg !1246
  %shl1087.i = shl i32 %572, 31, !dbg !1246
  %xor1088.i = xor i32 %xor1085.i, %shl1087.i, !dbg !1246
  %573 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1246
  %u1089.i = bitcast %union.ARIA_u128* %573 to [4 x i32]*, !dbg !1246
  %arrayidx1090.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1089.i, i64 0, i64 3, !dbg !1246
  store i32 %xor1088.i, i32* %arrayidx1090.i, align 4, !dbg !1246
  %574 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1247
  %incdec.ptr1092.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %574, i32 1, !dbg !1247
  store %union.ARIA_u128* %incdec.ptr1092.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1247
  %arrayidx1094.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 0, !dbg !1248
  %575 = load i32, i32* %arrayidx1094.i, align 16, !dbg !1248
  %arrayidx1095.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1248
  %576 = load i32, i32* %arrayidx1095.i, align 4, !dbg !1248
  %shr1096.i = lshr i32 %576, 1, !dbg !1248
  %xor1097.i = xor i32 %575, %shr1096.i, !dbg !1248
  %arrayidx1098.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1248
  %577 = load i32, i32* %arrayidx1098.i, align 16, !dbg !1248
  %shl1099.i = shl i32 %577, 31, !dbg !1248
  %xor1100.i = xor i32 %xor1097.i, %shl1099.i, !dbg !1248
  %578 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1248
  %u1101.i = bitcast %union.ARIA_u128* %578 to [4 x i32]*, !dbg !1248
  %arrayidx1102.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1101.i, i64 0, i64 0, !dbg !1248
  store i32 %xor1100.i, i32* %arrayidx1102.i, align 4, !dbg !1248
  %arrayidx1103.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 1, !dbg !1248
  %579 = load i32, i32* %arrayidx1103.i, align 4, !dbg !1248
  %arrayidx1104.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1248
  %580 = load i32, i32* %arrayidx1104.i, align 8, !dbg !1248
  %shr1105.i = lshr i32 %580, 1, !dbg !1248
  %xor1106.i = xor i32 %579, %shr1105.i, !dbg !1248
  %arrayidx1107.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1248
  %581 = load i32, i32* %arrayidx1107.i, align 4, !dbg !1248
  %shl1108.i = shl i32 %581, 31, !dbg !1248
  %xor1109.i = xor i32 %xor1106.i, %shl1108.i, !dbg !1248
  %582 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1248
  %u1110.i = bitcast %union.ARIA_u128* %582 to [4 x i32]*, !dbg !1248
  %arrayidx1111.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1110.i, i64 0, i64 1, !dbg !1248
  store i32 %xor1109.i, i32* %arrayidx1111.i, align 4, !dbg !1248
  %arrayidx1112.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 2, !dbg !1248
  %583 = load i32, i32* %arrayidx1112.i, align 8, !dbg !1248
  %arrayidx1113.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1248
  %584 = load i32, i32* %arrayidx1113.i, align 4, !dbg !1248
  %shr1114.i = lshr i32 %584, 1, !dbg !1248
  %xor1115.i = xor i32 %583, %shr1114.i, !dbg !1248
  %arrayidx1116.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1248
  %585 = load i32, i32* %arrayidx1116.i, align 8, !dbg !1248
  %shl1117.i = shl i32 %585, 31, !dbg !1248
  %xor1118.i = xor i32 %xor1115.i, %shl1117.i, !dbg !1248
  %586 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1248
  %u1119.i = bitcast %union.ARIA_u128* %586 to [4 x i32]*, !dbg !1248
  %arrayidx1120.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1119.i, i64 0, i64 2, !dbg !1248
  store i32 %xor1118.i, i32* %arrayidx1120.i, align 4, !dbg !1248
  %arrayidx1121.i = getelementptr inbounds [4 x i32], [4 x i32]* %w2.i, i64 0, i64 3, !dbg !1248
  %587 = load i32, i32* %arrayidx1121.i, align 4, !dbg !1248
  %arrayidx1122.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1248
  %588 = load i32, i32* %arrayidx1122.i, align 16, !dbg !1248
  %shr1123.i = lshr i32 %588, 1, !dbg !1248
  %xor1124.i = xor i32 %587, %shr1123.i, !dbg !1248
  %arrayidx1125.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1248
  %589 = load i32, i32* %arrayidx1125.i, align 4, !dbg !1248
  %shl1126.i = shl i32 %589, 31, !dbg !1248
  %xor1127.i = xor i32 %xor1124.i, %shl1126.i, !dbg !1248
  %590 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1248
  %u1128.i = bitcast %union.ARIA_u128* %590 to [4 x i32]*, !dbg !1248
  %arrayidx1129.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1128.i, i64 0, i64 3, !dbg !1248
  store i32 %xor1127.i, i32* %arrayidx1129.i, align 4, !dbg !1248
  br label %if.end1131.i, !dbg !1249

if.end1131.i:                                     ; preds = %if.then1052.i, %if.end263.i
  %591 = load i32, i32* %bits.addr.i, align 4, !dbg !1250
  %cmp1132.i = icmp sgt i32 %591, 192, !dbg !1251
  br i1 %cmp1132.i, label %if.then1134.i, label %if.end1213.i, !dbg !1252

if.then1134.i:                                    ; preds = %if.end1131.i
  %592 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1253
  %incdec.ptr1135.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %592, i32 1, !dbg !1253
  store %union.ARIA_u128* %incdec.ptr1135.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1253
  %arrayidx1137.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 0, !dbg !1254
  %593 = load i32, i32* %arrayidx1137.i, align 16, !dbg !1254
  %arrayidx1138.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1254
  %594 = load i32, i32* %arrayidx1138.i, align 4, !dbg !1254
  %shr1139.i = lshr i32 %594, 1, !dbg !1254
  %xor1140.i = xor i32 %593, %shr1139.i, !dbg !1254
  %arrayidx1141.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1254
  %595 = load i32, i32* %arrayidx1141.i, align 16, !dbg !1254
  %shl1142.i = shl i32 %595, 31, !dbg !1254
  %xor1143.i = xor i32 %xor1140.i, %shl1142.i, !dbg !1254
  %596 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1254
  %u1144.i = bitcast %union.ARIA_u128* %596 to [4 x i32]*, !dbg !1254
  %arrayidx1145.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1144.i, i64 0, i64 0, !dbg !1254
  store i32 %xor1143.i, i32* %arrayidx1145.i, align 4, !dbg !1254
  %arrayidx1146.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 1, !dbg !1254
  %597 = load i32, i32* %arrayidx1146.i, align 4, !dbg !1254
  %arrayidx1147.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1254
  %598 = load i32, i32* %arrayidx1147.i, align 8, !dbg !1254
  %shr1148.i = lshr i32 %598, 1, !dbg !1254
  %xor1149.i = xor i32 %597, %shr1148.i, !dbg !1254
  %arrayidx1150.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1254
  %599 = load i32, i32* %arrayidx1150.i, align 4, !dbg !1254
  %shl1151.i = shl i32 %599, 31, !dbg !1254
  %xor1152.i = xor i32 %xor1149.i, %shl1151.i, !dbg !1254
  %600 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1254
  %u1153.i = bitcast %union.ARIA_u128* %600 to [4 x i32]*, !dbg !1254
  %arrayidx1154.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1153.i, i64 0, i64 1, !dbg !1254
  store i32 %xor1152.i, i32* %arrayidx1154.i, align 4, !dbg !1254
  %arrayidx1155.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 2, !dbg !1254
  %601 = load i32, i32* %arrayidx1155.i, align 8, !dbg !1254
  %arrayidx1156.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1254
  %602 = load i32, i32* %arrayidx1156.i, align 4, !dbg !1254
  %shr1157.i = lshr i32 %602, 1, !dbg !1254
  %xor1158.i = xor i32 %601, %shr1157.i, !dbg !1254
  %arrayidx1159.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1254
  %603 = load i32, i32* %arrayidx1159.i, align 8, !dbg !1254
  %shl1160.i = shl i32 %603, 31, !dbg !1254
  %xor1161.i = xor i32 %xor1158.i, %shl1160.i, !dbg !1254
  %604 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1254
  %u1162.i = bitcast %union.ARIA_u128* %604 to [4 x i32]*, !dbg !1254
  %arrayidx1163.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1162.i, i64 0, i64 2, !dbg !1254
  store i32 %xor1161.i, i32* %arrayidx1163.i, align 4, !dbg !1254
  %arrayidx1164.i = getelementptr inbounds [4 x i32], [4 x i32]* %w3.i, i64 0, i64 3, !dbg !1254
  %605 = load i32, i32* %arrayidx1164.i, align 4, !dbg !1254
  %arrayidx1165.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1254
  %606 = load i32, i32* %arrayidx1165.i, align 16, !dbg !1254
  %shr1166.i = lshr i32 %606, 1, !dbg !1254
  %xor1167.i = xor i32 %605, %shr1166.i, !dbg !1254
  %arrayidx1168.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1254
  %607 = load i32, i32* %arrayidx1168.i, align 4, !dbg !1254
  %shl1169.i = shl i32 %607, 31, !dbg !1254
  %xor1170.i = xor i32 %xor1167.i, %shl1169.i, !dbg !1254
  %608 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1254
  %u1171.i = bitcast %union.ARIA_u128* %608 to [4 x i32]*, !dbg !1254
  %arrayidx1172.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1171.i, i64 0, i64 3, !dbg !1254
  store i32 %xor1170.i, i32* %arrayidx1172.i, align 4, !dbg !1254
  %609 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1255
  %incdec.ptr1174.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %609, i32 1, !dbg !1255
  store %union.ARIA_u128* %incdec.ptr1174.i, %union.ARIA_u128** %rk.i, align 8, !dbg !1255
  %arrayidx1176.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 0, !dbg !1256
  %610 = load i32, i32* %arrayidx1176.i, align 16, !dbg !1256
  %arrayidx1177.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1256
  %611 = load i32, i32* %arrayidx1177.i, align 4, !dbg !1256
  %shr1178.i = lshr i32 %611, 13, !dbg !1256
  %xor1179.i = xor i32 %610, %shr1178.i, !dbg !1256
  %arrayidx1180.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1256
  %612 = load i32, i32* %arrayidx1180.i, align 16, !dbg !1256
  %shl1181.i = shl i32 %612, 19, !dbg !1256
  %xor1182.i = xor i32 %xor1179.i, %shl1181.i, !dbg !1256
  %613 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1256
  %u1183.i = bitcast %union.ARIA_u128* %613 to [4 x i32]*, !dbg !1256
  %arrayidx1184.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1183.i, i64 0, i64 0, !dbg !1256
  store i32 %xor1182.i, i32* %arrayidx1184.i, align 4, !dbg !1256
  %arrayidx1185.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 1, !dbg !1256
  %614 = load i32, i32* %arrayidx1185.i, align 4, !dbg !1256
  %arrayidx1186.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1256
  %615 = load i32, i32* %arrayidx1186.i, align 8, !dbg !1256
  %shr1187.i = lshr i32 %615, 13, !dbg !1256
  %xor1188.i = xor i32 %614, %shr1187.i, !dbg !1256
  %arrayidx1189.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 1, !dbg !1256
  %616 = load i32, i32* %arrayidx1189.i, align 4, !dbg !1256
  %shl1190.i = shl i32 %616, 19, !dbg !1256
  %xor1191.i = xor i32 %xor1188.i, %shl1190.i, !dbg !1256
  %617 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1256
  %u1192.i = bitcast %union.ARIA_u128* %617 to [4 x i32]*, !dbg !1256
  %arrayidx1193.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1192.i, i64 0, i64 1, !dbg !1256
  store i32 %xor1191.i, i32* %arrayidx1193.i, align 4, !dbg !1256
  %arrayidx1194.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 2, !dbg !1256
  %618 = load i32, i32* %arrayidx1194.i, align 8, !dbg !1256
  %arrayidx1195.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1256
  %619 = load i32, i32* %arrayidx1195.i, align 4, !dbg !1256
  %shr1196.i = lshr i32 %619, 13, !dbg !1256
  %xor1197.i = xor i32 %618, %shr1196.i, !dbg !1256
  %arrayidx1198.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 2, !dbg !1256
  %620 = load i32, i32* %arrayidx1198.i, align 8, !dbg !1256
  %shl1199.i = shl i32 %620, 19, !dbg !1256
  %xor1200.i = xor i32 %xor1197.i, %shl1199.i, !dbg !1256
  %621 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1256
  %u1201.i = bitcast %union.ARIA_u128* %621 to [4 x i32]*, !dbg !1256
  %arrayidx1202.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1201.i, i64 0, i64 2, !dbg !1256
  store i32 %xor1200.i, i32* %arrayidx1202.i, align 4, !dbg !1256
  %arrayidx1203.i = getelementptr inbounds [4 x i32], [4 x i32]* %w0.i, i64 0, i64 3, !dbg !1256
  %622 = load i32, i32* %arrayidx1203.i, align 4, !dbg !1256
  %arrayidx1204.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 0, !dbg !1256
  %623 = load i32, i32* %arrayidx1204.i, align 16, !dbg !1256
  %shr1205.i = lshr i32 %623, 13, !dbg !1256
  %xor1206.i = xor i32 %622, %shr1205.i, !dbg !1256
  %arrayidx1207.i = getelementptr inbounds [4 x i32], [4 x i32]* %w1.i, i64 0, i64 3, !dbg !1256
  %624 = load i32, i32* %arrayidx1207.i, align 4, !dbg !1256
  %shl1208.i = shl i32 %624, 19, !dbg !1256
  %xor1209.i = xor i32 %xor1206.i, %shl1208.i, !dbg !1256
  %625 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i, align 8, !dbg !1256
  %u1210.i = bitcast %union.ARIA_u128* %625 to [4 x i32]*, !dbg !1256
  %arrayidx1211.i = getelementptr inbounds [4 x i32], [4 x i32]* %u1210.i, i64 0, i64 3, !dbg !1256
  store i32 %xor1209.i, i32* %arrayidx1211.i, align 4, !dbg !1256
  br label %if.end1213.i, !dbg !1257

if.end1213.i:                                     ; preds = %if.then1134.i, %if.end1131.i
  store i32 0, i32* %retval.i, align 4, !dbg !1258
  br label %aria_set_encrypt_key.exit, !dbg !1258

aria_set_encrypt_key.exit:                        ; preds = %if.then.i, %if.then6.i, %if.end1213.i
  %626 = load i32, i32* %retval.i, align 4, !dbg !1259
  call void @llvm.dbg.declare(metadata [94 x i8]* %charset, metadata !1260, metadata !DIExpression()), !dbg !1266
  %627 = bitcast [94 x i8]* %charset to i8*, !dbg !1266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %627, i8* align 16 getelementptr inbounds ([94 x i8], [94 x i8]* @__const.main.charset, i32 0, i32 0), i64 94, i1 false), !dbg !1266
  call void @llvm.dbg.declare(metadata i64* %length, metadata !1267, metadata !DIExpression()), !dbg !1271
  store i64 94, i64* %length, align 8, !dbg !1271
  call void @llvm.dbg.declare(metadata i32* %size, metadata !1272, metadata !DIExpression()), !dbg !1273
  store i32 16, i32* %size, align 4, !dbg !1273
  call void @llvm.dbg.declare(metadata i64* %round, metadata !1274, metadata !DIExpression()), !dbg !1275
  store i64 5, i64* %round, align 8, !dbg !1275
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1276, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.declare(metadata i8** %buff, metadata !1278, metadata !DIExpression()), !dbg !1280
  %call1 = call i8* @malloc(i64 2640), !dbg !1281
  store i8* %call1, i8** %buff, align 8, !dbg !1280
  store i32 0, i32* %i, align 4, !dbg !1282
  br label %for.cond, !dbg !1284

for.cond:                                         ; preds = %for.inc, %aria_set_encrypt_key.exit
  %628 = load i32, i32* %i, align 4, !dbg !1285
  %cmp = icmp slt i32 %628, 2640, !dbg !1287
  br i1 %cmp, label %for.body, label %for.end, !dbg !1288

for.body:                                         ; preds = %for.cond
  %629 = load i32, i32* %i, align 4, !dbg !1289
  %conv = trunc i32 %629 to i8, !dbg !1289
  %630 = load i8*, i8** %buff, align 8, !dbg !1291
  %631 = load i32, i32* %i, align 4, !dbg !1292
  %idxprom = sext i32 %631 to i64, !dbg !1291
  %arrayidx = getelementptr inbounds i8, i8* %630, i64 %idxprom, !dbg !1291
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1293
  br label %for.inc, !dbg !1294

for.inc:                                          ; preds = %for.body
  %632 = load i32, i32* %i, align 4, !dbg !1295
  %add = add nsw i32 %632, 16, !dbg !1295
  store i32 %add, i32* %i, align 4, !dbg !1295
  br label %for.cond, !dbg !1296, !llvm.loop !1297

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %input, metadata !1299, metadata !DIExpression()), !dbg !1300
  %633 = load i32, i32* %size, align 4, !dbg !1301
  %conv2 = sext i32 %633 to i64, !dbg !1301
  %mul = mul i64 1, %conv2, !dbg !1302
  %634 = load i64, i64* %round, align 8, !dbg !1303
  %mul3 = mul i64 %mul, %634, !dbg !1304
  %call4 = call i8* @malloc(i64 %mul3), !dbg !1305
  store i8* %call4, i8** %input, align 8, !dbg !1300
  call void @llvm.dbg.declare(metadata i64* %n, metadata !1306, metadata !DIExpression()), !dbg !1308
  store i64 0, i64* %n, align 8, !dbg !1308
  br label %for.cond5, !dbg !1309

for.cond5:                                        ; preds = %for.inc14, %for.end
  %635 = load i64, i64* %n, align 8, !dbg !1310
  %636 = load i64, i64* %length, align 8, !dbg !1312
  %637 = load i64, i64* %round, align 8, !dbg !1313
  %mul6 = mul i64 %636, %637, !dbg !1314
  %cmp7 = icmp ult i64 %635, %mul6, !dbg !1315
  br i1 %cmp7, label %for.body9, label %for.end15, !dbg !1316

for.body9:                                        ; preds = %for.cond5
  call void @llvm.dbg.declare(metadata i32* %key, metadata !1317, metadata !DIExpression()), !dbg !1319
  %call10 = call i32 (...) @rand(), !dbg !1320
  %rem = srem i32 %call10, 94, !dbg !1321
  store i32 %rem, i32* %key, align 4, !dbg !1319
  %638 = load i32, i32* %key, align 4, !dbg !1322
  %idxprom11 = sext i32 %638 to i64, !dbg !1323
  %arrayidx12 = getelementptr inbounds [94 x i8], [94 x i8]* %charset, i64 0, i64 %idxprom11, !dbg !1323
  %639 = load i8, i8* %arrayidx12, align 1, !dbg !1323
  %640 = load i8*, i8** %input, align 8, !dbg !1324
  %641 = load i64, i64* %n, align 8, !dbg !1325
  %arrayidx13 = getelementptr inbounds i8, i8* %640, i64 %641, !dbg !1324
  store i8 %639, i8* %arrayidx13, align 1, !dbg !1326
  br label %for.inc14, !dbg !1327

for.inc14:                                        ; preds = %for.body9
  %642 = load i64, i64* %n, align 8, !dbg !1328
  %inc = add i64 %642, 1, !dbg !1328
  store i64 %inc, i64* %n, align 8, !dbg !1328
  br label %for.cond5, !dbg !1329, !llvm.loop !1330

for.end15:                                        ; preds = %for.cond5
  br label %while.cond, !dbg !1332

while.cond:                                       ; preds = %aria_encrypt.exit, %for.end15
  %643 = load i64, i64* %round, align 8, !dbg !1333
  %tobool = icmp ne i64 %643, 0, !dbg !1332
  br i1 %tobool, label %while.body, label %while.end, !dbg !1332

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %in, metadata !1334, metadata !DIExpression()), !dbg !1335
  %644 = load i32, i32* %size, align 4, !dbg !1336
  %conv16 = sext i32 %644 to i64, !dbg !1336
  %call17 = call i8* @malloc(i64 %conv16), !dbg !1337
  store i8* %call17, i8** %in, align 8, !dbg !1335
  %645 = load i8*, i8** %in, align 8, !dbg !1338
  %646 = load i8*, i8** %input, align 8, !dbg !1339
  %647 = load i64, i64* %round, align 8, !dbg !1340
  %sub = sub i64 %647, 1, !dbg !1341
  %648 = load i32, i32* %size, align 4, !dbg !1342
  %conv18 = sext i32 %648 to i64, !dbg !1342
  %mul19 = mul i64 %sub, %conv18, !dbg !1343
  %add.ptr = getelementptr inbounds i8, i8* %646, i64 %mul19, !dbg !1344
  %649 = load i32, i32* %size, align 4, !dbg !1345
  %conv20 = sext i32 %649 to i64, !dbg !1345
  %call21 = call i8* @strncpy(i8* %645, i8* %add.ptr, i64 %conv20) #7, !dbg !1346
  %650 = load i8*, i8** %in, align 8, !dbg !1347
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %enc_out, i64 0, i64 0, !dbg !1348
  store i8* %650, i8** %in.addr.i, align 8
  store i8* %arraydecay, i8** %out.addr.i, align 8
  store %struct.aria_key_st* %enc_key, %struct.aria_key_st** %key.addr.i23, align 8
  %key.addr1.i = bitcast %struct.aria_key_st** %key.addr.i23 to i8*
  call void @llvm.var.annotation(i8* %key.addr1.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 473) #7
  %rk2.i = bitcast %union.ARIA_u128** %rk.i29 to i8*, !dbg !1349
  call void @llvm.var.annotation(i8* %rk2.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 477) #7, !dbg !1349
  %651 = load i8*, i8** %in.addr.i, align 8, !dbg !1350
  %cmp.i30 = icmp eq i8* %651, null, !dbg !1351
  br i1 %cmp.i30, label %if.then.i34, label %lor.lhs.false.i32, !dbg !1352

lor.lhs.false.i32:                                ; preds = %while.body
  %652 = load i8*, i8** %out.addr.i, align 8, !dbg !1353
  %cmp3.i31 = icmp eq i8* %652, null, !dbg !1354
  br i1 %cmp3.i31, label %if.then.i34, label %lor.lhs.false4.i, !dbg !1355

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i32
  %653 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr.i23, align 8, !dbg !1356
  %cmp5.i33 = icmp eq %struct.aria_key_st* %653, null, !dbg !1357
  br i1 %cmp5.i33, label %if.then.i34, label %if.end.i38, !dbg !1358

if.then.i34:                                      ; preds = %lor.lhs.false4.i, %lor.lhs.false.i32, %while.body
  br label %aria_encrypt.exit, !dbg !1359

if.end.i38:                                       ; preds = %lor.lhs.false4.i
  %654 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr.i23, align 8, !dbg !1360
  %rd_key.i35 = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %654, i32 0, i32 0, !dbg !1361
  %arraydecay.i36 = getelementptr inbounds [17 x %union.ARIA_u128], [17 x %union.ARIA_u128]* %rd_key.i35, i64 0, i64 0, !dbg !1360
  store %union.ARIA_u128* %arraydecay.i36, %union.ARIA_u128** %rk.i29, align 8, !dbg !1362
  %655 = load %struct.aria_key_st*, %struct.aria_key_st** %key.addr.i23, align 8, !dbg !1363
  %rounds.i37 = getelementptr inbounds %struct.aria_key_st, %struct.aria_key_st* %655, i32 0, i32 1, !dbg !1364
  %656 = load i32, i32* %rounds.i37, align 4, !dbg !1364
  store i32 %656, i32* %Nr.i28, align 4, !dbg !1365
  %657 = load i32, i32* %Nr.i28, align 4, !dbg !1366
  %cmp6.i = icmp ne i32 %657, 12, !dbg !1367
  br i1 %cmp6.i, label %land.lhs.true.i39, label %if.end11.i, !dbg !1368

land.lhs.true.i39:                                ; preds = %if.end.i38
  %658 = load i32, i32* %Nr.i28, align 4, !dbg !1369
  %cmp7.i = icmp ne i32 %658, 14, !dbg !1370
  br i1 %cmp7.i, label %land.lhs.true8.i, label %if.end11.i, !dbg !1371

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i39
  %659 = load i32, i32* %Nr.i28, align 4, !dbg !1372
  %cmp9.i = icmp ne i32 %659, 16, !dbg !1373
  br i1 %cmp9.i, label %if.then10.i, label %if.end11.i, !dbg !1374

if.then10.i:                                      ; preds = %land.lhs.true8.i
  br label %aria_encrypt.exit, !dbg !1375

if.end11.i:                                       ; preds = %land.lhs.true8.i, %land.lhs.true.i39, %if.end.i38
  %660 = load i8*, i8** %in.addr.i, align 8, !dbg !1376
  %661 = load i8, i8* %660, align 1, !dbg !1376
  %conv.i40 = zext i8 %661 to i32, !dbg !1376
  %shl.i41 = shl i32 %conv.i40, 24, !dbg !1376
  %662 = load i8*, i8** %in.addr.i, align 8, !dbg !1376
  %arrayidx12.i = getelementptr inbounds i8, i8* %662, i64 1, !dbg !1376
  %663 = load i8, i8* %arrayidx12.i, align 1, !dbg !1376
  %conv13.i = zext i8 %663 to i32, !dbg !1376
  %shl14.i = shl i32 %conv13.i, 16, !dbg !1376
  %xor.i42 = xor i32 %shl.i41, %shl14.i, !dbg !1376
  %664 = load i8*, i8** %in.addr.i, align 8, !dbg !1376
  %arrayidx15.i = getelementptr inbounds i8, i8* %664, i64 2, !dbg !1376
  %665 = load i8, i8* %arrayidx15.i, align 1, !dbg !1376
  %conv16.i = zext i8 %665 to i32, !dbg !1376
  %shl17.i = shl i32 %conv16.i, 8, !dbg !1376
  %xor18.i = xor i32 %xor.i42, %shl17.i, !dbg !1376
  %666 = load i8*, i8** %in.addr.i, align 8, !dbg !1376
  %arrayidx19.i = getelementptr inbounds i8, i8* %666, i64 3, !dbg !1376
  %667 = load i8, i8* %arrayidx19.i, align 1, !dbg !1376
  %conv20.i = zext i8 %667 to i32, !dbg !1376
  %xor21.i = xor i32 %xor18.i, %conv20.i, !dbg !1376
  store i32 %xor21.i, i32* %reg0.i24, align 4, !dbg !1377
  %668 = load i8*, i8** %in.addr.i, align 8, !dbg !1378
  %arrayidx22.i43 = getelementptr inbounds i8, i8* %668, i64 4, !dbg !1378
  %669 = load i8, i8* %arrayidx22.i43, align 1, !dbg !1378
  %conv23.i44 = zext i8 %669 to i32, !dbg !1378
  %shl24.i45 = shl i32 %conv23.i44, 24, !dbg !1378
  %670 = load i8*, i8** %in.addr.i, align 8, !dbg !1378
  %arrayidx25.i46 = getelementptr inbounds i8, i8* %670, i64 5, !dbg !1378
  %671 = load i8, i8* %arrayidx25.i46, align 1, !dbg !1378
  %conv26.i47 = zext i8 %671 to i32, !dbg !1378
  %shl27.i48 = shl i32 %conv26.i47, 16, !dbg !1378
  %xor28.i49 = xor i32 %shl24.i45, %shl27.i48, !dbg !1378
  %672 = load i8*, i8** %in.addr.i, align 8, !dbg !1378
  %arrayidx29.i50 = getelementptr inbounds i8, i8* %672, i64 6, !dbg !1378
  %673 = load i8, i8* %arrayidx29.i50, align 1, !dbg !1378
  %conv30.i51 = zext i8 %673 to i32, !dbg !1378
  %shl31.i52 = shl i32 %conv30.i51, 8, !dbg !1378
  %xor32.i53 = xor i32 %xor28.i49, %shl31.i52, !dbg !1378
  %674 = load i8*, i8** %in.addr.i, align 8, !dbg !1378
  %arrayidx33.i54 = getelementptr inbounds i8, i8* %674, i64 7, !dbg !1378
  %675 = load i8, i8* %arrayidx33.i54, align 1, !dbg !1378
  %conv34.i55 = zext i8 %675 to i32, !dbg !1378
  %xor35.i56 = xor i32 %xor32.i53, %conv34.i55, !dbg !1378
  store i32 %xor35.i56, i32* %reg1.i25, align 4, !dbg !1379
  %676 = load i8*, i8** %in.addr.i, align 8, !dbg !1380
  %arrayidx36.i57 = getelementptr inbounds i8, i8* %676, i64 8, !dbg !1380
  %677 = load i8, i8* %arrayidx36.i57, align 1, !dbg !1380
  %conv37.i = zext i8 %677 to i32, !dbg !1380
  %shl38.i = shl i32 %conv37.i, 24, !dbg !1380
  %678 = load i8*, i8** %in.addr.i, align 8, !dbg !1380
  %arrayidx39.i = getelementptr inbounds i8, i8* %678, i64 9, !dbg !1380
  %679 = load i8, i8* %arrayidx39.i, align 1, !dbg !1380
  %conv40.i = zext i8 %679 to i32, !dbg !1380
  %shl41.i = shl i32 %conv40.i, 16, !dbg !1380
  %xor42.i = xor i32 %shl38.i, %shl41.i, !dbg !1380
  %680 = load i8*, i8** %in.addr.i, align 8, !dbg !1380
  %arrayidx43.i = getelementptr inbounds i8, i8* %680, i64 10, !dbg !1380
  %681 = load i8, i8* %arrayidx43.i, align 1, !dbg !1380
  %conv44.i = zext i8 %681 to i32, !dbg !1380
  %shl45.i = shl i32 %conv44.i, 8, !dbg !1380
  %xor46.i = xor i32 %xor42.i, %shl45.i, !dbg !1380
  %682 = load i8*, i8** %in.addr.i, align 8, !dbg !1380
  %arrayidx47.i = getelementptr inbounds i8, i8* %682, i64 11, !dbg !1380
  %683 = load i8, i8* %arrayidx47.i, align 1, !dbg !1380
  %conv48.i = zext i8 %683 to i32, !dbg !1380
  %xor49.i = xor i32 %xor46.i, %conv48.i, !dbg !1380
  store i32 %xor49.i, i32* %reg2.i26, align 4, !dbg !1381
  %684 = load i8*, i8** %in.addr.i, align 8, !dbg !1382
  %arrayidx50.i = getelementptr inbounds i8, i8* %684, i64 12, !dbg !1382
  %685 = load i8, i8* %arrayidx50.i, align 1, !dbg !1382
  %conv51.i = zext i8 %685 to i32, !dbg !1382
  %shl52.i = shl i32 %conv51.i, 24, !dbg !1382
  %686 = load i8*, i8** %in.addr.i, align 8, !dbg !1382
  %arrayidx53.i = getelementptr inbounds i8, i8* %686, i64 13, !dbg !1382
  %687 = load i8, i8* %arrayidx53.i, align 1, !dbg !1382
  %conv54.i = zext i8 %687 to i32, !dbg !1382
  %shl55.i = shl i32 %conv54.i, 16, !dbg !1382
  %xor56.i = xor i32 %shl52.i, %shl55.i, !dbg !1382
  %688 = load i8*, i8** %in.addr.i, align 8, !dbg !1382
  %arrayidx57.i = getelementptr inbounds i8, i8* %688, i64 14, !dbg !1382
  %689 = load i8, i8* %arrayidx57.i, align 1, !dbg !1382
  %conv58.i = zext i8 %689 to i32, !dbg !1382
  %shl59.i = shl i32 %conv58.i, 8, !dbg !1382
  %xor60.i = xor i32 %xor56.i, %shl59.i, !dbg !1382
  %690 = load i8*, i8** %in.addr.i, align 8, !dbg !1382
  %arrayidx61.i = getelementptr inbounds i8, i8* %690, i64 15, !dbg !1382
  %691 = load i8, i8* %arrayidx61.i, align 1, !dbg !1382
  %conv62.i = zext i8 %691 to i32, !dbg !1382
  %xor63.i = xor i32 %xor60.i, %conv62.i, !dbg !1382
  store i32 %xor63.i, i32* %reg3.i27, align 4, !dbg !1383
  %692 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1384
  %u.i58 = bitcast %union.ARIA_u128* %692 to [4 x i32]*, !dbg !1384
  %arrayidx64.i = getelementptr inbounds [4 x i32], [4 x i32]* %u.i58, i64 0, i64 0, !dbg !1384
  %693 = load i32, i32* %arrayidx64.i, align 4, !dbg !1384
  %694 = load i32, i32* %reg0.i24, align 4, !dbg !1384
  %xor65.i59 = xor i32 %694, %693, !dbg !1384
  store i32 %xor65.i59, i32* %reg0.i24, align 4, !dbg !1384
  %695 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1384
  %u66.i = bitcast %union.ARIA_u128* %695 to [4 x i32]*, !dbg !1384
  %arrayidx67.i60 = getelementptr inbounds [4 x i32], [4 x i32]* %u66.i, i64 0, i64 1, !dbg !1384
  %696 = load i32, i32* %arrayidx67.i60, align 4, !dbg !1384
  %697 = load i32, i32* %reg1.i25, align 4, !dbg !1384
  %xor68.i = xor i32 %697, %696, !dbg !1384
  store i32 %xor68.i, i32* %reg1.i25, align 4, !dbg !1384
  %698 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1384
  %u69.i = bitcast %union.ARIA_u128* %698 to [4 x i32]*, !dbg !1384
  %arrayidx70.i61 = getelementptr inbounds [4 x i32], [4 x i32]* %u69.i, i64 0, i64 2, !dbg !1384
  %699 = load i32, i32* %arrayidx70.i61, align 4, !dbg !1384
  %700 = load i32, i32* %reg2.i26, align 4, !dbg !1384
  %xor71.i = xor i32 %700, %699, !dbg !1384
  store i32 %xor71.i, i32* %reg2.i26, align 4, !dbg !1384
  %701 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1384
  %u72.i = bitcast %union.ARIA_u128* %701 to [4 x i32]*, !dbg !1384
  %arrayidx73.i62 = getelementptr inbounds [4 x i32], [4 x i32]* %u72.i, i64 0, i64 3, !dbg !1384
  %702 = load i32, i32* %arrayidx73.i62, align 4, !dbg !1384
  %703 = load i32, i32* %reg3.i27, align 4, !dbg !1384
  %xor74.i = xor i32 %703, %702, !dbg !1384
  store i32 %xor74.i, i32* %reg3.i27, align 4, !dbg !1384
  %704 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1385
  %incdec.ptr.i63 = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %704, i32 1, !dbg !1385
  store %union.ARIA_u128* %incdec.ptr.i63, %union.ARIA_u128** %rk.i29, align 8, !dbg !1385
  %705 = load i32, i32* %reg0.i24, align 4, !dbg !1386
  %shr.i64 = lshr i32 %705, 24, !dbg !1386
  %conv77.i = trunc i32 %shr.i64 to i8, !dbg !1386
  %idxprom.i65 = zext i8 %conv77.i to i64, !dbg !1386
  %arrayidx78.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom.i65, !dbg !1386
  %706 = load i32, i32* %arrayidx78.i, align 4, !dbg !1386
  %707 = load i32, i32* %reg0.i24, align 4, !dbg !1386
  %shr79.i = lshr i32 %707, 16, !dbg !1386
  %conv80.i66 = trunc i32 %shr79.i to i8, !dbg !1386
  %idxprom81.i67 = zext i8 %conv80.i66 to i64, !dbg !1386
  %arrayidx82.i68 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom81.i67, !dbg !1386
  %708 = load i32, i32* %arrayidx82.i68, align 4, !dbg !1386
  %xor83.i = xor i32 %706, %708, !dbg !1386
  %709 = load i32, i32* %reg0.i24, align 4, !dbg !1386
  %shr84.i = lshr i32 %709, 8, !dbg !1386
  %conv85.i = trunc i32 %shr84.i to i8, !dbg !1386
  %idxprom86.i = zext i8 %conv85.i to i64, !dbg !1386
  %arrayidx87.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom86.i, !dbg !1386
  %710 = load i32, i32* %arrayidx87.i, align 4, !dbg !1386
  %xor88.i = xor i32 %xor83.i, %710, !dbg !1386
  %711 = load i32, i32* %reg0.i24, align 4, !dbg !1386
  %conv90.i = trunc i32 %711 to i8, !dbg !1386
  %idxprom91.i = zext i8 %conv90.i to i64, !dbg !1386
  %arrayidx92.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom91.i, !dbg !1386
  %712 = load i32, i32* %arrayidx92.i, align 4, !dbg !1386
  %xor93.i = xor i32 %xor88.i, %712, !dbg !1386
  store i32 %xor93.i, i32* %reg0.i24, align 4, !dbg !1386
  %713 = load i32, i32* %reg1.i25, align 4, !dbg !1386
  %shr94.i = lshr i32 %713, 24, !dbg !1386
  %conv95.i = trunc i32 %shr94.i to i8, !dbg !1386
  %idxprom96.i = zext i8 %conv95.i to i64, !dbg !1386
  %arrayidx97.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom96.i, !dbg !1386
  %714 = load i32, i32* %arrayidx97.i, align 4, !dbg !1386
  %715 = load i32, i32* %reg1.i25, align 4, !dbg !1386
  %shr98.i69 = lshr i32 %715, 16, !dbg !1386
  %conv99.i70 = trunc i32 %shr98.i69 to i8, !dbg !1386
  %idxprom100.i71 = zext i8 %conv99.i70 to i64, !dbg !1386
  %arrayidx101.i72 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom100.i71, !dbg !1386
  %716 = load i32, i32* %arrayidx101.i72, align 4, !dbg !1386
  %xor102.i = xor i32 %714, %716, !dbg !1386
  %717 = load i32, i32* %reg1.i25, align 4, !dbg !1386
  %shr103.i = lshr i32 %717, 8, !dbg !1386
  %conv104.i = trunc i32 %shr103.i to i8, !dbg !1386
  %idxprom105.i = zext i8 %conv104.i to i64, !dbg !1386
  %arrayidx106.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom105.i, !dbg !1386
  %718 = load i32, i32* %arrayidx106.i, align 4, !dbg !1386
  %xor107.i = xor i32 %xor102.i, %718, !dbg !1386
  %719 = load i32, i32* %reg1.i25, align 4, !dbg !1386
  %conv109.i = trunc i32 %719 to i8, !dbg !1386
  %idxprom110.i = zext i8 %conv109.i to i64, !dbg !1386
  %arrayidx111.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom110.i, !dbg !1386
  %720 = load i32, i32* %arrayidx111.i, align 4, !dbg !1386
  %xor112.i = xor i32 %xor107.i, %720, !dbg !1386
  store i32 %xor112.i, i32* %reg1.i25, align 4, !dbg !1386
  %721 = load i32, i32* %reg2.i26, align 4, !dbg !1386
  %shr113.i = lshr i32 %721, 24, !dbg !1386
  %conv114.i = trunc i32 %shr113.i to i8, !dbg !1386
  %idxprom115.i = zext i8 %conv114.i to i64, !dbg !1386
  %arrayidx116.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom115.i, !dbg !1386
  %722 = load i32, i32* %arrayidx116.i, align 4, !dbg !1386
  %723 = load i32, i32* %reg2.i26, align 4, !dbg !1386
  %shr117.i73 = lshr i32 %723, 16, !dbg !1386
  %conv118.i74 = trunc i32 %shr117.i73 to i8, !dbg !1386
  %idxprom119.i75 = zext i8 %conv118.i74 to i64, !dbg !1386
  %arrayidx120.i76 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom119.i75, !dbg !1386
  %724 = load i32, i32* %arrayidx120.i76, align 4, !dbg !1386
  %xor121.i = xor i32 %722, %724, !dbg !1386
  %725 = load i32, i32* %reg2.i26, align 4, !dbg !1386
  %shr122.i = lshr i32 %725, 8, !dbg !1386
  %conv123.i = trunc i32 %shr122.i to i8, !dbg !1386
  %idxprom124.i = zext i8 %conv123.i to i64, !dbg !1386
  %arrayidx125.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom124.i, !dbg !1386
  %726 = load i32, i32* %arrayidx125.i, align 4, !dbg !1386
  %xor126.i = xor i32 %xor121.i, %726, !dbg !1386
  %727 = load i32, i32* %reg2.i26, align 4, !dbg !1386
  %conv128.i = trunc i32 %727 to i8, !dbg !1386
  %idxprom129.i = zext i8 %conv128.i to i64, !dbg !1386
  %arrayidx130.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom129.i, !dbg !1386
  %728 = load i32, i32* %arrayidx130.i, align 4, !dbg !1386
  %xor131.i = xor i32 %xor126.i, %728, !dbg !1386
  store i32 %xor131.i, i32* %reg2.i26, align 4, !dbg !1386
  %729 = load i32, i32* %reg3.i27, align 4, !dbg !1386
  %shr132.i = lshr i32 %729, 24, !dbg !1386
  %conv133.i = trunc i32 %shr132.i to i8, !dbg !1386
  %idxprom134.i = zext i8 %conv133.i to i64, !dbg !1386
  %arrayidx135.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom134.i, !dbg !1386
  %730 = load i32, i32* %arrayidx135.i, align 4, !dbg !1386
  %731 = load i32, i32* %reg3.i27, align 4, !dbg !1386
  %shr136.i77 = lshr i32 %731, 16, !dbg !1386
  %conv137.i78 = trunc i32 %shr136.i77 to i8, !dbg !1386
  %idxprom138.i79 = zext i8 %conv137.i78 to i64, !dbg !1386
  %arrayidx139.i80 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom138.i79, !dbg !1386
  %732 = load i32, i32* %arrayidx139.i80, align 4, !dbg !1386
  %xor140.i = xor i32 %730, %732, !dbg !1386
  %733 = load i32, i32* %reg3.i27, align 4, !dbg !1386
  %shr141.i = lshr i32 %733, 8, !dbg !1386
  %conv142.i = trunc i32 %shr141.i to i8, !dbg !1386
  %idxprom143.i = zext i8 %conv142.i to i64, !dbg !1386
  %arrayidx144.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom143.i, !dbg !1386
  %734 = load i32, i32* %arrayidx144.i, align 4, !dbg !1386
  %xor145.i = xor i32 %xor140.i, %734, !dbg !1386
  %735 = load i32, i32* %reg3.i27, align 4, !dbg !1386
  %conv147.i = trunc i32 %735 to i8, !dbg !1386
  %idxprom148.i = zext i8 %conv147.i to i64, !dbg !1386
  %arrayidx149.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom148.i, !dbg !1386
  %736 = load i32, i32* %arrayidx149.i, align 4, !dbg !1386
  %xor150.i = xor i32 %xor145.i, %736, !dbg !1386
  store i32 %xor150.i, i32* %reg3.i27, align 4, !dbg !1386
  %737 = load i32, i32* %reg2.i26, align 4, !dbg !1387
  %738 = load i32, i32* %reg1.i25, align 4, !dbg !1387
  %xor153.i = xor i32 %738, %737, !dbg !1387
  store i32 %xor153.i, i32* %reg1.i25, align 4, !dbg !1387
  %739 = load i32, i32* %reg3.i27, align 4, !dbg !1387
  %740 = load i32, i32* %reg2.i26, align 4, !dbg !1387
  %xor154.i81 = xor i32 %740, %739, !dbg !1387
  store i32 %xor154.i81, i32* %reg2.i26, align 4, !dbg !1387
  %741 = load i32, i32* %reg1.i25, align 4, !dbg !1387
  %742 = load i32, i32* %reg0.i24, align 4, !dbg !1387
  %xor155.i = xor i32 %742, %741, !dbg !1387
  store i32 %xor155.i, i32* %reg0.i24, align 4, !dbg !1387
  %743 = load i32, i32* %reg1.i25, align 4, !dbg !1387
  %744 = load i32, i32* %reg3.i27, align 4, !dbg !1387
  %xor156.i82 = xor i32 %744, %743, !dbg !1387
  store i32 %xor156.i82, i32* %reg3.i27, align 4, !dbg !1387
  %745 = load i32, i32* %reg0.i24, align 4, !dbg !1387
  %746 = load i32, i32* %reg2.i26, align 4, !dbg !1387
  %xor157.i83 = xor i32 %746, %745, !dbg !1387
  store i32 %xor157.i83, i32* %reg2.i26, align 4, !dbg !1387
  %747 = load i32, i32* %reg2.i26, align 4, !dbg !1387
  %748 = load i32, i32* %reg1.i25, align 4, !dbg !1387
  %xor158.i84 = xor i32 %748, %747, !dbg !1387
  store i32 %xor158.i84, i32* %reg1.i25, align 4, !dbg !1387
  %749 = load i32, i32* %reg1.i25, align 4, !dbg !1388
  %shl161.i = shl i32 %749, 8, !dbg !1388
  %and.i85 = and i32 %shl161.i, -16711936, !dbg !1388
  %750 = load i32, i32* %reg1.i25, align 4, !dbg !1388
  %shr162.i = lshr i32 %750, 8, !dbg !1388
  %and163.i = and i32 %shr162.i, 16711935, !dbg !1388
  %xor164.i = xor i32 %and.i85, %and163.i, !dbg !1388
  store i32 %xor164.i, i32* %reg1.i25, align 4, !dbg !1388
  %751 = load i32, i32* %reg2.i26, align 4, !dbg !1388
  %shr165.i86 = lshr i32 %751, 16, !dbg !1388
  %752 = load i32, i32* %reg2.i26, align 4, !dbg !1388
  %shl166.i = shl i32 %752, 16, !dbg !1388
  %or.i87 = or i32 %shr165.i86, %shl166.i, !dbg !1388
  store i32 %or.i87, i32* %reg2.i26, align 4, !dbg !1388
  %753 = load i32, i32* %reg3.i27, align 4, !dbg !1388
  %shl167.i = shl i32 %753, 24, !dbg !1388
  %754 = load i32, i32* %reg3.i27, align 4, !dbg !1388
  %shr168.i88 = lshr i32 %754, 24, !dbg !1388
  %xor169.i = xor i32 %shl167.i, %shr168.i88, !dbg !1388
  %755 = load i32, i32* %reg3.i27, align 4, !dbg !1388
  %and170.i = and i32 %755, 65280, !dbg !1388
  %shl171.i = shl i32 %and170.i, 8, !dbg !1388
  %xor172.i89 = xor i32 %xor169.i, %shl171.i, !dbg !1388
  %756 = load i32, i32* %reg3.i27, align 4, !dbg !1388
  %and173.i90 = and i32 %756, 16711680, !dbg !1388
  %shr174.i = lshr i32 %and173.i90, 8, !dbg !1388
  %xor175.i91 = xor i32 %xor172.i89, %shr174.i, !dbg !1388
  store i32 %xor175.i91, i32* %reg3.i27, align 4, !dbg !1388
  %757 = load i32, i32* %reg2.i26, align 4, !dbg !1389
  %758 = load i32, i32* %reg1.i25, align 4, !dbg !1389
  %xor178.i92 = xor i32 %758, %757, !dbg !1389
  store i32 %xor178.i92, i32* %reg1.i25, align 4, !dbg !1389
  %759 = load i32, i32* %reg3.i27, align 4, !dbg !1389
  %760 = load i32, i32* %reg2.i26, align 4, !dbg !1389
  %xor179.i = xor i32 %760, %759, !dbg !1389
  store i32 %xor179.i, i32* %reg2.i26, align 4, !dbg !1389
  %761 = load i32, i32* %reg1.i25, align 4, !dbg !1389
  %762 = load i32, i32* %reg0.i24, align 4, !dbg !1389
  %xor180.i = xor i32 %762, %761, !dbg !1389
  store i32 %xor180.i, i32* %reg0.i24, align 4, !dbg !1389
  %763 = load i32, i32* %reg1.i25, align 4, !dbg !1389
  %764 = load i32, i32* %reg3.i27, align 4, !dbg !1389
  %xor181.i93 = xor i32 %764, %763, !dbg !1389
  store i32 %xor181.i93, i32* %reg3.i27, align 4, !dbg !1389
  %765 = load i32, i32* %reg0.i24, align 4, !dbg !1389
  %766 = load i32, i32* %reg2.i26, align 4, !dbg !1389
  %xor182.i94 = xor i32 %766, %765, !dbg !1389
  store i32 %xor182.i94, i32* %reg2.i26, align 4, !dbg !1389
  %767 = load i32, i32* %reg2.i26, align 4, !dbg !1389
  %768 = load i32, i32* %reg1.i25, align 4, !dbg !1389
  %xor183.i95 = xor i32 %768, %767, !dbg !1389
  store i32 %xor183.i95, i32* %reg1.i25, align 4, !dbg !1389
  %769 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1390
  %u187.i = bitcast %union.ARIA_u128* %769 to [4 x i32]*, !dbg !1390
  %arrayidx188.i = getelementptr inbounds [4 x i32], [4 x i32]* %u187.i, i64 0, i64 0, !dbg !1390
  %770 = load i32, i32* %arrayidx188.i, align 4, !dbg !1390
  %771 = load i32, i32* %reg0.i24, align 4, !dbg !1390
  %xor189.i = xor i32 %771, %770, !dbg !1390
  store i32 %xor189.i, i32* %reg0.i24, align 4, !dbg !1390
  %772 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1390
  %u190.i = bitcast %union.ARIA_u128* %772 to [4 x i32]*, !dbg !1390
  %arrayidx191.i = getelementptr inbounds [4 x i32], [4 x i32]* %u190.i, i64 0, i64 1, !dbg !1390
  %773 = load i32, i32* %arrayidx191.i, align 4, !dbg !1390
  %774 = load i32, i32* %reg1.i25, align 4, !dbg !1390
  %xor192.i = xor i32 %774, %773, !dbg !1390
  store i32 %xor192.i, i32* %reg1.i25, align 4, !dbg !1390
  %775 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1390
  %u193.i = bitcast %union.ARIA_u128* %775 to [4 x i32]*, !dbg !1390
  %arrayidx194.i = getelementptr inbounds [4 x i32], [4 x i32]* %u193.i, i64 0, i64 2, !dbg !1390
  %776 = load i32, i32* %arrayidx194.i, align 4, !dbg !1390
  %777 = load i32, i32* %reg2.i26, align 4, !dbg !1390
  %xor195.i = xor i32 %777, %776, !dbg !1390
  store i32 %xor195.i, i32* %reg2.i26, align 4, !dbg !1390
  %778 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1390
  %u196.i = bitcast %union.ARIA_u128* %778 to [4 x i32]*, !dbg !1390
  %arrayidx197.i = getelementptr inbounds [4 x i32], [4 x i32]* %u196.i, i64 0, i64 3, !dbg !1390
  %779 = load i32, i32* %arrayidx197.i, align 4, !dbg !1390
  %780 = load i32, i32* %reg3.i27, align 4, !dbg !1390
  %xor198.i96 = xor i32 %780, %779, !dbg !1390
  store i32 %xor198.i96, i32* %reg3.i27, align 4, !dbg !1390
  %781 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1391
  %incdec.ptr200.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %781, i32 1, !dbg !1391
  store %union.ARIA_u128* %incdec.ptr200.i, %union.ARIA_u128** %rk.i29, align 8, !dbg !1391
  br label %while.cond.i, !dbg !1392

while.cond.i:                                     ; preds = %while.body.i, %if.end11.i
  %782 = load i32, i32* %Nr.i28, align 4, !dbg !1393
  %sub.i97 = sub nsw i32 %782, 2, !dbg !1393
  store i32 %sub.i97, i32* %Nr.i28, align 4, !dbg !1393
  %tobool.i = icmp ne i32 %sub.i97, 0, !dbg !1392
  br i1 %tobool.i, label %while.body.i, label %while.end.i, !dbg !1392

while.body.i:                                     ; preds = %while.cond.i
  %783 = load i32, i32* %reg0.i24, align 4, !dbg !1394
  %shr203.i = lshr i32 %783, 24, !dbg !1394
  %conv204.i98 = trunc i32 %shr203.i to i8, !dbg !1394
  %idxprom205.i = zext i8 %conv204.i98 to i64, !dbg !1394
  %arrayidx206.i99 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom205.i, !dbg !1394
  %784 = load i32, i32* %arrayidx206.i99, align 4, !dbg !1394
  %785 = load i32, i32* %reg0.i24, align 4, !dbg !1394
  %shr207.i = lshr i32 %785, 16, !dbg !1394
  %conv208.i100 = trunc i32 %shr207.i to i8, !dbg !1394
  %idxprom209.i = zext i8 %conv208.i100 to i64, !dbg !1394
  %arrayidx210.i101 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom209.i, !dbg !1394
  %786 = load i32, i32* %arrayidx210.i101, align 4, !dbg !1394
  %xor211.i = xor i32 %784, %786, !dbg !1394
  %787 = load i32, i32* %reg0.i24, align 4, !dbg !1394
  %shr212.i = lshr i32 %787, 8, !dbg !1394
  %conv213.i = trunc i32 %shr212.i to i8, !dbg !1394
  %idxprom214.i = zext i8 %conv213.i to i64, !dbg !1394
  %arrayidx215.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom214.i, !dbg !1394
  %788 = load i32, i32* %arrayidx215.i, align 4, !dbg !1394
  %xor216.i = xor i32 %xor211.i, %788, !dbg !1394
  %789 = load i32, i32* %reg0.i24, align 4, !dbg !1394
  %conv218.i = trunc i32 %789 to i8, !dbg !1394
  %idxprom219.i = zext i8 %conv218.i to i64, !dbg !1394
  %arrayidx220.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom219.i, !dbg !1394
  %790 = load i32, i32* %arrayidx220.i, align 4, !dbg !1394
  %xor221.i = xor i32 %xor216.i, %790, !dbg !1394
  store i32 %xor221.i, i32* %reg0.i24, align 4, !dbg !1394
  %791 = load i32, i32* %reg1.i25, align 4, !dbg !1394
  %shr222.i = lshr i32 %791, 24, !dbg !1394
  %conv223.i = trunc i32 %shr222.i to i8, !dbg !1394
  %idxprom224.i = zext i8 %conv223.i to i64, !dbg !1394
  %arrayidx225.i102 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom224.i, !dbg !1394
  %792 = load i32, i32* %arrayidx225.i102, align 4, !dbg !1394
  %793 = load i32, i32* %reg1.i25, align 4, !dbg !1394
  %shr226.i = lshr i32 %793, 16, !dbg !1394
  %conv227.i = trunc i32 %shr226.i to i8, !dbg !1394
  %idxprom228.i = zext i8 %conv227.i to i64, !dbg !1394
  %arrayidx229.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom228.i, !dbg !1394
  %794 = load i32, i32* %arrayidx229.i, align 4, !dbg !1394
  %xor230.i = xor i32 %792, %794, !dbg !1394
  %795 = load i32, i32* %reg1.i25, align 4, !dbg !1394
  %shr231.i = lshr i32 %795, 8, !dbg !1394
  %conv232.i = trunc i32 %shr231.i to i8, !dbg !1394
  %idxprom233.i = zext i8 %conv232.i to i64, !dbg !1394
  %arrayidx234.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom233.i, !dbg !1394
  %796 = load i32, i32* %arrayidx234.i, align 4, !dbg !1394
  %xor235.i103 = xor i32 %xor230.i, %796, !dbg !1394
  %797 = load i32, i32* %reg1.i25, align 4, !dbg !1394
  %conv237.i104 = trunc i32 %797 to i8, !dbg !1394
  %idxprom238.i = zext i8 %conv237.i104 to i64, !dbg !1394
  %arrayidx239.i105 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom238.i, !dbg !1394
  %798 = load i32, i32* %arrayidx239.i105, align 4, !dbg !1394
  %xor240.i = xor i32 %xor235.i103, %798, !dbg !1394
  store i32 %xor240.i, i32* %reg1.i25, align 4, !dbg !1394
  %799 = load i32, i32* %reg2.i26, align 4, !dbg !1394
  %shr241.i = lshr i32 %799, 24, !dbg !1394
  %conv242.i = trunc i32 %shr241.i to i8, !dbg !1394
  %idxprom243.i = zext i8 %conv242.i to i64, !dbg !1394
  %arrayidx244.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom243.i, !dbg !1394
  %800 = load i32, i32* %arrayidx244.i, align 4, !dbg !1394
  %801 = load i32, i32* %reg2.i26, align 4, !dbg !1394
  %shr245.i = lshr i32 %801, 16, !dbg !1394
  %conv246.i = trunc i32 %shr245.i to i8, !dbg !1394
  %idxprom247.i = zext i8 %conv246.i to i64, !dbg !1394
  %arrayidx248.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom247.i, !dbg !1394
  %802 = load i32, i32* %arrayidx248.i, align 4, !dbg !1394
  %xor249.i = xor i32 %800, %802, !dbg !1394
  %803 = load i32, i32* %reg2.i26, align 4, !dbg !1394
  %shr250.i = lshr i32 %803, 8, !dbg !1394
  %conv251.i = trunc i32 %shr250.i to i8, !dbg !1394
  %idxprom252.i = zext i8 %conv251.i to i64, !dbg !1394
  %arrayidx253.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom252.i, !dbg !1394
  %804 = load i32, i32* %arrayidx253.i, align 4, !dbg !1394
  %xor254.i = xor i32 %xor249.i, %804, !dbg !1394
  %805 = load i32, i32* %reg2.i26, align 4, !dbg !1394
  %conv256.i = trunc i32 %805 to i8, !dbg !1394
  %idxprom257.i = zext i8 %conv256.i to i64, !dbg !1394
  %arrayidx258.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom257.i, !dbg !1394
  %806 = load i32, i32* %arrayidx258.i, align 4, !dbg !1394
  %xor259.i = xor i32 %xor254.i, %806, !dbg !1394
  store i32 %xor259.i, i32* %reg2.i26, align 4, !dbg !1394
  %807 = load i32, i32* %reg3.i27, align 4, !dbg !1394
  %shr260.i = lshr i32 %807, 24, !dbg !1394
  %conv261.i = trunc i32 %shr260.i to i8, !dbg !1394
  %idxprom262.i = zext i8 %conv261.i to i64, !dbg !1394
  %arrayidx263.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom262.i, !dbg !1394
  %808 = load i32, i32* %arrayidx263.i, align 4, !dbg !1394
  %809 = load i32, i32* %reg3.i27, align 4, !dbg !1394
  %shr264.i = lshr i32 %809, 16, !dbg !1394
  %conv265.i = trunc i32 %shr264.i to i8, !dbg !1394
  %idxprom266.i = zext i8 %conv265.i to i64, !dbg !1394
  %arrayidx267.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom266.i, !dbg !1394
  %810 = load i32, i32* %arrayidx267.i, align 4, !dbg !1394
  %xor268.i = xor i32 %808, %810, !dbg !1394
  %811 = load i32, i32* %reg3.i27, align 4, !dbg !1394
  %shr269.i = lshr i32 %811, 8, !dbg !1394
  %conv270.i = trunc i32 %shr269.i to i8, !dbg !1394
  %idxprom271.i = zext i8 %conv270.i to i64, !dbg !1394
  %arrayidx272.i106 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom271.i, !dbg !1394
  %812 = load i32, i32* %arrayidx272.i106, align 4, !dbg !1394
  %xor273.i = xor i32 %xor268.i, %812, !dbg !1394
  %813 = load i32, i32* %reg3.i27, align 4, !dbg !1394
  %conv275.i = trunc i32 %813 to i8, !dbg !1394
  %idxprom276.i = zext i8 %conv275.i to i64, !dbg !1394
  %arrayidx277.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom276.i, !dbg !1394
  %814 = load i32, i32* %arrayidx277.i, align 4, !dbg !1394
  %xor278.i = xor i32 %xor273.i, %814, !dbg !1394
  store i32 %xor278.i, i32* %reg3.i27, align 4, !dbg !1394
  %815 = load i32, i32* %reg2.i26, align 4, !dbg !1395
  %816 = load i32, i32* %reg1.i25, align 4, !dbg !1395
  %xor281.i107 = xor i32 %816, %815, !dbg !1395
  store i32 %xor281.i107, i32* %reg1.i25, align 4, !dbg !1395
  %817 = load i32, i32* %reg3.i27, align 4, !dbg !1395
  %818 = load i32, i32* %reg2.i26, align 4, !dbg !1395
  %xor282.i = xor i32 %818, %817, !dbg !1395
  store i32 %xor282.i, i32* %reg2.i26, align 4, !dbg !1395
  %819 = load i32, i32* %reg1.i25, align 4, !dbg !1395
  %820 = load i32, i32* %reg0.i24, align 4, !dbg !1395
  %xor283.i108 = xor i32 %820, %819, !dbg !1395
  store i32 %xor283.i108, i32* %reg0.i24, align 4, !dbg !1395
  %821 = load i32, i32* %reg1.i25, align 4, !dbg !1395
  %822 = load i32, i32* %reg3.i27, align 4, !dbg !1395
  %xor284.i = xor i32 %822, %821, !dbg !1395
  store i32 %xor284.i, i32* %reg3.i27, align 4, !dbg !1395
  %823 = load i32, i32* %reg0.i24, align 4, !dbg !1395
  %824 = load i32, i32* %reg2.i26, align 4, !dbg !1395
  %xor285.i = xor i32 %824, %823, !dbg !1395
  store i32 %xor285.i, i32* %reg2.i26, align 4, !dbg !1395
  %825 = load i32, i32* %reg2.i26, align 4, !dbg !1395
  %826 = load i32, i32* %reg1.i25, align 4, !dbg !1395
  %xor286.i = xor i32 %826, %825, !dbg !1395
  store i32 %xor286.i, i32* %reg1.i25, align 4, !dbg !1395
  %827 = load i32, i32* %reg3.i27, align 4, !dbg !1396
  %shl289.i = shl i32 %827, 8, !dbg !1396
  %and290.i = and i32 %shl289.i, -16711936, !dbg !1396
  %828 = load i32, i32* %reg3.i27, align 4, !dbg !1396
  %shr291.i = lshr i32 %828, 8, !dbg !1396
  %and292.i = and i32 %shr291.i, 16711935, !dbg !1396
  %xor293.i = xor i32 %and290.i, %and292.i, !dbg !1396
  store i32 %xor293.i, i32* %reg3.i27, align 4, !dbg !1396
  %829 = load i32, i32* %reg0.i24, align 4, !dbg !1396
  %shr294.i = lshr i32 %829, 16, !dbg !1396
  %830 = load i32, i32* %reg0.i24, align 4, !dbg !1396
  %shl295.i = shl i32 %830, 16, !dbg !1396
  %or296.i = or i32 %shr294.i, %shl295.i, !dbg !1396
  store i32 %or296.i, i32* %reg0.i24, align 4, !dbg !1396
  %831 = load i32, i32* %reg1.i25, align 4, !dbg !1396
  %shl297.i = shl i32 %831, 24, !dbg !1396
  %832 = load i32, i32* %reg1.i25, align 4, !dbg !1396
  %shr298.i = lshr i32 %832, 24, !dbg !1396
  %xor299.i109 = xor i32 %shl297.i, %shr298.i, !dbg !1396
  %833 = load i32, i32* %reg1.i25, align 4, !dbg !1396
  %and300.i = and i32 %833, 65280, !dbg !1396
  %shl301.i = shl i32 %and300.i, 8, !dbg !1396
  %xor302.i = xor i32 %xor299.i109, %shl301.i, !dbg !1396
  %834 = load i32, i32* %reg1.i25, align 4, !dbg !1396
  %and303.i = and i32 %834, 16711680, !dbg !1396
  %shr304.i = lshr i32 %and303.i, 8, !dbg !1396
  %xor305.i = xor i32 %xor302.i, %shr304.i, !dbg !1396
  store i32 %xor305.i, i32* %reg1.i25, align 4, !dbg !1396
  %835 = load i32, i32* %reg2.i26, align 4, !dbg !1397
  %836 = load i32, i32* %reg1.i25, align 4, !dbg !1397
  %xor308.i = xor i32 %836, %835, !dbg !1397
  store i32 %xor308.i, i32* %reg1.i25, align 4, !dbg !1397
  %837 = load i32, i32* %reg3.i27, align 4, !dbg !1397
  %838 = load i32, i32* %reg2.i26, align 4, !dbg !1397
  %xor309.i = xor i32 %838, %837, !dbg !1397
  store i32 %xor309.i, i32* %reg2.i26, align 4, !dbg !1397
  %839 = load i32, i32* %reg1.i25, align 4, !dbg !1397
  %840 = load i32, i32* %reg0.i24, align 4, !dbg !1397
  %xor310.i = xor i32 %840, %839, !dbg !1397
  store i32 %xor310.i, i32* %reg0.i24, align 4, !dbg !1397
  %841 = load i32, i32* %reg1.i25, align 4, !dbg !1397
  %842 = load i32, i32* %reg3.i27, align 4, !dbg !1397
  %xor311.i = xor i32 %842, %841, !dbg !1397
  store i32 %xor311.i, i32* %reg3.i27, align 4, !dbg !1397
  %843 = load i32, i32* %reg0.i24, align 4, !dbg !1397
  %844 = load i32, i32* %reg2.i26, align 4, !dbg !1397
  %xor312.i = xor i32 %844, %843, !dbg !1397
  store i32 %xor312.i, i32* %reg2.i26, align 4, !dbg !1397
  %845 = load i32, i32* %reg2.i26, align 4, !dbg !1397
  %846 = load i32, i32* %reg1.i25, align 4, !dbg !1397
  %xor313.i110 = xor i32 %846, %845, !dbg !1397
  store i32 %xor313.i110, i32* %reg1.i25, align 4, !dbg !1397
  %847 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1398
  %u317.i = bitcast %union.ARIA_u128* %847 to [4 x i32]*, !dbg !1398
  %arrayidx318.i = getelementptr inbounds [4 x i32], [4 x i32]* %u317.i, i64 0, i64 0, !dbg !1398
  %848 = load i32, i32* %arrayidx318.i, align 4, !dbg !1398
  %849 = load i32, i32* %reg0.i24, align 4, !dbg !1398
  %xor319.i = xor i32 %849, %848, !dbg !1398
  store i32 %xor319.i, i32* %reg0.i24, align 4, !dbg !1398
  %850 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1398
  %u320.i = bitcast %union.ARIA_u128* %850 to [4 x i32]*, !dbg !1398
  %arrayidx321.i = getelementptr inbounds [4 x i32], [4 x i32]* %u320.i, i64 0, i64 1, !dbg !1398
  %851 = load i32, i32* %arrayidx321.i, align 4, !dbg !1398
  %852 = load i32, i32* %reg1.i25, align 4, !dbg !1398
  %xor322.i = xor i32 %852, %851, !dbg !1398
  store i32 %xor322.i, i32* %reg1.i25, align 4, !dbg !1398
  %853 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1398
  %u323.i = bitcast %union.ARIA_u128* %853 to [4 x i32]*, !dbg !1398
  %arrayidx324.i = getelementptr inbounds [4 x i32], [4 x i32]* %u323.i, i64 0, i64 2, !dbg !1398
  %854 = load i32, i32* %arrayidx324.i, align 4, !dbg !1398
  %855 = load i32, i32* %reg2.i26, align 4, !dbg !1398
  %xor325.i = xor i32 %855, %854, !dbg !1398
  store i32 %xor325.i, i32* %reg2.i26, align 4, !dbg !1398
  %856 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1398
  %u326.i = bitcast %union.ARIA_u128* %856 to [4 x i32]*, !dbg !1398
  %arrayidx327.i111 = getelementptr inbounds [4 x i32], [4 x i32]* %u326.i, i64 0, i64 3, !dbg !1398
  %857 = load i32, i32* %arrayidx327.i111, align 4, !dbg !1398
  %858 = load i32, i32* %reg3.i27, align 4, !dbg !1398
  %xor328.i = xor i32 %858, %857, !dbg !1398
  store i32 %xor328.i, i32* %reg3.i27, align 4, !dbg !1398
  %859 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1399
  %incdec.ptr330.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %859, i32 1, !dbg !1399
  store %union.ARIA_u128* %incdec.ptr330.i, %union.ARIA_u128** %rk.i29, align 8, !dbg !1399
  %860 = load i32, i32* %reg0.i24, align 4, !dbg !1400
  %shr333.i112 = lshr i32 %860, 24, !dbg !1400
  %conv334.i113 = trunc i32 %shr333.i112 to i8, !dbg !1400
  %idxprom335.i114 = zext i8 %conv334.i113 to i64, !dbg !1400
  %arrayidx336.i115 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom335.i114, !dbg !1400
  %861 = load i32, i32* %arrayidx336.i115, align 4, !dbg !1400
  %862 = load i32, i32* %reg0.i24, align 4, !dbg !1400
  %shr337.i = lshr i32 %862, 16, !dbg !1400
  %conv338.i = trunc i32 %shr337.i to i8, !dbg !1400
  %idxprom339.i = zext i8 %conv338.i to i64, !dbg !1400
  %arrayidx340.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom339.i, !dbg !1400
  %863 = load i32, i32* %arrayidx340.i, align 4, !dbg !1400
  %xor341.i = xor i32 %861, %863, !dbg !1400
  %864 = load i32, i32* %reg0.i24, align 4, !dbg !1400
  %shr342.i = lshr i32 %864, 8, !dbg !1400
  %conv343.i = trunc i32 %shr342.i to i8, !dbg !1400
  %idxprom344.i = zext i8 %conv343.i to i64, !dbg !1400
  %arrayidx345.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom344.i, !dbg !1400
  %865 = load i32, i32* %arrayidx345.i, align 4, !dbg !1400
  %xor346.i = xor i32 %xor341.i, %865, !dbg !1400
  %866 = load i32, i32* %reg0.i24, align 4, !dbg !1400
  %conv348.i116 = trunc i32 %866 to i8, !dbg !1400
  %idxprom349.i117 = zext i8 %conv348.i116 to i64, !dbg !1400
  %arrayidx350.i118 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom349.i117, !dbg !1400
  %867 = load i32, i32* %arrayidx350.i118, align 4, !dbg !1400
  %xor351.i119 = xor i32 %xor346.i, %867, !dbg !1400
  store i32 %xor351.i119, i32* %reg0.i24, align 4, !dbg !1400
  %868 = load i32, i32* %reg1.i25, align 4, !dbg !1400
  %shr352.i120 = lshr i32 %868, 24, !dbg !1400
  %conv353.i121 = trunc i32 %shr352.i120 to i8, !dbg !1400
  %idxprom354.i122 = zext i8 %conv353.i121 to i64, !dbg !1400
  %arrayidx355.i123 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom354.i122, !dbg !1400
  %869 = load i32, i32* %arrayidx355.i123, align 4, !dbg !1400
  %870 = load i32, i32* %reg1.i25, align 4, !dbg !1400
  %shr356.i = lshr i32 %870, 16, !dbg !1400
  %conv357.i = trunc i32 %shr356.i to i8, !dbg !1400
  %idxprom358.i = zext i8 %conv357.i to i64, !dbg !1400
  %arrayidx359.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom358.i, !dbg !1400
  %871 = load i32, i32* %arrayidx359.i, align 4, !dbg !1400
  %xor360.i = xor i32 %869, %871, !dbg !1400
  %872 = load i32, i32* %reg1.i25, align 4, !dbg !1400
  %shr361.i = lshr i32 %872, 8, !dbg !1400
  %conv362.i = trunc i32 %shr361.i to i8, !dbg !1400
  %idxprom363.i = zext i8 %conv362.i to i64, !dbg !1400
  %arrayidx364.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom363.i, !dbg !1400
  %873 = load i32, i32* %arrayidx364.i, align 4, !dbg !1400
  %xor365.i124 = xor i32 %xor360.i, %873, !dbg !1400
  %874 = load i32, i32* %reg1.i25, align 4, !dbg !1400
  %conv367.i = trunc i32 %874 to i8, !dbg !1400
  %idxprom368.i = zext i8 %conv367.i to i64, !dbg !1400
  %arrayidx369.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom368.i, !dbg !1400
  %875 = load i32, i32* %arrayidx369.i, align 4, !dbg !1400
  %xor370.i = xor i32 %xor365.i124, %875, !dbg !1400
  store i32 %xor370.i, i32* %reg1.i25, align 4, !dbg !1400
  %876 = load i32, i32* %reg2.i26, align 4, !dbg !1400
  %shr371.i = lshr i32 %876, 24, !dbg !1400
  %conv372.i = trunc i32 %shr371.i to i8, !dbg !1400
  %idxprom373.i = zext i8 %conv372.i to i64, !dbg !1400
  %arrayidx374.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom373.i, !dbg !1400
  %877 = load i32, i32* %arrayidx374.i, align 4, !dbg !1400
  %878 = load i32, i32* %reg2.i26, align 4, !dbg !1400
  %shr375.i = lshr i32 %878, 16, !dbg !1400
  %conv376.i = trunc i32 %shr375.i to i8, !dbg !1400
  %idxprom377.i = zext i8 %conv376.i to i64, !dbg !1400
  %arrayidx378.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom377.i, !dbg !1400
  %879 = load i32, i32* %arrayidx378.i, align 4, !dbg !1400
  %xor379.i = xor i32 %877, %879, !dbg !1400
  %880 = load i32, i32* %reg2.i26, align 4, !dbg !1400
  %shr380.i = lshr i32 %880, 8, !dbg !1400
  %conv381.i = trunc i32 %shr380.i to i8, !dbg !1400
  %idxprom382.i = zext i8 %conv381.i to i64, !dbg !1400
  %arrayidx383.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom382.i, !dbg !1400
  %881 = load i32, i32* %arrayidx383.i, align 4, !dbg !1400
  %xor384.i = xor i32 %xor379.i, %881, !dbg !1400
  %882 = load i32, i32* %reg2.i26, align 4, !dbg !1400
  %conv386.i = trunc i32 %882 to i8, !dbg !1400
  %idxprom387.i = zext i8 %conv386.i to i64, !dbg !1400
  %arrayidx388.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom387.i, !dbg !1400
  %883 = load i32, i32* %arrayidx388.i, align 4, !dbg !1400
  %xor389.i = xor i32 %xor384.i, %883, !dbg !1400
  store i32 %xor389.i, i32* %reg2.i26, align 4, !dbg !1400
  %884 = load i32, i32* %reg3.i27, align 4, !dbg !1400
  %shr390.i = lshr i32 %884, 24, !dbg !1400
  %conv391.i = trunc i32 %shr390.i to i8, !dbg !1400
  %idxprom392.i = zext i8 %conv391.i to i64, !dbg !1400
  %arrayidx393.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom392.i, !dbg !1400
  %885 = load i32, i32* %arrayidx393.i, align 4, !dbg !1400
  %886 = load i32, i32* %reg3.i27, align 4, !dbg !1400
  %shr394.i = lshr i32 %886, 16, !dbg !1400
  %conv395.i = trunc i32 %shr394.i to i8, !dbg !1400
  %idxprom396.i = zext i8 %conv395.i to i64, !dbg !1400
  %arrayidx397.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom396.i, !dbg !1400
  %887 = load i32, i32* %arrayidx397.i, align 4, !dbg !1400
  %xor398.i = xor i32 %885, %887, !dbg !1400
  %888 = load i32, i32* %reg3.i27, align 4, !dbg !1400
  %shr399.i = lshr i32 %888, 8, !dbg !1400
  %conv400.i = trunc i32 %shr399.i to i8, !dbg !1400
  %idxprom401.i = zext i8 %conv400.i to i64, !dbg !1400
  %arrayidx402.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom401.i, !dbg !1400
  %889 = load i32, i32* %arrayidx402.i, align 4, !dbg !1400
  %xor403.i = xor i32 %xor398.i, %889, !dbg !1400
  %890 = load i32, i32* %reg3.i27, align 4, !dbg !1400
  %conv405.i = trunc i32 %890 to i8, !dbg !1400
  %idxprom406.i = zext i8 %conv405.i to i64, !dbg !1400
  %arrayidx407.i125 = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom406.i, !dbg !1400
  %891 = load i32, i32* %arrayidx407.i125, align 4, !dbg !1400
  %xor408.i = xor i32 %xor403.i, %891, !dbg !1400
  store i32 %xor408.i, i32* %reg3.i27, align 4, !dbg !1400
  %892 = load i32, i32* %reg2.i26, align 4, !dbg !1401
  %893 = load i32, i32* %reg1.i25, align 4, !dbg !1401
  %xor411.i = xor i32 %893, %892, !dbg !1401
  store i32 %xor411.i, i32* %reg1.i25, align 4, !dbg !1401
  %894 = load i32, i32* %reg3.i27, align 4, !dbg !1401
  %895 = load i32, i32* %reg2.i26, align 4, !dbg !1401
  %xor412.i126 = xor i32 %895, %894, !dbg !1401
  store i32 %xor412.i126, i32* %reg2.i26, align 4, !dbg !1401
  %896 = load i32, i32* %reg1.i25, align 4, !dbg !1401
  %897 = load i32, i32* %reg0.i24, align 4, !dbg !1401
  %xor413.i = xor i32 %897, %896, !dbg !1401
  store i32 %xor413.i, i32* %reg0.i24, align 4, !dbg !1401
  %898 = load i32, i32* %reg1.i25, align 4, !dbg !1401
  %899 = load i32, i32* %reg3.i27, align 4, !dbg !1401
  %xor414.i127 = xor i32 %899, %898, !dbg !1401
  store i32 %xor414.i127, i32* %reg3.i27, align 4, !dbg !1401
  %900 = load i32, i32* %reg0.i24, align 4, !dbg !1401
  %901 = load i32, i32* %reg2.i26, align 4, !dbg !1401
  %xor415.i = xor i32 %901, %900, !dbg !1401
  store i32 %xor415.i, i32* %reg2.i26, align 4, !dbg !1401
  %902 = load i32, i32* %reg2.i26, align 4, !dbg !1401
  %903 = load i32, i32* %reg1.i25, align 4, !dbg !1401
  %xor416.i128 = xor i32 %903, %902, !dbg !1401
  store i32 %xor416.i128, i32* %reg1.i25, align 4, !dbg !1401
  %904 = load i32, i32* %reg1.i25, align 4, !dbg !1402
  %shl419.i = shl i32 %904, 8, !dbg !1402
  %and420.i = and i32 %shl419.i, -16711936, !dbg !1402
  %905 = load i32, i32* %reg1.i25, align 4, !dbg !1402
  %shr421.i129 = lshr i32 %905, 8, !dbg !1402
  %and422.i = and i32 %shr421.i129, 16711935, !dbg !1402
  %xor423.i = xor i32 %and420.i, %and422.i, !dbg !1402
  store i32 %xor423.i, i32* %reg1.i25, align 4, !dbg !1402
  %906 = load i32, i32* %reg2.i26, align 4, !dbg !1402
  %shr424.i = lshr i32 %906, 16, !dbg !1402
  %907 = load i32, i32* %reg2.i26, align 4, !dbg !1402
  %shl425.i = shl i32 %907, 16, !dbg !1402
  %or426.i = or i32 %shr424.i, %shl425.i, !dbg !1402
  store i32 %or426.i, i32* %reg2.i26, align 4, !dbg !1402
  %908 = load i32, i32* %reg3.i27, align 4, !dbg !1402
  %shl427.i = shl i32 %908, 24, !dbg !1402
  %909 = load i32, i32* %reg3.i27, align 4, !dbg !1402
  %shr428.i = lshr i32 %909, 24, !dbg !1402
  %xor429.i130 = xor i32 %shl427.i, %shr428.i, !dbg !1402
  %910 = load i32, i32* %reg3.i27, align 4, !dbg !1402
  %and430.i = and i32 %910, 65280, !dbg !1402
  %shl431.i = shl i32 %and430.i, 8, !dbg !1402
  %xor432.i = xor i32 %xor429.i130, %shl431.i, !dbg !1402
  %911 = load i32, i32* %reg3.i27, align 4, !dbg !1402
  %and433.i = and i32 %911, 16711680, !dbg !1402
  %shr434.i = lshr i32 %and433.i, 8, !dbg !1402
  %xor435.i = xor i32 %xor432.i, %shr434.i, !dbg !1402
  store i32 %xor435.i, i32* %reg3.i27, align 4, !dbg !1402
  %912 = load i32, i32* %reg2.i26, align 4, !dbg !1403
  %913 = load i32, i32* %reg1.i25, align 4, !dbg !1403
  %xor438.i = xor i32 %913, %912, !dbg !1403
  store i32 %xor438.i, i32* %reg1.i25, align 4, !dbg !1403
  %914 = load i32, i32* %reg3.i27, align 4, !dbg !1403
  %915 = load i32, i32* %reg2.i26, align 4, !dbg !1403
  %xor439.i131 = xor i32 %915, %914, !dbg !1403
  store i32 %xor439.i131, i32* %reg2.i26, align 4, !dbg !1403
  %916 = load i32, i32* %reg1.i25, align 4, !dbg !1403
  %917 = load i32, i32* %reg0.i24, align 4, !dbg !1403
  %xor440.i = xor i32 %917, %916, !dbg !1403
  store i32 %xor440.i, i32* %reg0.i24, align 4, !dbg !1403
  %918 = load i32, i32* %reg1.i25, align 4, !dbg !1403
  %919 = load i32, i32* %reg3.i27, align 4, !dbg !1403
  %xor441.i = xor i32 %919, %918, !dbg !1403
  store i32 %xor441.i, i32* %reg3.i27, align 4, !dbg !1403
  %920 = load i32, i32* %reg0.i24, align 4, !dbg !1403
  %921 = load i32, i32* %reg2.i26, align 4, !dbg !1403
  %xor442.i = xor i32 %921, %920, !dbg !1403
  store i32 %xor442.i, i32* %reg2.i26, align 4, !dbg !1403
  %922 = load i32, i32* %reg2.i26, align 4, !dbg !1403
  %923 = load i32, i32* %reg1.i25, align 4, !dbg !1403
  %xor443.i = xor i32 %923, %922, !dbg !1403
  store i32 %xor443.i, i32* %reg1.i25, align 4, !dbg !1403
  %924 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1404
  %u447.i = bitcast %union.ARIA_u128* %924 to [4 x i32]*, !dbg !1404
  %arrayidx448.i = getelementptr inbounds [4 x i32], [4 x i32]* %u447.i, i64 0, i64 0, !dbg !1404
  %925 = load i32, i32* %arrayidx448.i, align 4, !dbg !1404
  %926 = load i32, i32* %reg0.i24, align 4, !dbg !1404
  %xor449.i = xor i32 %926, %925, !dbg !1404
  store i32 %xor449.i, i32* %reg0.i24, align 4, !dbg !1404
  %927 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1404
  %u450.i = bitcast %union.ARIA_u128* %927 to [4 x i32]*, !dbg !1404
  %arrayidx451.i = getelementptr inbounds [4 x i32], [4 x i32]* %u450.i, i64 0, i64 1, !dbg !1404
  %928 = load i32, i32* %arrayidx451.i, align 4, !dbg !1404
  %929 = load i32, i32* %reg1.i25, align 4, !dbg !1404
  %xor452.i = xor i32 %929, %928, !dbg !1404
  store i32 %xor452.i, i32* %reg1.i25, align 4, !dbg !1404
  %930 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1404
  %u453.i = bitcast %union.ARIA_u128* %930 to [4 x i32]*, !dbg !1404
  %arrayidx454.i = getelementptr inbounds [4 x i32], [4 x i32]* %u453.i, i64 0, i64 2, !dbg !1404
  %931 = load i32, i32* %arrayidx454.i, align 4, !dbg !1404
  %932 = load i32, i32* %reg2.i26, align 4, !dbg !1404
  %xor455.i = xor i32 %932, %931, !dbg !1404
  store i32 %xor455.i, i32* %reg2.i26, align 4, !dbg !1404
  %933 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1404
  %u456.i = bitcast %union.ARIA_u128* %933 to [4 x i32]*, !dbg !1404
  %arrayidx457.i132 = getelementptr inbounds [4 x i32], [4 x i32]* %u456.i, i64 0, i64 3, !dbg !1404
  %934 = load i32, i32* %arrayidx457.i132, align 4, !dbg !1404
  %935 = load i32, i32* %reg3.i27, align 4, !dbg !1404
  %xor458.i133 = xor i32 %935, %934, !dbg !1404
  store i32 %xor458.i133, i32* %reg3.i27, align 4, !dbg !1404
  %936 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1405
  %incdec.ptr460.i = getelementptr inbounds %union.ARIA_u128, %union.ARIA_u128* %936, i32 1, !dbg !1405
  store %union.ARIA_u128* %incdec.ptr460.i, %union.ARIA_u128** %rk.i29, align 8, !dbg !1405
  br label %while.cond.i, !dbg !1392, !llvm.loop !1406

while.end.i:                                      ; preds = %while.cond.i
  %937 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1408
  %u461.i = bitcast %union.ARIA_u128* %937 to [4 x i32]*, !dbg !1409
  %arrayidx462.i134 = getelementptr inbounds [4 x i32], [4 x i32]* %u461.i, i64 0, i64 0, !dbg !1408
  %938 = load i32, i32* %arrayidx462.i134, align 4, !dbg !1408
  %939 = load i32, i32* %reg0.i24, align 4, !dbg !1410
  %shr463.i135 = lshr i32 %939, 24, !dbg !1410
  %conv464.i136 = trunc i32 %shr463.i135 to i8, !dbg !1410
  %idxprom465.i137 = zext i8 %conv464.i136 to i64, !dbg !1410
  %arrayidx466.i138 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom465.i137, !dbg !1410
  %940 = load i32, i32* %arrayidx466.i138, align 4, !dbg !1410
  %conv467.i = trunc i32 %940 to i8, !dbg !1410
  %conv468.i = zext i8 %conv467.i to i32, !dbg !1410
  %shl469.i = shl i32 %conv468.i, 24, !dbg !1410
  %941 = load i32, i32* %reg0.i24, align 4, !dbg !1410
  %shr470.i = lshr i32 %941, 16, !dbg !1410
  %conv471.i = trunc i32 %shr470.i to i8, !dbg !1410
  %idxprom472.i = zext i8 %conv471.i to i64, !dbg !1410
  %arrayidx473.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom472.i, !dbg !1410
  %942 = load i32, i32* %arrayidx473.i, align 4, !dbg !1410
  %shr474.i = lshr i32 %942, 8, !dbg !1410
  %conv475.i = trunc i32 %shr474.i to i8, !dbg !1410
  %conv476.i = zext i8 %conv475.i to i32, !dbg !1410
  %shl477.i = shl i32 %conv476.i, 16, !dbg !1410
  %or478.i = or i32 %shl469.i, %shl477.i, !dbg !1410
  %943 = load i32, i32* %reg0.i24, align 4, !dbg !1410
  %shr479.i = lshr i32 %943, 8, !dbg !1410
  %conv480.i = trunc i32 %shr479.i to i8, !dbg !1410
  %idxprom481.i = zext i8 %conv480.i to i64, !dbg !1410
  %arrayidx482.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom481.i, !dbg !1410
  %944 = load i32, i32* %arrayidx482.i, align 4, !dbg !1410
  %conv483.i139 = trunc i32 %944 to i8, !dbg !1410
  %conv484.i = zext i8 %conv483.i139 to i32, !dbg !1410
  %shl485.i = shl i32 %conv484.i, 8, !dbg !1410
  %or486.i = or i32 %or478.i, %shl485.i, !dbg !1410
  %945 = load i32, i32* %reg0.i24, align 4, !dbg !1410
  %conv488.i140 = trunc i32 %945 to i8, !dbg !1410
  %idxprom489.i141 = zext i8 %conv488.i140 to i64, !dbg !1410
  %arrayidx490.i142 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom489.i141, !dbg !1410
  %946 = load i32, i32* %arrayidx490.i142, align 4, !dbg !1410
  %conv491.i = trunc i32 %946 to i8, !dbg !1410
  %conv492.i = zext i8 %conv491.i to i32, !dbg !1410
  %or493.i = or i32 %or486.i, %conv492.i, !dbg !1410
  %xor494.i = xor i32 %938, %or493.i, !dbg !1411
  store i32 %xor494.i, i32* %reg0.i24, align 4, !dbg !1412
  %947 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1413
  %u495.i = bitcast %union.ARIA_u128* %947 to [4 x i32]*, !dbg !1414
  %arrayidx496.i = getelementptr inbounds [4 x i32], [4 x i32]* %u495.i, i64 0, i64 1, !dbg !1413
  %948 = load i32, i32* %arrayidx496.i, align 4, !dbg !1413
  %949 = load i32, i32* %reg1.i25, align 4, !dbg !1415
  %shr497.i = lshr i32 %949, 24, !dbg !1415
  %conv498.i = trunc i32 %shr497.i to i8, !dbg !1415
  %idxprom499.i = zext i8 %conv498.i to i64, !dbg !1415
  %arrayidx500.i = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom499.i, !dbg !1415
  %950 = load i32, i32* %arrayidx500.i, align 4, !dbg !1415
  %conv501.i = trunc i32 %950 to i8, !dbg !1415
  %conv502.i = zext i8 %conv501.i to i32, !dbg !1415
  %shl503.i = shl i32 %conv502.i, 24, !dbg !1415
  %951 = load i32, i32* %reg1.i25, align 4, !dbg !1415
  %shr504.i = lshr i32 %951, 16, !dbg !1415
  %conv505.i = trunc i32 %shr504.i to i8, !dbg !1415
  %idxprom506.i = zext i8 %conv505.i to i64, !dbg !1415
  %arrayidx507.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom506.i, !dbg !1415
  %952 = load i32, i32* %arrayidx507.i, align 4, !dbg !1415
  %shr508.i = lshr i32 %952, 8, !dbg !1415
  %conv509.i = trunc i32 %shr508.i to i8, !dbg !1415
  %conv510.i = zext i8 %conv509.i to i32, !dbg !1415
  %shl511.i = shl i32 %conv510.i, 16, !dbg !1415
  %or512.i = or i32 %shl503.i, %shl511.i, !dbg !1415
  %953 = load i32, i32* %reg1.i25, align 4, !dbg !1415
  %shr513.i = lshr i32 %953, 8, !dbg !1415
  %conv514.i = trunc i32 %shr513.i to i8, !dbg !1415
  %idxprom515.i = zext i8 %conv514.i to i64, !dbg !1415
  %arrayidx516.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom515.i, !dbg !1415
  %954 = load i32, i32* %arrayidx516.i, align 4, !dbg !1415
  %conv517.i = trunc i32 %954 to i8, !dbg !1415
  %conv518.i = zext i8 %conv517.i to i32, !dbg !1415
  %shl519.i143 = shl i32 %conv518.i, 8, !dbg !1415
  %or520.i = or i32 %or512.i, %shl519.i143, !dbg !1415
  %955 = load i32, i32* %reg1.i25, align 4, !dbg !1415
  %conv522.i = trunc i32 %955 to i8, !dbg !1415
  %idxprom523.i = zext i8 %conv522.i to i64, !dbg !1415
  %arrayidx524.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom523.i, !dbg !1415
  %956 = load i32, i32* %arrayidx524.i, align 4, !dbg !1415
  %conv525.i = trunc i32 %956 to i8, !dbg !1415
  %conv526.i = zext i8 %conv525.i to i32, !dbg !1415
  %or527.i = or i32 %or520.i, %conv526.i, !dbg !1415
  %xor528.i144 = xor i32 %948, %or527.i, !dbg !1416
  store i32 %xor528.i144, i32* %reg1.i25, align 4, !dbg !1417
  %957 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1418
  %u529.i = bitcast %union.ARIA_u128* %957 to [4 x i32]*, !dbg !1419
  %arrayidx530.i = getelementptr inbounds [4 x i32], [4 x i32]* %u529.i, i64 0, i64 2, !dbg !1418
  %958 = load i32, i32* %arrayidx530.i, align 4, !dbg !1418
  %959 = load i32, i32* %reg2.i26, align 4, !dbg !1420
  %shr531.i = lshr i32 %959, 24, !dbg !1420
  %conv532.i = trunc i32 %shr531.i to i8, !dbg !1420
  %idxprom533.i = zext i8 %conv532.i to i64, !dbg !1420
  %arrayidx534.i145 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom533.i, !dbg !1420
  %960 = load i32, i32* %arrayidx534.i145, align 4, !dbg !1420
  %conv535.i = trunc i32 %960 to i8, !dbg !1420
  %conv536.i = zext i8 %conv535.i to i32, !dbg !1420
  %shl537.i = shl i32 %conv536.i, 24, !dbg !1420
  %961 = load i32, i32* %reg2.i26, align 4, !dbg !1420
  %shr538.i = lshr i32 %961, 16, !dbg !1420
  %conv539.i = trunc i32 %shr538.i to i8, !dbg !1420
  %idxprom540.i = zext i8 %conv539.i to i64, !dbg !1420
  %arrayidx541.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom540.i, !dbg !1420
  %962 = load i32, i32* %arrayidx541.i, align 4, !dbg !1420
  %shr542.i = lshr i32 %962, 8, !dbg !1420
  %conv543.i = trunc i32 %shr542.i to i8, !dbg !1420
  %conv544.i = zext i8 %conv543.i to i32, !dbg !1420
  %shl545.i = shl i32 %conv544.i, 16, !dbg !1420
  %or546.i = or i32 %shl537.i, %shl545.i, !dbg !1420
  %963 = load i32, i32* %reg2.i26, align 4, !dbg !1420
  %shr547.i = lshr i32 %963, 8, !dbg !1420
  %conv548.i = trunc i32 %shr547.i to i8, !dbg !1420
  %idxprom549.i = zext i8 %conv548.i to i64, !dbg !1420
  %arrayidx550.i = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom549.i, !dbg !1420
  %964 = load i32, i32* %arrayidx550.i, align 4, !dbg !1420
  %conv551.i = trunc i32 %964 to i8, !dbg !1420
  %conv552.i = zext i8 %conv551.i to i32, !dbg !1420
  %shl553.i = shl i32 %conv552.i, 8, !dbg !1420
  %or554.i = or i32 %or546.i, %shl553.i, !dbg !1420
  %965 = load i32, i32* %reg2.i26, align 4, !dbg !1420
  %conv556.i = trunc i32 %965 to i8, !dbg !1420
  %idxprom557.i = zext i8 %conv556.i to i64, !dbg !1420
  %arrayidx558.i = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom557.i, !dbg !1420
  %966 = load i32, i32* %arrayidx558.i, align 4, !dbg !1420
  %conv559.i = trunc i32 %966 to i8, !dbg !1420
  %conv560.i = zext i8 %conv559.i to i32, !dbg !1420
  %or561.i = or i32 %or554.i, %conv560.i, !dbg !1420
  %xor562.i = xor i32 %958, %or561.i, !dbg !1421
  store i32 %xor562.i, i32* %reg2.i26, align 4, !dbg !1422
  %967 = load %union.ARIA_u128*, %union.ARIA_u128** %rk.i29, align 8, !dbg !1423
  %u563.i = bitcast %union.ARIA_u128* %967 to [4 x i32]*, !dbg !1424
  %arrayidx564.i146 = getelementptr inbounds [4 x i32], [4 x i32]* %u563.i, i64 0, i64 3, !dbg !1423
  %968 = load i32, i32* %arrayidx564.i146, align 4, !dbg !1423
  %969 = load i32, i32* %reg3.i27, align 4, !dbg !1425
  %shr565.i = lshr i32 %969, 24, !dbg !1425
  %conv566.i = trunc i32 %shr565.i to i8, !dbg !1425
  %idxprom567.i = zext i8 %conv566.i to i64, !dbg !1425
  %arrayidx568.i147 = getelementptr inbounds [256 x i32], [256 x i32]* @X1, i64 0, i64 %idxprom567.i, !dbg !1425
  %970 = load i32, i32* %arrayidx568.i147, align 4, !dbg !1425
  %conv569.i = trunc i32 %970 to i8, !dbg !1425
  %conv570.i = zext i8 %conv569.i to i32, !dbg !1425
  %shl571.i = shl i32 %conv570.i, 24, !dbg !1425
  %971 = load i32, i32* %reg3.i27, align 4, !dbg !1425
  %shr572.i = lshr i32 %971, 16, !dbg !1425
  %conv573.i = trunc i32 %shr572.i to i8, !dbg !1425
  %idxprom574.i = zext i8 %conv573.i to i64, !dbg !1425
  %arrayidx575.i = getelementptr inbounds [256 x i32], [256 x i32]* @X2, i64 0, i64 %idxprom574.i, !dbg !1425
  %972 = load i32, i32* %arrayidx575.i, align 4, !dbg !1425
  %shr576.i = lshr i32 %972, 8, !dbg !1425
  %conv577.i = trunc i32 %shr576.i to i8, !dbg !1425
  %conv578.i = zext i8 %conv577.i to i32, !dbg !1425
  %shl579.i = shl i32 %conv578.i, 16, !dbg !1425
  %or580.i = or i32 %shl571.i, %shl579.i, !dbg !1425
  %973 = load i32, i32* %reg3.i27, align 4, !dbg !1425
  %shr581.i = lshr i32 %973, 8, !dbg !1425
  %conv582.i = trunc i32 %shr581.i to i8, !dbg !1425
  %idxprom583.i = zext i8 %conv582.i to i64, !dbg !1425
  %arrayidx584.i148 = getelementptr inbounds [256 x i32], [256 x i32]* @S1, i64 0, i64 %idxprom583.i, !dbg !1425
  %974 = load i32, i32* %arrayidx584.i148, align 4, !dbg !1425
  %conv585.i = trunc i32 %974 to i8, !dbg !1425
  %conv586.i = zext i8 %conv585.i to i32, !dbg !1425
  %shl587.i = shl i32 %conv586.i, 8, !dbg !1425
  %or588.i = or i32 %or580.i, %shl587.i, !dbg !1425
  %975 = load i32, i32* %reg3.i27, align 4, !dbg !1425
  %conv590.i = trunc i32 %975 to i8, !dbg !1425
  %idxprom591.i = zext i8 %conv590.i to i64, !dbg !1425
  %arrayidx592.i149 = getelementptr inbounds [256 x i32], [256 x i32]* @S2, i64 0, i64 %idxprom591.i, !dbg !1425
  %976 = load i32, i32* %arrayidx592.i149, align 4, !dbg !1425
  %conv593.i = trunc i32 %976 to i8, !dbg !1425
  %conv594.i = zext i8 %conv593.i to i32, !dbg !1425
  %or595.i = or i32 %or588.i, %conv594.i, !dbg !1425
  %xor596.i150 = xor i32 %968, %or595.i, !dbg !1426
  store i32 %xor596.i150, i32* %reg3.i27, align 4, !dbg !1427
  %977 = load i32, i32* %reg0.i24, align 4, !dbg !1428
  %shr598.i = lshr i32 %977, 24, !dbg !1428
  %conv599.i = trunc i32 %shr598.i to i8, !dbg !1428
  %978 = load i8*, i8** %out.addr.i, align 8, !dbg !1428
  store i8 %conv599.i, i8* %978, align 1, !dbg !1428
  %979 = load i32, i32* %reg0.i24, align 4, !dbg !1428
  %shr601.i = lshr i32 %979, 16, !dbg !1428
  %conv602.i = trunc i32 %shr601.i to i8, !dbg !1428
  %980 = load i8*, i8** %out.addr.i, align 8, !dbg !1428
  %arrayidx603.i151 = getelementptr inbounds i8, i8* %980, i64 1, !dbg !1428
  store i8 %conv602.i, i8* %arrayidx603.i151, align 1, !dbg !1428
  %981 = load i32, i32* %reg0.i24, align 4, !dbg !1428
  %shr604.i152 = lshr i32 %981, 8, !dbg !1428
  %conv605.i = trunc i32 %shr604.i152 to i8, !dbg !1428
  %982 = load i8*, i8** %out.addr.i, align 8, !dbg !1428
  %arrayidx606.i153 = getelementptr inbounds i8, i8* %982, i64 2, !dbg !1428
  store i8 %conv605.i, i8* %arrayidx606.i153, align 1, !dbg !1428
  %983 = load i32, i32* %reg0.i24, align 4, !dbg !1428
  %conv608.i = trunc i32 %983 to i8, !dbg !1428
  %984 = load i8*, i8** %out.addr.i, align 8, !dbg !1428
  %arrayidx609.i = getelementptr inbounds i8, i8* %984, i64 3, !dbg !1428
  store i8 %conv608.i, i8* %arrayidx609.i, align 1, !dbg !1428
  %985 = load i32, i32* %reg1.i25, align 4, !dbg !1429
  %shr612.i = lshr i32 %985, 24, !dbg !1429
  %conv613.i = trunc i32 %shr612.i to i8, !dbg !1429
  %986 = load i8*, i8** %out.addr.i, align 8, !dbg !1429
  %arrayidx614.i = getelementptr inbounds i8, i8* %986, i64 4, !dbg !1429
  store i8 %conv613.i, i8* %arrayidx614.i, align 1, !dbg !1429
  %987 = load i32, i32* %reg1.i25, align 4, !dbg !1429
  %shr615.i = lshr i32 %987, 16, !dbg !1429
  %conv616.i = trunc i32 %shr615.i to i8, !dbg !1429
  %988 = load i8*, i8** %out.addr.i, align 8, !dbg !1429
  %arrayidx617.i = getelementptr inbounds i8, i8* %988, i64 5, !dbg !1429
  store i8 %conv616.i, i8* %arrayidx617.i, align 1, !dbg !1429
  %989 = load i32, i32* %reg1.i25, align 4, !dbg !1429
  %shr618.i = lshr i32 %989, 8, !dbg !1429
  %conv619.i = trunc i32 %shr618.i to i8, !dbg !1429
  %990 = load i8*, i8** %out.addr.i, align 8, !dbg !1429
  %arrayidx620.i = getelementptr inbounds i8, i8* %990, i64 6, !dbg !1429
  store i8 %conv619.i, i8* %arrayidx620.i, align 1, !dbg !1429
  %991 = load i32, i32* %reg1.i25, align 4, !dbg !1429
  %conv622.i = trunc i32 %991 to i8, !dbg !1429
  %992 = load i8*, i8** %out.addr.i, align 8, !dbg !1429
  %arrayidx623.i154 = getelementptr inbounds i8, i8* %992, i64 7, !dbg !1429
  store i8 %conv622.i, i8* %arrayidx623.i154, align 1, !dbg !1429
  %993 = load i32, i32* %reg2.i26, align 4, !dbg !1430
  %shr626.i = lshr i32 %993, 24, !dbg !1430
  %conv627.i = trunc i32 %shr626.i to i8, !dbg !1430
  %994 = load i8*, i8** %out.addr.i, align 8, !dbg !1430
  %arrayidx628.i = getelementptr inbounds i8, i8* %994, i64 8, !dbg !1430
  store i8 %conv627.i, i8* %arrayidx628.i, align 1, !dbg !1430
  %995 = load i32, i32* %reg2.i26, align 4, !dbg !1430
  %shr629.i = lshr i32 %995, 16, !dbg !1430
  %conv630.i = trunc i32 %shr629.i to i8, !dbg !1430
  %996 = load i8*, i8** %out.addr.i, align 8, !dbg !1430
  %arrayidx631.i155 = getelementptr inbounds i8, i8* %996, i64 9, !dbg !1430
  store i8 %conv630.i, i8* %arrayidx631.i155, align 1, !dbg !1430
  %997 = load i32, i32* %reg2.i26, align 4, !dbg !1430
  %shr632.i = lshr i32 %997, 8, !dbg !1430
  %conv633.i = trunc i32 %shr632.i to i8, !dbg !1430
  %998 = load i8*, i8** %out.addr.i, align 8, !dbg !1430
  %arrayidx634.i = getelementptr inbounds i8, i8* %998, i64 10, !dbg !1430
  store i8 %conv633.i, i8* %arrayidx634.i, align 1, !dbg !1430
  %999 = load i32, i32* %reg2.i26, align 4, !dbg !1430
  %conv636.i = trunc i32 %999 to i8, !dbg !1430
  %1000 = load i8*, i8** %out.addr.i, align 8, !dbg !1430
  %arrayidx637.i = getelementptr inbounds i8, i8* %1000, i64 11, !dbg !1430
  store i8 %conv636.i, i8* %arrayidx637.i, align 1, !dbg !1430
  %1001 = load i32, i32* %reg3.i27, align 4, !dbg !1431
  %shr640.i = lshr i32 %1001, 24, !dbg !1431
  %conv641.i = trunc i32 %shr640.i to i8, !dbg !1431
  %1002 = load i8*, i8** %out.addr.i, align 8, !dbg !1431
  %arrayidx642.i156 = getelementptr inbounds i8, i8* %1002, i64 12, !dbg !1431
  store i8 %conv641.i, i8* %arrayidx642.i156, align 1, !dbg !1431
  %1003 = load i32, i32* %reg3.i27, align 4, !dbg !1431
  %shr643.i157 = lshr i32 %1003, 16, !dbg !1431
  %conv644.i = trunc i32 %shr643.i157 to i8, !dbg !1431
  %1004 = load i8*, i8** %out.addr.i, align 8, !dbg !1431
  %arrayidx645.i158 = getelementptr inbounds i8, i8* %1004, i64 13, !dbg !1431
  store i8 %conv644.i, i8* %arrayidx645.i158, align 1, !dbg !1431
  %1005 = load i32, i32* %reg3.i27, align 4, !dbg !1431
  %shr646.i = lshr i32 %1005, 8, !dbg !1431
  %conv647.i = trunc i32 %shr646.i to i8, !dbg !1431
  %1006 = load i8*, i8** %out.addr.i, align 8, !dbg !1431
  %arrayidx648.i = getelementptr inbounds i8, i8* %1006, i64 14, !dbg !1431
  store i8 %conv647.i, i8* %arrayidx648.i, align 1, !dbg !1431
  %1007 = load i32, i32* %reg3.i27, align 4, !dbg !1431
  %conv650.i = trunc i32 %1007 to i8, !dbg !1431
  %1008 = load i8*, i8** %out.addr.i, align 8, !dbg !1431
  %arrayidx651.i159 = getelementptr inbounds i8, i8* %1008, i64 15, !dbg !1431
  store i8 %conv650.i, i8* %arrayidx651.i159, align 1, !dbg !1431
  br label %aria_encrypt.exit, !dbg !1431

aria_encrypt.exit:                                ; preds = %if.then.i34, %if.then10.i, %while.end.i
  %1009 = load i8*, i8** %in, align 8, !dbg !1432
  %call22 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %1009), !dbg !1433
  %1010 = load i64, i64* %round, align 8, !dbg !1434
  %dec = add i64 %1010, -1, !dbg !1434
  store i64 %dec, i64* %round, align 8, !dbg !1434
  br label %while.cond, !dbg !1332, !llvm.loop !1435

while.end:                                        ; preds = %while.cond
  %1011 = load i32, i32* %retval, align 4, !dbg !1437
  ret i32 %1011, !dbg !1437
}

declare dso_local i8* @malloc(i64) #5

declare dso_local i32 @rand(...) #5

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #6

declare dso_local i32 @free(...) #5

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind willreturn }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "S1", scope: !2, file: !3, line: 77, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Cipher/aria.c", directory: "/home/phil/Documents/github/cache-symbolic/crypto_test")
!4 = !{}
!5 = !{!6, !7, !12, !14, !17}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 41, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 37, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!18 = !{!0, !19, !25, !27, !29, !35}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "S2", scope: !2, file: !3, line: 144, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8192, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!23 = !{!24}
!24 = !DISubrange(count: 256)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "X1", scope: !2, file: !3, line: 211, type: !21, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "X2", scope: !2, file: !3, line: 278, type: !21, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "Key_RC", scope: !2, file: !3, line: 68, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 640, elements: !32)
!32 = !{!33, !34}
!33 = !DISubrange(count: 5)
!34 = !DISubrange(count: 4)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "key", scope: !2, file: !3, line: 1215, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !39)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!39 = !{!40}
!40 = !DISubrange(count: 32)
!41 = !{i32 7, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{!"clang version 10.0.0 "}
!45 = distinct !DISubprogram(name: "aria_encrypt", scope: !3, file: !3, line: 472, type: !46, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !49, !50}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "ARIA_KEY", file: !53, line: 39, baseType: !54)
!53 = !DIFile(filename: "Cipher/aria.h", directory: "/home/phil/Documents/github/cache-symbolic/crypto_test")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aria_key_st", file: !53, line: 35, size: 2208, elements: !55)
!55 = !{!56, !70}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "rd_key", scope: !54, file: !53, line: 36, baseType: !57, size: 2176)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2176, elements: !68)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ARIA_u128", file: !53, line: 31, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !53, line: 28, size: 128, elements: !60)
!60 = !{!61, !65}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !59, file: !53, line: 29, baseType: !62, size: 128)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !59, file: !53, line: 30, baseType: !66, size: 128)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !67)
!67 = !{!34}
!68 = !{!69}
!69 = !DISubrange(count: 17)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "rounds", scope: !54, file: !53, line: 37, baseType: !11, size: 32, offset: 2176)
!71 = !DILocalVariable(name: "in", arg: 1, scope: !45, file: !3, line: 472, type: !48)
!72 = !DILocation(line: 472, column: 40, scope: !45)
!73 = !DILocalVariable(name: "out", arg: 2, scope: !45, file: !3, line: 472, type: !49)
!74 = !DILocation(line: 472, column: 59, scope: !45)
!75 = !DILocalVariable(name: "key", arg: 3, scope: !45, file: !3, line: 473, type: !50)
!76 = !DILocation(line: 473, column: 35, scope: !45)
!77 = !DILocalVariable(name: "reg0", scope: !45, file: !3, line: 475, type: !7)
!78 = !DILocation(line: 475, column: 23, scope: !45)
!79 = !DILocalVariable(name: "reg1", scope: !45, file: !3, line: 475, type: !7)
!80 = !DILocation(line: 475, column: 29, scope: !45)
!81 = !DILocalVariable(name: "reg2", scope: !45, file: !3, line: 475, type: !7)
!82 = !DILocation(line: 475, column: 35, scope: !45)
!83 = !DILocalVariable(name: "reg3", scope: !45, file: !3, line: 475, type: !7)
!84 = !DILocation(line: 475, column: 41, scope: !45)
!85 = !DILocalVariable(name: "Nr", scope: !45, file: !3, line: 476, type: !86)
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DILocation(line: 476, column: 9, scope: !45)
!88 = !DILocalVariable(name: "rk", scope: !45, file: !3, line: 477, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!91 = !DILocation(line: 477, column: 22, scope: !45)
!92 = !DILocation(line: 477, column: 5, scope: !45)
!93 = !DILocation(line: 479, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !45, file: !3, line: 479, column: 9)
!95 = !DILocation(line: 479, column: 12, scope: !94)
!96 = !DILocation(line: 479, column: 20, scope: !94)
!97 = !DILocation(line: 479, column: 23, scope: !94)
!98 = !DILocation(line: 479, column: 27, scope: !94)
!99 = !DILocation(line: 479, column: 35, scope: !94)
!100 = !DILocation(line: 479, column: 38, scope: !94)
!101 = !DILocation(line: 479, column: 42, scope: !94)
!102 = !DILocation(line: 479, column: 9, scope: !45)
!103 = !DILocation(line: 480, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !94, file: !3, line: 479, column: 51)
!105 = !DILocation(line: 483, column: 10, scope: !45)
!106 = !DILocation(line: 483, column: 15, scope: !45)
!107 = !DILocation(line: 483, column: 8, scope: !45)
!108 = !DILocation(line: 484, column: 10, scope: !45)
!109 = !DILocation(line: 484, column: 15, scope: !45)
!110 = !DILocation(line: 484, column: 8, scope: !45)
!111 = !DILocation(line: 486, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !45, file: !3, line: 486, column: 9)
!113 = !DILocation(line: 486, column: 12, scope: !112)
!114 = !DILocation(line: 486, column: 18, scope: !112)
!115 = !DILocation(line: 486, column: 21, scope: !112)
!116 = !DILocation(line: 486, column: 24, scope: !112)
!117 = !DILocation(line: 486, column: 30, scope: !112)
!118 = !DILocation(line: 486, column: 33, scope: !112)
!119 = !DILocation(line: 486, column: 36, scope: !112)
!120 = !DILocation(line: 486, column: 9, scope: !45)
!121 = !DILocation(line: 487, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !112, file: !3, line: 486, column: 43)
!123 = !DILocation(line: 490, column: 12, scope: !45)
!124 = !DILocation(line: 490, column: 10, scope: !45)
!125 = !DILocation(line: 491, column: 12, scope: !45)
!126 = !DILocation(line: 491, column: 10, scope: !45)
!127 = !DILocation(line: 492, column: 12, scope: !45)
!128 = !DILocation(line: 492, column: 10, scope: !45)
!129 = !DILocation(line: 493, column: 12, scope: !45)
!130 = !DILocation(line: 493, column: 10, scope: !45)
!131 = !DILocation(line: 495, column: 5, scope: !45)
!132 = !DILocation(line: 495, column: 5, scope: !133)
!133 = distinct !DILexicalBlock(scope: !45, file: !3, line: 495, column: 5)
!134 = !DILocation(line: 496, column: 7, scope: !45)
!135 = !DILocation(line: 498, column: 5, scope: !45)
!136 = !DILocation(line: 498, column: 5, scope: !137)
!137 = distinct !DILexicalBlock(scope: !45, file: !3, line: 498, column: 5)
!138 = !DILocation(line: 498, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !137, file: !3, line: 498, column: 5)
!140 = !DILocation(line: 498, column: 5, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 498, column: 5)
!142 = !DILocation(line: 498, column: 5, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !3, line: 498, column: 5)
!144 = !DILocation(line: 498, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !137, file: !3, line: 498, column: 5)
!146 = !DILocation(line: 499, column: 5, scope: !45)
!147 = !DILocation(line: 499, column: 5, scope: !148)
!148 = distinct !DILexicalBlock(scope: !45, file: !3, line: 499, column: 5)
!149 = !DILocation(line: 500, column: 7, scope: !45)
!150 = !DILocation(line: 502, column: 5, scope: !45)
!151 = !DILocation(line: 502, column: 14, scope: !45)
!152 = !DILocation(line: 503, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !45, file: !3, line: 502, column: 19)
!154 = !DILocation(line: 503, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !153, file: !3, line: 503, column: 9)
!156 = !DILocation(line: 503, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !3, line: 503, column: 9)
!158 = !DILocation(line: 503, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 503, column: 9)
!160 = !DILocation(line: 503, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !3, line: 503, column: 9)
!162 = !DILocation(line: 503, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !155, file: !3, line: 503, column: 9)
!164 = !DILocation(line: 504, column: 9, scope: !153)
!165 = !DILocation(line: 504, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !153, file: !3, line: 504, column: 9)
!167 = !DILocation(line: 505, column: 11, scope: !153)
!168 = !DILocation(line: 507, column: 9, scope: !153)
!169 = !DILocation(line: 507, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !153, file: !3, line: 507, column: 9)
!171 = !DILocation(line: 507, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !170, file: !3, line: 507, column: 9)
!173 = !DILocation(line: 507, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 507, column: 9)
!175 = !DILocation(line: 507, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !3, line: 507, column: 9)
!177 = !DILocation(line: 507, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !170, file: !3, line: 507, column: 9)
!179 = !DILocation(line: 508, column: 9, scope: !153)
!180 = !DILocation(line: 508, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !153, file: !3, line: 508, column: 9)
!182 = !DILocation(line: 509, column: 11, scope: !153)
!183 = distinct !{!183, !150, !184}
!184 = !DILocation(line: 510, column: 5, scope: !45)
!185 = !DILocation(line: 512, column: 12, scope: !45)
!186 = !DILocation(line: 512, column: 16, scope: !45)
!187 = !DILocation(line: 512, column: 23, scope: !45)
!188 = !DILocation(line: 512, column: 21, scope: !45)
!189 = !DILocation(line: 512, column: 10, scope: !45)
!190 = !DILocation(line: 517, column: 12, scope: !45)
!191 = !DILocation(line: 517, column: 16, scope: !45)
!192 = !DILocation(line: 517, column: 23, scope: !45)
!193 = !DILocation(line: 517, column: 21, scope: !45)
!194 = !DILocation(line: 517, column: 10, scope: !45)
!195 = !DILocation(line: 522, column: 12, scope: !45)
!196 = !DILocation(line: 522, column: 16, scope: !45)
!197 = !DILocation(line: 522, column: 23, scope: !45)
!198 = !DILocation(line: 522, column: 21, scope: !45)
!199 = !DILocation(line: 522, column: 10, scope: !45)
!200 = !DILocation(line: 527, column: 12, scope: !45)
!201 = !DILocation(line: 527, column: 16, scope: !45)
!202 = !DILocation(line: 527, column: 23, scope: !45)
!203 = !DILocation(line: 527, column: 21, scope: !45)
!204 = !DILocation(line: 527, column: 10, scope: !45)
!205 = !DILocation(line: 533, column: 5, scope: !45)
!206 = !DILocation(line: 533, column: 5, scope: !207)
!207 = distinct !DILexicalBlock(scope: !45, file: !3, line: 533, column: 5)
!208 = !DILocation(line: 534, column: 5, scope: !45)
!209 = !DILocation(line: 534, column: 5, scope: !210)
!210 = distinct !DILexicalBlock(scope: !45, file: !3, line: 534, column: 5)
!211 = !DILocation(line: 535, column: 5, scope: !45)
!212 = !DILocation(line: 535, column: 5, scope: !213)
!213 = distinct !DILexicalBlock(scope: !45, file: !3, line: 535, column: 5)
!214 = !DILocation(line: 536, column: 5, scope: !45)
!215 = !DILocation(line: 536, column: 5, scope: !216)
!216 = distinct !DILexicalBlock(scope: !45, file: !3, line: 536, column: 5)
!217 = !DILocation(line: 537, column: 1, scope: !45)
!218 = distinct !DISubprogram(name: "aria_set_encrypt_key", scope: !3, file: !3, line: 539, type: !219, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!219 = !DISubroutineType(types: !220)
!220 = !{!86, !48, !221, !222}
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!223 = !DILocalVariable(name: "userKey", arg: 1, scope: !218, file: !3, line: 539, type: !48)
!224 = !DILocation(line: 539, column: 47, scope: !218)
!225 = !DILocalVariable(name: "bits", arg: 2, scope: !218, file: !3, line: 539, type: !221)
!226 = !DILocation(line: 539, column: 66, scope: !218)
!227 = !DILocalVariable(name: "key", arg: 3, scope: !218, file: !3, line: 540, type: !222)
!228 = !DILocation(line: 540, column: 36, scope: !218)
!229 = !DILocalVariable(name: "reg0", scope: !218, file: !3, line: 542, type: !7)
!230 = !DILocation(line: 542, column: 23, scope: !218)
!231 = !DILocalVariable(name: "reg1", scope: !218, file: !3, line: 542, type: !7)
!232 = !DILocation(line: 542, column: 29, scope: !218)
!233 = !DILocalVariable(name: "reg2", scope: !218, file: !3, line: 542, type: !7)
!234 = !DILocation(line: 542, column: 35, scope: !218)
!235 = !DILocalVariable(name: "reg3", scope: !218, file: !3, line: 542, type: !7)
!236 = !DILocation(line: 542, column: 41, scope: !218)
!237 = !DILocalVariable(name: "w0", scope: !218, file: !3, line: 543, type: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !67)
!239 = !DILocation(line: 543, column: 14, scope: !218)
!240 = !DILocalVariable(name: "w1", scope: !218, file: !3, line: 543, type: !238)
!241 = !DILocation(line: 543, column: 21, scope: !218)
!242 = !DILocalVariable(name: "w2", scope: !218, file: !3, line: 543, type: !238)
!243 = !DILocation(line: 543, column: 28, scope: !218)
!244 = !DILocalVariable(name: "w3", scope: !218, file: !3, line: 543, type: !238)
!245 = !DILocation(line: 543, column: 35, scope: !218)
!246 = !DILocalVariable(name: "ck", scope: !218, file: !3, line: 544, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!248 = !DILocation(line: 544, column: 21, scope: !218)
!249 = !DILocalVariable(name: "rk", scope: !218, file: !3, line: 546, type: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!251 = !DILocation(line: 546, column: 16, scope: !218)
!252 = !DILocalVariable(name: "Nr", scope: !218, file: !3, line: 547, type: !86)
!253 = !DILocation(line: 547, column: 9, scope: !218)
!254 = !DILocation(line: 547, column: 15, scope: !218)
!255 = !DILocation(line: 547, column: 20, scope: !218)
!256 = !DILocation(line: 547, column: 27, scope: !218)
!257 = !DILocation(line: 549, column: 9, scope: !258)
!258 = distinct !DILexicalBlock(scope: !218, file: !3, line: 549, column: 9)
!259 = !DILocation(line: 549, column: 17, scope: !258)
!260 = !DILocation(line: 549, column: 25, scope: !258)
!261 = !DILocation(line: 549, column: 28, scope: !258)
!262 = !DILocation(line: 549, column: 32, scope: !258)
!263 = !DILocation(line: 549, column: 9, scope: !218)
!264 = !DILocation(line: 550, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !3, line: 549, column: 41)
!266 = !DILocation(line: 552, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !218, file: !3, line: 552, column: 9)
!268 = !DILocation(line: 552, column: 14, scope: !267)
!269 = !DILocation(line: 552, column: 21, scope: !267)
!270 = !DILocation(line: 552, column: 24, scope: !267)
!271 = !DILocation(line: 552, column: 29, scope: !267)
!272 = !DILocation(line: 552, column: 36, scope: !267)
!273 = !DILocation(line: 552, column: 39, scope: !267)
!274 = !DILocation(line: 552, column: 44, scope: !267)
!275 = !DILocation(line: 552, column: 9, scope: !218)
!276 = !DILocation(line: 553, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !267, file: !3, line: 552, column: 52)
!278 = !DILocation(line: 556, column: 10, scope: !218)
!279 = !DILocation(line: 556, column: 15, scope: !218)
!280 = !DILocation(line: 556, column: 8, scope: !218)
!281 = !DILocation(line: 557, column: 19, scope: !218)
!282 = !DILocation(line: 557, column: 5, scope: !218)
!283 = !DILocation(line: 557, column: 10, scope: !218)
!284 = !DILocation(line: 557, column: 17, scope: !218)
!285 = !DILocation(line: 558, column: 19, scope: !218)
!286 = !DILocation(line: 558, column: 24, scope: !218)
!287 = !DILocation(line: 558, column: 31, scope: !218)
!288 = !DILocation(line: 558, column: 11, scope: !218)
!289 = !DILocation(line: 558, column: 8, scope: !218)
!290 = !DILocation(line: 560, column: 13, scope: !218)
!291 = !DILocation(line: 560, column: 5, scope: !218)
!292 = !DILocation(line: 560, column: 11, scope: !218)
!293 = !DILocation(line: 561, column: 13, scope: !218)
!294 = !DILocation(line: 561, column: 5, scope: !218)
!295 = !DILocation(line: 561, column: 11, scope: !218)
!296 = !DILocation(line: 562, column: 13, scope: !218)
!297 = !DILocation(line: 562, column: 5, scope: !218)
!298 = !DILocation(line: 562, column: 11, scope: !218)
!299 = !DILocation(line: 563, column: 13, scope: !218)
!300 = !DILocation(line: 563, column: 5, scope: !218)
!301 = !DILocation(line: 563, column: 11, scope: !218)
!302 = !DILocation(line: 565, column: 12, scope: !218)
!303 = !DILocation(line: 565, column: 20, scope: !218)
!304 = !DILocation(line: 565, column: 18, scope: !218)
!305 = !DILocation(line: 565, column: 10, scope: !218)
!306 = !DILocation(line: 566, column: 12, scope: !218)
!307 = !DILocation(line: 566, column: 20, scope: !218)
!308 = !DILocation(line: 566, column: 18, scope: !218)
!309 = !DILocation(line: 566, column: 10, scope: !218)
!310 = !DILocation(line: 567, column: 12, scope: !218)
!311 = !DILocation(line: 567, column: 20, scope: !218)
!312 = !DILocation(line: 567, column: 18, scope: !218)
!313 = !DILocation(line: 567, column: 10, scope: !218)
!314 = !DILocation(line: 568, column: 12, scope: !218)
!315 = !DILocation(line: 568, column: 20, scope: !218)
!316 = !DILocation(line: 568, column: 18, scope: !218)
!317 = !DILocation(line: 568, column: 10, scope: !218)
!318 = !DILocation(line: 570, column: 5, scope: !218)
!319 = !DILocation(line: 570, column: 5, scope: !320)
!320 = distinct !DILexicalBlock(scope: !218, file: !3, line: 570, column: 5)
!321 = !DILocation(line: 570, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !3, line: 570, column: 5)
!323 = !DILocation(line: 570, column: 5, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 570, column: 5)
!325 = !DILocation(line: 570, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !320, file: !3, line: 570, column: 5)
!327 = !DILocation(line: 570, column: 5, scope: !328)
!328 = distinct !DILexicalBlock(scope: !320, file: !3, line: 570, column: 5)
!329 = !DILocation(line: 572, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !218, file: !3, line: 572, column: 9)
!331 = !DILocation(line: 572, column: 14, scope: !330)
!332 = !DILocation(line: 572, column: 9, scope: !218)
!333 = !DILocation(line: 573, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 572, column: 21)
!335 = !DILocation(line: 573, column: 9, scope: !334)
!336 = !DILocation(line: 573, column: 15, scope: !334)
!337 = !DILocation(line: 574, column: 17, scope: !334)
!338 = !DILocation(line: 574, column: 9, scope: !334)
!339 = !DILocation(line: 574, column: 15, scope: !334)
!340 = !DILocation(line: 575, column: 13, scope: !341)
!341 = distinct !DILexicalBlock(scope: !334, file: !3, line: 575, column: 13)
!342 = !DILocation(line: 575, column: 18, scope: !341)
!343 = !DILocation(line: 575, column: 13, scope: !334)
!344 = !DILocation(line: 576, column: 21, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !3, line: 575, column: 25)
!346 = !DILocation(line: 576, column: 13, scope: !345)
!347 = !DILocation(line: 576, column: 19, scope: !345)
!348 = !DILocation(line: 577, column: 21, scope: !345)
!349 = !DILocation(line: 577, column: 13, scope: !345)
!350 = !DILocation(line: 577, column: 19, scope: !345)
!351 = !DILocation(line: 578, column: 9, scope: !345)
!352 = !DILocation(line: 580, column: 21, scope: !353)
!353 = distinct !DILexicalBlock(scope: !341, file: !3, line: 579, column: 14)
!354 = !DILocation(line: 580, column: 27, scope: !353)
!355 = !DILocation(line: 580, column: 13, scope: !353)
!356 = !DILocation(line: 580, column: 19, scope: !353)
!357 = !DILocation(line: 582, column: 5, scope: !334)
!358 = !DILocation(line: 584, column: 33, scope: !359)
!359 = distinct !DILexicalBlock(scope: !330, file: !3, line: 583, column: 10)
!360 = !DILocation(line: 584, column: 39, scope: !359)
!361 = !DILocation(line: 584, column: 25, scope: !359)
!362 = !DILocation(line: 584, column: 31, scope: !359)
!363 = !DILocation(line: 584, column: 17, scope: !359)
!364 = !DILocation(line: 584, column: 23, scope: !359)
!365 = !DILocation(line: 584, column: 9, scope: !359)
!366 = !DILocation(line: 584, column: 15, scope: !359)
!367 = !DILocation(line: 587, column: 14, scope: !218)
!368 = !DILocation(line: 587, column: 5, scope: !218)
!369 = !DILocation(line: 587, column: 11, scope: !218)
!370 = !DILocation(line: 588, column: 14, scope: !218)
!371 = !DILocation(line: 588, column: 5, scope: !218)
!372 = !DILocation(line: 588, column: 11, scope: !218)
!373 = !DILocation(line: 589, column: 14, scope: !218)
!374 = !DILocation(line: 589, column: 5, scope: !218)
!375 = !DILocation(line: 589, column: 11, scope: !218)
!376 = !DILocation(line: 590, column: 14, scope: !218)
!377 = !DILocation(line: 590, column: 5, scope: !218)
!378 = !DILocation(line: 590, column: 11, scope: !218)
!379 = !DILocation(line: 592, column: 12, scope: !218)
!380 = !DILocation(line: 592, column: 10, scope: !218)
!381 = !DILocation(line: 593, column: 12, scope: !218)
!382 = !DILocation(line: 593, column: 10, scope: !218)
!383 = !DILocation(line: 594, column: 12, scope: !218)
!384 = !DILocation(line: 594, column: 10, scope: !218)
!385 = !DILocation(line: 595, column: 12, scope: !218)
!386 = !DILocation(line: 595, column: 10, scope: !218)
!387 = !DILocation(line: 597, column: 13, scope: !218)
!388 = !DILocation(line: 597, column: 10, scope: !218)
!389 = !DILocation(line: 598, column: 13, scope: !218)
!390 = !DILocation(line: 598, column: 10, scope: !218)
!391 = !DILocation(line: 599, column: 13, scope: !218)
!392 = !DILocation(line: 599, column: 10, scope: !218)
!393 = !DILocation(line: 600, column: 13, scope: !218)
!394 = !DILocation(line: 600, column: 10, scope: !218)
!395 = !DILocation(line: 602, column: 5, scope: !218)
!396 = !DILocation(line: 602, column: 5, scope: !397)
!397 = distinct !DILexicalBlock(scope: !218, file: !3, line: 602, column: 5)
!398 = !DILocation(line: 602, column: 5, scope: !399)
!399 = distinct !DILexicalBlock(scope: !397, file: !3, line: 602, column: 5)
!400 = !DILocation(line: 602, column: 5, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !3, line: 602, column: 5)
!402 = !DILocation(line: 602, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !397, file: !3, line: 602, column: 5)
!404 = !DILocation(line: 602, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !3, line: 602, column: 5)
!406 = !DILocation(line: 604, column: 13, scope: !218)
!407 = !DILocation(line: 604, column: 10, scope: !218)
!408 = !DILocation(line: 605, column: 13, scope: !218)
!409 = !DILocation(line: 605, column: 10, scope: !218)
!410 = !DILocation(line: 606, column: 13, scope: !218)
!411 = !DILocation(line: 606, column: 10, scope: !218)
!412 = !DILocation(line: 607, column: 13, scope: !218)
!413 = !DILocation(line: 607, column: 10, scope: !218)
!414 = !DILocation(line: 609, column: 13, scope: !218)
!415 = !DILocation(line: 609, column: 5, scope: !218)
!416 = !DILocation(line: 609, column: 11, scope: !218)
!417 = !DILocation(line: 610, column: 13, scope: !218)
!418 = !DILocation(line: 610, column: 5, scope: !218)
!419 = !DILocation(line: 610, column: 11, scope: !218)
!420 = !DILocation(line: 611, column: 13, scope: !218)
!421 = !DILocation(line: 611, column: 5, scope: !218)
!422 = !DILocation(line: 611, column: 11, scope: !218)
!423 = !DILocation(line: 612, column: 13, scope: !218)
!424 = !DILocation(line: 612, column: 5, scope: !218)
!425 = !DILocation(line: 612, column: 11, scope: !218)
!426 = !DILocation(line: 614, column: 13, scope: !218)
!427 = !DILocation(line: 614, column: 10, scope: !218)
!428 = !DILocation(line: 615, column: 13, scope: !218)
!429 = !DILocation(line: 615, column: 10, scope: !218)
!430 = !DILocation(line: 616, column: 13, scope: !218)
!431 = !DILocation(line: 616, column: 10, scope: !218)
!432 = !DILocation(line: 617, column: 13, scope: !218)
!433 = !DILocation(line: 617, column: 10, scope: !218)
!434 = !DILocation(line: 619, column: 5, scope: !218)
!435 = !DILocation(line: 619, column: 5, scope: !436)
!436 = distinct !DILexicalBlock(scope: !218, file: !3, line: 619, column: 5)
!437 = !DILocation(line: 619, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !3, line: 619, column: 5)
!439 = !DILocation(line: 619, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !3, line: 619, column: 5)
!441 = !DILocation(line: 619, column: 5, scope: !442)
!442 = distinct !DILexicalBlock(scope: !436, file: !3, line: 619, column: 5)
!443 = !DILocation(line: 619, column: 5, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !3, line: 619, column: 5)
!445 = !DILocation(line: 621, column: 13, scope: !218)
!446 = !DILocation(line: 621, column: 20, scope: !218)
!447 = !DILocation(line: 621, column: 18, scope: !218)
!448 = !DILocation(line: 621, column: 5, scope: !218)
!449 = !DILocation(line: 621, column: 11, scope: !218)
!450 = !DILocation(line: 622, column: 13, scope: !218)
!451 = !DILocation(line: 622, column: 20, scope: !218)
!452 = !DILocation(line: 622, column: 18, scope: !218)
!453 = !DILocation(line: 622, column: 5, scope: !218)
!454 = !DILocation(line: 622, column: 11, scope: !218)
!455 = !DILocation(line: 623, column: 13, scope: !218)
!456 = !DILocation(line: 623, column: 20, scope: !218)
!457 = !DILocation(line: 623, column: 18, scope: !218)
!458 = !DILocation(line: 623, column: 5, scope: !218)
!459 = !DILocation(line: 623, column: 11, scope: !218)
!460 = !DILocation(line: 624, column: 13, scope: !218)
!461 = !DILocation(line: 624, column: 20, scope: !218)
!462 = !DILocation(line: 624, column: 18, scope: !218)
!463 = !DILocation(line: 624, column: 5, scope: !218)
!464 = !DILocation(line: 624, column: 11, scope: !218)
!465 = !DILocation(line: 626, column: 5, scope: !218)
!466 = !DILocation(line: 626, column: 5, scope: !467)
!467 = distinct !DILexicalBlock(scope: !218, file: !3, line: 626, column: 5)
!468 = !DILocation(line: 627, column: 7, scope: !218)
!469 = !DILocation(line: 628, column: 5, scope: !218)
!470 = !DILocation(line: 628, column: 5, scope: !471)
!471 = distinct !DILexicalBlock(scope: !218, file: !3, line: 628, column: 5)
!472 = !DILocation(line: 629, column: 7, scope: !218)
!473 = !DILocation(line: 630, column: 5, scope: !218)
!474 = !DILocation(line: 630, column: 5, scope: !475)
!475 = distinct !DILexicalBlock(scope: !218, file: !3, line: 630, column: 5)
!476 = !DILocation(line: 631, column: 7, scope: !218)
!477 = !DILocation(line: 632, column: 5, scope: !218)
!478 = !DILocation(line: 632, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !218, file: !3, line: 632, column: 5)
!480 = !DILocation(line: 634, column: 7, scope: !218)
!481 = !DILocation(line: 635, column: 5, scope: !218)
!482 = !DILocation(line: 635, column: 5, scope: !483)
!483 = distinct !DILexicalBlock(scope: !218, file: !3, line: 635, column: 5)
!484 = !DILocation(line: 636, column: 7, scope: !218)
!485 = !DILocation(line: 637, column: 5, scope: !218)
!486 = !DILocation(line: 637, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !218, file: !3, line: 637, column: 5)
!488 = !DILocation(line: 638, column: 7, scope: !218)
!489 = !DILocation(line: 639, column: 5, scope: !218)
!490 = !DILocation(line: 639, column: 5, scope: !491)
!491 = distinct !DILexicalBlock(scope: !218, file: !3, line: 639, column: 5)
!492 = !DILocation(line: 640, column: 7, scope: !218)
!493 = !DILocation(line: 641, column: 5, scope: !218)
!494 = !DILocation(line: 641, column: 5, scope: !495)
!495 = distinct !DILexicalBlock(scope: !218, file: !3, line: 641, column: 5)
!496 = !DILocation(line: 643, column: 7, scope: !218)
!497 = !DILocation(line: 644, column: 5, scope: !218)
!498 = !DILocation(line: 644, column: 5, scope: !499)
!499 = distinct !DILexicalBlock(scope: !218, file: !3, line: 644, column: 5)
!500 = !DILocation(line: 645, column: 7, scope: !218)
!501 = !DILocation(line: 646, column: 5, scope: !218)
!502 = !DILocation(line: 646, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !218, file: !3, line: 646, column: 5)
!504 = !DILocation(line: 647, column: 7, scope: !218)
!505 = !DILocation(line: 648, column: 5, scope: !218)
!506 = !DILocation(line: 648, column: 5, scope: !507)
!507 = distinct !DILexicalBlock(scope: !218, file: !3, line: 648, column: 5)
!508 = !DILocation(line: 649, column: 7, scope: !218)
!509 = !DILocation(line: 650, column: 5, scope: !218)
!510 = !DILocation(line: 650, column: 5, scope: !511)
!511 = distinct !DILexicalBlock(scope: !218, file: !3, line: 650, column: 5)
!512 = !DILocation(line: 652, column: 7, scope: !218)
!513 = !DILocation(line: 653, column: 5, scope: !218)
!514 = !DILocation(line: 653, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !218, file: !3, line: 653, column: 5)
!516 = !DILocation(line: 654, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !218, file: !3, line: 654, column: 9)
!518 = !DILocation(line: 654, column: 14, scope: !517)
!519 = !DILocation(line: 654, column: 9, scope: !218)
!520 = !DILocation(line: 655, column: 11, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !3, line: 654, column: 21)
!522 = !DILocation(line: 656, column: 9, scope: !521)
!523 = !DILocation(line: 656, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !3, line: 656, column: 9)
!525 = !DILocation(line: 657, column: 11, scope: !521)
!526 = !DILocation(line: 658, column: 9, scope: !521)
!527 = !DILocation(line: 658, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !521, file: !3, line: 658, column: 9)
!529 = !DILocation(line: 659, column: 5, scope: !521)
!530 = !DILocation(line: 660, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !218, file: !3, line: 660, column: 9)
!532 = !DILocation(line: 660, column: 14, scope: !531)
!533 = !DILocation(line: 660, column: 9, scope: !218)
!534 = !DILocation(line: 661, column: 11, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !3, line: 660, column: 21)
!536 = !DILocation(line: 662, column: 9, scope: !535)
!537 = !DILocation(line: 662, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !535, file: !3, line: 662, column: 9)
!539 = !DILocation(line: 664, column: 11, scope: !535)
!540 = !DILocation(line: 665, column: 9, scope: !535)
!541 = !DILocation(line: 665, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !535, file: !3, line: 665, column: 9)
!543 = !DILocation(line: 666, column: 5, scope: !535)
!544 = !DILocation(line: 668, column: 5, scope: !218)
!545 = !DILocation(line: 669, column: 1, scope: !218)
!546 = distinct !DISubprogram(name: "aria_set_decrypt_key", scope: !3, file: !3, line: 671, type: !219, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!547 = !DILocation(line: 539, column: 47, scope: !218, inlinedAt: !548)
!548 = distinct !DILocation(line: 680, column: 19, scope: !546)
!549 = !DILocation(line: 539, column: 66, scope: !218, inlinedAt: !548)
!550 = !DILocation(line: 540, column: 36, scope: !218, inlinedAt: !548)
!551 = !DILocation(line: 542, column: 23, scope: !218, inlinedAt: !548)
!552 = !DILocation(line: 542, column: 29, scope: !218, inlinedAt: !548)
!553 = !DILocation(line: 542, column: 35, scope: !218, inlinedAt: !548)
!554 = !DILocation(line: 542, column: 41, scope: !218, inlinedAt: !548)
!555 = !DILocation(line: 543, column: 14, scope: !218, inlinedAt: !548)
!556 = !DILocation(line: 543, column: 21, scope: !218, inlinedAt: !548)
!557 = !DILocation(line: 543, column: 28, scope: !218, inlinedAt: !548)
!558 = !DILocation(line: 543, column: 35, scope: !218, inlinedAt: !548)
!559 = !DILocation(line: 544, column: 21, scope: !218, inlinedAt: !548)
!560 = !DILocation(line: 546, column: 16, scope: !218, inlinedAt: !548)
!561 = !DILocation(line: 547, column: 9, scope: !218, inlinedAt: !548)
!562 = !DILocalVariable(name: "userKey", arg: 1, scope: !546, file: !3, line: 671, type: !48)
!563 = !DILocation(line: 671, column: 47, scope: !546)
!564 = !DILocalVariable(name: "bits", arg: 2, scope: !546, file: !3, line: 671, type: !221)
!565 = !DILocation(line: 671, column: 66, scope: !546)
!566 = !DILocalVariable(name: "key", arg: 3, scope: !546, file: !3, line: 672, type: !222)
!567 = !DILocation(line: 672, column: 36, scope: !546)
!568 = !DILocalVariable(name: "rk_head", scope: !546, file: !3, line: 674, type: !250)
!569 = !DILocation(line: 674, column: 16, scope: !546)
!570 = !DILocalVariable(name: "rk_tail", scope: !546, file: !3, line: 675, type: !250)
!571 = !DILocation(line: 675, column: 16, scope: !546)
!572 = !DILocalVariable(name: "w1", scope: !546, file: !3, line: 676, type: !7)
!573 = !DILocation(line: 676, column: 23, scope: !546)
!574 = !DILocalVariable(name: "w2", scope: !546, file: !3, line: 676, type: !7)
!575 = !DILocation(line: 676, column: 27, scope: !546)
!576 = !DILocalVariable(name: "reg0", scope: !546, file: !3, line: 677, type: !7)
!577 = !DILocation(line: 677, column: 23, scope: !546)
!578 = !DILocalVariable(name: "reg1", scope: !546, file: !3, line: 677, type: !7)
!579 = !DILocation(line: 677, column: 29, scope: !546)
!580 = !DILocalVariable(name: "reg2", scope: !546, file: !3, line: 677, type: !7)
!581 = !DILocation(line: 677, column: 35, scope: !546)
!582 = !DILocalVariable(name: "reg3", scope: !546, file: !3, line: 677, type: !7)
!583 = !DILocation(line: 677, column: 41, scope: !546)
!584 = !DILocalVariable(name: "s0", scope: !546, file: !3, line: 678, type: !7)
!585 = !DILocation(line: 678, column: 14, scope: !546)
!586 = !DILocalVariable(name: "s1", scope: !546, file: !3, line: 678, type: !7)
!587 = !DILocation(line: 678, column: 18, scope: !546)
!588 = !DILocalVariable(name: "s2", scope: !546, file: !3, line: 678, type: !7)
!589 = !DILocation(line: 678, column: 22, scope: !546)
!590 = !DILocalVariable(name: "s3", scope: !546, file: !3, line: 678, type: !7)
!591 = !DILocation(line: 678, column: 26, scope: !546)
!592 = !DILocalVariable(name: "r", scope: !546, file: !3, line: 680, type: !221)
!593 = !DILocation(line: 680, column: 15, scope: !546)
!594 = !DILocation(line: 680, column: 40, scope: !546)
!595 = !DILocation(line: 680, column: 49, scope: !546)
!596 = !DILocation(line: 680, column: 55, scope: !546)
!597 = !DILocation(line: 547, column: 15, scope: !218, inlinedAt: !548)
!598 = !DILocation(line: 547, column: 20, scope: !218, inlinedAt: !548)
!599 = !DILocation(line: 547, column: 27, scope: !218, inlinedAt: !548)
!600 = !DILocation(line: 549, column: 9, scope: !258, inlinedAt: !548)
!601 = !DILocation(line: 549, column: 17, scope: !258, inlinedAt: !548)
!602 = !DILocation(line: 549, column: 25, scope: !258, inlinedAt: !548)
!603 = !DILocation(line: 549, column: 28, scope: !258, inlinedAt: !548)
!604 = !DILocation(line: 549, column: 32, scope: !258, inlinedAt: !548)
!605 = !DILocation(line: 549, column: 9, scope: !218, inlinedAt: !548)
!606 = !DILocation(line: 550, column: 9, scope: !265, inlinedAt: !548)
!607 = !DILocation(line: 552, column: 9, scope: !267, inlinedAt: !548)
!608 = !DILocation(line: 552, column: 14, scope: !267, inlinedAt: !548)
!609 = !DILocation(line: 552, column: 21, scope: !267, inlinedAt: !548)
!610 = !DILocation(line: 552, column: 24, scope: !267, inlinedAt: !548)
!611 = !DILocation(line: 552, column: 29, scope: !267, inlinedAt: !548)
!612 = !DILocation(line: 552, column: 36, scope: !267, inlinedAt: !548)
!613 = !DILocation(line: 552, column: 39, scope: !267, inlinedAt: !548)
!614 = !DILocation(line: 552, column: 44, scope: !267, inlinedAt: !548)
!615 = !DILocation(line: 552, column: 9, scope: !218, inlinedAt: !548)
!616 = !DILocation(line: 553, column: 9, scope: !277, inlinedAt: !548)
!617 = !DILocation(line: 556, column: 10, scope: !218, inlinedAt: !548)
!618 = !DILocation(line: 556, column: 15, scope: !218, inlinedAt: !548)
!619 = !DILocation(line: 556, column: 8, scope: !218, inlinedAt: !548)
!620 = !DILocation(line: 557, column: 19, scope: !218, inlinedAt: !548)
!621 = !DILocation(line: 557, column: 5, scope: !218, inlinedAt: !548)
!622 = !DILocation(line: 557, column: 10, scope: !218, inlinedAt: !548)
!623 = !DILocation(line: 557, column: 17, scope: !218, inlinedAt: !548)
!624 = !DILocation(line: 558, column: 19, scope: !218, inlinedAt: !548)
!625 = !DILocation(line: 558, column: 24, scope: !218, inlinedAt: !548)
!626 = !DILocation(line: 558, column: 31, scope: !218, inlinedAt: !548)
!627 = !DILocation(line: 558, column: 11, scope: !218, inlinedAt: !548)
!628 = !DILocation(line: 558, column: 8, scope: !218, inlinedAt: !548)
!629 = !DILocation(line: 560, column: 13, scope: !218, inlinedAt: !548)
!630 = !DILocation(line: 560, column: 5, scope: !218, inlinedAt: !548)
!631 = !DILocation(line: 560, column: 11, scope: !218, inlinedAt: !548)
!632 = !DILocation(line: 561, column: 13, scope: !218, inlinedAt: !548)
!633 = !DILocation(line: 561, column: 5, scope: !218, inlinedAt: !548)
!634 = !DILocation(line: 561, column: 11, scope: !218, inlinedAt: !548)
!635 = !DILocation(line: 562, column: 13, scope: !218, inlinedAt: !548)
!636 = !DILocation(line: 562, column: 5, scope: !218, inlinedAt: !548)
!637 = !DILocation(line: 562, column: 11, scope: !218, inlinedAt: !548)
!638 = !DILocation(line: 563, column: 13, scope: !218, inlinedAt: !548)
!639 = !DILocation(line: 563, column: 5, scope: !218, inlinedAt: !548)
!640 = !DILocation(line: 563, column: 11, scope: !218, inlinedAt: !548)
!641 = !DILocation(line: 565, column: 12, scope: !218, inlinedAt: !548)
!642 = !DILocation(line: 565, column: 20, scope: !218, inlinedAt: !548)
!643 = !DILocation(line: 565, column: 18, scope: !218, inlinedAt: !548)
!644 = !DILocation(line: 565, column: 10, scope: !218, inlinedAt: !548)
!645 = !DILocation(line: 566, column: 12, scope: !218, inlinedAt: !548)
!646 = !DILocation(line: 566, column: 20, scope: !218, inlinedAt: !548)
!647 = !DILocation(line: 566, column: 18, scope: !218, inlinedAt: !548)
!648 = !DILocation(line: 566, column: 10, scope: !218, inlinedAt: !548)
!649 = !DILocation(line: 567, column: 12, scope: !218, inlinedAt: !548)
!650 = !DILocation(line: 567, column: 20, scope: !218, inlinedAt: !548)
!651 = !DILocation(line: 567, column: 18, scope: !218, inlinedAt: !548)
!652 = !DILocation(line: 567, column: 10, scope: !218, inlinedAt: !548)
!653 = !DILocation(line: 568, column: 12, scope: !218, inlinedAt: !548)
!654 = !DILocation(line: 568, column: 20, scope: !218, inlinedAt: !548)
!655 = !DILocation(line: 568, column: 18, scope: !218, inlinedAt: !548)
!656 = !DILocation(line: 568, column: 10, scope: !218, inlinedAt: !548)
!657 = !DILocation(line: 570, column: 5, scope: !322, inlinedAt: !548)
!658 = !DILocation(line: 570, column: 5, scope: !324, inlinedAt: !548)
!659 = !DILocation(line: 570, column: 5, scope: !326, inlinedAt: !548)
!660 = !DILocation(line: 570, column: 5, scope: !328, inlinedAt: !548)
!661 = !DILocation(line: 572, column: 9, scope: !330, inlinedAt: !548)
!662 = !DILocation(line: 572, column: 14, scope: !330, inlinedAt: !548)
!663 = !DILocation(line: 572, column: 9, scope: !218, inlinedAt: !548)
!664 = !DILocation(line: 573, column: 17, scope: !334, inlinedAt: !548)
!665 = !DILocation(line: 573, column: 9, scope: !334, inlinedAt: !548)
!666 = !DILocation(line: 573, column: 15, scope: !334, inlinedAt: !548)
!667 = !DILocation(line: 574, column: 17, scope: !334, inlinedAt: !548)
!668 = !DILocation(line: 574, column: 9, scope: !334, inlinedAt: !548)
!669 = !DILocation(line: 574, column: 15, scope: !334, inlinedAt: !548)
!670 = !DILocation(line: 575, column: 13, scope: !341, inlinedAt: !548)
!671 = !DILocation(line: 575, column: 18, scope: !341, inlinedAt: !548)
!672 = !DILocation(line: 575, column: 13, scope: !334, inlinedAt: !548)
!673 = !DILocation(line: 576, column: 21, scope: !345, inlinedAt: !548)
!674 = !DILocation(line: 576, column: 13, scope: !345, inlinedAt: !548)
!675 = !DILocation(line: 576, column: 19, scope: !345, inlinedAt: !548)
!676 = !DILocation(line: 577, column: 21, scope: !345, inlinedAt: !548)
!677 = !DILocation(line: 577, column: 13, scope: !345, inlinedAt: !548)
!678 = !DILocation(line: 577, column: 19, scope: !345, inlinedAt: !548)
!679 = !DILocation(line: 578, column: 9, scope: !345, inlinedAt: !548)
!680 = !DILocation(line: 580, column: 21, scope: !353, inlinedAt: !548)
!681 = !DILocation(line: 580, column: 27, scope: !353, inlinedAt: !548)
!682 = !DILocation(line: 580, column: 13, scope: !353, inlinedAt: !548)
!683 = !DILocation(line: 580, column: 19, scope: !353, inlinedAt: !548)
!684 = !DILocation(line: 582, column: 5, scope: !334, inlinedAt: !548)
!685 = !DILocation(line: 584, column: 33, scope: !359, inlinedAt: !548)
!686 = !DILocation(line: 584, column: 39, scope: !359, inlinedAt: !548)
!687 = !DILocation(line: 584, column: 25, scope: !359, inlinedAt: !548)
!688 = !DILocation(line: 584, column: 31, scope: !359, inlinedAt: !548)
!689 = !DILocation(line: 584, column: 17, scope: !359, inlinedAt: !548)
!690 = !DILocation(line: 584, column: 23, scope: !359, inlinedAt: !548)
!691 = !DILocation(line: 584, column: 9, scope: !359, inlinedAt: !548)
!692 = !DILocation(line: 584, column: 15, scope: !359, inlinedAt: !548)
!693 = !DILocation(line: 587, column: 14, scope: !218, inlinedAt: !548)
!694 = !DILocation(line: 587, column: 5, scope: !218, inlinedAt: !548)
!695 = !DILocation(line: 587, column: 11, scope: !218, inlinedAt: !548)
!696 = !DILocation(line: 588, column: 14, scope: !218, inlinedAt: !548)
!697 = !DILocation(line: 588, column: 5, scope: !218, inlinedAt: !548)
!698 = !DILocation(line: 588, column: 11, scope: !218, inlinedAt: !548)
!699 = !DILocation(line: 589, column: 14, scope: !218, inlinedAt: !548)
!700 = !DILocation(line: 589, column: 5, scope: !218, inlinedAt: !548)
!701 = !DILocation(line: 589, column: 11, scope: !218, inlinedAt: !548)
!702 = !DILocation(line: 590, column: 14, scope: !218, inlinedAt: !548)
!703 = !DILocation(line: 590, column: 5, scope: !218, inlinedAt: !548)
!704 = !DILocation(line: 590, column: 11, scope: !218, inlinedAt: !548)
!705 = !DILocation(line: 592, column: 12, scope: !218, inlinedAt: !548)
!706 = !DILocation(line: 592, column: 10, scope: !218, inlinedAt: !548)
!707 = !DILocation(line: 593, column: 12, scope: !218, inlinedAt: !548)
!708 = !DILocation(line: 593, column: 10, scope: !218, inlinedAt: !548)
!709 = !DILocation(line: 594, column: 12, scope: !218, inlinedAt: !548)
!710 = !DILocation(line: 594, column: 10, scope: !218, inlinedAt: !548)
!711 = !DILocation(line: 595, column: 12, scope: !218, inlinedAt: !548)
!712 = !DILocation(line: 595, column: 10, scope: !218, inlinedAt: !548)
!713 = !DILocation(line: 597, column: 13, scope: !218, inlinedAt: !548)
!714 = !DILocation(line: 597, column: 10, scope: !218, inlinedAt: !548)
!715 = !DILocation(line: 598, column: 13, scope: !218, inlinedAt: !548)
!716 = !DILocation(line: 598, column: 10, scope: !218, inlinedAt: !548)
!717 = !DILocation(line: 599, column: 13, scope: !218, inlinedAt: !548)
!718 = !DILocation(line: 599, column: 10, scope: !218, inlinedAt: !548)
!719 = !DILocation(line: 600, column: 13, scope: !218, inlinedAt: !548)
!720 = !DILocation(line: 600, column: 10, scope: !218, inlinedAt: !548)
!721 = !DILocation(line: 602, column: 5, scope: !399, inlinedAt: !548)
!722 = !DILocation(line: 602, column: 5, scope: !401, inlinedAt: !548)
!723 = !DILocation(line: 602, column: 5, scope: !403, inlinedAt: !548)
!724 = !DILocation(line: 602, column: 5, scope: !405, inlinedAt: !548)
!725 = !DILocation(line: 604, column: 13, scope: !218, inlinedAt: !548)
!726 = !DILocation(line: 604, column: 10, scope: !218, inlinedAt: !548)
!727 = !DILocation(line: 605, column: 13, scope: !218, inlinedAt: !548)
!728 = !DILocation(line: 605, column: 10, scope: !218, inlinedAt: !548)
!729 = !DILocation(line: 606, column: 13, scope: !218, inlinedAt: !548)
!730 = !DILocation(line: 606, column: 10, scope: !218, inlinedAt: !548)
!731 = !DILocation(line: 607, column: 13, scope: !218, inlinedAt: !548)
!732 = !DILocation(line: 607, column: 10, scope: !218, inlinedAt: !548)
!733 = !DILocation(line: 609, column: 13, scope: !218, inlinedAt: !548)
!734 = !DILocation(line: 609, column: 5, scope: !218, inlinedAt: !548)
!735 = !DILocation(line: 609, column: 11, scope: !218, inlinedAt: !548)
!736 = !DILocation(line: 610, column: 13, scope: !218, inlinedAt: !548)
!737 = !DILocation(line: 610, column: 5, scope: !218, inlinedAt: !548)
!738 = !DILocation(line: 610, column: 11, scope: !218, inlinedAt: !548)
!739 = !DILocation(line: 611, column: 13, scope: !218, inlinedAt: !548)
!740 = !DILocation(line: 611, column: 5, scope: !218, inlinedAt: !548)
!741 = !DILocation(line: 611, column: 11, scope: !218, inlinedAt: !548)
!742 = !DILocation(line: 612, column: 13, scope: !218, inlinedAt: !548)
!743 = !DILocation(line: 612, column: 5, scope: !218, inlinedAt: !548)
!744 = !DILocation(line: 612, column: 11, scope: !218, inlinedAt: !548)
!745 = !DILocation(line: 614, column: 13, scope: !218, inlinedAt: !548)
!746 = !DILocation(line: 614, column: 10, scope: !218, inlinedAt: !548)
!747 = !DILocation(line: 615, column: 13, scope: !218, inlinedAt: !548)
!748 = !DILocation(line: 615, column: 10, scope: !218, inlinedAt: !548)
!749 = !DILocation(line: 616, column: 13, scope: !218, inlinedAt: !548)
!750 = !DILocation(line: 616, column: 10, scope: !218, inlinedAt: !548)
!751 = !DILocation(line: 617, column: 13, scope: !218, inlinedAt: !548)
!752 = !DILocation(line: 617, column: 10, scope: !218, inlinedAt: !548)
!753 = !DILocation(line: 619, column: 5, scope: !438, inlinedAt: !548)
!754 = !DILocation(line: 619, column: 5, scope: !440, inlinedAt: !548)
!755 = !DILocation(line: 619, column: 5, scope: !442, inlinedAt: !548)
!756 = !DILocation(line: 619, column: 5, scope: !444, inlinedAt: !548)
!757 = !DILocation(line: 621, column: 13, scope: !218, inlinedAt: !548)
!758 = !DILocation(line: 621, column: 20, scope: !218, inlinedAt: !548)
!759 = !DILocation(line: 621, column: 18, scope: !218, inlinedAt: !548)
!760 = !DILocation(line: 621, column: 5, scope: !218, inlinedAt: !548)
!761 = !DILocation(line: 621, column: 11, scope: !218, inlinedAt: !548)
!762 = !DILocation(line: 622, column: 13, scope: !218, inlinedAt: !548)
!763 = !DILocation(line: 622, column: 20, scope: !218, inlinedAt: !548)
!764 = !DILocation(line: 622, column: 18, scope: !218, inlinedAt: !548)
!765 = !DILocation(line: 622, column: 5, scope: !218, inlinedAt: !548)
!766 = !DILocation(line: 622, column: 11, scope: !218, inlinedAt: !548)
!767 = !DILocation(line: 623, column: 13, scope: !218, inlinedAt: !548)
!768 = !DILocation(line: 623, column: 20, scope: !218, inlinedAt: !548)
!769 = !DILocation(line: 623, column: 18, scope: !218, inlinedAt: !548)
!770 = !DILocation(line: 623, column: 5, scope: !218, inlinedAt: !548)
!771 = !DILocation(line: 623, column: 11, scope: !218, inlinedAt: !548)
!772 = !DILocation(line: 624, column: 13, scope: !218, inlinedAt: !548)
!773 = !DILocation(line: 624, column: 20, scope: !218, inlinedAt: !548)
!774 = !DILocation(line: 624, column: 18, scope: !218, inlinedAt: !548)
!775 = !DILocation(line: 624, column: 5, scope: !218, inlinedAt: !548)
!776 = !DILocation(line: 624, column: 11, scope: !218, inlinedAt: !548)
!777 = !DILocation(line: 626, column: 5, scope: !467, inlinedAt: !548)
!778 = !DILocation(line: 627, column: 7, scope: !218, inlinedAt: !548)
!779 = !DILocation(line: 628, column: 5, scope: !471, inlinedAt: !548)
!780 = !DILocation(line: 629, column: 7, scope: !218, inlinedAt: !548)
!781 = !DILocation(line: 630, column: 5, scope: !475, inlinedAt: !548)
!782 = !DILocation(line: 631, column: 7, scope: !218, inlinedAt: !548)
!783 = !DILocation(line: 632, column: 5, scope: !479, inlinedAt: !548)
!784 = !DILocation(line: 634, column: 7, scope: !218, inlinedAt: !548)
!785 = !DILocation(line: 635, column: 5, scope: !483, inlinedAt: !548)
!786 = !DILocation(line: 636, column: 7, scope: !218, inlinedAt: !548)
!787 = !DILocation(line: 637, column: 5, scope: !487, inlinedAt: !548)
!788 = !DILocation(line: 638, column: 7, scope: !218, inlinedAt: !548)
!789 = !DILocation(line: 639, column: 5, scope: !491, inlinedAt: !548)
!790 = !DILocation(line: 640, column: 7, scope: !218, inlinedAt: !548)
!791 = !DILocation(line: 641, column: 5, scope: !495, inlinedAt: !548)
!792 = !DILocation(line: 643, column: 7, scope: !218, inlinedAt: !548)
!793 = !DILocation(line: 644, column: 5, scope: !499, inlinedAt: !548)
!794 = !DILocation(line: 645, column: 7, scope: !218, inlinedAt: !548)
!795 = !DILocation(line: 646, column: 5, scope: !503, inlinedAt: !548)
!796 = !DILocation(line: 647, column: 7, scope: !218, inlinedAt: !548)
!797 = !DILocation(line: 648, column: 5, scope: !507, inlinedAt: !548)
!798 = !DILocation(line: 649, column: 7, scope: !218, inlinedAt: !548)
!799 = !DILocation(line: 650, column: 5, scope: !511, inlinedAt: !548)
!800 = !DILocation(line: 652, column: 7, scope: !218, inlinedAt: !548)
!801 = !DILocation(line: 653, column: 5, scope: !515, inlinedAt: !548)
!802 = !DILocation(line: 654, column: 9, scope: !517, inlinedAt: !548)
!803 = !DILocation(line: 654, column: 14, scope: !517, inlinedAt: !548)
!804 = !DILocation(line: 654, column: 9, scope: !218, inlinedAt: !548)
!805 = !DILocation(line: 655, column: 11, scope: !521, inlinedAt: !548)
!806 = !DILocation(line: 656, column: 9, scope: !524, inlinedAt: !548)
!807 = !DILocation(line: 657, column: 11, scope: !521, inlinedAt: !548)
!808 = !DILocation(line: 658, column: 9, scope: !528, inlinedAt: !548)
!809 = !DILocation(line: 659, column: 5, scope: !521, inlinedAt: !548)
!810 = !DILocation(line: 660, column: 9, scope: !531, inlinedAt: !548)
!811 = !DILocation(line: 660, column: 14, scope: !531, inlinedAt: !548)
!812 = !DILocation(line: 660, column: 9, scope: !218, inlinedAt: !548)
!813 = !DILocation(line: 661, column: 11, scope: !535, inlinedAt: !548)
!814 = !DILocation(line: 662, column: 9, scope: !538, inlinedAt: !548)
!815 = !DILocation(line: 664, column: 11, scope: !535, inlinedAt: !548)
!816 = !DILocation(line: 665, column: 9, scope: !542, inlinedAt: !548)
!817 = !DILocation(line: 666, column: 5, scope: !535, inlinedAt: !548)
!818 = !DILocation(line: 668, column: 5, scope: !218, inlinedAt: !548)
!819 = !DILocation(line: 669, column: 1, scope: !218, inlinedAt: !548)
!820 = !DILocation(line: 682, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !546, file: !3, line: 682, column: 9)
!822 = !DILocation(line: 682, column: 11, scope: !821)
!823 = !DILocation(line: 682, column: 9, scope: !546)
!824 = !DILocation(line: 683, column: 16, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !3, line: 682, column: 17)
!826 = !DILocation(line: 683, column: 9, scope: !825)
!827 = !DILocation(line: 686, column: 15, scope: !546)
!828 = !DILocation(line: 686, column: 20, scope: !546)
!829 = !DILocation(line: 686, column: 13, scope: !546)
!830 = !DILocation(line: 687, column: 15, scope: !546)
!831 = !DILocation(line: 687, column: 25, scope: !546)
!832 = !DILocation(line: 687, column: 30, scope: !546)
!833 = !DILocation(line: 687, column: 23, scope: !546)
!834 = !DILocation(line: 687, column: 13, scope: !546)
!835 = !DILocation(line: 689, column: 12, scope: !546)
!836 = !DILocation(line: 689, column: 21, scope: !546)
!837 = !DILocation(line: 689, column: 10, scope: !546)
!838 = !DILocation(line: 690, column: 12, scope: !546)
!839 = !DILocation(line: 690, column: 21, scope: !546)
!840 = !DILocation(line: 690, column: 10, scope: !546)
!841 = !DILocation(line: 691, column: 12, scope: !546)
!842 = !DILocation(line: 691, column: 21, scope: !546)
!843 = !DILocation(line: 691, column: 10, scope: !546)
!844 = !DILocation(line: 692, column: 12, scope: !546)
!845 = !DILocation(line: 692, column: 21, scope: !546)
!846 = !DILocation(line: 692, column: 10, scope: !546)
!847 = !DILocation(line: 694, column: 12, scope: !546)
!848 = !DILocation(line: 694, column: 5, scope: !546)
!849 = !DILocation(line: 694, column: 21, scope: !546)
!850 = !DILocation(line: 696, column: 21, scope: !546)
!851 = !DILocation(line: 696, column: 5, scope: !546)
!852 = !DILocation(line: 696, column: 14, scope: !546)
!853 = !DILocation(line: 696, column: 19, scope: !546)
!854 = !DILocation(line: 697, column: 21, scope: !546)
!855 = !DILocation(line: 697, column: 5, scope: !546)
!856 = !DILocation(line: 697, column: 14, scope: !546)
!857 = !DILocation(line: 697, column: 19, scope: !546)
!858 = !DILocation(line: 698, column: 21, scope: !546)
!859 = !DILocation(line: 698, column: 5, scope: !546)
!860 = !DILocation(line: 698, column: 14, scope: !546)
!861 = !DILocation(line: 698, column: 19, scope: !546)
!862 = !DILocation(line: 699, column: 21, scope: !546)
!863 = !DILocation(line: 699, column: 5, scope: !546)
!864 = !DILocation(line: 699, column: 14, scope: !546)
!865 = !DILocation(line: 699, column: 19, scope: !546)
!866 = !DILocation(line: 701, column: 12, scope: !546)
!867 = !DILocation(line: 702, column: 12, scope: !546)
!868 = !DILocation(line: 704, column: 5, scope: !546)
!869 = !DILocation(line: 704, column: 12, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 704, column: 5)
!871 = distinct !DILexicalBlock(scope: !546, file: !3, line: 704, column: 5)
!872 = !DILocation(line: 704, column: 22, scope: !870)
!873 = !DILocation(line: 704, column: 20, scope: !870)
!874 = !DILocation(line: 704, column: 5, scope: !871)
!875 = !DILocation(line: 705, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !870, file: !3, line: 704, column: 53)
!877 = !DILocation(line: 705, column: 9, scope: !878)
!878 = distinct !DILexicalBlock(scope: !876, file: !3, line: 705, column: 9)
!879 = !DILocation(line: 706, column: 9, scope: !876)
!880 = !DILocation(line: 706, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !3, line: 706, column: 9)
!882 = !DILocation(line: 707, column: 9, scope: !876)
!883 = !DILocation(line: 707, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !876, file: !3, line: 707, column: 9)
!885 = !DILocation(line: 708, column: 9, scope: !876)
!886 = !DILocation(line: 708, column: 9, scope: !887)
!887 = distinct !DILexicalBlock(scope: !876, file: !3, line: 708, column: 9)
!888 = !DILocation(line: 710, column: 9, scope: !876)
!889 = !DILocation(line: 710, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !876, file: !3, line: 710, column: 9)
!891 = !DILocation(line: 711, column: 9, scope: !876)
!892 = !DILocation(line: 711, column: 9, scope: !893)
!893 = distinct !DILexicalBlock(scope: !876, file: !3, line: 711, column: 9)
!894 = !DILocation(line: 712, column: 9, scope: !876)
!895 = !DILocation(line: 712, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !876, file: !3, line: 712, column: 9)
!897 = !DILocation(line: 714, column: 14, scope: !876)
!898 = !DILocation(line: 714, column: 12, scope: !876)
!899 = !DILocation(line: 715, column: 14, scope: !876)
!900 = !DILocation(line: 715, column: 12, scope: !876)
!901 = !DILocation(line: 716, column: 14, scope: !876)
!902 = !DILocation(line: 716, column: 12, scope: !876)
!903 = !DILocation(line: 717, column: 14, scope: !876)
!904 = !DILocation(line: 717, column: 12, scope: !876)
!905 = !DILocation(line: 719, column: 9, scope: !876)
!906 = !DILocation(line: 719, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !876, file: !3, line: 719, column: 9)
!908 = !DILocation(line: 720, column: 9, scope: !876)
!909 = !DILocation(line: 720, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !876, file: !3, line: 720, column: 9)
!911 = !DILocation(line: 721, column: 9, scope: !876)
!912 = !DILocation(line: 721, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !876, file: !3, line: 721, column: 9)
!914 = !DILocation(line: 722, column: 9, scope: !876)
!915 = !DILocation(line: 722, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !876, file: !3, line: 722, column: 9)
!917 = !DILocation(line: 724, column: 9, scope: !876)
!918 = !DILocation(line: 724, column: 9, scope: !919)
!919 = distinct !DILexicalBlock(scope: !876, file: !3, line: 724, column: 9)
!920 = !DILocation(line: 725, column: 9, scope: !876)
!921 = !DILocation(line: 725, column: 9, scope: !922)
!922 = distinct !DILexicalBlock(scope: !876, file: !3, line: 725, column: 9)
!923 = !DILocation(line: 726, column: 9, scope: !876)
!924 = !DILocation(line: 726, column: 9, scope: !925)
!925 = distinct !DILexicalBlock(scope: !876, file: !3, line: 726, column: 9)
!926 = !DILocation(line: 728, column: 25, scope: !876)
!927 = !DILocation(line: 728, column: 9, scope: !876)
!928 = !DILocation(line: 728, column: 18, scope: !876)
!929 = !DILocation(line: 728, column: 23, scope: !876)
!930 = !DILocation(line: 729, column: 25, scope: !876)
!931 = !DILocation(line: 729, column: 9, scope: !876)
!932 = !DILocation(line: 729, column: 18, scope: !876)
!933 = !DILocation(line: 729, column: 23, scope: !876)
!934 = !DILocation(line: 730, column: 25, scope: !876)
!935 = !DILocation(line: 730, column: 9, scope: !876)
!936 = !DILocation(line: 730, column: 18, scope: !876)
!937 = !DILocation(line: 730, column: 23, scope: !876)
!938 = !DILocation(line: 731, column: 25, scope: !876)
!939 = !DILocation(line: 731, column: 9, scope: !876)
!940 = !DILocation(line: 731, column: 18, scope: !876)
!941 = !DILocation(line: 731, column: 23, scope: !876)
!942 = !DILocation(line: 733, column: 25, scope: !876)
!943 = !DILocation(line: 733, column: 9, scope: !876)
!944 = !DILocation(line: 733, column: 18, scope: !876)
!945 = !DILocation(line: 733, column: 23, scope: !876)
!946 = !DILocation(line: 734, column: 25, scope: !876)
!947 = !DILocation(line: 734, column: 9, scope: !876)
!948 = !DILocation(line: 734, column: 18, scope: !876)
!949 = !DILocation(line: 734, column: 23, scope: !876)
!950 = !DILocation(line: 735, column: 25, scope: !876)
!951 = !DILocation(line: 735, column: 9, scope: !876)
!952 = !DILocation(line: 735, column: 18, scope: !876)
!953 = !DILocation(line: 735, column: 23, scope: !876)
!954 = !DILocation(line: 736, column: 25, scope: !876)
!955 = !DILocation(line: 736, column: 9, scope: !876)
!956 = !DILocation(line: 736, column: 18, scope: !876)
!957 = !DILocation(line: 736, column: 23, scope: !876)
!958 = !DILocation(line: 737, column: 5, scope: !876)
!959 = !DILocation(line: 704, column: 38, scope: !870)
!960 = !DILocation(line: 704, column: 49, scope: !870)
!961 = !DILocation(line: 704, column: 5, scope: !870)
!962 = distinct !{!962, !874, !963}
!963 = !DILocation(line: 737, column: 5, scope: !871)
!964 = !DILocation(line: 738, column: 5, scope: !546)
!965 = !DILocation(line: 738, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !546, file: !3, line: 738, column: 5)
!967 = !DILocation(line: 739, column: 5, scope: !546)
!968 = !DILocation(line: 739, column: 5, scope: !969)
!969 = distinct !DILexicalBlock(scope: !546, file: !3, line: 739, column: 5)
!970 = !DILocation(line: 740, column: 5, scope: !546)
!971 = !DILocation(line: 740, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !546, file: !3, line: 740, column: 5)
!973 = !DILocation(line: 741, column: 5, scope: !546)
!974 = !DILocation(line: 741, column: 5, scope: !975)
!975 = distinct !DILexicalBlock(scope: !546, file: !3, line: 741, column: 5)
!976 = !DILocation(line: 743, column: 5, scope: !546)
!977 = !DILocation(line: 743, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !546, file: !3, line: 743, column: 5)
!979 = !DILocation(line: 744, column: 5, scope: !546)
!980 = !DILocation(line: 744, column: 5, scope: !981)
!981 = distinct !DILexicalBlock(scope: !546, file: !3, line: 744, column: 5)
!982 = !DILocation(line: 745, column: 5, scope: !546)
!983 = !DILocation(line: 745, column: 5, scope: !984)
!984 = distinct !DILexicalBlock(scope: !546, file: !3, line: 745, column: 5)
!985 = !DILocation(line: 747, column: 21, scope: !546)
!986 = !DILocation(line: 747, column: 5, scope: !546)
!987 = !DILocation(line: 747, column: 14, scope: !546)
!988 = !DILocation(line: 747, column: 19, scope: !546)
!989 = !DILocation(line: 748, column: 21, scope: !546)
!990 = !DILocation(line: 748, column: 5, scope: !546)
!991 = !DILocation(line: 748, column: 14, scope: !546)
!992 = !DILocation(line: 748, column: 19, scope: !546)
!993 = !DILocation(line: 749, column: 21, scope: !546)
!994 = !DILocation(line: 749, column: 5, scope: !546)
!995 = !DILocation(line: 749, column: 14, scope: !546)
!996 = !DILocation(line: 749, column: 19, scope: !546)
!997 = !DILocation(line: 750, column: 21, scope: !546)
!998 = !DILocation(line: 750, column: 5, scope: !546)
!999 = !DILocation(line: 750, column: 14, scope: !546)
!1000 = !DILocation(line: 750, column: 19, scope: !546)
!1001 = !DILocation(line: 752, column: 5, scope: !546)
!1002 = !DILocation(line: 753, column: 1, scope: !546)
!1003 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1222, type: !1004, scopeLine: 1223, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!86}
!1006 = !DILocation(line: 472, column: 40, scope: !45, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 1255, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1245, column: 18)
!1009 = !DILocation(line: 472, column: 59, scope: !45, inlinedAt: !1007)
!1010 = !DILocation(line: 473, column: 35, scope: !45, inlinedAt: !1007)
!1011 = !DILocation(line: 475, column: 23, scope: !45, inlinedAt: !1007)
!1012 = !DILocation(line: 475, column: 29, scope: !45, inlinedAt: !1007)
!1013 = !DILocation(line: 475, column: 35, scope: !45, inlinedAt: !1007)
!1014 = !DILocation(line: 475, column: 41, scope: !45, inlinedAt: !1007)
!1015 = !DILocation(line: 476, column: 9, scope: !45, inlinedAt: !1007)
!1016 = !DILocation(line: 477, column: 22, scope: !45, inlinedAt: !1007)
!1017 = !DILocation(line: 539, column: 47, scope: !218, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 1226, column: 5, scope: !1003)
!1019 = !DILocation(line: 539, column: 66, scope: !218, inlinedAt: !1018)
!1020 = !DILocation(line: 540, column: 36, scope: !218, inlinedAt: !1018)
!1021 = !DILocation(line: 542, column: 23, scope: !218, inlinedAt: !1018)
!1022 = !DILocation(line: 542, column: 29, scope: !218, inlinedAt: !1018)
!1023 = !DILocation(line: 542, column: 35, scope: !218, inlinedAt: !1018)
!1024 = !DILocation(line: 542, column: 41, scope: !218, inlinedAt: !1018)
!1025 = !DILocation(line: 543, column: 14, scope: !218, inlinedAt: !1018)
!1026 = !DILocation(line: 543, column: 21, scope: !218, inlinedAt: !1018)
!1027 = !DILocation(line: 543, column: 28, scope: !218, inlinedAt: !1018)
!1028 = !DILocation(line: 543, column: 35, scope: !218, inlinedAt: !1018)
!1029 = !DILocation(line: 544, column: 21, scope: !218, inlinedAt: !1018)
!1030 = !DILocation(line: 546, column: 16, scope: !218, inlinedAt: !1018)
!1031 = !DILocation(line: 547, column: 9, scope: !218, inlinedAt: !1018)
!1032 = !DILocalVariable(name: "enc_key", scope: !1003, file: !3, line: 1224, type: !52)
!1033 = !DILocation(line: 1224, column: 14, scope: !1003)
!1034 = !DILocalVariable(name: "enc_out", scope: !1003, file: !3, line: 1225, type: !1035)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, elements: !23)
!1036 = !DILocation(line: 1225, column: 19, scope: !1003)
!1037 = !DILocation(line: 547, column: 15, scope: !218, inlinedAt: !1018)
!1038 = !DILocation(line: 547, column: 20, scope: !218, inlinedAt: !1018)
!1039 = !DILocation(line: 547, column: 27, scope: !218, inlinedAt: !1018)
!1040 = !DILocation(line: 549, column: 9, scope: !258, inlinedAt: !1018)
!1041 = !DILocation(line: 549, column: 17, scope: !258, inlinedAt: !1018)
!1042 = !DILocation(line: 549, column: 25, scope: !258, inlinedAt: !1018)
!1043 = !DILocation(line: 549, column: 28, scope: !258, inlinedAt: !1018)
!1044 = !DILocation(line: 549, column: 32, scope: !258, inlinedAt: !1018)
!1045 = !DILocation(line: 549, column: 9, scope: !218, inlinedAt: !1018)
!1046 = !DILocation(line: 550, column: 9, scope: !265, inlinedAt: !1018)
!1047 = !DILocation(line: 552, column: 9, scope: !267, inlinedAt: !1018)
!1048 = !DILocation(line: 552, column: 14, scope: !267, inlinedAt: !1018)
!1049 = !DILocation(line: 552, column: 21, scope: !267, inlinedAt: !1018)
!1050 = !DILocation(line: 552, column: 24, scope: !267, inlinedAt: !1018)
!1051 = !DILocation(line: 552, column: 29, scope: !267, inlinedAt: !1018)
!1052 = !DILocation(line: 552, column: 36, scope: !267, inlinedAt: !1018)
!1053 = !DILocation(line: 552, column: 39, scope: !267, inlinedAt: !1018)
!1054 = !DILocation(line: 552, column: 44, scope: !267, inlinedAt: !1018)
!1055 = !DILocation(line: 552, column: 9, scope: !218, inlinedAt: !1018)
!1056 = !DILocation(line: 553, column: 9, scope: !277, inlinedAt: !1018)
!1057 = !DILocation(line: 556, column: 10, scope: !218, inlinedAt: !1018)
!1058 = !DILocation(line: 556, column: 15, scope: !218, inlinedAt: !1018)
!1059 = !DILocation(line: 556, column: 8, scope: !218, inlinedAt: !1018)
!1060 = !DILocation(line: 557, column: 19, scope: !218, inlinedAt: !1018)
!1061 = !DILocation(line: 557, column: 5, scope: !218, inlinedAt: !1018)
!1062 = !DILocation(line: 557, column: 10, scope: !218, inlinedAt: !1018)
!1063 = !DILocation(line: 557, column: 17, scope: !218, inlinedAt: !1018)
!1064 = !DILocation(line: 558, column: 19, scope: !218, inlinedAt: !1018)
!1065 = !DILocation(line: 558, column: 24, scope: !218, inlinedAt: !1018)
!1066 = !DILocation(line: 558, column: 31, scope: !218, inlinedAt: !1018)
!1067 = !DILocation(line: 558, column: 11, scope: !218, inlinedAt: !1018)
!1068 = !DILocation(line: 558, column: 8, scope: !218, inlinedAt: !1018)
!1069 = !DILocation(line: 560, column: 13, scope: !218, inlinedAt: !1018)
!1070 = !DILocation(line: 560, column: 5, scope: !218, inlinedAt: !1018)
!1071 = !DILocation(line: 560, column: 11, scope: !218, inlinedAt: !1018)
!1072 = !DILocation(line: 561, column: 13, scope: !218, inlinedAt: !1018)
!1073 = !DILocation(line: 561, column: 5, scope: !218, inlinedAt: !1018)
!1074 = !DILocation(line: 561, column: 11, scope: !218, inlinedAt: !1018)
!1075 = !DILocation(line: 562, column: 13, scope: !218, inlinedAt: !1018)
!1076 = !DILocation(line: 562, column: 5, scope: !218, inlinedAt: !1018)
!1077 = !DILocation(line: 562, column: 11, scope: !218, inlinedAt: !1018)
!1078 = !DILocation(line: 563, column: 13, scope: !218, inlinedAt: !1018)
!1079 = !DILocation(line: 563, column: 5, scope: !218, inlinedAt: !1018)
!1080 = !DILocation(line: 563, column: 11, scope: !218, inlinedAt: !1018)
!1081 = !DILocation(line: 565, column: 12, scope: !218, inlinedAt: !1018)
!1082 = !DILocation(line: 565, column: 20, scope: !218, inlinedAt: !1018)
!1083 = !DILocation(line: 565, column: 18, scope: !218, inlinedAt: !1018)
!1084 = !DILocation(line: 565, column: 10, scope: !218, inlinedAt: !1018)
!1085 = !DILocation(line: 566, column: 12, scope: !218, inlinedAt: !1018)
!1086 = !DILocation(line: 566, column: 20, scope: !218, inlinedAt: !1018)
!1087 = !DILocation(line: 566, column: 18, scope: !218, inlinedAt: !1018)
!1088 = !DILocation(line: 566, column: 10, scope: !218, inlinedAt: !1018)
!1089 = !DILocation(line: 567, column: 12, scope: !218, inlinedAt: !1018)
!1090 = !DILocation(line: 567, column: 20, scope: !218, inlinedAt: !1018)
!1091 = !DILocation(line: 567, column: 18, scope: !218, inlinedAt: !1018)
!1092 = !DILocation(line: 567, column: 10, scope: !218, inlinedAt: !1018)
!1093 = !DILocation(line: 568, column: 12, scope: !218, inlinedAt: !1018)
!1094 = !DILocation(line: 568, column: 20, scope: !218, inlinedAt: !1018)
!1095 = !DILocation(line: 568, column: 18, scope: !218, inlinedAt: !1018)
!1096 = !DILocation(line: 568, column: 10, scope: !218, inlinedAt: !1018)
!1097 = !DILocation(line: 570, column: 5, scope: !322, inlinedAt: !1018)
!1098 = !DILocation(line: 570, column: 5, scope: !324, inlinedAt: !1018)
!1099 = !DILocation(line: 570, column: 5, scope: !326, inlinedAt: !1018)
!1100 = !DILocation(line: 570, column: 5, scope: !328, inlinedAt: !1018)
!1101 = !DILocation(line: 572, column: 9, scope: !330, inlinedAt: !1018)
!1102 = !DILocation(line: 572, column: 14, scope: !330, inlinedAt: !1018)
!1103 = !DILocation(line: 572, column: 9, scope: !218, inlinedAt: !1018)
!1104 = !DILocation(line: 573, column: 17, scope: !334, inlinedAt: !1018)
!1105 = !DILocation(line: 573, column: 9, scope: !334, inlinedAt: !1018)
!1106 = !DILocation(line: 573, column: 15, scope: !334, inlinedAt: !1018)
!1107 = !DILocation(line: 574, column: 17, scope: !334, inlinedAt: !1018)
!1108 = !DILocation(line: 574, column: 9, scope: !334, inlinedAt: !1018)
!1109 = !DILocation(line: 574, column: 15, scope: !334, inlinedAt: !1018)
!1110 = !DILocation(line: 575, column: 13, scope: !341, inlinedAt: !1018)
!1111 = !DILocation(line: 575, column: 18, scope: !341, inlinedAt: !1018)
!1112 = !DILocation(line: 575, column: 13, scope: !334, inlinedAt: !1018)
!1113 = !DILocation(line: 576, column: 21, scope: !345, inlinedAt: !1018)
!1114 = !DILocation(line: 576, column: 13, scope: !345, inlinedAt: !1018)
!1115 = !DILocation(line: 576, column: 19, scope: !345, inlinedAt: !1018)
!1116 = !DILocation(line: 577, column: 21, scope: !345, inlinedAt: !1018)
!1117 = !DILocation(line: 577, column: 13, scope: !345, inlinedAt: !1018)
!1118 = !DILocation(line: 577, column: 19, scope: !345, inlinedAt: !1018)
!1119 = !DILocation(line: 578, column: 9, scope: !345, inlinedAt: !1018)
!1120 = !DILocation(line: 580, column: 21, scope: !353, inlinedAt: !1018)
!1121 = !DILocation(line: 580, column: 27, scope: !353, inlinedAt: !1018)
!1122 = !DILocation(line: 580, column: 13, scope: !353, inlinedAt: !1018)
!1123 = !DILocation(line: 580, column: 19, scope: !353, inlinedAt: !1018)
!1124 = !DILocation(line: 582, column: 5, scope: !334, inlinedAt: !1018)
!1125 = !DILocation(line: 584, column: 33, scope: !359, inlinedAt: !1018)
!1126 = !DILocation(line: 584, column: 39, scope: !359, inlinedAt: !1018)
!1127 = !DILocation(line: 584, column: 25, scope: !359, inlinedAt: !1018)
!1128 = !DILocation(line: 584, column: 31, scope: !359, inlinedAt: !1018)
!1129 = !DILocation(line: 584, column: 17, scope: !359, inlinedAt: !1018)
!1130 = !DILocation(line: 584, column: 23, scope: !359, inlinedAt: !1018)
!1131 = !DILocation(line: 584, column: 9, scope: !359, inlinedAt: !1018)
!1132 = !DILocation(line: 584, column: 15, scope: !359, inlinedAt: !1018)
!1133 = !DILocation(line: 587, column: 14, scope: !218, inlinedAt: !1018)
!1134 = !DILocation(line: 587, column: 5, scope: !218, inlinedAt: !1018)
!1135 = !DILocation(line: 587, column: 11, scope: !218, inlinedAt: !1018)
!1136 = !DILocation(line: 588, column: 14, scope: !218, inlinedAt: !1018)
!1137 = !DILocation(line: 588, column: 5, scope: !218, inlinedAt: !1018)
!1138 = !DILocation(line: 588, column: 11, scope: !218, inlinedAt: !1018)
!1139 = !DILocation(line: 589, column: 14, scope: !218, inlinedAt: !1018)
!1140 = !DILocation(line: 589, column: 5, scope: !218, inlinedAt: !1018)
!1141 = !DILocation(line: 589, column: 11, scope: !218, inlinedAt: !1018)
!1142 = !DILocation(line: 590, column: 14, scope: !218, inlinedAt: !1018)
!1143 = !DILocation(line: 590, column: 5, scope: !218, inlinedAt: !1018)
!1144 = !DILocation(line: 590, column: 11, scope: !218, inlinedAt: !1018)
!1145 = !DILocation(line: 592, column: 12, scope: !218, inlinedAt: !1018)
!1146 = !DILocation(line: 592, column: 10, scope: !218, inlinedAt: !1018)
!1147 = !DILocation(line: 593, column: 12, scope: !218, inlinedAt: !1018)
!1148 = !DILocation(line: 593, column: 10, scope: !218, inlinedAt: !1018)
!1149 = !DILocation(line: 594, column: 12, scope: !218, inlinedAt: !1018)
!1150 = !DILocation(line: 594, column: 10, scope: !218, inlinedAt: !1018)
!1151 = !DILocation(line: 595, column: 12, scope: !218, inlinedAt: !1018)
!1152 = !DILocation(line: 595, column: 10, scope: !218, inlinedAt: !1018)
!1153 = !DILocation(line: 597, column: 13, scope: !218, inlinedAt: !1018)
!1154 = !DILocation(line: 597, column: 10, scope: !218, inlinedAt: !1018)
!1155 = !DILocation(line: 598, column: 13, scope: !218, inlinedAt: !1018)
!1156 = !DILocation(line: 598, column: 10, scope: !218, inlinedAt: !1018)
!1157 = !DILocation(line: 599, column: 13, scope: !218, inlinedAt: !1018)
!1158 = !DILocation(line: 599, column: 10, scope: !218, inlinedAt: !1018)
!1159 = !DILocation(line: 600, column: 13, scope: !218, inlinedAt: !1018)
!1160 = !DILocation(line: 600, column: 10, scope: !218, inlinedAt: !1018)
!1161 = !DILocation(line: 602, column: 5, scope: !399, inlinedAt: !1018)
!1162 = !DILocation(line: 602, column: 5, scope: !401, inlinedAt: !1018)
!1163 = !DILocation(line: 602, column: 5, scope: !403, inlinedAt: !1018)
!1164 = !DILocation(line: 602, column: 5, scope: !405, inlinedAt: !1018)
!1165 = !DILocation(line: 604, column: 13, scope: !218, inlinedAt: !1018)
!1166 = !DILocation(line: 604, column: 10, scope: !218, inlinedAt: !1018)
!1167 = !DILocation(line: 605, column: 13, scope: !218, inlinedAt: !1018)
!1168 = !DILocation(line: 605, column: 10, scope: !218, inlinedAt: !1018)
!1169 = !DILocation(line: 606, column: 13, scope: !218, inlinedAt: !1018)
!1170 = !DILocation(line: 606, column: 10, scope: !218, inlinedAt: !1018)
!1171 = !DILocation(line: 607, column: 13, scope: !218, inlinedAt: !1018)
!1172 = !DILocation(line: 607, column: 10, scope: !218, inlinedAt: !1018)
!1173 = !DILocation(line: 609, column: 13, scope: !218, inlinedAt: !1018)
!1174 = !DILocation(line: 609, column: 5, scope: !218, inlinedAt: !1018)
!1175 = !DILocation(line: 609, column: 11, scope: !218, inlinedAt: !1018)
!1176 = !DILocation(line: 610, column: 13, scope: !218, inlinedAt: !1018)
!1177 = !DILocation(line: 610, column: 5, scope: !218, inlinedAt: !1018)
!1178 = !DILocation(line: 610, column: 11, scope: !218, inlinedAt: !1018)
!1179 = !DILocation(line: 611, column: 13, scope: !218, inlinedAt: !1018)
!1180 = !DILocation(line: 611, column: 5, scope: !218, inlinedAt: !1018)
!1181 = !DILocation(line: 611, column: 11, scope: !218, inlinedAt: !1018)
!1182 = !DILocation(line: 612, column: 13, scope: !218, inlinedAt: !1018)
!1183 = !DILocation(line: 612, column: 5, scope: !218, inlinedAt: !1018)
!1184 = !DILocation(line: 612, column: 11, scope: !218, inlinedAt: !1018)
!1185 = !DILocation(line: 614, column: 13, scope: !218, inlinedAt: !1018)
!1186 = !DILocation(line: 614, column: 10, scope: !218, inlinedAt: !1018)
!1187 = !DILocation(line: 615, column: 13, scope: !218, inlinedAt: !1018)
!1188 = !DILocation(line: 615, column: 10, scope: !218, inlinedAt: !1018)
!1189 = !DILocation(line: 616, column: 13, scope: !218, inlinedAt: !1018)
!1190 = !DILocation(line: 616, column: 10, scope: !218, inlinedAt: !1018)
!1191 = !DILocation(line: 617, column: 13, scope: !218, inlinedAt: !1018)
!1192 = !DILocation(line: 617, column: 10, scope: !218, inlinedAt: !1018)
!1193 = !DILocation(line: 619, column: 5, scope: !438, inlinedAt: !1018)
!1194 = !DILocation(line: 619, column: 5, scope: !440, inlinedAt: !1018)
!1195 = !DILocation(line: 619, column: 5, scope: !442, inlinedAt: !1018)
!1196 = !DILocation(line: 619, column: 5, scope: !444, inlinedAt: !1018)
!1197 = !DILocation(line: 621, column: 13, scope: !218, inlinedAt: !1018)
!1198 = !DILocation(line: 621, column: 20, scope: !218, inlinedAt: !1018)
!1199 = !DILocation(line: 621, column: 18, scope: !218, inlinedAt: !1018)
!1200 = !DILocation(line: 621, column: 5, scope: !218, inlinedAt: !1018)
!1201 = !DILocation(line: 621, column: 11, scope: !218, inlinedAt: !1018)
!1202 = !DILocation(line: 622, column: 13, scope: !218, inlinedAt: !1018)
!1203 = !DILocation(line: 622, column: 20, scope: !218, inlinedAt: !1018)
!1204 = !DILocation(line: 622, column: 18, scope: !218, inlinedAt: !1018)
!1205 = !DILocation(line: 622, column: 5, scope: !218, inlinedAt: !1018)
!1206 = !DILocation(line: 622, column: 11, scope: !218, inlinedAt: !1018)
!1207 = !DILocation(line: 623, column: 13, scope: !218, inlinedAt: !1018)
!1208 = !DILocation(line: 623, column: 20, scope: !218, inlinedAt: !1018)
!1209 = !DILocation(line: 623, column: 18, scope: !218, inlinedAt: !1018)
!1210 = !DILocation(line: 623, column: 5, scope: !218, inlinedAt: !1018)
!1211 = !DILocation(line: 623, column: 11, scope: !218, inlinedAt: !1018)
!1212 = !DILocation(line: 624, column: 13, scope: !218, inlinedAt: !1018)
!1213 = !DILocation(line: 624, column: 20, scope: !218, inlinedAt: !1018)
!1214 = !DILocation(line: 624, column: 18, scope: !218, inlinedAt: !1018)
!1215 = !DILocation(line: 624, column: 5, scope: !218, inlinedAt: !1018)
!1216 = !DILocation(line: 624, column: 11, scope: !218, inlinedAt: !1018)
!1217 = !DILocation(line: 626, column: 5, scope: !467, inlinedAt: !1018)
!1218 = !DILocation(line: 627, column: 7, scope: !218, inlinedAt: !1018)
!1219 = !DILocation(line: 628, column: 5, scope: !471, inlinedAt: !1018)
!1220 = !DILocation(line: 629, column: 7, scope: !218, inlinedAt: !1018)
!1221 = !DILocation(line: 630, column: 5, scope: !475, inlinedAt: !1018)
!1222 = !DILocation(line: 631, column: 7, scope: !218, inlinedAt: !1018)
!1223 = !DILocation(line: 632, column: 5, scope: !479, inlinedAt: !1018)
!1224 = !DILocation(line: 634, column: 7, scope: !218, inlinedAt: !1018)
!1225 = !DILocation(line: 635, column: 5, scope: !483, inlinedAt: !1018)
!1226 = !DILocation(line: 636, column: 7, scope: !218, inlinedAt: !1018)
!1227 = !DILocation(line: 637, column: 5, scope: !487, inlinedAt: !1018)
!1228 = !DILocation(line: 638, column: 7, scope: !218, inlinedAt: !1018)
!1229 = !DILocation(line: 639, column: 5, scope: !491, inlinedAt: !1018)
!1230 = !DILocation(line: 640, column: 7, scope: !218, inlinedAt: !1018)
!1231 = !DILocation(line: 641, column: 5, scope: !495, inlinedAt: !1018)
!1232 = !DILocation(line: 643, column: 7, scope: !218, inlinedAt: !1018)
!1233 = !DILocation(line: 644, column: 5, scope: !499, inlinedAt: !1018)
!1234 = !DILocation(line: 645, column: 7, scope: !218, inlinedAt: !1018)
!1235 = !DILocation(line: 646, column: 5, scope: !503, inlinedAt: !1018)
!1236 = !DILocation(line: 647, column: 7, scope: !218, inlinedAt: !1018)
!1237 = !DILocation(line: 648, column: 5, scope: !507, inlinedAt: !1018)
!1238 = !DILocation(line: 649, column: 7, scope: !218, inlinedAt: !1018)
!1239 = !DILocation(line: 650, column: 5, scope: !511, inlinedAt: !1018)
!1240 = !DILocation(line: 652, column: 7, scope: !218, inlinedAt: !1018)
!1241 = !DILocation(line: 653, column: 5, scope: !515, inlinedAt: !1018)
!1242 = !DILocation(line: 654, column: 9, scope: !517, inlinedAt: !1018)
!1243 = !DILocation(line: 654, column: 14, scope: !517, inlinedAt: !1018)
!1244 = !DILocation(line: 654, column: 9, scope: !218, inlinedAt: !1018)
!1245 = !DILocation(line: 655, column: 11, scope: !521, inlinedAt: !1018)
!1246 = !DILocation(line: 656, column: 9, scope: !524, inlinedAt: !1018)
!1247 = !DILocation(line: 657, column: 11, scope: !521, inlinedAt: !1018)
!1248 = !DILocation(line: 658, column: 9, scope: !528, inlinedAt: !1018)
!1249 = !DILocation(line: 659, column: 5, scope: !521, inlinedAt: !1018)
!1250 = !DILocation(line: 660, column: 9, scope: !531, inlinedAt: !1018)
!1251 = !DILocation(line: 660, column: 14, scope: !531, inlinedAt: !1018)
!1252 = !DILocation(line: 660, column: 9, scope: !218, inlinedAt: !1018)
!1253 = !DILocation(line: 661, column: 11, scope: !535, inlinedAt: !1018)
!1254 = !DILocation(line: 662, column: 9, scope: !538, inlinedAt: !1018)
!1255 = !DILocation(line: 664, column: 11, scope: !535, inlinedAt: !1018)
!1256 = !DILocation(line: 665, column: 9, scope: !542, inlinedAt: !1018)
!1257 = !DILocation(line: 666, column: 5, scope: !535, inlinedAt: !1018)
!1258 = !DILocation(line: 668, column: 5, scope: !218, inlinedAt: !1018)
!1259 = !DILocation(line: 669, column: 1, scope: !218, inlinedAt: !1018)
!1260 = !DILocalVariable(name: "charset", scope: !1003, file: !3, line: 1228, type: !1261)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 752, elements: !1264)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!1263 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1264 = !{!1265}
!1265 = !DISubrange(count: 94)
!1266 = !DILocation(line: 1228, column: 16, scope: !1003)
!1267 = !DILocalVariable(name: "length", scope: !1003, file: !3, line: 1229, type: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1269, line: 46, baseType: !1270)
!1269 = !DIFile(filename: "Tools/LLVM/llvm-10.0.0/build/lib/clang/10.0.0/include/stddef.h", directory: "/home/phil")
!1270 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1271 = !DILocation(line: 1229, column: 12, scope: !1003)
!1272 = !DILocalVariable(name: "size", scope: !1003, file: !3, line: 1230, type: !86)
!1273 = !DILocation(line: 1230, column: 9, scope: !1003)
!1274 = !DILocalVariable(name: "round", scope: !1003, file: !3, line: 1231, type: !1268)
!1275 = !DILocation(line: 1231, column: 12, scope: !1003)
!1276 = !DILocalVariable(name: "i", scope: !1003, file: !3, line: 1232, type: !86)
!1277 = !DILocation(line: 1232, column: 9, scope: !1003)
!1278 = !DILocalVariable(name: "buff", scope: !1003, file: !3, line: 1234, type: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1280 = !DILocation(line: 1234, column: 11, scope: !1003)
!1281 = !DILocation(line: 1234, column: 18, scope: !1003)
!1282 = !DILocation(line: 1235, column: 12, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1235, column: 5)
!1284 = !DILocation(line: 1235, column: 10, scope: !1283)
!1285 = !DILocation(line: 1235, column: 17, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 1235, column: 5)
!1287 = !DILocation(line: 1235, column: 19, scope: !1286)
!1288 = !DILocation(line: 1235, column: 5, scope: !1283)
!1289 = !DILocation(line: 1236, column: 17, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 1235, column: 35)
!1291 = !DILocation(line: 1236, column: 7, scope: !1290)
!1292 = !DILocation(line: 1236, column: 12, scope: !1290)
!1293 = !DILocation(line: 1236, column: 15, scope: !1290)
!1294 = !DILocation(line: 1237, column: 5, scope: !1290)
!1295 = !DILocation(line: 1235, column: 28, scope: !1286)
!1296 = !DILocation(line: 1235, column: 5, scope: !1286)
!1297 = distinct !{!1297, !1288, !1298}
!1298 = !DILocation(line: 1237, column: 5, scope: !1283)
!1299 = !DILocalVariable(name: "input", scope: !1003, file: !3, line: 1239, type: !1279)
!1300 = !DILocation(line: 1239, column: 11, scope: !1003)
!1301 = !DILocation(line: 1239, column: 41, scope: !1003)
!1302 = !DILocation(line: 1239, column: 39, scope: !1003)
!1303 = !DILocation(line: 1239, column: 48, scope: !1003)
!1304 = !DILocation(line: 1239, column: 46, scope: !1003)
!1305 = !DILocation(line: 1239, column: 19, scope: !1003)
!1306 = !DILocalVariable(name: "n", scope: !1307, file: !3, line: 1240, type: !1268)
!1307 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1240, column: 5)
!1308 = !DILocation(line: 1240, column: 17, scope: !1307)
!1309 = !DILocation(line: 1240, column: 10, scope: !1307)
!1310 = !DILocation(line: 1240, column: 24, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1240, column: 5)
!1312 = !DILocation(line: 1240, column: 28, scope: !1311)
!1313 = !DILocation(line: 1240, column: 37, scope: !1311)
!1314 = !DILocation(line: 1240, column: 35, scope: !1311)
!1315 = !DILocation(line: 1240, column: 26, scope: !1311)
!1316 = !DILocation(line: 1240, column: 5, scope: !1307)
!1317 = !DILocalVariable(name: "key", scope: !1318, file: !3, line: 1241, type: !86)
!1318 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 1240, column: 49)
!1319 = !DILocation(line: 1241, column: 13, scope: !1318)
!1320 = !DILocation(line: 1241, column: 19, scope: !1318)
!1321 = !DILocation(line: 1241, column: 26, scope: !1318)
!1322 = !DILocation(line: 1242, column: 28, scope: !1318)
!1323 = !DILocation(line: 1242, column: 20, scope: !1318)
!1324 = !DILocation(line: 1242, column: 9, scope: !1318)
!1325 = !DILocation(line: 1242, column: 15, scope: !1318)
!1326 = !DILocation(line: 1242, column: 18, scope: !1318)
!1327 = !DILocation(line: 1243, column: 5, scope: !1318)
!1328 = !DILocation(line: 1240, column: 45, scope: !1311)
!1329 = !DILocation(line: 1240, column: 5, scope: !1311)
!1330 = distinct !{!1330, !1316, !1331}
!1331 = !DILocation(line: 1243, column: 5, scope: !1307)
!1332 = !DILocation(line: 1245, column: 5, scope: !1003)
!1333 = !DILocation(line: 1245, column: 11, scope: !1003)
!1334 = !DILocalVariable(name: "in", scope: !1008, file: !3, line: 1253, type: !1279)
!1335 = !DILocation(line: 1253, column: 13, scope: !1008)
!1336 = !DILocation(line: 1253, column: 25, scope: !1008)
!1337 = !DILocation(line: 1253, column: 18, scope: !1008)
!1338 = !DILocation(line: 1254, column: 15, scope: !1008)
!1339 = !DILocation(line: 1254, column: 19, scope: !1008)
!1340 = !DILocation(line: 1254, column: 26, scope: !1008)
!1341 = !DILocation(line: 1254, column: 31, scope: !1008)
!1342 = !DILocation(line: 1254, column: 35, scope: !1008)
!1343 = !DILocation(line: 1254, column: 34, scope: !1008)
!1344 = !DILocation(line: 1254, column: 24, scope: !1008)
!1345 = !DILocation(line: 1254, column: 41, scope: !1008)
!1346 = !DILocation(line: 1254, column: 7, scope: !1008)
!1347 = !DILocation(line: 1255, column: 20, scope: !1008)
!1348 = !DILocation(line: 1255, column: 24, scope: !1008)
!1349 = !DILocation(line: 477, column: 5, scope: !45, inlinedAt: !1007)
!1350 = !DILocation(line: 479, column: 9, scope: !94, inlinedAt: !1007)
!1351 = !DILocation(line: 479, column: 12, scope: !94, inlinedAt: !1007)
!1352 = !DILocation(line: 479, column: 20, scope: !94, inlinedAt: !1007)
!1353 = !DILocation(line: 479, column: 23, scope: !94, inlinedAt: !1007)
!1354 = !DILocation(line: 479, column: 27, scope: !94, inlinedAt: !1007)
!1355 = !DILocation(line: 479, column: 35, scope: !94, inlinedAt: !1007)
!1356 = !DILocation(line: 479, column: 38, scope: !94, inlinedAt: !1007)
!1357 = !DILocation(line: 479, column: 42, scope: !94, inlinedAt: !1007)
!1358 = !DILocation(line: 479, column: 9, scope: !45, inlinedAt: !1007)
!1359 = !DILocation(line: 480, column: 9, scope: !104, inlinedAt: !1007)
!1360 = !DILocation(line: 483, column: 10, scope: !45, inlinedAt: !1007)
!1361 = !DILocation(line: 483, column: 15, scope: !45, inlinedAt: !1007)
!1362 = !DILocation(line: 483, column: 8, scope: !45, inlinedAt: !1007)
!1363 = !DILocation(line: 484, column: 10, scope: !45, inlinedAt: !1007)
!1364 = !DILocation(line: 484, column: 15, scope: !45, inlinedAt: !1007)
!1365 = !DILocation(line: 484, column: 8, scope: !45, inlinedAt: !1007)
!1366 = !DILocation(line: 486, column: 9, scope: !112, inlinedAt: !1007)
!1367 = !DILocation(line: 486, column: 12, scope: !112, inlinedAt: !1007)
!1368 = !DILocation(line: 486, column: 18, scope: !112, inlinedAt: !1007)
!1369 = !DILocation(line: 486, column: 21, scope: !112, inlinedAt: !1007)
!1370 = !DILocation(line: 486, column: 24, scope: !112, inlinedAt: !1007)
!1371 = !DILocation(line: 486, column: 30, scope: !112, inlinedAt: !1007)
!1372 = !DILocation(line: 486, column: 33, scope: !112, inlinedAt: !1007)
!1373 = !DILocation(line: 486, column: 36, scope: !112, inlinedAt: !1007)
!1374 = !DILocation(line: 486, column: 9, scope: !45, inlinedAt: !1007)
!1375 = !DILocation(line: 487, column: 9, scope: !122, inlinedAt: !1007)
!1376 = !DILocation(line: 490, column: 12, scope: !45, inlinedAt: !1007)
!1377 = !DILocation(line: 490, column: 10, scope: !45, inlinedAt: !1007)
!1378 = !DILocation(line: 491, column: 12, scope: !45, inlinedAt: !1007)
!1379 = !DILocation(line: 491, column: 10, scope: !45, inlinedAt: !1007)
!1380 = !DILocation(line: 492, column: 12, scope: !45, inlinedAt: !1007)
!1381 = !DILocation(line: 492, column: 10, scope: !45, inlinedAt: !1007)
!1382 = !DILocation(line: 493, column: 12, scope: !45, inlinedAt: !1007)
!1383 = !DILocation(line: 493, column: 10, scope: !45, inlinedAt: !1007)
!1384 = !DILocation(line: 495, column: 5, scope: !133, inlinedAt: !1007)
!1385 = !DILocation(line: 496, column: 7, scope: !45, inlinedAt: !1007)
!1386 = !DILocation(line: 498, column: 5, scope: !139, inlinedAt: !1007)
!1387 = !DILocation(line: 498, column: 5, scope: !141, inlinedAt: !1007)
!1388 = !DILocation(line: 498, column: 5, scope: !143, inlinedAt: !1007)
!1389 = !DILocation(line: 498, column: 5, scope: !145, inlinedAt: !1007)
!1390 = !DILocation(line: 499, column: 5, scope: !148, inlinedAt: !1007)
!1391 = !DILocation(line: 500, column: 7, scope: !45, inlinedAt: !1007)
!1392 = !DILocation(line: 502, column: 5, scope: !45, inlinedAt: !1007)
!1393 = !DILocation(line: 502, column: 14, scope: !45, inlinedAt: !1007)
!1394 = !DILocation(line: 503, column: 9, scope: !157, inlinedAt: !1007)
!1395 = !DILocation(line: 503, column: 9, scope: !159, inlinedAt: !1007)
!1396 = !DILocation(line: 503, column: 9, scope: !161, inlinedAt: !1007)
!1397 = !DILocation(line: 503, column: 9, scope: !163, inlinedAt: !1007)
!1398 = !DILocation(line: 504, column: 9, scope: !166, inlinedAt: !1007)
!1399 = !DILocation(line: 505, column: 11, scope: !153, inlinedAt: !1007)
!1400 = !DILocation(line: 507, column: 9, scope: !172, inlinedAt: !1007)
!1401 = !DILocation(line: 507, column: 9, scope: !174, inlinedAt: !1007)
!1402 = !DILocation(line: 507, column: 9, scope: !176, inlinedAt: !1007)
!1403 = !DILocation(line: 507, column: 9, scope: !178, inlinedAt: !1007)
!1404 = !DILocation(line: 508, column: 9, scope: !181, inlinedAt: !1007)
!1405 = !DILocation(line: 509, column: 11, scope: !153, inlinedAt: !1007)
!1406 = distinct !{!1406, !1392, !1407}
!1407 = !DILocation(line: 510, column: 5, scope: !45, inlinedAt: !1007)
!1408 = !DILocation(line: 512, column: 12, scope: !45, inlinedAt: !1007)
!1409 = !DILocation(line: 512, column: 16, scope: !45, inlinedAt: !1007)
!1410 = !DILocation(line: 512, column: 23, scope: !45, inlinedAt: !1007)
!1411 = !DILocation(line: 512, column: 21, scope: !45, inlinedAt: !1007)
!1412 = !DILocation(line: 512, column: 10, scope: !45, inlinedAt: !1007)
!1413 = !DILocation(line: 517, column: 12, scope: !45, inlinedAt: !1007)
!1414 = !DILocation(line: 517, column: 16, scope: !45, inlinedAt: !1007)
!1415 = !DILocation(line: 517, column: 23, scope: !45, inlinedAt: !1007)
!1416 = !DILocation(line: 517, column: 21, scope: !45, inlinedAt: !1007)
!1417 = !DILocation(line: 517, column: 10, scope: !45, inlinedAt: !1007)
!1418 = !DILocation(line: 522, column: 12, scope: !45, inlinedAt: !1007)
!1419 = !DILocation(line: 522, column: 16, scope: !45, inlinedAt: !1007)
!1420 = !DILocation(line: 522, column: 23, scope: !45, inlinedAt: !1007)
!1421 = !DILocation(line: 522, column: 21, scope: !45, inlinedAt: !1007)
!1422 = !DILocation(line: 522, column: 10, scope: !45, inlinedAt: !1007)
!1423 = !DILocation(line: 527, column: 12, scope: !45, inlinedAt: !1007)
!1424 = !DILocation(line: 527, column: 16, scope: !45, inlinedAt: !1007)
!1425 = !DILocation(line: 527, column: 23, scope: !45, inlinedAt: !1007)
!1426 = !DILocation(line: 527, column: 21, scope: !45, inlinedAt: !1007)
!1427 = !DILocation(line: 527, column: 10, scope: !45, inlinedAt: !1007)
!1428 = !DILocation(line: 533, column: 5, scope: !207, inlinedAt: !1007)
!1429 = !DILocation(line: 534, column: 5, scope: !210, inlinedAt: !1007)
!1430 = !DILocation(line: 535, column: 5, scope: !213, inlinedAt: !1007)
!1431 = !DILocation(line: 536, column: 5, scope: !216, inlinedAt: !1007)
!1432 = !DILocation(line: 1262, column: 12, scope: !1008)
!1433 = !DILocation(line: 1262, column: 7, scope: !1008)
!1434 = !DILocation(line: 1263, column: 12, scope: !1008)
!1435 = distinct !{!1435, !1332, !1436}
!1436 = !DILocation(line: 1264, column: 5, scope: !1003)
!1437 = !DILocation(line: 1265, column: 1, scope: !1003)
