0001 REM Chad's Advent of Code Day 5 in Applesoft BASIC
0002 REM Run this program at https://www.calormen.com/jsbasic/

0010 MAXID=0
0011 DIM SEATS$(919)
0012 FOR A=1 TO 919
0013   SEATS$(A) = "VACANT"
0014 NEXT A

0020 FOR B=1 TO 840
0030   READ N$
0040   ROW=0 : COL=0
0050   IF MID$(N$,1,1) = "B" THEN ROW=ROW+64
0060   IF MID$(N$,2,1) = "B" THEN ROW=ROW+32
0070   IF MID$(N$,3,1) = "B" THEN ROW=ROW+16
0080   IF MID$(N$,4,1) = "B" THEN ROW=ROW+8
0090   IF MID$(N$,5,1) = "B" THEN ROW=ROW+4
0100   IF MID$(N$,6,1) = "B" THEN ROW=ROW+2
0110   IF MID$(N$,7,1) = "B" THEN ROW=ROW+1
0120   IF MID$(N$,8,1) = "R" THEN COL=COL+4
0130   IF MID$(N$,9,1) = "R" THEN COL=COL+2
0140   IF MID$(N$,10,1) = "R" THEN COL=COL+1
0150   SEATID = (ROW * 8) + COL
0160   PRINT "ROW "; ROW; ", COL "; COL; ", SEAT ID "; SEATID
0170   IF SEATID > MAXID THEN MAXID = SEATID
0175   SEATS$(SEATID) = "OCCUPIED"
0180 NEXT B
0190 PRINT "MAX SEAT ID:", MAXID

2000 PRINT "VACANT SEATS:"
2010 FOR A=1 TO 919
2020   IF SEATS$(A) = "VACANT" THEN PRINT A
2030 NEXT A

1000 DATA "FBFBBFFRLR"
1001 DATA "BFBFFFFLLL"
1002 DATA "BBFBBFBRLL"
1003 DATA "BFBBFFFRRR"
1004 DATA "FBFFBBBLLL"
1005 DATA "FFBBFBBRLL"
1006 DATA "BBBFFFFLRL"
1007 DATA "BFBBBFBRRR"
1008 DATA "FBBFFFBLRL"
1009 DATA "FFBFBBFLLR"
1010 DATA "FBFFFFBLRL"
1011 DATA "BBFFBBFRLL"
1012 DATA "BBFBBBBLLR"
1013 DATA "FFBBBBFRLR"
1014 DATA "BBFFBFFRLR"
1015 DATA "BFFBBFFRRL"
1016 DATA "BBFBBBFLLR"
1017 DATA "FBFBBBBRRL"
1018 DATA "BFFFBFFLRL"
1019 DATA "FBFFFBFRLL"
1020 DATA "FBBBFFBLRR"
1021 DATA "FFFBFBBRLR"
1022 DATA "FBBFBBFLLR"
1023 DATA "FBFBFFFLRL"
1024 DATA "BFFBFBFLLR"
1025 DATA "BBFBFBBRRL"
1026 DATA "BFFBBFBRLR"
1027 DATA "FBFBFFFRRL"
1028 DATA "BFBFFBBRRL"
1029 DATA "FBFBFBFLLL"
1030 DATA "BFFBFFBRRL"
1031 DATA "FFBBBBBRRL"
1032 DATA "FFFBFBFRLR"
1033 DATA "BBFFFBBLRL"
1034 DATA "BFBFBFFRLL"
1035 DATA "BFBFFFBRLR"
1036 DATA "FBBBFFFRRR"
1037 DATA "BBFFFBFRLL"
1038 DATA "FBBBFBFRLL"
1039 DATA "FFBBBFFLRR"
1040 DATA "FBFBBFBLRL"
1041 DATA "FBBBBBFLLR"
1042 DATA "FBFFBBBLRL"
1043 DATA "FFFBBFFRRL"
1044 DATA "FBBBFFFRLR"
1045 DATA "BBFBFFFRLR"
1046 DATA "BBFBBFBLLL"
1047 DATA "FBFFBBBRRL"
1048 DATA "BFFFFBFRRR"
1049 DATA "FBBFFBFLRR"
1050 DATA "FBFBBBFLRL"
1051 DATA "BFBBBBBRRL"
1052 DATA "BBFFFFBLRL"
1053 DATA "FBFFFBFLLL"
1054 DATA "FFFBBFFLLR"
1055 DATA "FBBBFBFLRR"
1056 DATA "BBBFFBFRRL"
1057 DATA "BFBFFFFRLR"
1058 DATA "FFBFFFBRLR"
1059 DATA "FBFFBFBRLL"
1060 DATA "FBBFFFFRLL"
1061 DATA "FFFBBFBRRR"
1062 DATA "FBBBBFFLRR"
1063 DATA "BFBBBFBRLR"
1064 DATA "BFFFFFFRRR"
1065 DATA "FFBBBBFRRR"
1066 DATA "BFFBFBFRRL"
1067 DATA "BFFBFFFRLR"
1068 DATA "BBFFBFBLRR"
1069 DATA "FBFFFBBLLL"
1070 DATA "FBFFFFFRLR"
1071 DATA "BFBBFBFLRR"
1072 DATA "FBBBBBBLRL"
1073 DATA "BFFFFBBLRR"
1074 DATA "BFFBFFFRRR"
1075 DATA "FBFFFBFLRL"
1076 DATA "BFBBFFBLRR"
1077 DATA "BBFBBBBLLL"
1078 DATA "BBFBBBFRRL"
1079 DATA "FBBBBBBRLR"
1080 DATA "BFFBFBFLRR"
1081 DATA "BFFBFFFLLR"
1082 DATA "FBBBBBFLRL"
1083 DATA "FBFFFBFRRL"
1084 DATA "FFBBBBFRRL"
1085 DATA "BFBBBBBRLR"
1086 DATA "FBBBBBFRRL"
1087 DATA "FFBFBFFLLL"
1088 DATA "BBBFFFFRRL"
1089 DATA "BBFBBFBRRR"
1090 DATA "BFBFFFFRLL"
1091 DATA "FBFFFFFLLR"
1092 DATA "FFFBBFFLRL"
1093 DATA "FBFFBFFLRR"
1094 DATA "FBFFBBFRLR"
1095 DATA "FFBBBFBLLR"
1096 DATA "BFFFFBFLRR"
1097 DATA "BBFBFBFRRR"
1098 DATA "FBBFBBBLLL"
1099 DATA "FBBFBFBLLL"
1100 DATA "FBBBFFBLRL"
1101 DATA "BBBFFBFRRR"
1102 DATA "FBBBFBFLRL"
1103 DATA "FBFFFBFRRR"
1104 DATA "FBFFBFBRRR"
1105 DATA "FFBBFFBRLL"
1106 DATA "BFBFBFBLLR"
1107 DATA "BBFFFFBRRR"
1108 DATA "FBBBBBBLLR"
1109 DATA "FBBBBFFRLR"
1110 DATA "BBFBBFFLRL"
1111 DATA "BFBBFBFLLR"
1112 DATA "FBFFFFFRLL"
1113 DATA "FFBBFFFLLR"
1114 DATA "BBFFFBFRRR"
1115 DATA "BFBBBFFLLR"
1116 DATA "BBFFFFBRLR"
1117 DATA "FFBFBBFRLR"
1118 DATA "BFBFFFBLLL"
1119 DATA "FBFFBFFLLL"
1120 DATA "FBBBFBBRLR"
1121 DATA "BBFBFFFLLR"
1122 DATA "FBFFFBBRLR"
1123 DATA "BFFBFBBLLL"
1124 DATA "BFFBBFFLLR"
1125 DATA "FBBFFBBRLR"
1126 DATA "BBFBFFBRLL"
1127 DATA "FBFBBBFRRL"
1128 DATA "BFBBBFBLLR"
1129 DATA "BBFFBBBRLL"
1130 DATA "BBBFFFBLRL"
1131 DATA "BBFBFFBRLR"
1132 DATA "BFFBBBFRRR"
1133 DATA "FFFBFBBRLL"
1134 DATA "FBFBFBBRLL"
1135 DATA "BFFFFFBRLR"
1136 DATA "FBFFBBBRRR"
1137 DATA "FBFFBBFLRL"
1138 DATA "BFFFBBBRLL"
1139 DATA "FBBBBFFLLL"
1140 DATA "BBFBFFFRRR"
1141 DATA "BFBFBBFLLL"
1142 DATA "FFBBFBFRRL"
1143 DATA "FFFBBBBRLR"
1144 DATA "BFFBBBBRLL"
1145 DATA "FFBFBBFRRL"
1146 DATA "FBFBFBFRLL"
1147 DATA "BBBFFFBRRL"
1148 DATA "BBBFFBFRLR"
1149 DATA "FBFBFBFLLR"
1150 DATA "BBFBBFFRLL"
1151 DATA "FBFBFFFLLR"
1152 DATA "BBFBFBFRRL"
1153 DATA "BFFBBFBRRL"
1154 DATA "FFBFFBFRLR"
1155 DATA "BFFBBFBRRR"
1156 DATA "FFBBFFBRRL"
1157 DATA "BFFFFBBRRL"
1158 DATA "FBBBBFFRLL"
1159 DATA "FBBBFFBRRR"
1160 DATA "FBBFFBFLLL"
1161 DATA "BBBFFBFRLL"
1162 DATA "FFFBBFBLLR"
1163 DATA "BFFBBFFLRR"
1164 DATA "BFBFBFFLLL"
1165 DATA "BFBFFBBLRL"
1166 DATA "FFFBBFBLRR"
1167 DATA "BBFFBFBLLL"
1168 DATA "FBBBFBFRRL"
1169 DATA "BFBBBBBLLR"
1170 DATA "BBFBFBBLLL"
1171 DATA "FFBFBFFLRR"
1172 DATA "BFFFFFFLLR"
1173 DATA "BFBFBFFRRL"
1174 DATA "BFBFBBFLLR"
1175 DATA "FBBBBFFLLR"
1176 DATA "FFBBFFBLLL"
1177 DATA "BBFFBFBRRR"
1178 DATA "FFFBBFBLRL"
1179 DATA "FBFBFFBLRL"
1180 DATA "BFBBBBBLLL"
1181 DATA "BFFFFBFRRL"
1182 DATA "FBFFFFFLRL"
1183 DATA "BFFFBFBLRL"
1184 DATA "BFFBFBFLLL"
1185 DATA "BBFBBBFRRR"
1186 DATA "FBFBFFBLRR"
1187 DATA "FBFBBBBRLL"
1188 DATA "BBFFFFFLRL"
1189 DATA "FBBFFFBRRR"
1190 DATA "FBFFFBBRLL"
1191 DATA "BFFFBFFLLL"
1192 DATA "BFFBBFFLRL"
1193 DATA "FFBFFFBLLL"
1194 DATA "BFBFBBBLLL"
1195 DATA "FBBFBFBLRR"
1196 DATA "FBFFBFFLLR"
1197 DATA "FBFFBBFRRR"
1198 DATA "BBFFFBFLLR"
1199 DATA "BBFBBFBLRL"
1200 DATA "FBFBBBFRRR"
1201 DATA "BBFFFFBLLR"
1202 DATA "FFBFBFBLRL"
1203 DATA "FFBBBBBLLR"
1204 DATA "FBFBFBBLRR"
1205 DATA "FFBBBFFRLL"
1206 DATA "FBBFBFBRLL"
1207 DATA "BBFBFFBRRL"
1208 DATA "BFBFFBFLRR"
1209 DATA "BFBFFBBRLR"
1210 DATA "FBBFFFFRRL"
1211 DATA "FBFFFFFLLL"
1212 DATA "FBFBBFBRLR"
1213 DATA "BBFBBFBLRR"
1214 DATA "BFBBBFFRLR"
1215 DATA "FBFFBBBLRR"
1216 DATA "FBFBFBBRRL"
1217 DATA "BBFFBBFLRL"
1218 DATA "BBFFFFBLRR"
1219 DATA "FFBBFFBLLR"
1220 DATA "BFBBFBBLRR"
1221 DATA "BBFBFBBRLL"
1222 DATA "BBFFFBFLLL"
1223 DATA "FBBFBBBRRR"
1224 DATA "BFBFBBFRLL"
1225 DATA "FFBBFFBLRL"
1226 DATA "FFFBBBFRRR"
1227 DATA "BFBFFFBLRR"
1228 DATA "BBFBFBBRRR"
1229 DATA "BFBFFBBLLR"
1230 DATA "BFFFBBBRLR"
1231 DATA "FFBBBBBRLL"
1232 DATA "FFFBBFBLLL"
1233 DATA "FBFBBBBLRR"
1234 DATA "FFBFFBBRLL"
1235 DATA "BFBBBBFLLL"
1236 DATA "BFFFBFFRLL"
1237 DATA "BBFFFBFLRR"
1238 DATA "BFBFFFFLRR"
1239 DATA "BFBFBBBRLR"
1240 DATA "BBFBBBFLRL"
1241 DATA "FBBFFFFLLR"
1242 DATA "FFFBBBBLLL"
1243 DATA "BBBFFBFLLL"
1244 DATA "FBFFBBBRLL"
1245 DATA "FBFBFFFLLL"
1246 DATA "FBBFFBFLLR"
1247 DATA "BFBFBBFRRL"
1248 DATA "BFFFFBBRLL"
1249 DATA "FBFBFFBLLL"
1250 DATA "BBFFFFFLLL"
1251 DATA "FFBBBBFLLR"
1252 DATA "FBFBBBFLLR"
1253 DATA "BFBBFFBRRL"
1254 DATA "FBBFFBBRLL"
1255 DATA "BFBFFFFLLR"
1256 DATA "BBFBFFFLRL"
1257 DATA "BFFFBFBLRR"
1258 DATA "FBBFBBFRRR"
1259 DATA "FFBFBFFRRL"
1260 DATA "BBFFFBBLLR"
1261 DATA "BFBFBFFLRL"
1262 DATA "BFBFFFBLRL"
1263 DATA "FBFBBBFLLL"
1264 DATA "FBBFFBBLLL"
1265 DATA "BBBFFBFLLR"
1266 DATA "BFFFBBFLRL"
1267 DATA "BFFFBFFLLR"
1268 DATA "BBBFFFFLRR"
1269 DATA "BBFFBFFLLR"
1270 DATA "BBFFFBBRRR"
1271 DATA "BBBFFFBLLR"
1272 DATA "BFBBBBFRLR"
1273 DATA "FBBFBBBRLL"
1274 DATA "BFBBFFBRLL"
1275 DATA "FBFBFBFLRR"
1276 DATA "BBFFFBFLRL"
1277 DATA "FBFBFFBRLL"
1278 DATA "FBBFBFBRLR"
1279 DATA "FFBFBBFLRL"
1280 DATA "BBFBBBFLRR"
1281 DATA "BFFBFBBLRL"
1282 DATA "BFFBBBBRLR"
1283 DATA "BFFFFFBRRR"
1284 DATA "FBBFFFBRRL"
1285 DATA "BFBFFBFLLR"
1286 DATA "FBBFBBFLRL"
1287 DATA "FBBBBBBLRR"
1288 DATA "BFBBBFBRRL"
1289 DATA "BFFFBFBLLL"
1290 DATA "FBFFFBBRRR"
1291 DATA "FFBBFFBRLR"
1292 DATA "BBFFFFFRRL"
1293 DATA "FFBFBBBRRL"
1294 DATA "FFBFBBFLRR"
1295 DATA "BFFFBBBRRL"
1296 DATA "FFBFBFBLRR"
1297 DATA "BBFFBFBRLL"
1298 DATA "BBFBBFBRRL"
1299 DATA "BBFBBFFRLR"
1300 DATA "FBBFBFFRLR"
1301 DATA "BFBBFFBLLL"
1302 DATA "BBFBFBFRLL"
1303 DATA "FFBBBFFLLL"
1304 DATA "FFBBBBBLRR"
1305 DATA "FBBFBBFRRL"
1306 DATA "BBFFBFBRLR"
1307 DATA "BFFFBBFRRL"
1308 DATA "BBFBBFFLLR"
1309 DATA "FBFFBBFLRR"
1310 DATA "BFBFBBBLLR"
1311 DATA "FFFBBBBRLL"
1312 DATA "BBFFFFFLRR"
1313 DATA "BFBBFFBLRL"
1314 DATA "BFBBFFFLLR"
1315 DATA "FFFBFBFLLL"
1316 DATA "FFBFFFFLLR"
1317 DATA "FBFFFBFLLR"
1318 DATA "BBBFFFFLLR"
1319 DATA "BFFBFFFLLL"
1320 DATA "FFFBBFBRRL"
1321 DATA "FBBFFFFLLL"
1322 DATA "FFFBBBFRLL"
1323 DATA "BBFBBBBLRR"
1324 DATA "FFFBBBFLRR"
1325 DATA "FFBBFBFRRR"
1326 DATA "BFBFBBBLRL"
1327 DATA "BBFBBBFLLL"
1328 DATA "FBBBFFBRLR"
1329 DATA "BFFFBBBRRR"
1330 DATA "FFBBBBFLRR"
1331 DATA "FFBBFBBRRL"
1332 DATA "FBBFFBFRLR"
1333 DATA "BBFFBBFRRR"
1334 DATA "BBFBBFBRLR"
1335 DATA "BFFBBFBLRR"
1336 DATA "FFBBBBBLRL"
1337 DATA "BBFFBBBRRR"
1338 DATA "BFFFBFBRRR"
1339 DATA "BFFFFFFRRL"
1340 DATA "BBFFBFBLRL"
1341 DATA "FBFFFFBLRR"
1342 DATA "FBFBBFFRRL"
1343 DATA "BFBFFFBLLR"
1344 DATA "FFFBFBBLRL"
1345 DATA "BFFFFFFRLL"
1346 DATA "BBFFFBBRRL"
1347 DATA "FFBFBFBRRL"
1348 DATA "FBBFBFFLLL"
1349 DATA "FBFFBFBLRR"
1350 DATA "BFFFFBBRLR"
1351 DATA "FFBFFFBLRR"
1352 DATA "BFBFFFBRRL"
1353 DATA "FBBFFBFRLL"
1354 DATA "FBFBBFBRRR"
1355 DATA "FBBBFBFLLR"
1356 DATA "FBBFFFBLLR"
1357 DATA "BFFFFBFLLR"
1358 DATA "FBBBBBBRLL"
1359 DATA "BBBFFFFRLL"
1360 DATA "BFFFBBBLRL"
1361 DATA "FFFBFBFLLR"
1362 DATA "FBFBBBBLLR"
1363 DATA "FBFFBFFRRR"
1364 DATA "BFFFBBBLLL"
1365 DATA "BFBBFFBRRR"
1366 DATA "FBBBBFFRRR"
1367 DATA "BFBFBBFLRR"
1368 DATA "BFFBFFBLRL"
1369 DATA "BBFBFFFRLL"
1370 DATA "FFFBBFBRLL"
1371 DATA "FBBFFFFRLR"
1372 DATA "FFBBFBBRLR"
1373 DATA "BBFFFBBLLL"
1374 DATA "BBFFFBBRLL"
1375 DATA "FBBFFFFRRR"
1376 DATA "BFBFBFBLRR"
1377 DATA "FFBFFFFRRR"
1378 DATA "FBFBFBFLRL"
1379 DATA "FFBFBBFLLL"
1380 DATA "FFBFBBBRLR"
1381 DATA "BFBFFFBRLL"
1382 DATA "FFBFFBBLRL"
1383 DATA "BFBBBBBRLL"
1384 DATA "BBFBFFBLRR"
1385 DATA "FBFFFFBRLR"
1386 DATA "FFBBBFBRRR"
1387 DATA "BFBFBBBRRR"
1388 DATA "FBBBBBFRRR"
1389 DATA "FBBFBBBLRR"
1390 DATA "BBFBBBBRRL"
1391 DATA "BFFBBBFRLL"
1392 DATA "BBFBFBFLLR"
1393 DATA "FFBBFFBRRR"
1394 DATA "BFFFBBBLLR"
1395 DATA "BFFFBBBLRR"
1396 DATA "FFFBFBFRRR"
1397 DATA "BFBFBFBRRL"
1398 DATA "FFBBBFBRRL"
1399 DATA "FFFBBBBRRR"
1400 DATA "FBFFBFFRRL"
1401 DATA "BFFBFFFRRL"
1402 DATA "FFFBBBFLRL"
1403 DATA "FBBBBFFLRL"
1404 DATA "FFBFFBBRLR"
1405 DATA "FBBFBBBLRL"
1406 DATA "FFBFFFFLRR"
1407 DATA "FBFFBFBRLR"
1408 DATA "FBBFBBBRRL"
1409 DATA "FFBBBFBRLL"
1410 DATA "BFFFFFBLRL"
1411 DATA "FFFBBFFRLR"
1412 DATA "BFBFFFBRRR"
1413 DATA "FFBBFFFLRL"
1414 DATA "FBBBBFBRLR"
1415 DATA "FFBBBBFRLL"
1416 DATA "FFBFFBBLLR"
1417 DATA "FBFFFFBLLL"
1418 DATA "FBFBBBBLLL"
1419 DATA "BFFFBFBRRL"
1420 DATA "FBBBBBFLLL"
1421 DATA "FFBBFFFRLL"
1422 DATA "FBBBFFFLLR"
1423 DATA "BFFBBBBLLR"
1424 DATA "BFBFBFFRLR"
1425 DATA "BFBFFBBLLL"
1426 DATA "FBFBBFFLRR"
1427 DATA "FFBBFFFRRL"
1428 DATA "FBFBBFFRLL"
1429 DATA "BFFFFBFLLL"
1430 DATA "FBBBFBBLLL"
1431 DATA "FBFBFFFRLR"
1432 DATA "BFFBBBBLRL"
1433 DATA "FFBFFFFRLL"
1434 DATA "BFBBFBBLLR"
1435 DATA "FFBBFBBLRL"
1436 DATA "FBFBBFBLRR"
1437 DATA "FBBBBBBRRL"
1438 DATA "FFBFBBFRRR"
1439 DATA "FBFFBBFRLL"
1440 DATA "FBBFFFBRLL"
1441 DATA "BFFFBFBRLR"
1442 DATA "BFFBFFBLRR"
1443 DATA "BBBFFFBRLL"
1444 DATA "BFBFFBBLRR"
1445 DATA "BFBBBFBRLL"
1446 DATA "BBFBFBFRLR"
1447 DATA "FFFBFBBRRL"
1448 DATA "BFFFFBBLLR"
1449 DATA "FBFFBBBRLR"
1450 DATA "BFBFFBFRLL"
1451 DATA "FBFBFFBRRL"
1452 DATA "BFFFFFFLLL"
1453 DATA "BFFFBBFLLR"
1454 DATA "BFFFBFBRLL"
1455 DATA "BFBBBBBLRL"
1456 DATA "BFFFFBFRLR"
1457 DATA "BBFBFBFLRL"
1458 DATA "FBBBBBFRLL"
1459 DATA "BBFFBFFLRR"
1460 DATA "FBFBFFBRLR"
1461 DATA "FFBBBFBLRR"
1462 DATA "FBBFFFBLRR"
1463 DATA "BFBBBFBLRL"
1464 DATA "BFFFBFBLLR"
1465 DATA "BBFFBBFRLR"
1466 DATA "BFBBFFFLRR"
1467 DATA "BFFBFBBRLR"
1468 DATA "FFBBFFFLLL"
1469 DATA "FBBBFBFLLL"
1470 DATA "BFBBBBFLRL"
1471 DATA "FFBBBBBRRR"
1472 DATA "FBBFFFBLLL"
1473 DATA "BFBBFBBLLL"
1474 DATA "FBBBBFBRLL"
1475 DATA "FBBFBFFLRL"
1476 DATA "BFFBBFBLLL"
1477 DATA "FBBBFBBRRR"
1478 DATA "BFFBFBFRLL"
1479 DATA "BBFFBBBLRL"
1480 DATA "BFBFBFBLRL"
1481 DATA "FBBBFFFLLL"
1482 DATA "BFFFBFFRRL"
1483 DATA "FFBFFBFLLR"
1484 DATA "BFFBFBBLRR"
1485 DATA "BFFFFFBRLL"
1486 DATA "BFBFBBBLRR"
1487 DATA "FFFBBBBLRL"
1488 DATA "BFBBBBBRRR"
1489 DATA "BFFBFBFRLR"
1490 DATA "BFFBBFFLLL"
1491 DATA "BBFBBFFRRL"
1492 DATA "FBBBFFFLRL"
1493 DATA "FBFFBFFRLL"
1494 DATA "FBFFFBFLRR"
1495 DATA "FBBBFBBLLR"
1496 DATA "BBFFFFBLLL"
1497 DATA "BFFFBBFRLR"
1498 DATA "BBFBFBBLRR"
1499 DATA "FBBFBBBRLR"
1500 DATA "FBFFFBBRRL"
1501 DATA "FBBBFFBLLR"
1502 DATA "FFBBBBFLLL"
1503 DATA "BFFBFFBLLL"
1504 DATA "FFBFBFBLLR"
1505 DATA "BBFFBBBLLL"
1506 DATA "BBFFFFFRLL"
1507 DATA "BBFFFBBLRR"
1508 DATA "FFFBBBFRRL"
1509 DATA "BFFBFBBRRR"
1510 DATA "BFFBBFFRLL"
1511 DATA "FFFBBBFLLL"
1512 DATA "FBFFFFFRRR"
1513 DATA "FBBFBBFLRR"
1514 DATA "FFBBFBFRLL"
1515 DATA "FFFBFBFRLL"
1516 DATA "FBBBFBBRLL"
1517 DATA "BBFFBFFLRL"
1518 DATA "FFFBBBBLLR"
1519 DATA "BFFBFBBRLL"
1520 DATA "BFBFFBFRLR"
1521 DATA "BFFBFBBLLR"
1522 DATA "BFFFBBFLLL"
1523 DATA "BFFFFBFLRL"
1524 DATA "FBFBBBBRRR"
1525 DATA "FFBBBBFLRL"
1526 DATA "BBFFFFBRLL"
1527 DATA "FFBBBFFRRR"
1528 DATA "FBFBBFBLLR"
1529 DATA "FBBBFBBLRR"
1530 DATA "BBBFFFFLLL"
1531 DATA "BBFBBFBLLR"
1532 DATA "BFBBFFBRLR"
1533 DATA "BFBBBBFRRL"
1534 DATA "FBBFFBBLRL"
1535 DATA "BFFBFBFRRR"
1536 DATA "BFBFBBFLRL"
1537 DATA "FBFBBFFRLR"
1538 DATA "FBBFBBFRLL"
1539 DATA "FFBBFBFLRR"
1540 DATA "BFBBFBFRRL"
1541 DATA "BFBBBFFLRR"
1542 DATA "BFBBFBBRRR"
1543 DATA "FFBBBBBRLR"
1544 DATA "BFBBFBFRLR"
1545 DATA "FFBFFBFRRR"
1546 DATA "BFFFFBBLRL"
1547 DATA "BFFBBFBLLR"
1548 DATA "BFFBBBFLRR"
1549 DATA "FFBFFFBRLL"
1550 DATA "BBBFFFBLLL"
1551 DATA "FBBFBBFLLL"
1552 DATA "BBFFFBFRRL"
1553 DATA "FBBBFFFLRR"
1554 DATA "FBBFBFBRRR"
1555 DATA "FBBBFFFRRL"
1556 DATA "BFFBBBFLLL"
1557 DATA "BFBBFBBLRL"
1558 DATA "FFBBFBBLLL"
1559 DATA "BFBBBBFLLR"
1560 DATA "FBFFFFBRRR"
1561 DATA "FBBFFFFLRR"
1562 DATA "FFFBFBBLLR"
1563 DATA "BFBBFFFLRL"
1564 DATA "FFBFFBBLRR"
1565 DATA "FFBFBFBRLL"
1566 DATA "FFBFFFBLRL"
1567 DATA "FFFBBFFRRR"
1568 DATA "FBBFBFFLRR"
1569 DATA "FBFFBFBRRL"
1570 DATA "BBFFBBFLLR"
1571 DATA "FFBFFFBRRL"
1572 DATA "BBFFBFFRRR"
1573 DATA "FFBBBFBLRL"
1574 DATA "FBBFFBFLRL"
1575 DATA "FBFBBBFRLL"
1576 DATA "BFFFFBBLLL"
1577 DATA "BFFBBBBRRR"
1578 DATA "FFBFBFBRRR"
1579 DATA "FFBFBBBLLL"
1580 DATA "BBFFBFFLLL"
1581 DATA "BFFBFBBRRL"
1582 DATA "FFBBFBFLRL"
1583 DATA "FFBBFFFRLR"
1584 DATA "BFBFBFFLLR"
1585 DATA "BFBFBBFRLR"
1586 DATA "FFFBFBBLRR"
1587 DATA "BFFBFFBRRR"
1588 DATA "BFFBFFFLRR"
1589 DATA "FFBFFFBRRR"
1590 DATA "FBBBFFBLLL"
1591 DATA "FBFFBFBLLR"
1592 DATA "BBFBFFBLLL"
1593 DATA "FFBFBBFRLL"
1594 DATA "BBFFFFBRRL"
1595 DATA "FBFBFBBLLR"
1596 DATA "FBFBFBBLLL"
1597 DATA "FBBFBFFRRR"
1598 DATA "FBFBBFBLLL"
1599 DATA "BBFFBBFLRR"
1600 DATA "BBFBFFBLRL"
1601 DATA "FBFBFBBLRL"
1602 DATA "BFFFFFBLLL"
1603 DATA "BFFBBBFLLR"
1604 DATA "BFBBBBBLRR"
1605 DATA "FBFBBFBRLL"
1606 DATA "FBFFFFBLLR"
1607 DATA "BBFFBBBLRR"
1608 DATA "FBFFFFFRRL"
1609 DATA "FBFBFBFRLR"
1610 DATA "BFFFBBFRLL"
1611 DATA "BFFBFFBLLR"
1612 DATA "BFBFFFFRRL"
1613 DATA "FFBFFBFRRL"
1614 DATA "FBBFBFFRLL"
1615 DATA "FFBBBFBRLR"
1616 DATA "BFBBBFFLRL"
1617 DATA "FBBBBFBRRL"
1618 DATA "FFFBFBFRRL"
1619 DATA "BBFBBBFRLR"
1620 DATA "BFFBFBFLRL"
1621 DATA "BFFBBFBLRL"
1622 DATA "FBFBFBFRRR"
1623 DATA "FBBFFBBRRL"
1624 DATA "FBFFBFFLRL"
1625 DATA "BFBFFFFRRR"
1626 DATA "FFBBFBFLLL"
1627 DATA "FFFBBFBRLR"
1628 DATA "BBFFBBBLLR"
1629 DATA "BBFBFBFLRR"
1630 DATA "BFFFFFBLLR"
1631 DATA "BBFBFBBRLR"
1632 DATA "FBFBFFFLRR"
1633 DATA "BFBFFBFLLL"
1634 DATA "BBFBBFFLLL"
1635 DATA "FBBBFBBRRL"
1636 DATA "FBFBFBBRLR"
1637 DATA "FFBBBFFLLR"
1638 DATA "BFFFFFBLRR"
1639 DATA "BBFBFFFLRR"
1640 DATA "FFBFBBBRLL"
1641 DATA "BBFBFBFLLL"
1642 DATA "BBFBBFFRRR"
1643 DATA "BBFBBFFLRR"
1644 DATA "FFBFBBBRRR"
1645 DATA "FBFBFBFRRL"
1646 DATA "BFFFFFFLRR"
1647 DATA "BFBFBBFRRR"
1648 DATA "FFFBBFFLLL"
1649 DATA "FBFBBFFLRL"
1650 DATA "FBFFBBBLLR"
1651 DATA "BFFBBBBLLL"
1652 DATA "FFBFFBFLLL"
1653 DATA "FBFBFFBRRR"
1654 DATA "BFBBBFFRRR"
1655 DATA "BBBFFFFRRR"
1656 DATA "BFBFBFBLLL"
1657 DATA "FFBFBBBLRR"
1658 DATA "BBFFBBBRLR"
1659 DATA "FFBBFFBLRR"
1660 DATA "BFBFBBBRRL"
1661 DATA "FFBBFFFLRR"
1662 DATA "FFFBBBBRRL"
1663 DATA "BFBBFBFLLL"
1664 DATA "FBBBBFBLRR"
1665 DATA "BBFBFFFRRL"
1666 DATA "FFBBFBFLLR"
1667 DATA "BFFFFBBRRR"
1668 DATA "BBFFBBFLLL"
1669 DATA "FBFFBFBLLL"
1670 DATA "BFBBFFFLLL"
1671 DATA "FFBFFFBLLR"
1672 DATA "FBFFFBBLLR"
1673 DATA "BFBBBFFRRL"
1674 DATA "FBFBBBFRLR"
1675 DATA "FFBFFBFLRR"
1676 DATA "BBFFFFFLLR"
1677 DATA "FBBFBFFLLR"
1678 DATA "BBFFBFBRRL"
1679 DATA "BFBFBFFLRR"
1680 DATA "BBFBFFFLLL"
1681 DATA "BBFFFBBRLR"
1682 DATA "BFBFFBBRLL"
1683 DATA "BFBFBFBRLR"
1684 DATA "BBFBBBBRLL"
1685 DATA "BFBBFBBRLL"
1686 DATA "FFBFBBBLRL"
1687 DATA "BFBFBBBRLL"
1688 DATA "FBBFBFBLRL"
1689 DATA "FBFFFBBLRR"
1690 DATA "BBFFBBBRRL"
1691 DATA "BFBFFBFRRR"
1692 DATA "BBBFFFBLRR"
1693 DATA "FFBBBFFRRL"
1694 DATA "FBBFFBFRRL"
1695 DATA "BFFFBFFRLR"
1696 DATA "FBFFBFFRLR"
1697 DATA "FFFBFBBLLL"
1698 DATA "FFBFBFFRRR"
1699 DATA "BBFFBFFRRL"
1700 DATA "FFFBFBFLRL"
1701 DATA "BFFBBFFRRR"
1702 DATA "FFBBBFFLRL"
1703 DATA "FBFBFFBLLR"
1704 DATA "FBFFBBFRRL"
1705 DATA "BFFBBFFRLR"
1706 DATA "BFFBFFBRLR"
1707 DATA "BFFBFFFLRL"
1708 DATA "FBFFFFFLRR"
1709 DATA "FFFBBBBLRR"
1710 DATA "BFBBFFBLLR"
1711 DATA "BFBBFBBRLR"
1712 DATA "BFFFFBFRLL"
1713 DATA "BBFFFBFRLR"
1714 DATA "FBFBFFFRRR"
1715 DATA "FFFBBFFLRR"
1716 DATA "FBBBBFBLLR"
1717 DATA "FBBBBBFRLR"
1718 DATA "FFBFBFBLLL"
1719 DATA "FBFBBFFLLL"
1720 DATA "BBFBBBBRLR"
1721 DATA "BBFFBBFRRL"
1722 DATA "BBFBBBFRLL"
1723 DATA "BFBBFBFLRL"
1724 DATA "BFBBBFFRLL"
1725 DATA "FBFBFBBRRR"
1726 DATA "FBBBBBBLLL"
1727 DATA "BFBFFBBRRR"
1728 DATA "FBBFFBBRRR"
1729 DATA "BFFFFFBRRL"
1730 DATA "FFBBFFFRRR"
1731 DATA "FFBFFBBLLL"
1732 DATA "BBBFFBFLRR"
1733 DATA "BBFBBBBRRR"
1734 DATA "FBFBFFFRLL"
1735 DATA "FBBBFBFRRR"
1736 DATA "FBBBBFFRRL"
1737 DATA "BFFFFFFLRL"
1738 DATA "FBBBBBFLRR"
1739 DATA "BFFBBBFLRL"
1740 DATA "BFBBFFFRLR"
1741 DATA "FFBFFFFRLR"
1742 DATA "FFBBBFFRLR"
1743 DATA "BFBBFBBRRL"
1744 DATA "FFBFBFFLLR"
1745 DATA "BBBFFFFRLR"
1746 DATA "BBFFFFFRLR"
1747 DATA "FBBFFBBLLR"
1748 DATA "BFBFFBFRRL"
1749 DATA "BFFFBFFLRR"
1750 DATA "FFBFBFBRLR"
1751 DATA "BFFFBFFRRR"
1752 DATA "BFFBBBBRRL"
1753 DATA "FFBBBBBLLL"
1754 DATA "BFFBBBFRLR"
1755 DATA "FBFFFBFRLR"
1756 DATA "FFBFBFFRLR"
1757 DATA "BFBBBFBLLL"
1758 DATA "FBFBBFBRRL"
1759 DATA "BBFBFBBLRL"
1760 DATA "BFBBFBFRLL"
1761 DATA "BFBBBFFLLL"
1762 DATA "FBBFBBBLLR"
1763 DATA "FBFFFFBRRL"
1764 DATA "FBBBBBBRRR"
1765 DATA "FBFBBBBLRL"
1766 DATA "FFFBFBBRRR"
1767 DATA "FFBFBFFLRL"
1768 DATA "FBFFBBFLLR"
1769 DATA "FFBBFBBLRR"
1770 DATA "BBFBFBBLLR"
1771 DATA "FFFBFBFLRR"
1772 DATA "BBBFFFBRRR"
1773 DATA "FFBFFBBRRR"
1774 DATA "FFBFFBBRRL"
1775 DATA "FBBFFFFLRL"
1776 DATA "FBFBBFFRRR"
1777 DATA "BFBBFFFRLL"
1778 DATA "FFFBBBFLLR"
1779 DATA "FBBBBFBLLL"
1780 DATA "BBFBBBBLRL"
1781 DATA "BBFBFFBRRR"
1782 DATA "BFFBBBBLRR"
1783 DATA "FBBBBFBRRR"
1784 DATA "BFBFBFFRRR"
1785 DATA "BFFBBFBRLL"
1786 DATA "FFBBBFBLLL"
1787 DATA "BFBFFBFLRL"
1788 DATA "BFFFBBFLRR"
1789 DATA "FBBBBFBLRL"
1790 DATA "FBBFBFFRRL"
1791 DATA "FFFBBFFRLL"
1792 DATA "FBFFFBBLRL"
1793 DATA "FBBFFFBRLR"
1794 DATA "FBBFBFBRRL"
1795 DATA "FFBFFFFRRL"
1796 DATA "FBFBBFFLLR"
1797 DATA "FBFFBBFLLL"
1798 DATA "FBBFBFBLLR"
1799 DATA "BFFBBBFRRL"
1800 DATA "FFBBFBBLLR"
1801 DATA "BFBBFBFRRR"
1802 DATA "BFFFFFFRLR"
1803 DATA "FBBBFFFRLL"
1804 DATA "FFBFFBFLRL"
1805 DATA "FFBFFFFLRL"
1806 DATA "BBBFFFBRLR"
1807 DATA "BFFBFFBRLL"
1808 DATA "BBBFFBFLRL"
1809 DATA "FBBBFFBRRL"
1810 DATA "BFBFBFBRRR"
1811 DATA "FFFBBBFRLR"
1812 DATA "BBFFBFBLLR"
1813 DATA "BFBBBBFRLL"
1814 DATA "BBFBFFBLLR"
1815 DATA "FFBBFBBRRR"
1816 DATA "FBBBFBBLRL"
1817 DATA "BFBBBBFRRR"
1818 DATA "BFBFBFBRLL"
1819 DATA "BFBBFFFRRL"
1820 DATA "FFBFBFFRLL"
1821 DATA "FBBFBBFRLR"
1822 DATA "BFFBFFFRLL"
1823 DATA "BFBBBFBLRR"
1824 DATA "BBFFFFFRRR"
1825 DATA "FBFBBBBRLR"
1826 DATA "FFBBFBFRLR"
1827 DATA "FFBFFFFLLL"
1828 DATA "FBBFFBFRRR"
1829 DATA "FFBFFBFRLL"
1830 DATA "FBBFFBBLRR"
1831 DATA "FBBBFBFRLR"
1832 DATA "BFBBBBFLRR"
1833 DATA "FFBFBBBLLR"
1834 DATA "BFFFBBFRRR"
1835 DATA "FBBBFFBRLL"
1836 DATA "FBFBBBFLRR"
1837 DATA "BBFFBFFRLL"
1838 DATA "FBFFFFBRLL"
1839 DATA "FBFFBFBLRL"