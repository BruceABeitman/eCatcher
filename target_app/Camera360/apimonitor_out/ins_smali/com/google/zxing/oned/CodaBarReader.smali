.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"
.field static final ALPHABET:[C = null
.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"
.field static final CHARACTER_ENCODINGS:[I = null
.field private static final MAX_ACCEPTABLE:I = 0x200
.field private static final MIN_CHARACTER_LENGTH:I = 0x3
.field private static final PADDING:I = 0x180
.field private static final STARTEND_ENCODING:[C
.field private counterLength:I
.field private counters:[I
.field private final decodeRowResult:Ljava/lang/StringBuilder;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "0123456789-$:/.+ABCD"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C
const/16 v0, 0x14
new-array v0, v0, [I
fill-array-data v0, :array_1c
sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I
const/4 v0, 0x4
new-array v0, v0, [C
fill-array-data v0, :array_48
sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C
return-void
nop
:array_1c
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x9t 0x0t 0x0t 0x0t
0x60t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
0x42t 0x0t 0x0t 0x0t
0x21t 0x0t 0x0t 0x0t
0x24t 0x0t 0x0t 0x0t
0x30t 0x0t 0x0t 0x0t
0x48t 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x45t 0x0t 0x0t 0x0t
0x51t 0x0t 0x0t 0x0t
0x54t 0x0t 0x0t 0x0t
0x15t 0x0t 0x0t 0x0t
0x1at 0x0t 0x0t 0x0t
0x29t 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xet 0x0t 0x0t 0x0t
.end array-data
:array_48
.array-data 0x2
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x14
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
const/16 v0, 0x50
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
const/4 v0, 0x0
iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
return-void
.end method
.method static arrayContains([CC)Z
.registers 7
if-eqz p0, :cond_10
move-object v0, p0
array-length v3, v0
const/4 v2, 0x0
:goto_5
if-ge v2, v3, :cond_10
aget-char v1, v0, v2
if-ne v1, p1, :cond_d
const/4 v4, 0x1
:goto_c
return v4
:cond_d
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_10
const/4 v4, 0x0
goto :goto_c
.end method
.method private counterAppend(I)V
.registers 6
const/4 v3, 0x0
iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
aput p1, v1, v2
iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
array-length v2, v2
if-lt v1, v2, :cond_23
iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
mul-int/lit8 v1, v1, 0x2
new-array v0, v1, [I
iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
:cond_23
return-void
.end method
.method private findStartPattern()I
.registers 7
const/4 v1, 0x1
:goto_1
iget v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
if-ge v1, v4, :cond_37
invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I
move-result v0
const/4 v4, -0x1
if-eq v0, v4, :cond_34
sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C
sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C
aget-char v5, v5, v0
invoke-static {v4, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z
move-result v4
if-eqz v4, :cond_34
const/4 v3, 0x0
move v2, v1
:goto_1a
add-int/lit8 v4, v1, 0x7
if-ge v2, v4, :cond_26
iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
aget v4, v4, v2
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_1a
:cond_26
const/4 v4, 0x1
if-eq v1, v4, :cond_33
iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
add-int/lit8 v5, v1, -0x1
aget v4, v4, v5
div-int/lit8 v5, v3, 0x2
if-lt v4, v5, :cond_34
:cond_33
return v1
:cond_34
add-int/lit8 v1, v1, 0x2
goto :goto_1
:cond_37
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v4
throw v4
.end method
.method private setCounters(Lcom/google/zxing/common/BitArray;)V
.registers 8
const/4 v4, 0x0
iput v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I
move-result v2
invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v1
if-lt v2, v1, :cond_12
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v4
throw v4
:cond_12
const/4 v3, 0x1
const/4 v0, 0x0
:goto_14
if-ge v2, v1, :cond_2c
invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v5
xor-int/2addr v5, v3
if-eqz v5, :cond_22
add-int/lit8 v0, v0, 0x1
:goto_1f
add-int/lit8 v2, v2, 0x1
goto :goto_14
:cond_22
invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V
const/4 v0, 0x1
if-nez v3, :cond_2a
const/4 v3, 0x1
:goto_29
goto :goto_1f
:cond_2a
move v3, v4
goto :goto_29
:cond_2c
invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V
return-void
.end method
.method private toNarrowWidePattern(I)I
.registers 17
add-int/lit8 v2, p1, 0x7
iget v14, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
if-lt v2, v14, :cond_8
const/4 v3, -0x1
:goto_7
:cond_7
return v3
:cond_8
iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
const/4 v5, 0x0
const v7, 0x7fffffff
move/from16 v4, p1
:goto_10
if-ge v4, v2, :cond_1d
aget v1, v10, v4
if-ge v1, v7, :cond_17
move v7, v1
:cond_17
if-le v1, v5, :cond_1a
move v5, v1
:cond_1a
add-int/lit8 v4, v4, 0x2
goto :goto_10
:cond_1d
add-int v14, v7, v5
div-int/lit8 v12, v14, 0x2
const/4 v6, 0x0
const v8, 0x7fffffff
add-int/lit8 v4, p1, 0x1
:goto_27
if-ge v4, v2, :cond_34
aget v1, v10, v4
if-ge v1, v8, :cond_2e
move v8, v1
:cond_2e
if-le v1, v6, :cond_31
move v6, v1
:cond_31
add-int/lit8 v4, v4, 0x2
goto :goto_27
:cond_34
add-int v14, v8, v6
div-int/lit8 v13, v14, 0x2
const/16 v0, 0x80
const/4 v9, 0x0
const/4 v3, 0x0
:goto_3c
const/4 v14, 0x7
if-ge v3, v14, :cond_52
and-int/lit8 v14, v3, 0x1
if-nez v14, :cond_50
move v11, v12
:goto_44
shr-int/lit8 v0, v0, 0x1
add-int v14, p1, v3
aget v14, v10, v14
if-le v14, v11, :cond_4d
or-int/2addr v9, v0
:cond_4d
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:cond_50
move v11, v13
goto :goto_44
:cond_52
const/4 v3, 0x0
:goto_53
sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I
array-length v14, v14
if-ge v3, v14, :cond_61
sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I
aget v14, v14, v3
if-eq v14, v9, :cond_7
add-int/lit8 v3, v3, 0x1
goto :goto_53
:cond_61
const/4 v3, -0x1
goto :goto_7
.end method
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
.registers 24
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
const/4 v14, 0x0
invoke-static {v13, v14}, Ljava/util/Arrays;->fill([II)V
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V
invoke-direct/range {p0 .. p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I
move-result v10
move v7, v10
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->setLength(I)V
:cond_1c
move-object/from16 v0, p0
invoke-direct {v0, v7}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I
move-result v2
const/4 v13, -0x1
if-ne v2, v13, :cond_2a
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v13
throw v13
:cond_2a
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
int-to-char v14, v2
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v7, v7, 0x8
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I
move-result v13
const/4 v14, 0x1
if-le v13, v14, :cond_64
sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C
sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C
aget-char v14, v14, v2
invoke-static {v13, v14}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z
move-result v13
if-eqz v13, :cond_64
:goto_4b
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
add-int/lit8 v14, v7, -0x1
aget v12, v13, v14
const/4 v5, 0x0
const/4 v4, -0x8
:goto_55
const/4 v13, -0x1
if-ge v4, v13, :cond_6b
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
add-int v14, v7, v4
aget v13, v13, v14
add-int/2addr v5, v13
add-int/lit8 v4, v4, 0x1
goto :goto_55
:cond_64
move-object/from16 v0, p0
iget v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
if-lt v7, v13, :cond_1c
goto :goto_4b
:cond_6b
move-object/from16 v0, p0
iget v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I
if-ge v7, v13, :cond_7a
div-int/lit8 v13, v5, 0x2
if-ge v12, v13, :cond_7a
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v13
throw v13
:cond_7a
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V
const/4 v4, 0x0
:goto_80
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I
move-result v13
if-ge v4, v13, :cond_a0
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C
move-object/from16 v0, p0
iget-object v15, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v15
aget-char v14, v14, v15
invoke-virtual {v13, v4, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V
add-int/lit8 v4, v4, 0x1
goto :goto_80
:cond_a0
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v11
sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C
invoke-static {v13, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z
move-result v13
if-nez v13, :cond_b6
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v13
throw v13
:cond_b6
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I
move-result v14
add-int/lit8 v14, v14, -0x1
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v3
sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C
invoke-static {v13, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z
move-result v13
if-nez v13, :cond_d5
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v13
throw v13
:cond_d5
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I
move-result v13
const/4 v14, 0x3
if-gt v13, v14, :cond_e5
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v13
throw v13
:cond_e5
if-eqz p3, :cond_f1
sget-object v13, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;
move-object/from16 v0, p3
invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v13
if-nez v13, :cond_10a
:cond_f1
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I
move-result v14
add-int/lit8 v14, v14, -0x1
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
:cond_10a
const/4 v9, 0x0
const/4 v4, 0x0
:goto_10c
if-ge v4, v10, :cond_118
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
aget v13, v13, v4
add-int/2addr v9, v13
add-int/lit8 v4, v4, 0x1
goto :goto_10c
:cond_118
int-to-float v6, v9
move v4, v10
:goto_11a
add-int/lit8 v13, v7, -0x1
if-ge v4, v13, :cond_128
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
aget v13, v13, v4
add-int/2addr v9, v13
add-int/lit8 v4, v4, 0x1
goto :goto_11a
:cond_128
int-to-float v8, v9
new-instance v13, Lcom/google/zxing/Result;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
const/4 v15, 0x0
const/16 v16, 0x2
move/from16 v0, v16
new-array v0, v0, [Lcom/google/zxing/ResultPoint;
move-object/from16 v16, v0
const/16 v17, 0x0
new-instance v18, Lcom/google/zxing/ResultPoint;
move/from16 v0, p1
int-to-float v0, v0
move/from16 v19, v0
move-object/from16 v0, v18
move/from16 v1, v19
invoke-direct {v0, v6, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v18, v16, v17
const/16 v17, 0x1
new-instance v18, Lcom/google/zxing/ResultPoint;
move/from16 v0, p1
int-to-float v0, v0
move/from16 v19, v0
move-object/from16 v0, v18
move/from16 v1, v19
invoke-direct {v0, v8, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v18, v16, v17
sget-object v17, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;
invoke-direct/range {v13 .. v17}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
return-object v13
.end method
.method  validatePattern(I)V
.registers 17
const/4 v11, 0x4
new-array v10, v11, [I
fill-array-data v10, :array_c4
const/4 v11, 0x4
new-array v1, v11, [I
fill-array-data v1, :array_d0
iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I
move-result v11
add-int/lit8 v2, v11, -0x1
move/from16 v8, p1
const/4 v3, 0x0
:goto_17
sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I
iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v12
aget v7, v11, v12
const/4 v4, 0x6
:goto_22
if-ltz v4, :cond_42
and-int/lit8 v11, v4, 0x1
and-int/lit8 v12, v7, 0x1
mul-int/lit8 v12, v12, 0x2
add-int v0, v11, v12
aget v11, v10, v0
iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
add-int v13, v8, v4
aget v12, v12, v13
add-int/2addr v11, v12
aput v11, v10, v0
aget v11, v1, v0
add-int/lit8 v11, v11, 0x1
aput v11, v1, v0
shr-int/lit8 v7, v7, 0x1
add-int/lit8 v4, v4, -0x1
goto :goto_22
:cond_42
if-lt v3, v2, :cond_84
const/4 v11, 0x4
new-array v5, v11, [I
const/4 v11, 0x4
new-array v6, v11, [I
const/4 v3, 0x0
:goto_4b
const/4 v11, 0x2
if-ge v3, v11, :cond_89
const/4 v11, 0x0
aput v11, v6, v3
add-int/lit8 v11, v3, 0x2
aget v12, v10, v3
shl-int/lit8 v12, v12, 0x8
aget v13, v1, v3
div-int/2addr v12, v13
add-int/lit8 v13, v3, 0x2
aget v13, v10, v13
shl-int/lit8 v13, v13, 0x8
add-int/lit8 v14, v3, 0x2
aget v14, v1, v14
div-int/2addr v13, v14
add-int/2addr v12, v13
shr-int/lit8 v12, v12, 0x1
aput v12, v6, v11
add-int/lit8 v11, v3, 0x2
aget v11, v6, v11
aput v11, v5, v3
add-int/lit8 v11, v3, 0x2
add-int/lit8 v12, v3, 0x2
aget v12, v10, v12
mul-int/lit16 v12, v12, 0x200
add-int/lit16 v12, v12, 0x180
add-int/lit8 v13, v3, 0x2
aget v13, v1, v13
div-int/2addr v12, v13
aput v12, v5, v11
add-int/lit8 v3, v3, 0x1
goto :goto_4b
:cond_84
add-int/lit8 v8, v8, 0x8
add-int/lit8 v3, v3, 0x1
goto :goto_17
:cond_89
move/from16 v8, p1
const/4 v3, 0x0
:goto_8c
sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I
iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v12
aget v7, v11, v12
const/4 v4, 0x6
:goto_97
if-ltz v4, :cond_bb
and-int/lit8 v11, v4, 0x1
and-int/lit8 v12, v7, 0x1
mul-int/lit8 v12, v12, 0x2
add-int v0, v11, v12
iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I
add-int v12, v8, v4
aget v11, v11, v12
shl-int/lit8 v9, v11, 0x8
aget v11, v6, v0
if-lt v9, v11, :cond_b1
aget v11, v5, v0
if-le v9, v11, :cond_b6
:cond_b1
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v11
throw v11
:cond_b6
shr-int/lit8 v7, v7, 0x1
add-int/lit8 v4, v4, -0x1
goto :goto_97
:cond_bb
if-lt v3, v2, :cond_be
return-void
:cond_be
add-int/lit8 v8, v8, 0x8
add-int/lit8 v3, v3, 0x1
goto :goto_8c
nop
:array_c4
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_d0
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method