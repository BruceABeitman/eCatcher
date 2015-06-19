.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"
.field static final L_AND_G_PATTERNS:[[I = null
.field static final L_PATTERNS:[[I = null
.field private static final MAX_AVG_VARIANCE:I = 0x7a
.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xb3
.field static final MIDDLE_PATTERN:[I
.field static final START_END_PATTERN:[I
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;
.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;
.method static constructor <clinit>()V
.registers 12
const/16 v11, 0xa
const/4 v10, 0x5
const/4 v9, 0x3
const/4 v8, 0x0
const/4 v7, 0x4
new-array v4, v9, [I
fill-array-data v4, :array_9a
sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I
new-array v4, v10, [I
fill-array-data v4, :array_a4
sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I
new-array v4, v11, [[I
new-array v5, v7, [I
fill-array-data v5, :array_b2
aput-object v5, v4, v8
const/4 v5, 0x1
new-array v6, v7, [I
fill-array-data v6, :array_be
aput-object v6, v4, v5
const/4 v5, 0x2
new-array v6, v7, [I
fill-array-data v6, :array_ca
aput-object v6, v4, v5
new-array v5, v7, [I
fill-array-data v5, :array_d6
aput-object v5, v4, v9
new-array v5, v7, [I
fill-array-data v5, :array_e2
aput-object v5, v4, v7
new-array v5, v7, [I
fill-array-data v5, :array_ee
aput-object v5, v4, v10
const/4 v5, 0x6
new-array v6, v7, [I
fill-array-data v6, :array_fa
aput-object v6, v4, v5
const/4 v5, 0x7
new-array v6, v7, [I
fill-array-data v6, :array_106
aput-object v6, v4, v5
const/16 v5, 0x8
new-array v6, v7, [I
fill-array-data v6, :array_112
aput-object v6, v4, v5
const/16 v5, 0x9
new-array v6, v7, [I
fill-array-data v6, :array_11e
aput-object v6, v4, v5
sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I
const/16 v4, 0x14
new-array v4, v4, [[I
sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I
sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I
sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I
invoke-static {v4, v8, v5, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v0, 0xa
:goto_75
const/16 v4, 0x14
if-ge v0, v4, :cond_98
sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I
add-int/lit8 v5, v0, -0xa
aget-object v3, v4, v5
array-length v4, v3
new-array v2, v4, [I
const/4 v1, 0x0
:goto_83
array-length v4, v3
if-ge v1, v4, :cond_91
array-length v4, v3
sub-int/2addr v4, v1
add-int/lit8 v4, v4, -0x1
aget v4, v3, v4
aput v4, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_83
:cond_91
sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I
aput-object v2, v4, v0
add-int/lit8 v0, v0, 0x1
goto :goto_75
:cond_98
return-void
nop
:array_106
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_be
.array-data 0x4
0x2t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_ee
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_ca
.array-data 0x4
0x2t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_112
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_a4
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_e2
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_9a
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_b2
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_fa
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_d6
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_11e
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
.end method
.method protected constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x14
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;
new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;
invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V
iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;
new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;
invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V
iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;
return-void
.end method
.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
.registers 8
const/16 v6, 0x9
const/4 v4, 0x0
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v2
if-nez v2, :cond_a
:goto_9
:cond_9
return v4
:cond_a
const/4 v3, 0x0
add-int/lit8 v1, v2, -0x2
:goto_d
if-ltz v1, :cond_22
invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
add-int/lit8 v0, v5, -0x30
if-ltz v0, :cond_19
if-le v0, v6, :cond_1e
:cond_19
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v4
throw v4
:cond_1e
add-int/2addr v3, v0
add-int/lit8 v1, v1, -0x2
goto :goto_d
:cond_22
mul-int/lit8 v3, v3, 0x3
add-int/lit8 v1, v2, -0x1
:goto_26
if-ltz v1, :cond_3b
invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
add-int/lit8 v0, v5, -0x30
if-ltz v0, :cond_32
if-le v0, v6, :cond_37
:cond_32
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v4
throw v4
:cond_37
add-int/2addr v3, v0
add-int/lit8 v1, v1, -0x2
goto :goto_26
:cond_3b
rem-int/lit8 v5, v3, 0xa
if-nez v5, :cond_9
const/4 v4, 0x1
goto :goto_9
.end method
.method static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
.registers 11
invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/UPCEANReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
const/16 v1, 0x7a
const/4 v0, -0x1
array-length v3, p3
const/4 v2, 0x0
:goto_8
if-ge v2, v3, :cond_19
aget-object v4, p3, v2
const/16 v6, 0xb3
invoke-static {p1, v4, v6}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[II)I
move-result v5
if-ge v5, v1, :cond_16
move v1, v5
move v0, v2
:cond_16
add-int/lit8 v2, v2, 0x1
goto :goto_8
:cond_19
if-ltz v0, :cond_1c
return v0
:cond_1c
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v6
throw v6
.end method
.method static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
.registers 5
array-length v0, p3
new-array v0, v0, [I
invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
move-result-object v0
return-object v0
.end method
.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
.registers 16
const/4 v10, 0x2
const/4 v6, 0x1
const/4 v7, 0x0
array-length v2, p3
invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v4
move v1, p2
if-eqz p2, :cond_24
invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I
move-result p1
:goto_f
const/4 v0, 0x0
move v3, p1
move v5, p1
:goto_12
if-ge v5, v4, :cond_5e
invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v8
xor-int/2addr v8, v1
if-eqz v8, :cond_29
aget v8, p4, v0
add-int/lit8 v8, v8, 0x1
aput v8, p4, v0
:goto_21
add-int/lit8 v5, v5, 0x1
goto :goto_12
:cond_24
invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I
move-result p1
goto :goto_f
:cond_29
add-int/lit8 v8, v2, -0x1
if-ne v0, v8, :cond_59
const/16 v8, 0xb3
invoke-static {p4, p3, v8}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[II)I
move-result v8
const/16 v9, 0x7a
if-ge v8, v9, :cond_3e
new-array v8, v10, [I
aput v3, v8, v7
aput v5, v8, v6
return-object v8
:cond_3e
aget v8, p4, v7
aget v9, p4, v6
add-int/2addr v8, v9
add-int/2addr v3, v8
add-int/lit8 v8, v2, -0x2
invoke-static {p4, v10, p4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v8, v2, -0x2
aput v7, p4, v8
add-int/lit8 v8, v2, -0x1
aput v7, p4, v8
add-int/lit8 v0, v0, -0x1
:goto_53
aput v6, p4, v0
if-nez v1, :cond_5c
move v1, v6
:goto_58
goto :goto_21
:cond_59
add-int/lit8 v0, v0, 0x1
goto :goto_53
:cond_5c
move v1, v7
goto :goto_58
:cond_5e
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v6
throw v6
.end method
.method static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
.registers 9
const/4 v7, 0x0
const/4 v1, 0x0
const/4 v5, 0x0
const/4 v2, 0x0
sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I
array-length v6, v6
new-array v0, v6, [I
:cond_9
:goto_9
if-nez v1, :cond_27
sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I
array-length v6, v6
invoke-static {v0, v7, v6, v7}, Ljava/util/Arrays;->fill([IIII)V
sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I
invoke-static {p0, v2, v7, v6, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
move-result-object v5
aget v4, v5, v7
const/4 v6, 0x1
aget v2, v5, v6
sub-int v6, v2, v4
sub-int v3, v4, v6
if-ltz v3, :cond_9
invoke-virtual {p0, v3, v4, v7}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z
move-result v1
goto :goto_9
:cond_27
return-object v5
.end method
.method  checkChecksum(Ljava/lang/String;)Z
.registers 3
invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
move-result v0
return v0
.end method
.method  decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
.registers 5
const/4 v0, 0x0
sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I
invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
move-result-object v0
return-object v0
.end method
.method protected abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
.end method
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
.registers 5
invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
move-result-object v0
invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
move-result-object v0
return-object v0
.end method
.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
.registers 34
if-nez p4, :cond_b2
const/16 v20, 0x0
:goto_4
if-eqz v20, :cond_2a
new-instance v24, Lcom/google/zxing/ResultPoint;
const/16 v25, 0x0
aget v25, p3, v25
const/16 v26, 0x1
aget v26, p3, v26
add-int v25, v25, v26
move/from16 v0, v25
int-to-float v0, v0
move/from16 v25, v0
const/high16 v26, 0x4000
div-float v25, v25, v26
move/from16 v0, p1
int-to-float v0, v0
move/from16 v26, v0
invoke-direct/range {v24 .. v26}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
move-object/from16 v0, v20
move-object/from16 v1, v24
invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
:cond_2a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;
move-object/from16 v19, v0
const/16 v24, 0x0
move-object/from16 v0, v19
move/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
move-object/from16 v0, p0
move-object/from16 v1, p2
move-object/from16 v2, p3
move-object/from16 v3, v19
invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
move-result v10
if-eqz v20, :cond_5b
new-instance v24, Lcom/google/zxing/ResultPoint;
int-to-float v0, v10
move/from16 v25, v0
move/from16 v0, p1
int-to-float v0, v0
move/from16 v26, v0
invoke-direct/range {v24 .. v26}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
move-object/from16 v0, v20
move-object/from16 v1, v24
invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
:cond_5b
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-virtual {v0, v1, v10}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
move-result-object v9
if-eqz v20, :cond_89
new-instance v24, Lcom/google/zxing/ResultPoint;
const/16 v25, 0x0
aget v25, v9, v25
const/16 v26, 0x1
aget v26, v9, v26
add-int v25, v25, v26
move/from16 v0, v25
int-to-float v0, v0
move/from16 v25, v0
const/high16 v26, 0x4000
div-float v25, v25, v26
move/from16 v0, p1
int-to-float v0, v0
move/from16 v26, v0
invoke-direct/range {v24 .. v26}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
move-object/from16 v0, v20
move-object/from16 v1, v24
invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
:cond_89
const/16 v24, 0x1
aget v8, v9, v24
const/16 v24, 0x0
aget v24, v9, v24
sub-int v24, v8, v24
add-int v18, v8, v24
invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v24
move/from16 v0, v18
move/from16 v1, v24
if-ge v0, v1, :cond_ad
const/16 v24, 0x0
move-object/from16 v0, p2
move/from16 v1, v18
move/from16 v2, v24
invoke-virtual {v0, v8, v1, v2}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z
move-result v24
if-nez v24, :cond_c2
:cond_ad
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v24
throw v24
:cond_b2
sget-object v24, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;
move-object/from16 v0, p4
move-object/from16 v1, v24
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v24
check-cast v24, Lcom/google/zxing/ResultPointCallback;
move-object/from16 v20, v24
goto/16 :goto_4
:cond_c2
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I
move-result v24
const/16 v25, 0x8
move/from16 v0, v24
move/from16 v1, v25
if-ge v0, v1, :cond_d7
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v24
throw v24
:cond_d7
move-object/from16 v0, p0
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z
move-result v24
if-nez v24, :cond_e6
invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;
move-result-object v24
throw v24
:cond_e6
const/16 v24, 0x1
aget v24, p3, v24
const/16 v25, 0x0
aget v25, p3, v25
add-int v24, v24, v25
move/from16 v0, v24
int-to-float v0, v0
move/from16 v24, v0
const/high16 v25, 0x4000
div-float v15, v24, v25
const/16 v24, 0x1
aget v24, v9, v24
const/16 v25, 0x0
aget v25, v9, v25
add-int v24, v24, v25
move/from16 v0, v24
int-to-float v0, v0
move/from16 v24, v0
const/high16 v25, 0x4000
div-float v22, v24, v25
invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
move-result-object v13
new-instance v7, Lcom/google/zxing/Result;
const/16 v24, 0x0
const/16 v25, 0x2
move/from16 v0, v25
new-array v0, v0, [Lcom/google/zxing/ResultPoint;
move-object/from16 v25, v0
const/16 v26, 0x0
new-instance v27, Lcom/google/zxing/ResultPoint;
move/from16 v0, p1
int-to-float v0, v0
move/from16 v28, v0
move-object/from16 v0, v27
move/from16 v1, v28
invoke-direct {v0, v15, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v27, v25, v26
const/16 v26, 0x1
new-instance v27, Lcom/google/zxing/ResultPoint;
move/from16 v0, p1
int-to-float v0, v0
move/from16 v28, v0
move-object/from16 v0, v27
move/from16 v1, v22
move/from16 v2, v28
invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v27, v25, v26
move-object/from16 v0, v21
move-object/from16 v1, v24
move-object/from16 v2, v25
invoke-direct {v7, v0, v1, v2, v13}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
const/4 v11, 0x0
:try_start_14c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;
move-object/from16 v24, v0
const/16 v25, 0x1
aget v25, v9, v25
move-object/from16 v0, v24
move/from16 v1, p1
move-object/from16 v2, p2
move/from16 v3, v25
invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
move-result-object v12
sget-object v24, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;
invoke-virtual {v12}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;
move-result-object v25
move-object/from16 v0, v24
move-object/from16 v1, v25
invoke-virtual {v7, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
invoke-virtual {v12}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v7, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V
invoke-virtual {v12}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v7, v0}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V
invoke-virtual {v12}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I
:try_end_188
.catch Lcom/google/zxing/ReaderException; {:try_start_14c .. :try_end_188} :catch_1e0
move-result v11
:goto_189
if-nez p4, :cond_1a8
const/4 v4, 0x0
:goto_18c
if-eqz v4, :cond_1bc
const/16 v23, 0x0
move-object v5, v4
array-length v0, v5
move/from16 v16, v0
const/4 v14, 0x0
:goto_195
move/from16 v0, v16
if-ge v14, v0, :cond_1a1
aget v17, v5, v14
move/from16 v0, v17
if-ne v11, v0, :cond_1b9
const/16 v23, 0x1
:cond_1a1
if-nez v23, :cond_1bc
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v24
throw v24
:cond_1a8
sget-object v24, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;
move-object/from16 v0, p4
move-object/from16 v1, v24
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v24
check-cast v24, [I
check-cast v24, [I
move-object/from16 v4, v24
goto :goto_18c
:cond_1b9
add-int/lit8 v14, v14, 0x1
goto :goto_195
:cond_1bc
sget-object v24, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;
move-object/from16 v0, v24
if-eq v13, v0, :cond_1c8
sget-object v24, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;
move-object/from16 v0, v24
if-ne v13, v0, :cond_1df
:cond_1c8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;
move-object/from16 v24, v0
move-object/from16 v0, v24
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_1df
sget-object v24, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;
move-object/from16 v0, v24
invoke-virtual {v7, v0, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
:cond_1df
return-object v7
:catch_1e0
move-exception v24
goto :goto_189
.end method
.method abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method