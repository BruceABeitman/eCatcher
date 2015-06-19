.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"
.field private final decodeMiddleCounters:[I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I
return-void
.end method
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
.registers 16
iget-object v3, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I
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
const/4 v9, 0x0
:goto_1a
const/4 v10, 0x4
if-ge v9, v10, :cond_39
if-ge v8, v4, :cond_39
sget-object v10, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I
invoke-static {p1, v3, v8, v10}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
move-result v1
add-int/lit8 v10, v1, 0x30
int-to-char v10, v10
invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-object v0, v3
array-length v6, v0
const/4 v5, 0x0
:goto_2e
if-ge v5, v6, :cond_36
aget v2, v0, v5
add-int/2addr v8, v2
add-int/lit8 v5, v5, 0x1
goto :goto_2e
:cond_36
add-int/lit8 v9, v9, 0x1
goto :goto_1a
:cond_39
const/4 v10, 0x1
sget-object v11, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I
invoke-static {p1, v8, v10, v11}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
move-result-object v7
const/4 v10, 0x1
aget v8, v7, v10
const/4 v9, 0x0
:goto_44
const/4 v10, 0x4
if-ge v9, v10, :cond_63
if-ge v8, v4, :cond_63
sget-object v10, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I
invoke-static {p1, v3, v8, v10}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
move-result v1
add-int/lit8 v10, v1, 0x30
int-to-char v10, v10
invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-object v0, v3
array-length v6, v0
const/4 v5, 0x0
:goto_58
if-ge v5, v6, :cond_60
aget v2, v0, v5
add-int/2addr v8, v2
add-int/lit8 v5, v5, 0x1
goto :goto_58
:cond_60
add-int/lit8 v9, v9, 0x1
goto :goto_44
:cond_63
return v8
.end method
.method  getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.registers 2
sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;
return-object v0
.end method