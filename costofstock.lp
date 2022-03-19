\ Model costofstock
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  2 Instock[1] + 2 Instock[2] + 2 Instock[3] + 2 Instock[4] + 2 Instock[5]
   + 2 Instock[6] + 2 Instock[7] + 2 Instock[8] + 2 Instock[9]
   + 2 Instock[10] + Shipmentware[1] + Shipmentware[2] + Shipmentware[3]
   + Shipmentware[4] + Shipmentware[5] + Shipmentware[6] + Shipmentware[7]
   + Shipmentware[8] + Shipmentware[9] + Shipmentware[10] + [
   6 x[1] * y[0,1] + 2 x[1] * y[1,1] + x[1] * y[2,1] + 6 x[2] * y[0,2]
   + 2 x[2] * y[1,2] + x[2] * y[2,2] + 6 x[3] * y[0,3] + 2 x[3] * y[1,3]
   + x[3] * y[2,3] + 6 x[4] * y[0,4] + 2 x[4] * y[1,4] + x[4] * y[2,4]
   + 6 x[5] * y[0,5] + 2 x[5] * y[1,5] + x[5] * y[2,5] + 6 x[6] * y[0,6]
   + 2 x[6] * y[1,6] + x[6] * y[2,6] + 6 x[7] * y[0,7] + 2 x[7] * y[1,7]
   + x[7] * y[2,7] + 6 x[8] * y[0,8] + 2 x[8] * y[1,8] + x[8] * y[2,8]
   + 6 x[9] * y[0,9] + 2 x[9] * y[1,9] + x[9] * y[2,9] + 6 x[10] * y[0,10]
   + 2 x[10] * y[1,10] + x[10] * y[2,10] ] / 2 
Subject To
 R0: Instock[0] = 20
 R1: Shipmentware[0] = 0
 R2: x[1] + Instock[0] + Shipmentware[0] + insup[0] >= 30
 R3: x[2] + Instock[1] + Shipmentware[1] + insup[1] >= 0
 R4: x[3] + Instock[2] + Shipmentware[2] + insup[2] >= 0
 R5: x[4] + Instock[3] + Shipmentware[3] + insup[3] >= 0
 R6: x[5] + Instock[4] + Shipmentware[4] + insup[4] >= 6
 R7: x[6] + Instock[5] + Shipmentware[5] + insup[5] >= 4
 R8: x[7] + Instock[6] + Shipmentware[6] + insup[6] >= 4
 R9: x[8] + Instock[7] + Shipmentware[7] + insup[7] >= 4
 R10: x[9] + Instock[8] + Shipmentware[8] + insup[8] >= 4
 R11: x[10] + Instock[9] + Shipmentware[9] + insup[9] >= 1
 R12: x[1] + Instock[0] - Instock[1] + Shipmentware[0] - Shipmentware[1]
   - insup[1] = 30
 R13: x[2] + Instock[1] - Instock[2] + Shipmentware[1] - Shipmentware[2]
   - insup[2] = 0
 R14: x[3] + Instock[2] - Instock[3] + Shipmentware[2] - Shipmentware[3]
   - insup[3] = 0
 R15: x[4] + Instock[3] - Instock[4] + Shipmentware[3] - Shipmentware[4]
   - insup[4] = 0
 R16: x[5] + Instock[4] - Instock[5] + Shipmentware[4] - Shipmentware[5]
   - insup[5] = 6
 R17: x[6] + Instock[5] - Instock[6] + Shipmentware[5] - Shipmentware[6]
   - insup[6] = 4
 R18: x[7] + Instock[6] - Instock[7] + Shipmentware[6] - Shipmentware[7]
   - insup[7] = 4
 R19: x[8] + Instock[7] - Instock[8] + Shipmentware[7] - Shipmentware[8]
   - insup[8] = 4
 R20: x[9] + Instock[8] - Instock[9] + Shipmentware[8] - Shipmentware[9]
   - insup[9] = 4
 R21: x[10] + Instock[9] - Instock[10] + Shipmentware[9] - Shipmentware[10]
   - insup[10] = 1
 R22: x[0] - 20 y[0,0] - 30 y[1,0] - 300 y[2,0] <= 0
 R23: x[1] - 20 y[0,1] - 30 y[1,1] - 300 y[2,1] <= 0
 R24: x[2] - 20 y[0,2] - 30 y[1,2] - 300 y[2,2] <= 0
 R25: x[3] - 20 y[0,3] - 30 y[1,3] - 300 y[2,3] <= 0
 R26: x[4] - 20 y[0,4] - 30 y[1,4] - 300 y[2,4] <= 0
 R27: x[5] - 20 y[0,5] - 30 y[1,5] - 300 y[2,5] <= 0
 R28: x[6] - 20 y[0,6] - 30 y[1,6] - 300 y[2,6] <= 0
 R29: x[7] - 20 y[0,7] - 30 y[1,7] - 300 y[2,7] <= 0
 R30: x[8] - 20 y[0,8] - 30 y[1,8] - 300 y[2,8] <= 0
 R31: x[9] - 20 y[0,9] - 30 y[1,9] - 300 y[2,9] <= 0
 R32: x[10] - 20 y[0,10] - 30 y[1,10] - 300 y[2,10] <= 0
 R33: y[0,0] + y[1,0] + y[2,0] <= 1
 R34: y[0,1] + y[1,1] + y[2,1] <= 1
 R35: y[0,2] + y[1,2] + y[2,2] <= 1
 R36: y[0,3] + y[1,3] + y[2,3] <= 1
 R37: y[0,4] + y[1,4] + y[2,4] <= 1
 R38: y[0,5] + y[1,5] + y[2,5] <= 1
 R39: y[0,6] + y[1,6] + y[2,6] <= 1
 R40: y[0,7] + y[1,7] + y[2,7] <= 1
 R41: y[0,8] + y[1,8] + y[2,8] <= 1
 R42: y[0,9] + y[1,9] + y[2,9] <= 1
 R43: y[0,10] + y[1,10] + y[2,10] <= 1
 R44: Instock[1] + Shipmentware[1] >= 4.5
 R45: Instock[2] + Shipmentware[2] >= 0
 R46: Instock[3] + Shipmentware[3] >= 0
 R47: Instock[4] + Shipmentware[4] >= 0
 R48: Instock[5] + Shipmentware[5] >= 0.9
 R49: Instock[6] + Shipmentware[6] >= 0.6
 R50: Instock[7] + Shipmentware[7] >= 0.6
 R51: Instock[8] + Shipmentware[8] >= 0.6
 R52: Instock[9] + Shipmentware[9] >= 0.6
 R53: Instock[10] + Shipmentware[10] >= 0.15
 R54: x[0] - 5 y[0,0] - 5 y[1,0] - 5 y[2,0] >= 0
 R55: x[1] - 5 y[0,1] - 5 y[1,1] - 5 y[2,1] >= 0
 R56: x[2] - 5 y[0,2] - 5 y[1,2] - 5 y[2,2] >= 0
 R57: x[3] - 5 y[0,3] - 5 y[1,3] - 5 y[2,3] >= 0
 R58: x[4] - 5 y[0,4] - 5 y[1,4] - 5 y[2,4] >= 0
 R59: x[5] - 5 y[0,5] - 5 y[1,5] - 5 y[2,5] >= 0
 R60: x[6] - 5 y[0,6] - 5 y[1,6] - 5 y[2,6] >= 0
 R61: x[7] - 5 y[0,7] - 5 y[1,7] - 5 y[2,7] >= 0
 R62: x[8] - 5 y[0,8] - 5 y[1,8] - 5 y[2,8] >= 0
 R63: x[9] - 5 y[0,9] - 5 y[1,9] - 5 y[2,9] >= 0
 R64: x[10] - 5 y[0,10] - 5 y[1,10] - 5 y[2,10] >= 0
 R65: Shipmentware[1] - 300 z[1] <= 0
 R66: Shipmentware[2] - 300 z[2] <= 0
 R67: Shipmentware[3] - 300 z[3] <= 0
 R68: Shipmentware[4] - 300 z[4] <= 0
 R69: Shipmentware[5] - 300 z[5] <= 0
 R70: Shipmentware[6] - 300 z[6] <= 0
 R71: Shipmentware[7] - 300 z[7] <= 0
 R72: Shipmentware[8] - 300 z[8] <= 0
 R73: Shipmentware[9] - 300 z[9] <= 0
 R74: Shipmentware[10] - 300 z[10] <= 0
 R75: Shipmentware[0] - 5 z[0] >= 0
 R76: Shipmentware[1] - 5 z[1] >= 0
 R77: Shipmentware[2] - 5 z[2] >= 0
 R78: Shipmentware[3] - 5 z[3] >= 0
 R79: Shipmentware[4] - 5 z[4] >= 0
 R80: Shipmentware[5] - 5 z[5] >= 0
 R81: Shipmentware[6] - 5 z[6] >= 0
 R82: Shipmentware[7] - 5 z[7] >= 0
 R83: Shipmentware[8] - 5 z[8] >= 0
 R84: Shipmentware[9] - 5 z[9] >= 0
 R85: Shipmentware[10] - 5 z[10] >= 0
 R86: insup[0] <= 4
 R87: insup[1] <= 4
 R88: insup[2] <= 4
 R89: insup[3] <= 4
 R90: insup[4] <= 4
 R91: insup[5] <= 4
 R92: insup[6] <= 4
 R93: insup[7] <= 4
 R94: insup[8] <= 4
 R95: insup[9] <= 4
 R96: insup[10] <= 4
Bounds
Binaries
 y[0,0] y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[0,6] y[0,7] y[0,8] y[0,9]
 y[0,10] y[1,0] y[1,1] y[1,2] y[1,3] y[1,4] y[1,5] y[1,6] y[1,7] y[1,8]
 y[1,9] y[1,10] y[2,0] y[2,1] y[2,2] y[2,3] y[2,4] y[2,5] y[2,6] y[2,7]
 y[2,8] y[2,9] y[2,10] z[0] z[1] z[2] z[3] z[4] z[5] z[6] z[7] z[8] z[9]
 z[10]
End
