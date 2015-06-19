.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"
.field private static final ALPHABET:[C = null
.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"
.field private static final ASTERISK_ENCODING:I
.field static final CHARACTER_ENCODINGS:[I
.field private final counters:[I
.field private final decodeRowResult:Ljava/lang/StringBuilder;
.field private final extendedMode:Z
.field private final usingCheckDigit:Z
.method static constructor <clinit>()V
.registers 2
const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C
const/16 v0, 0x2c
new-array v0, v0, [I
fill-array-data v0, :array_1c
sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I
sget-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I
const/16 v1, 0x27
aget v0, v0, v1
sput v0, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I
return-void
nop
:array_1c
.array-data 0x4
0x34t 0x0t 0x0t 0x0t
0x21t 0x1t 0x0t 0x0t
0x61t 0x0t 0x0t 0x0t
0x60t 0x1t 0x0t 0x0t
0x31t 0x0t 0x0t 0x0t
0x30t 0x1t 0x0t 0x0t
0x70t 0x0t 0x0t 0x0t
0x25t 0x0t 0x0t 0x0t
0x24t 0x1t 0x0t 0x0t
0x64t 0x0t 0x0t 0x0t
0x9t 0x1t 0x0t 0x0t
0x49t 0x0t 0x0t 0x0t
0x48t 0x1t 0x0t 0x0t
0x19t 0x0t 0x0t 0x0t
0x18t 0x1t 0x0t 0x0t
0x58t 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0xct 0x1t 0x0t 0x0t
0x4ct 0x0t 0x0t 0x0t
0x1ct 0x0t 0x0t 0x0t
0x3t 0x1t 0x0t 0x0t
0x43t 0x0t 0x0t 0x0t
0x42t 0x1t 0x0t 0x0t
0x13t 0x0t 0x0t 0x0t
0x12t 0x1t 0x0t 0x0t
0x52t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x6t 0x1t 0x0t 0x0t
0x46t 0x0t 0x0t 0x0t
0x16t 0x0t 0x0t 0x0t
0x81t 0x1t 0x0t 0x0t
0xc1t 0x0t 0x0t 0x0t
0xc0t 0x1t 0x0t 0x0t
0x91t 0x0t 0x0t 0x0t
0x90t 0x1t 0x0t 0x0t
0xd0t 0x0t 0x0t 0x0t
0x85t 0x0t 0x0t 0x0t
0x84t 0x1t 0x0t 0x0t
0xc4t 0x0t 0x0t 0x0t
0x94t 0x0t 0x0t 0x0t
0xa8t 0x0t 0x0t 0x0t
0xa2t 0x0t 0x0t 0x0t
0x8at 0x0t 0x0t 0x0t
0x2at 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V
return-void
.end method
.method public constructor <init>(Z)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V
return-void
.end method
.method public constructor <init>(ZZ)V
.registers 5
invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V
iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z
iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x14
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;
const/16 v0, 0x9
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I
return-void
.end method
.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
.registers 10
const/16 v8, 0x5a
const/16 v7, 0x41
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v4
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v3, 0x0
:goto_e
if-ge v3, v4, :cond_83
invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
const/16 v6, 0x2b
if-eq v0, v6, :cond_24
const/16 v6, 0x24
if-eq v0, v6, :cond_24
const/16 v6, 0x25
if-eq v0, v6, :cond_24
const/16 v6, 0x2f
if-ne v0, v6, :cond_7f
:cond_24
add-int/lit8 v6, v3, 0x1
invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
const/4 v2, 0x0
sparse-switch v0, :sswitch_data_88
:goto_2e
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v3, v3, 0x1
:goto_33
add-int/lit8 v3, v3, 0x1
goto :goto_e
:sswitch_36
if-lt v5, v7, :cond_3e
if-gt v5, v8, :cond_3e
add-int/lit8 v6, v5, 0x20
int-to-char v2, v6
goto :goto_2e
:cond_3e
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v6
throw v6
:sswitch_43
if-lt v5, v7, :cond_4b
if-gt v5, v8, :cond_4b
add-int/lit8 v6, v5, -0x40
int-to-char v2, v6
goto :goto_2e
:cond_4b
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v6
throw v6
:sswitch_50
if-lt v5, v7, :cond_5a
const/16 v6, 0x45
if-gt v5, v6, :cond_5a
add-int/lit8 v6, v5, -0x26
int-to-char v2, v6
goto :goto_2e
:cond_5a
const/16 v6, 0x46
if-lt v5, v6, :cond_66
const/16 v6, 0x57
if-gt v5, v6, :cond_66
add-int/lit8 v6, v5, -0xb
int-to-char v2, v6
goto :goto_2e
:cond_66
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v6
throw v6
:sswitch_6b
if-lt v5, v7, :cond_75
const/16 v6, 0x4f
if-gt v5, v6, :cond_75
add-int/lit8 v6, v5, -0x20
int-to-char v2, v6
goto :goto_2e
:cond_75
if-ne v5, v8, :cond_7a
const/16 v2, 0x3a
goto :goto_2e
:cond_7a
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v6
throw v6
:cond_7f
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_33
:cond_83
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
:sswitch_data_88
.sparse-switch
0x24 -> :sswitch_43
0x25 -> :sswitch_50
0x2b -> :sswitch_36
0x2f -> :sswitch_6b
.end sparse-switch
.end method
.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
.registers 14
const/4 v11, 0x2
const/4 v7, 0x1
const/4 v8, 0x0
invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v6
invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I
move-result v5
const/4 v0, 0x0
move v4, v5
const/4 v2, 0x0
array-length v3, p1
move v1, v5
:goto_10
if-ge v1, v6, :cond_65
invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v9
xor-int/2addr v9, v2
if-eqz v9, :cond_22
aget v9, p1, v0
add-int/lit8 v9, v9, 0x1
aput v9, p1, v0
:goto_1f
add-int/lit8 v1, v1, 0x1
goto :goto_10
:cond_22
add-int/lit8 v9, v3, -0x1
if-ne v0, v9, :cond_60
invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I
move-result v9
sget v10, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I
if-ne v9, v10, :cond_45
sub-int v9, v1, v4
shr-int/lit8 v9, v9, 0x1
sub-int v9, v4, v9
invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I
move-result v9
invoke-virtual {p0, v9, v4, v8}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z
move-result v9
if-eqz v9, :cond_45
new-array v9, v11, [I
aput v4, v9, v8
aput v1, v9, v7
return-object v9
:cond_45
aget v9, p1, v8
aget v10, p1, v7
add-int/2addr v9, v10
add-int/2addr v4, v9
add-int/lit8 v9, v3, -0x2
invoke-static {p1, v11, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v9, v3, -0x2
aput v8, p1, v9
add-int/lit8 v9, v3, -0x1
aput v8, p1, v9
add-int/lit8 v0, v0, -0x1
:goto_5a
aput v7, p1, v0
if-nez v2, :cond_63
move v2, v7
:goto_5f
goto :goto_1f
:cond_60
add-int/lit8 v0, v0, 0x1
goto :goto_5a
:cond_63
move v2, v8
goto :goto_5f
:cond_65
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v7
throw v7
.end method
.method private static patternToChar(I)C
.registers 3
const/4 v0, 0x0
:goto_1
sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I
array-length v1, v1
if-ge v0, v1, :cond_14
sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I
aget v1, v1, v0
if-ne v1, p0, :cond_11
sget-object v1, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C
aget-char v1, v1, v0
return v1
:cond_11
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_14
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v1
throw v1
.end method
.method private static toNarrowWidePattern([I)I
.registers 16
const/4 v14, 0x3
const/4 v11, -0x1
array-length v7, p0
const/4 v5, 0x0
:cond_4
const v6, 0x7fffffff
move-object v0, p0
array-length v4, v0
const/4 v3, 0x0
:goto_a
if-ge v3, v4, :cond_16
aget v1, v0, v3
if-ge v1, v6, :cond_13
if-le v1, v5, :cond_13
move v6, v1
:cond_13
add-int/lit8 v3, v3, 0x1
goto :goto_a
:cond_16
move v5, v6
const/4 v10, 0x0
const/4 v9, 0x0
const/4 v8, 0x0
const/4 v2, 0x0
:goto_1b
if-ge v2, v7, :cond_2d
aget v1, p0, v2
if-le v1, v5, :cond_2a
const/4 v12, 0x1
add-int/lit8 v13, v7, -0x1
sub-int/2addr v13, v2
shl-int/2addr v12, v13
or-int/2addr v8, v12
add-int/lit8 v10, v10, 0x1
add-int/2addr v9, v1
:cond_2a
add-int/lit8 v2, v2, 0x1
goto :goto_1b
:cond_2d
if-ne v10, v14, :cond_43
const/4 v2, 0x0
:goto_30
if-ge v2, v7, :cond_3f
if-lez v10, :cond_3f
aget v1, p0, v2
if-le v1, v5, :cond_40
add-int/lit8 v10, v10, -0x1
shl-int/lit8 v12, v1, 0x1
if-lt v12, v9, :cond_40
move v8, v11
:goto_3f
:cond_3f
return v8
:cond_40
add-int/lit8 v2, v2, 0x1
goto :goto_30
:cond_43
if-gt v10, v14, :cond_4
move v8, v11
goto :goto_3f
.end method
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
.registers 35
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/oned/Code39Reader;->counters:[I
move-object/from16 v22, v0
const/16 v25, 0x0
move-object/from16 v0, v22
move/from16 v1, v25
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;
move-object/from16 v18, v0
const/16 v25, 0x0
move-object/from16 v0, v18
move/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
move-object/from16 v0, p2
move-object/from16 v1, v22
invoke-static {v0, v1}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
move-result-object v21
const/16 v25, 0x1
aget v25, v21, v25
move-object/from16 v0, p2
move/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I
move-result v16
invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v8
:cond_36
move-object/from16 v0, p2
move/from16 v1, v16
move-object/from16 v2, v22
invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
invoke-static/range {v22 .. v22}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I
move-result v17
if-gez v17, :cond_4a
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v25
throw v25
:cond_4a
invoke-static/range {v17 .. v17}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C
move-result v7
move-object/from16 v0, v18
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move/from16 v12, v16
move-object/from16 v5, v22
array-length v14, v5
const/4 v10, 0x0
:goto_59
if-ge v10, v14, :cond_62
aget v6, v5, v10
add-int v16, v16, v6
add-int/lit8 v10, v10, 0x1
goto :goto_59
:cond_62
move-object/from16 v0, p2
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I
move-result v16
const/16 v25, 0x2a
move/from16 v0, v25
if-ne v7, v0, :cond_36
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I
move-result v25
add-int/lit8 v25, v25, -0x1
move-object/from16 v0, v18
move/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
const/4 v11, 0x0
move-object/from16 v5, v22
array-length v14, v5
const/4 v10, 0x0
:goto_82
if-ge v10, v14, :cond_8a
aget v6, v5, v10
add-int/2addr v11, v6
add-int/lit8 v10, v10, 0x1
goto :goto_82
:cond_8a
sub-int v25, v16, v12
sub-int v24, v25, v11
move/from16 v0, v16
if-eq v0, v8, :cond_9d
shr-int/lit8 v25, v24, 0x1
move/from16 v0, v25
if-ge v0, v11, :cond_9d
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v25
throw v25
:cond_9d
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z
move/from16 v25, v0
if-eqz v25, :cond_e4
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I
move-result v25
add-int/lit8 v15, v25, -0x1
const/16 v23, 0x0
const/4 v9, 0x0
:goto_ae
if-ge v9, v15, :cond_c8
const-string/jumbo v25, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;
move-object/from16 v26, v0
move-object/from16 v0, v26
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v26
invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->indexOf(I)I
move-result v25
add-int v23, v23, v25
add-int/lit8 v9, v9, 0x1
goto :goto_ae
:cond_c8
move-object/from16 v0, v18
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v25
sget-object v26, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C
rem-int/lit8 v27, v23, 0x2b
aget-char v26, v26, v27
move/from16 v0, v25
move/from16 v1, v26
if-eq v0, v1, :cond_df
invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;
move-result-object v25
throw v25
:cond_df
move-object/from16 v0, v18
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V
:cond_e4
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I
move-result v25
if-nez v25, :cond_ef
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v25
throw v25
:cond_ef
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z
move/from16 v25, v0
if-eqz v25, :cond_15c
invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v19
:goto_fb
const/16 v25, 0x1
aget v25, v21, v25
const/16 v26, 0x0
aget v26, v21, v26
add-int v25, v25, v26
move/from16 v0, v25
int-to-float v0, v0
move/from16 v25, v0
const/high16 v26, 0x4000
div-float v13, v25, v26
int-to-float v0, v12
move/from16 v25, v0
int-to-float v0, v11
move/from16 v26, v0
const/high16 v27, 0x4000
div-float v26, v26, v27
add-float v20, v25, v26
new-instance v25, Lcom/google/zxing/Result;
const/16 v26, 0x0
const/16 v27, 0x2
move/from16 v0, v27
new-array v0, v0, [Lcom/google/zxing/ResultPoint;
move-object/from16 v27, v0
const/16 v28, 0x0
new-instance v29, Lcom/google/zxing/ResultPoint;
move/from16 v0, p1
int-to-float v0, v0
move/from16 v30, v0
move-object/from16 v0, v29
move/from16 v1, v30
invoke-direct {v0, v13, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v29, v27, v28
const/16 v28, 0x1
new-instance v29, Lcom/google/zxing/ResultPoint;
move/from16 v0, p1
int-to-float v0, v0
move/from16 v30, v0
move-object/from16 v0, v29
move/from16 v1, v20
move/from16 v2, v30
invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v29, v27, v28
sget-object v28, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;
move-object/from16 v0, v25
move-object/from16 v1, v19
move-object/from16 v2, v26
move-object/from16 v3, v27
move-object/from16 v4, v28
invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
return-object v25
:cond_15c
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
goto :goto_fb
.end method