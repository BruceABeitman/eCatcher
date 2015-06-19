.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCEReader.java"
.field private static final MIDDLE_END_PATTERN:[I
.field private static final NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I
.field private final decodeMiddleCounters:[I
.method static constructor <clinit>()V
.registers 4
const/16 v3, 0xa
const/4 v0, 0x6
new-array v0, v0, [I
fill-array-data v0, :array_20
sput-object v0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I
const/4 v0, 0x2
new-array v0, v0, [[I
const/4 v1, 0x0
new-array v2, v3, [I
fill-array-data v2, :array_30
aput-object v2, v0, v1
const/4 v1, 0x1
new-array v2, v3, [I
fill-array-data v2, :array_48
aput-object v2, v0, v1
sput-object v0, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I
return-void
:array_20
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_48
.array-data 0x4
0x7t 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0xet 0x0t 0x0t 0x0t
0x13t 0x0t 0x0t 0x0t
0x19t 0x0t 0x0t 0x0t
0x1ct 0x0t 0x0t 0x0t
0x15t 0x0t 0x0t 0x0t
0x16t 0x0t 0x0t 0x0t
0x1at 0x0t 0x0t 0x0t
.end array-data
:array_30
.array-data 0x4
0x38t 0x0t 0x0t 0x0t
0x34t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t
0x31t 0x0t 0x0t 0x0t
0x2ct 0x0t 0x0t 0x0t
0x26t 0x0t 0x0t 0x0t
0x23t 0x0t 0x0t 0x0t
0x2at 0x0t 0x0t 0x0t
0x29t 0x0t 0x0t 0x0t
0x25t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I
return-void
.end method
.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/4 v9, 0x5
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x0
const/4 v3, 0x6
new-array v2, v3, [C
const/4 v3, 0x1
const/4 v4, 0x7
invoke-virtual {p0, v3, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V
new-instance v1, Ljava/lang/StringBuilder;
const/16 v3, 0xc
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
aget-char v0, v2, v9
packed-switch v0, :pswitch_data_66
invoke-virtual {v1, v2, v5, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
const-string/jumbo v3, "0000"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_2c
const/4 v3, 0x7
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
:pswitch_39
invoke-virtual {v1, v2, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string/jumbo v3, "0000"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
goto :goto_2c
:pswitch_49
invoke-virtual {v1, v2, v5, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
const-string/jumbo v3, "00000"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
goto :goto_2c
:pswitch_56
invoke-virtual {v1, v2, v5, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
const-string/jumbo v3, "00000"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aget-char v3, v2, v8
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_2c
nop
:pswitch_data_66
.packed-switch 0x30
:pswitch_39
:pswitch_39
:pswitch_39
:pswitch_49
:pswitch_56
.end packed-switch
.end method
.method private static determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
.registers 6
const/4 v1, 0x0
:goto_1
const/4 v2, 0x1
if-gt v1, v2, :cond_25
const/4 v0, 0x0
:goto_5
const/16 v2, 0xa
if-ge v0, v2, :cond_22
sget-object v2, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I
aget-object v2, v2, v1
aget v2, v2, v0
if-ne p1, v2, :cond_1f
const/4 v2, 0x0
add-int/lit8 v3, v1, 0x30
int-to-char v3, v3
invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;
add-int/lit8 v2, v0, 0x30
int-to-char v2, v2
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
return-void
:cond_1f
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_22
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_25
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v2
throw v2
.end method
.method protected checkChecksum(Ljava/lang/String;)Z
.registers 3
invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method protected decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
.registers 5
const/4 v0, 0x1
sget-object v1, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I
invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
move-result-object v0
return-object v0
.end method
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
.registers 16
iget-object v3, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I
const/4 v10, 0x0
const/4 v11, 0x0
aput v11, v3, v10
const/4 v10, 0x1
const/4 v11, 0x0
aput v11, v3, v10
const/4 v10, 0x2
const/4 v11, 0x0
aput v11, v3, v10
const/4 v10, 0x3
const/4 v11, 0x0
aput v11, v3, v10
invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v4
const/4 v10, 0x1
aget v8, p2, v10
const/4 v7, 0x0
const/4 v9, 0x0
:goto_1b
const/4 v10, 0x6
if-ge v9, v10, :cond_45
if-ge v8, v4, :cond_45
sget-object v10, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I
invoke-static {p1, v3, v8, v10}, Lcom/google/zxing/oned/UPCEReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
move-result v1
rem-int/lit8 v10, v1, 0xa
add-int/lit8 v10, v10, 0x30
int-to-char v10, v10
invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-object v0, v3
array-length v6, v0
const/4 v5, 0x0
:goto_31
if-ge v5, v6, :cond_39
aget v2, v0, v5
add-int/2addr v8, v2
add-int/lit8 v5, v5, 0x1
goto :goto_31
:cond_39
const/16 v10, 0xa
if-lt v1, v10, :cond_42
const/4 v10, 0x1
rsub-int/lit8 v11, v9, 0x5
shl-int/2addr v10, v11
or-int/2addr v7, v10
:cond_42
add-int/lit8 v9, v9, 0x1
goto :goto_1b
:cond_45
invoke-static {p3, v7}, Lcom/google/zxing/oned/UPCEReader;->determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
return v8
.end method
.method  getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.registers 2
sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;
return-object v0
.end method