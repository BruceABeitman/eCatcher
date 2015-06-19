.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"
.field private static final AL:I = 0x1c
.field private static final AS:I = 0x1b
.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0
.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b
.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385
.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c
.field private static final EXP900:[Ljava/math/BigInteger; = null
.field private static final LL:I = 0x1b
.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a
.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf
.field private static final MIXED_CHARS:[C = null
.field private static final ML:I = 0x1c
.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391
.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2
.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386
.field private static final PAL:I = 0x1d
.field private static final PL:I = 0x19
.field private static final PS:I = 0x1d
.field private static final PUNCT_CHARS:[C = null
.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384
.method static constructor <clinit>()V
.registers 5
const/16 v2, 0x1d
new-array v2, v2, [C
fill-array-data v2, :array_42
sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C
const/16 v2, 0x19
new-array v2, v2, [C
fill-array-data v2, :array_64
sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C
const/16 v2, 0x10
new-array v2, v2, [Ljava/math/BigInteger;
sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;
sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;
const/4 v3, 0x0
sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;
aput-object v4, v2, v3
const-wide/16 v2, 0x384
invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v1
sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;
const/4 v3, 0x1
aput-object v1, v2, v3
const/4 v0, 0x2
:goto_2b
sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;
array-length v2, v2
if-ge v0, v2, :cond_41
sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;
add-int/lit8 v4, v0, -0x1
aget-object v3, v3, v4
invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_2b
:cond_41
return-void
:array_42
.array-data 0x2
0x3bt 0x0t
0x3ct 0x0t
0x3et 0x0t
0x40t 0x0t
0x5bt 0x0t
0x5ct 0x0t
0x7dt 0x0t
0x5ft 0x0t
0x60t 0x0t
0x7et 0x0t
0x21t 0x0t
0xdt 0x0t
0x9t 0x0t
0x2ct 0x0t
0x3at 0x0t
0xat 0x0t
0x2dt 0x0t
0x2et 0x0t
0x24t 0x0t
0x2ft 0x0t
0x22t 0x0t
0x7ct 0x0t
0x2at 0x0t
0x28t 0x0t
0x29t 0x0t
0x3ft 0x0t
0x7bt 0x0t
0x7dt 0x0t
0x27t 0x0t
.end array-data
nop
:array_64
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x26t 0x0t
0xdt 0x0t
0x9t 0x0t
0x2ct 0x0t
0x3at 0x0t
0x23t 0x0t
0x2dt 0x0t
0x2et 0x0t
0x24t 0x0t
0x2ft 0x0t
0x2bt 0x0t
0x25t 0x0t
0x2at 0x0t
0x3dt 0x0t
0x5et 0x0t
.end array-data
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static byteCompaction(I[IILjava/lang/StringBuilder;)I
.registers 21
const/16 v13, 0x385
move/from16 v0, p0
if-ne v0, v13, :cond_8f
const/4 v4, 0x0
const-wide/16 v11, 0x0
const/4 v13, 0x6
new-array v6, v13, [C
const/4 v13, 0x6
new-array v1, v13, [I
const/4 v7, 0x0
add-int/lit8 v3, p2, 0x1
aget v10, p1, p2
move/from16 p2, v3
:goto_16
const/4 v13, 0x0
aget v13, p1, v13
move/from16 v0, p2
if-ge v0, v13, :cond_71
if-nez v7, :cond_71
add-int/lit8 v5, v4, 0x1
aput v10, v1, v4
const-wide/16 v13, 0x384
mul-long/2addr v13, v11
int-to-long v15, v10
add-long v11, v13, v15
add-int/lit8 v3, p2, 0x1
aget v10, p1, p2
const/16 v13, 0x384
if-eq v10, v13, :cond_49
const/16 v13, 0x385
if-eq v10, v13, :cond_49
const/16 v13, 0x386
if-eq v10, v13, :cond_49
const/16 v13, 0x39c
if-eq v10, v13, :cond_49
const/16 v13, 0x3a0
if-eq v10, v13, :cond_49
const/16 v13, 0x39b
if-eq v10, v13, :cond_49
const/16 v13, 0x39a
if-ne v10, v13, :cond_4e
:cond_49
add-int/lit8 p2, v3, -0x1
const/4 v7, 0x1
move v4, v5
goto :goto_16
:cond_4e
rem-int/lit8 v13, v5, 0x5
if-nez v13, :cond_fb
if-lez v5, :cond_fb
const/4 v9, 0x0
:goto_55
const/4 v13, 0x6
if-ge v9, v13, :cond_68
rsub-int/lit8 v13, v9, 0x5
const-wide/16 v14, 0x100
rem-long v14, v11, v14
long-to-int v14, v14
int-to-char v14, v14
aput-char v14, v6, v13
const/16 v13, 0x8
shr-long/2addr v11, v13
add-int/lit8 v9, v9, 0x1
goto :goto_55
:cond_68
move-object/from16 v0, p3
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
const/4 v4, 0x0
move/from16 p2, v3
goto :goto_16
:cond_71
const/4 v13, 0x0
aget v13, p1, v13
move/from16 v0, p2
if-ne v0, v13, :cond_81
const/16 v13, 0x384
if-ge v10, v13, :cond_81
add-int/lit8 v5, v4, 0x1
aput v10, v1, v4
move v4, v5
:cond_81
const/4 v8, 0x0
:goto_82
if-ge v8, v4, :cond_f7
aget v13, v1, v8
int-to-char v13, v13
move-object/from16 v0, p3
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v8, v8, 0x1
goto :goto_82
:cond_8f
const/16 v13, 0x39c
move/from16 v0, p0
if-ne v0, v13, :cond_f7
const/4 v4, 0x0
const-wide/16 v11, 0x0
const/4 v7, 0x0
:cond_99
:goto_99
const/4 v13, 0x0
aget v13, p1, v13
move/from16 v0, p2
if-ge v0, v13, :cond_f7
if-nez v7, :cond_f7
add-int/lit8 v3, p2, 0x1
aget v2, p1, p2
const/16 v13, 0x384
if-ge v2, v13, :cond_d0
add-int/lit8 v4, v4, 0x1
const-wide/16 v13, 0x384
mul-long/2addr v13, v11
int-to-long v15, v2
add-long v11, v13, v15
move/from16 p2, v3
:goto_b4
rem-int/lit8 v13, v4, 0x5
if-nez v13, :cond_99
if-lez v4, :cond_99
const/4 v13, 0x6
new-array v6, v13, [C
const/4 v9, 0x0
:goto_be
const/4 v13, 0x6
if-ge v9, v13, :cond_f0
rsub-int/lit8 v13, v9, 0x5
const-wide/16 v14, 0xff
and-long/2addr v14, v11
long-to-int v14, v14
int-to-char v14, v14
aput-char v14, v6, v13
const/16 v13, 0x8
shr-long/2addr v11, v13
add-int/lit8 v9, v9, 0x1
goto :goto_be
:cond_d0
const/16 v13, 0x384
if-eq v2, v13, :cond_ec
const/16 v13, 0x385
if-eq v2, v13, :cond_ec
const/16 v13, 0x386
if-eq v2, v13, :cond_ec
const/16 v13, 0x39c
if-eq v2, v13, :cond_ec
const/16 v13, 0x3a0
if-eq v2, v13, :cond_ec
const/16 v13, 0x39b
if-eq v2, v13, :cond_ec
const/16 v13, 0x39a
if-ne v2, v13, :cond_f8
:cond_ec
add-int/lit8 p2, v3, -0x1
const/4 v7, 0x1
goto :goto_b4
:cond_f0
move-object/from16 v0, p3
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
const/4 v4, 0x0
goto :goto_99
:cond_f7
return p2
:cond_f8
move/from16 p2, v3
goto :goto_b4
:cond_fb
move v4, v5
move/from16 p2, v3
goto/16 :goto_16
.end method
.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
.registers 10
const/4 v7, 0x0
new-instance v4, Ljava/lang/StringBuilder;
array-length v6, p0
mul-int/lit8 v6, v6, 0x2
invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v1, 0x1
add-int/lit8 v2, v1, 0x1
aget v0, p0, v1
new-instance v5, Lcom/google/zxing/pdf417/PDF417ResultMetadata;
invoke-direct {v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V
move v1, v2
:goto_14
const/4 v6, 0x0
aget v6, p0, v6
if-ge v1, v6, :cond_49
sparse-switch v0, :sswitch_data_62
add-int/lit8 v1, v1, -0x1
invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I
move-result v1
:goto_22
array-length v6, p0
if-ge v1, v6, :cond_44
add-int/lit8 v2, v1, 0x1
aget v0, p0, v1
move v1, v2
goto :goto_14
:sswitch_2b
invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I
move-result v1
goto :goto_22
:sswitch_30
invoke-static {v0, p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I
move-result v1
goto :goto_22
:sswitch_35
invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I
move-result v1
goto :goto_22
:sswitch_3a
invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
move-result v1
goto :goto_22
:sswitch_3f
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v6
throw v6
:cond_44
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v6
throw v6
:cond_49
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v6
if-nez v6, :cond_54
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v6
throw v6
:cond_54
new-instance v3, Lcom/google/zxing/common/DecoderResult;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v3, v7, v6, v7, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v3, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
return-object v3
nop
:sswitch_data_62
.sparse-switch
0x384 -> :sswitch_2b
0x385 -> :sswitch_30
0x386 -> :sswitch_35
0x391 -> :sswitch_30
0x39a -> :sswitch_3f
0x39b -> :sswitch_3f
0x39c -> :sswitch_30
0x3a0 -> :sswitch_3a
.end sparse-switch
.end method
.method private static decodeBase900toBase10([II)Ljava/lang/String;
.registers 8
sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
const/4 v0, 0x0
:goto_3
if-ge v0, p1, :cond_1f
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;
sub-int v4, p1, v0
add-int/lit8 v4, v4, -0x1
aget-object v3, v3, v4
aget v4, p0, v0
int-to-long v4, v4
invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v1
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_1f
invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x31
if-eq v3, v4, :cond_31
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v3
throw v3
:cond_31
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
.registers 14
add-int/lit8 v9, p1, 0x2
const/4 v10, 0x0
aget v10, p0, v10
if-le v9, v10, :cond_c
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v9
throw v9
:cond_c
const/4 v9, 0x2
new-array v8, v9, [I
const/4 v7, 0x0
:goto_10
const/4 v9, 0x2
if-ge v7, v9, :cond_1c
aget v9, p0, p1
aput v9, v8, v7
add-int/lit8 v7, v7, 0x1
add-int/lit8 p1, p1, 0x1
goto :goto_10
:cond_1c
const/4 v9, 0x2
invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v9
invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I
move-result p1
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V
aget v9, p0, p1
const/16 v10, 0x39b
if-ne v9, v10, :cond_76
add-int/lit8 p1, p1, 0x1
const/4 v9, 0x0
aget v9, p0, v9
sub-int/2addr v9, p1
new-array v0, v9, [I
const/4 v1, 0x0
const/4 v5, 0x0
:goto_48
const/4 v9, 0x0
aget v9, p0, v9
if-ge p1, v9, :cond_6e
if-nez v5, :cond_6e
add-int/lit8 v4, p1, 0x1
aget v3, p0, p1
const/16 v9, 0x384
if-ge v3, v9, :cond_5e
add-int/lit8 v2, v1, 0x1
aput v3, v0, v1
move v1, v2
move p1, v4
goto :goto_48
:cond_5e
packed-switch v3, :pswitch_data_84
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v9
throw v9
:pswitch_66
const/4 v9, 0x1
invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V
add-int/lit8 p1, v4, 0x1
const/4 v5, 0x1
goto :goto_48
:cond_6e
invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I
move-result-object v9
invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V
:goto_75
:cond_75
return p1
:cond_76
aget v9, p0, p1
const/16 v10, 0x39a
if-ne v9, v10, :cond_75
const/4 v9, 0x1
invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V
add-int/lit8 p1, p1, 0x1
goto :goto_75
nop
:pswitch_data_84
.packed-switch 0x39a
:pswitch_66
.end packed-switch
.end method
.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
.registers 16
const/16 v11, 0x1b
const/16 v10, 0x391
const/16 v9, 0x384
const/16 v8, 0x1d
const/16 v7, 0x1a
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
const/4 v1, 0x0
:goto_f
if-ge v1, p2, :cond_107
aget v4, p0, v1
const/4 v0, 0x0
sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I
invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_108
:cond_1f
:goto_1f
if-eqz v0, :cond_24
invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_24
add-int/lit8 v1, v1, 0x1
goto :goto_f
:pswitch_27
if-ge v4, v7, :cond_2d
add-int/lit8 v5, v4, 0x41
int-to-char v0, v5
goto :goto_1f
:cond_2d
if-ne v4, v7, :cond_32
const/16 v0, 0x20
goto :goto_1f
:cond_32
if-ne v4, v11, :cond_37
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:cond_37
const/16 v5, 0x1c
if-ne v4, v5, :cond_3e
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:cond_3e
if-ne v4, v8, :cond_44
move-object v2, v3
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:cond_44
if-ne v4, v10, :cond_4d
aget v5, p1, v1
int-to-char v5, v5
invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_1f
:cond_4d
if-ne v4, v9, :cond_1f
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:pswitch_52
if-ge v4, v7, :cond_58
add-int/lit8 v5, v4, 0x61
int-to-char v0, v5
goto :goto_1f
:cond_58
if-ne v4, v7, :cond_5d
const/16 v0, 0x20
goto :goto_1f
:cond_5d
if-ne v4, v11, :cond_63
move-object v2, v3
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:cond_63
const/16 v5, 0x1c
if-ne v4, v5, :cond_6a
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:cond_6a
if-ne v4, v8, :cond_70
move-object v2, v3
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:cond_70
if-ne v4, v10, :cond_79
aget v5, p1, v1
int-to-char v5, v5
invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_1f
:cond_79
if-ne v4, v9, :cond_1f
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:pswitch_7e
const/16 v5, 0x19
if-ge v4, v5, :cond_87
sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C
aget-char v0, v5, v4
goto :goto_1f
:cond_87
const/16 v5, 0x19
if-ne v4, v5, :cond_8e
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:cond_8e
if-ne v4, v7, :cond_93
const/16 v0, 0x20
goto :goto_1f
:cond_93
if-ne v4, v11, :cond_98
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:cond_98
const/16 v5, 0x1c
if-ne v4, v5, :cond_9f
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto :goto_1f
:cond_9f
if-ne v4, v8, :cond_a6
move-object v2, v3
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto/16 :goto_1f
:cond_a6
if-ne v4, v10, :cond_b0
aget v5, p1, v1
int-to-char v5, v5
invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_1f
:cond_b0
if-ne v4, v9, :cond_1f
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto/16 :goto_1f
:pswitch_b6
if-ge v4, v8, :cond_be
sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C
aget-char v0, v5, v4
goto/16 :goto_1f
:cond_be
if-ne v4, v8, :cond_c4
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto/16 :goto_1f
:cond_c4
if-ne v4, v10, :cond_ce
aget v5, p1, v1
int-to-char v5, v5
invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_1f
:cond_ce
if-ne v4, v9, :cond_1f
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto/16 :goto_1f
:pswitch_d4
move-object v3, v2
if-ge v4, v7, :cond_dc
add-int/lit8 v5, v4, 0x41
int-to-char v0, v5
goto/16 :goto_1f
:cond_dc
if-ne v4, v7, :cond_e2
const/16 v0, 0x20
goto/16 :goto_1f
:cond_e2
if-ne v4, v9, :cond_1f
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto/16 :goto_1f
:pswitch_e8
move-object v3, v2
if-ge v4, v8, :cond_f1
sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C
aget-char v0, v5, v4
goto/16 :goto_1f
:cond_f1
if-ne v4, v8, :cond_f7
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto/16 :goto_1f
:cond_f7
if-ne v4, v10, :cond_101
aget v5, p1, v1
int-to-char v5, v5
invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_1f
:cond_101
if-ne v4, v9, :cond_1f
sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
goto/16 :goto_1f
:cond_107
return-void
:pswitch_data_108
.packed-switch 0x1
:pswitch_27
:pswitch_52
:pswitch_7e
:pswitch_b6
:pswitch_d4
:pswitch_e8
.end packed-switch
.end method
.method private static numericCompaction([IILjava/lang/StringBuilder;)I
.registers 12
const/16 v8, 0x384
const/4 v7, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
const/16 v6, 0xf
new-array v4, v6, [I
:goto_9
:cond_9
aget v6, p0, v7
if-ge p1, v6, :cond_4c
if-nez v3, :cond_4c
add-int/lit8 v1, p1, 0x1
aget v0, p0, p1
aget v6, p0, v7
if-ne v1, v6, :cond_18
const/4 v3, 0x1
:cond_18
if-ge v0, v8, :cond_32
aput v0, v4, v2
add-int/lit8 v2, v2, 0x1
move p1, v1
:goto_1f
rem-int/lit8 v6, v2, 0xf
if-eqz v6, :cond_29
const/16 v6, 0x386
if-eq v0, v6, :cond_29
if-eqz v3, :cond_9
:cond_29
invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v2, 0x0
goto :goto_9
:cond_32
if-eq v0, v8, :cond_48
const/16 v6, 0x385
if-eq v0, v6, :cond_48
const/16 v6, 0x39c
if-eq v0, v6, :cond_48
const/16 v6, 0x3a0
if-eq v0, v6, :cond_48
const/16 v6, 0x39b
if-eq v0, v6, :cond_48
const/16 v6, 0x39a
if-ne v0, v6, :cond_4d
:cond_48
add-int/lit8 p1, v1, -0x1
const/4 v3, 0x1
goto :goto_1f
:cond_4c
return p1
:cond_4d
move p1, v1
goto :goto_1f
.end method
.method private static textCompaction([IILjava/lang/StringBuilder;)I
.registers 14
const/16 v10, 0x384
const/4 v9, 0x0
aget v7, p0, v9
sub-int/2addr v7, p1
shl-int/lit8 v7, v7, 0x1
new-array v6, v7, [I
aget v7, p0, v9
sub-int/2addr v7, p1
shl-int/lit8 v7, v7, 0x1
new-array v0, v7, [I
const/4 v4, 0x0
const/4 v3, 0x0
:goto_13
aget v7, p0, v9
if-ge p1, v7, :cond_4a
if-nez v3, :cond_4a
add-int/lit8 v2, p1, 0x1
aget v1, p0, p1
if-ge v1, v10, :cond_2d
div-int/lit8 v7, v1, 0x1e
aput v7, v6, v4
add-int/lit8 v7, v4, 0x1
rem-int/lit8 v8, v1, 0x1e
aput v8, v6, v7
add-int/lit8 v4, v4, 0x2
move p1, v2
goto :goto_13
:cond_2d
sparse-switch v1, :sswitch_data_4e
move p1, v2
goto :goto_13
:sswitch_32
add-int/lit8 v5, v4, 0x1
aput v10, v6, v4
move v4, v5
move p1, v2
goto :goto_13
:sswitch_39
add-int/lit8 p1, v2, -0x1
const/4 v3, 0x1
goto :goto_13
:sswitch_3d
const/16 v7, 0x391
aput v7, v6, v4
add-int/lit8 p1, v2, 0x1
aget v1, p0, v2
aput v1, v0, v4
add-int/lit8 v4, v4, 0x1
goto :goto_13
:cond_4a
invoke-static {v6, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
return p1
:sswitch_data_4e
.sparse-switch
0x384 -> :sswitch_32
0x385 -> :sswitch_39
0x386 -> :sswitch_39
0x391 -> :sswitch_3d
0x39a -> :sswitch_39
0x39b -> :sswitch_39
0x39c -> :sswitch_39
0x3a0 -> :sswitch_39
.end sparse-switch
.end method