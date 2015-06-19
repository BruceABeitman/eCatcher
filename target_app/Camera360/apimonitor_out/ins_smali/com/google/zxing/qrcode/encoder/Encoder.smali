.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"
.field private static final ALPHANUMERIC_TABLE:[I = null
.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x60
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I
return-void
:array_a
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x24t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x25t 0x0t 0x0t 0x0t
0x26t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x27t 0x0t 0x0t 0x0t
0x28t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x29t 0x0t 0x0t 0x0t
0x2at 0x0t 0x0t 0x0t
0x2bt 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x9t 0x0t 0x0t 0x0t
0x2ct 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xat 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0xet 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0x10t 0x0t 0x0t 0x0t
0x11t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
0x13t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x15t 0x0t 0x0t 0x0t
0x16t 0x0t 0x0t 0x0t
0x17t 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x19t 0x0t 0x0t 0x0t
0x1at 0x0t 0x0t 0x0t
0x1bt 0x0t 0x0t 0x0t
0x1ct 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0x20t 0x0t 0x0t 0x0t
0x21t 0x0t 0x0t 0x0t
0x22t 0x0t 0x0t 0x0t
0x23t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
.end array-data
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
.registers 10
:try_start_0
invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_3
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_13
move-result-object v2
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_7
if-ge v3, v4, :cond_1a
aget-byte v1, v0, v3
const/16 v6, 0x8
invoke-virtual {p1, v1, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
add-int/lit8 v3, v3, 0x1
goto :goto_7
:catch_13
move-exception v5
new-instance v6, Lcom/google/zxing/WriterException;
invoke-direct {v6, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V
throw v6
:cond_1a
return-void
.end method
.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
.registers 9
const/4 v6, -0x1
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v3
const/4 v2, 0x0
:goto_6
if-ge v2, v3, :cond_40
invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v4
invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I
move-result v0
if-ne v0, v6, :cond_18
new-instance v4, Lcom/google/zxing/WriterException;
invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V
throw v4
:cond_18
add-int/lit8 v4, v2, 0x1
if-ge v4, v3, :cond_39
add-int/lit8 v4, v2, 0x1
invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C
move-result v4
invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I
move-result v1
if-ne v1, v6, :cond_2e
new-instance v4, Lcom/google/zxing/WriterException;
invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V
throw v4
:cond_2e
mul-int/lit8 v4, v0, 0x2d
add-int/2addr v4, v1
const/16 v5, 0xb
invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
add-int/lit8 v2, v2, 0x2
goto :goto_6
:cond_39
const/4 v4, 0x6
invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
add-int/lit8 v2, v2, 0x1
goto :goto_6
:cond_40
return-void
.end method
.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
.registers 7
sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I
invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_36
new-instance v0, Lcom/google/zxing/WriterException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Invalid mode: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_25
invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
:goto_28
return-void
:pswitch_29
invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
goto :goto_28
:pswitch_2d
invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
goto :goto_28
:pswitch_31
invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
goto :goto_28
nop
:pswitch_data_36
.packed-switch 0x1
:pswitch_25
:pswitch_29
:pswitch_2d
:pswitch_31
.end packed-switch
.end method
.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
.registers 4
sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;
invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I
move-result v0
const/4 v1, 0x4
invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I
move-result v0
const/16 v1, 0x8
invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
return-void
.end method
.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
.registers 14
const v11, 0x8140
:try_start_3
const-string/jumbo v9, "Shift_JIS"
invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_9
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_9} :catch_32
move-result-object v2
array-length v6, v2
const/4 v5, 0x0
:goto_c
if-ge v5, v6, :cond_59
aget-byte v9, v2, v5
and-int/lit16 v0, v9, 0xff
add-int/lit8 v9, v5, 0x1
aget-byte v9, v2, v9
and-int/lit16 v1, v9, 0xff
shl-int/lit8 v9, v0, 0x8
or-int v3, v9, v1
const/4 v7, -0x1
if-lt v3, v11, :cond_39
const v9, 0x9ffc
if-gt v3, v9, :cond_39
sub-int v7, v3, v11
:goto_26
:cond_26
const/4 v9, -0x1
if-ne v7, v9, :cond_49
new-instance v9, Lcom/google/zxing/WriterException;
const-string/jumbo v10, "Invalid byte sequence"
invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v9
:catch_32
move-exception v8
new-instance v9, Lcom/google/zxing/WriterException;
invoke-direct {v9, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V
throw v9
:cond_39
const v9, 0xe040
if-lt v3, v9, :cond_26
const v9, 0xebbf
if-gt v3, v9, :cond_26
const v9, 0xc140
sub-int v7, v3, v9
goto :goto_26
:cond_49
shr-int/lit8 v9, v7, 0x8
mul-int/lit16 v9, v9, 0xc0
and-int/lit16 v10, v7, 0xff
add-int v4, v9, v10
const/16 v9, 0xd
invoke-virtual {p1, v4, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
add-int/lit8 v5, v5, 0x2
goto :goto_c
:cond_59
return-void
.end method
.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
.registers 9
const/4 v4, 0x1
invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
move-result v0
shl-int v1, v4, v0
if-lt p0, v1, :cond_2b
new-instance v1, Lcom/google/zxing/WriterException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " is bigger than "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
shl-int v3, v4, v0
add-int/lit8 v3, v3, -0x1
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v1
:cond_2b
invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
return-void
.end method
.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
.registers 4
invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I
move-result v0
const/4 v1, 0x4
invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
return-void
.end method
.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
.registers 9
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_4c
invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
add-int/lit8 v2, v5, -0x30
add-int/lit8 v5, v0, 0x2
if-ge v5, v1, :cond_2f
add-int/lit8 v5, v0, 0x1
invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
add-int/lit8 v3, v5, -0x30
add-int/lit8 v5, v0, 0x2
invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
add-int/lit8 v4, v5, -0x30
mul-int/lit8 v5, v2, 0x64
mul-int/lit8 v6, v3, 0xa
add-int/2addr v5, v6
add-int/2addr v5, v4
const/16 v6, 0xa
invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
add-int/lit8 v0, v0, 0x3
goto :goto_5
:cond_2f
add-int/lit8 v5, v0, 0x1
if-ge v5, v1, :cond_45
add-int/lit8 v5, v0, 0x1
invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
add-int/lit8 v3, v5, -0x30
mul-int/lit8 v5, v2, 0xa
add-int/2addr v5, v3
const/4 v6, 0x7
invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
add-int/lit8 v0, v0, 0x2
goto :goto_5
:cond_45
const/4 v5, 0x4
invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_4c
return-void
.end method
.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
.registers 3
invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
move-result v0
invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
move-result v1
add-int/2addr v0, v1
invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
move-result v1
add-int/2addr v0, v1
invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
.registers 9
const v2, 0x7fffffff
const/4 v0, -0x1
const/4 v1, 0x0
:goto_5
const/16 v4, 0x8
if-ge v1, v4, :cond_17
invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
move-result v3
if-ge v3, v2, :cond_14
move v2, v3
move v0, v1
:cond_14
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_17
return v0
.end method
.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
move-result-object v0
return-object v0
.end method
.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
.registers 8
const-string/jumbo v4, "Shift_JIS"
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_15
invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_12
sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;
:goto_11
return-object v4
:cond_12
sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;
goto :goto_11
:cond_15
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v3, 0x0
:goto_18
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ge v3, v4, :cond_3a
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v4, 0x30
if-lt v0, v4, :cond_2e
const/16 v4, 0x39
if-gt v0, v4, :cond_2e
const/4 v2, 0x1
:goto_2b
add-int/lit8 v3, v3, 0x1
goto :goto_18
:cond_2e
invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_37
const/4 v1, 0x1
goto :goto_2b
:cond_37
sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;
goto :goto_11
:cond_3a
if-eqz v1, :cond_3f
sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;
goto :goto_11
:cond_3f
if-eqz v2, :cond_44
sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;
goto :goto_11
:cond_44
sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;
goto :goto_11
.end method
.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
.registers 11
const/4 v6, 0x1
:goto_1
const/16 v7, 0x28
if-gt v6, v7, :cond_21
invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
move-result-object v5
invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I
move-result v1
invoke-virtual {v5, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
move-result-object v0
invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I
move-result v3
sub-int v2, v1, v3
add-int/lit8 v7, p0, 0x7
div-int/lit8 v4, v7, 0x8
if-lt v2, v4, :cond_1e
return-object v5
:cond_1e
add-int/lit8 v6, v6, 0x1
goto :goto_1
:cond_21
new-instance v7, Lcom/google/zxing/WriterException;
const-string/jumbo v8, "Data too big"
invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v7
.end method
.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
move-result-object v0
return-object v0
.end method
.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
.registers 25
if-nez p2, :cond_e8
const/4 v7, 0x0
:goto_3
if-nez v7, :cond_8
const-string/jumbo v7, "ISO-8859-1"
:cond_8
move-object/from16 v0, p0
invoke-static {v0, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
move-result-object v13
new-instance v10, Lcom/google/zxing/common/BitArray;
invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V
sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;
move-object/from16 v0, v20
if-ne v13, v0, :cond_2d
const-string/jumbo v20, "ISO-8859-1"
move-object/from16 v0, v20
invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-nez v20, :cond_2d
invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
move-result-object v6
if-eqz v6, :cond_2d
invoke-static {v6, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
:cond_2d
invoke-static {v13, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
new-instance v3, Lcom/google/zxing/common/BitArray;
invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V
move-object/from16 v0, p0
invoke-static {v0, v13, v3, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v20
const/16 v21, 0x1
invoke-static/range {v21 .. v21}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
move-result-object v21
move-object/from16 v0, v21
invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
move-result v21
add-int v20, v20, v21
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v21
add-int v16, v20, v21
move/from16 v0, v16
move-object/from16 v1, p1
invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
move-result-object v17
invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v20
move-object/from16 v0, v17
invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
move-result v21
add-int v20, v20, v21
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v21
add-int v2, v20, v21
move-object/from16 v0, p1
invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
move-result-object v19
new-instance v9, Lcom/google/zxing/common/BitArray;
invoke-direct {v9}, Lcom/google/zxing/common/BitArray;-><init>()V
invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V
sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;
move-object/from16 v0, v20
if-ne v13, v0, :cond_f8
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I
move-result v15
:goto_84
move-object/from16 v0, v19
invoke-static {v15, v0, v13, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
invoke-virtual {v9, v3}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V
move-object/from16 v0, v19
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
move-result-object v5
invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I
move-result v20
invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I
move-result v21
sub-int v14, v20, v21
invoke-static {v14, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V
invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I
move-result v20
invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I
move-result v21
move/from16 v0, v20
move/from16 v1, v21
invoke-static {v9, v0, v14, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
move-result-object v8
new-instance v18, Lcom/google/zxing/qrcode/encoder/QRCode;
invoke-direct/range {v18 .. v18}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V
move-object/from16 v0, v18
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
move-object/from16 v0, v18
invoke-virtual {v0, v13}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V
invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V
invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I
move-result v4
new-instance v12, Lcom/google/zxing/qrcode/encoder/ByteMatrix;
invoke-direct {v12, v4, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-static {v8, v0, v1, v12}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
move-result v11
move-object/from16 v0, v18
invoke-virtual {v0, v11}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-static {v8, v0, v1, v11, v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
move-object/from16 v0, v18
invoke-virtual {v0, v12}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
return-object v18
:cond_e8
sget-object v20, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;
move-object/from16 v0, p2
move-object/from16 v1, v20
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v20
check-cast v20, Ljava/lang/String;
move-object/from16 v7, v20
goto/16 :goto_3
:cond_f8
invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I
move-result v15
goto :goto_84
.end method
.method static generateECBytes([BI)[B
.registers 8
array-length v2, p0
add-int v4, v2, p1
new-array v3, v4, [I
const/4 v1, 0x0
:goto_6
if-ge v1, v2, :cond_11
aget-byte v4, p0, v1
and-int/lit16 v4, v4, 0xff
aput v4, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_11
new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;
invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
invoke-virtual {v4, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V
new-array v0, p1, [B
const/4 v1, 0x0
:goto_1e
if-ge v1, p1, :cond_2a
add-int v4, v2, v1
aget v4, v3, v4
int-to-byte v4, v4
aput-byte v4, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_1e
:cond_2a
return-object v0
.end method
.method static getAlphanumericCode(I)I
.registers 2
sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I
array-length v0, v0
if-ge p0, v0, :cond_a
sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I
aget v0, v0, p0
:goto_9
return v0
:cond_a
const/4 v0, -0x1
goto :goto_9
.end method
.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
.registers 16
if-lt p3, p2, :cond_b
new-instance v8, Lcom/google/zxing/WriterException;
const-string/jumbo v9, "Block ID too large"
invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v8
:cond_b
rem-int v5, p0, p2
sub-int v4, p2, v5
div-int v6, p0, p2
add-int/lit8 v7, v6, 0x1
div-int v0, p1, p2
add-int/lit8 v1, v0, 0x1
sub-int v2, v6, v0
sub-int v3, v7, v1
if-eq v2, v3, :cond_26
new-instance v8, Lcom/google/zxing/WriterException;
const-string/jumbo v9, "EC bytes mismatch"
invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v8
:cond_26
add-int v8, v4, v5
if-eq p2, v8, :cond_33
new-instance v8, Lcom/google/zxing/WriterException;
const-string/jumbo v9, "RS blocks mismatch"
invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v8
:cond_33
add-int v8, v0, v2
mul-int/2addr v8, v4
add-int v9, v1, v3
mul-int/2addr v9, v5
add-int/2addr v8, v9
if-eq p0, v8, :cond_45
new-instance v8, Lcom/google/zxing/WriterException;
const-string/jumbo v9, "Total bytes mismatch"
invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v8
:cond_45
if-ge p3, v4, :cond_4e
const/4 v8, 0x0
aput v0, p4, v8
const/4 v8, 0x0
aput v2, p5, v8
:goto_4d
return-void
:cond_4e
const/4 v8, 0x0
aput v1, p4, v8
const/4 v8, 0x0
aput v3, p5, v8
goto :goto_4d
.end method
.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
.registers 22
invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I
move-result v2
move/from16 v0, p2
if-eq v2, v0, :cond_11
new-instance v2, Lcom/google/zxing/WriterException;
const-string/jumbo v3, "Number of bits and data bytes does not match"
invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v2
:cond_11
const/4 v11, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
new-instance v9, Ljava/util/ArrayList;
move/from16 v0, p3
invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v5, 0x0
:goto_1c
move/from16 v0, p3
if-ge v5, v0, :cond_61
const/4 v2, 0x1
new-array v6, v2, [I
const/4 v2, 0x1
new-array v7, v2, [I
move/from16 v2, p1
move/from16 v3, p2
move/from16 v4, p3
invoke-static/range {v2 .. v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
const/4 v2, 0x0
aget v17, v6, v2
move/from16 v0, v17
new-array v10, v0, [B
mul-int/lit8 v2, v11, 0x8
const/4 v3, 0x0
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v2, v10, v3, v1}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V
const/4 v2, 0x0
aget v2, v7, v2
invoke-static {v10, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B
move-result-object v12
new-instance v2, Lcom/google/zxing/qrcode/encoder/BlockPair;
invoke-direct {v2, v10, v12}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V
invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
move/from16 v0, v17
invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I
move-result v14
array-length v2, v12
invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I
move-result v15
const/4 v2, 0x0
aget v2, v6, v2
add-int/2addr v11, v2
add-int/lit8 v5, v5, 0x1
goto :goto_1c
:cond_61
move/from16 v0, p2
if-eq v0, v11, :cond_6e
new-instance v2, Lcom/google/zxing/WriterException;
const-string/jumbo v3, "Data bytes does not match offset"
invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v2
:cond_6e
new-instance v16, Lcom/google/zxing/common/BitArray;
invoke-direct/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;-><init>()V
const/4 v5, 0x0
:goto_74
if-ge v5, v14, :cond_9a
invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v13
:cond_7a
:goto_7a
invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_97
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/google/zxing/qrcode/encoder/BlockPair;
invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B
move-result-object v10
array-length v2, v10
if-ge v5, v2, :cond_7a
aget-byte v2, v10, v5
const/16 v3, 0x8
move-object/from16 v0, v16
invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
goto :goto_7a
:cond_97
add-int/lit8 v5, v5, 0x1
goto :goto_74
:cond_9a
const/4 v5, 0x0
:goto_9b
if-ge v5, v15, :cond_c1
invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v13
:goto_a1
:cond_a1
invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_be
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/google/zxing/qrcode/encoder/BlockPair;
invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B
move-result-object v12
array-length v2, v12
if-ge v5, v2, :cond_a1
aget-byte v2, v12, v5
const/16 v3, 0x8
move-object/from16 v0, v16
invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
goto :goto_a1
:cond_be
add-int/lit8 v5, v5, 0x1
goto :goto_9b
:cond_c1
invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I
move-result v2
move/from16 v0, p1
if-eq v0, v2, :cond_fb
new-instance v2, Lcom/google/zxing/WriterException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Interleaving error: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move/from16 v0, p1
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " and "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " differ."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v2
:cond_fb
return-object v16
.end method
.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
.registers 8
const/4 v5, 0x0
:try_start_1
const-string/jumbo v6, "Shift_JIS"
invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_7
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_e
move-result-object v1
array-length v4, v1
rem-int/lit8 v6, v4, 0x2
if-eqz v6, :cond_10
:cond_d
:goto_d
return v5
:catch_e
move-exception v3
goto :goto_d
:cond_10
const/4 v2, 0x0
:goto_11
if-ge v2, v4, :cond_2a
aget-byte v6, v1, v2
and-int/lit16 v0, v6, 0xff
const/16 v6, 0x81
if-lt v0, v6, :cond_1f
const/16 v6, 0x9f
if-le v0, v6, :cond_27
:cond_1f
const/16 v6, 0xe0
if-lt v0, v6, :cond_d
const/16 v6, 0xeb
if-gt v0, v6, :cond_d
:cond_27
add-int/lit8 v2, v2, 0x2
goto :goto_11
:cond_2a
const/4 v5, 0x1
goto :goto_d
.end method
.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
.registers 9
const/16 v6, 0x8
const/4 v5, 0x0
shl-int/lit8 v0, p0, 0x3
invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v4
if-le v4, v0, :cond_34
new-instance v4, Lcom/google/zxing/WriterException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "data bits cannot fit in the QR Code"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " > "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v4
:cond_34
const/4 v1, 0x0
:goto_35
const/4 v4, 0x4
if-ge v1, v4, :cond_44
invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v4
if-ge v4, v0, :cond_44
invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V
add-int/lit8 v1, v1, 0x1
goto :goto_35
:cond_44
invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v4
and-int/lit8 v2, v4, 0x7
if-lez v2, :cond_55
move v1, v2
:goto_4d
if-ge v1, v6, :cond_55
invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V
add-int/lit8 v1, v1, 0x1
goto :goto_4d
:cond_55
invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I
move-result v4
sub-int v3, p0, v4
const/4 v1, 0x0
:goto_5c
if-ge v1, v3, :cond_6d
and-int/lit8 v4, v1, 0x1
if-nez v4, :cond_6a
const/16 v4, 0xec
:goto_64
invoke-virtual {p1, v4, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V
add-int/lit8 v1, v1, 0x1
goto :goto_5c
:cond_6a
const/16 v4, 0x11
goto :goto_64
:cond_6d
invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v4
if-eq v4, v0, :cond_7c
new-instance v4, Lcom/google/zxing/WriterException;
const-string/jumbo v5, "Bits size does not equal capacity"
invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V
throw v4
:cond_7c
return-void
.end method