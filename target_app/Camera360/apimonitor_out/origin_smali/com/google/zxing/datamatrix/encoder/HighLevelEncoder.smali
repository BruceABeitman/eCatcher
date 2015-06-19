.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field private static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field private static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .registers 7

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, p1

    if-ge v2, v3, :cond_1f

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_c
    :goto_c
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    if-ge v2, v3, :cond_1f

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_c

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_c

    :cond_1f
    return v1
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-static {p0, v0, v1, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .registers 15

    const/16 v10, 0x81

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v6, 0x6

    new-array v3, v6, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    aput-object v7, v3, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    aput-object v6, v3, v8

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    aput-object v7, v3, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    aput-object v6, v3, v9

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v2, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    invoke-virtual {v2, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    const-string/jumbo v6, "[)>\u001e05\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_80

    const-string/jumbo v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_80

    const/16 v6, 0xec

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string/jumbo v7, "[)>\u001e05\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    :cond_66
    :goto_66
    const/4 v4, 0x0

    :cond_67
    :goto_67
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    if-eqz v6, :cond_a7

    aget-object v6, v3, v4

    invoke-interface {v6, v2}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v6

    if-ltz v6, :cond_67

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_67

    :cond_80
    const-string/jumbo v6, "[)>\u001e06\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    const-string/jumbo v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    const/16 v6, 0xed

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string/jumbo v7, "[)>\u001e06\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_66

    :cond_a7
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    if-ge v5, v0, :cond_c1

    if-eqz v4, :cond_c1

    if-eq v4, v9, :cond_c1

    const/16 v6, 0xfe

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_c1
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v0, :cond_ce

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ce
    :goto_ce
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v0, :cond_e2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v10, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ce

    :cond_e2
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static findMinimums([F[II[B)I
    .registers 9

    const/4 v4, 0x0

    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v1, v2, :cond_26

    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    aget v0, p1, v1

    if-le p2, v0, :cond_1a

    move p2, v0

    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    :cond_1a
    if-ne p2, v0, :cond_23

    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_26
    return p2
.end method

.method private static getMinimumCount([B)I
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_b

    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v1
.end method

.method static illegalCharacter(C)V
    .registers 6

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0000"

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isExtendedASCII(C)Z
    .registers 2

    const/16 v0, 0x80

    if-lt p0, v0, :cond_a

    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isNativeC40(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_14

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_14

    :cond_c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isNativeEDIFACT(C)Z
    .registers 2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isNativeText(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_14

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_14

    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isNativeX12(C)Z
    .registers 2

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x30

    if-lt p0, v0, :cond_12

    const/16 v0, 0x39

    if-le p0, v0, :cond_1a

    :cond_12
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1c

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static isSpecialB256(C)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_c

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_c

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .registers 17

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt p1, v9, :cond_7

    :goto_6
    return p2

    :cond_7
    if-nez p2, :cond_31

    const/4 v9, 0x6

    new-array v1, v9, [F

    fill-array-data v1, :array_258

    :goto_f
    const/4 v2, 0x0

    :cond_10
    add-int v9, p1, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_6a

    const v4, 0x7fffffff

    const/4 v9, 0x6

    new-array v6, v9, [B

    const/4 v9, 0x6

    new-array v3, v9, [I

    invoke-static {v1, v3, v4, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v4

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    const/4 v9, 0x0

    aget v9, v3, v9

    if-ne v9, v4, :cond_3b

    const/16 p2, 0x0

    goto :goto_6

    :cond_31
    const/4 v9, 0x6

    new-array v1, v9, [F

    fill-array-data v1, :array_268

    const/4 v9, 0x0

    aput v9, v1, p2

    goto :goto_f

    :cond_3b
    const/4 v9, 0x1

    if-ne v5, v9, :cond_46

    const/4 v9, 0x5

    aget-byte v9, v6, v9

    if-lez v9, :cond_46

    const/16 p2, 0x5

    goto :goto_6

    :cond_46
    const/4 v9, 0x1

    if-ne v5, v9, :cond_51

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_51

    const/16 p2, 0x4

    goto :goto_6

    :cond_51
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5c

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_5c

    const/16 p2, 0x2

    goto :goto_6

    :cond_5c
    const/4 v9, 0x1

    if-ne v5, v9, :cond_67

    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_67

    const/16 p2, 0x3

    goto :goto_6

    :cond_67
    const/16 p2, 0x1

    goto :goto_6

    :cond_6a
    add-int v9, p1, v2

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_10a

    const/4 v9, 0x0

    aget v10, v1, v9

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v1, v9

    :goto_82
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v9

    if-eqz v9, :cond_13e

    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_91
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v9

    if-eqz v9, :cond_15a

    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_a0
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-eqz v9, :cond_176

    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_af
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v9

    if-eqz v9, :cond_192

    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x3f40

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_bd
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v9

    if-eqz v9, :cond_1ac

    const/4 v9, 0x5

    aget v10, v1, v9

    const/high16 v11, 0x4080

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_cb
    const/4 v9, 0x4

    if-lt v2, v9, :cond_10

    const/4 v9, 0x6

    new-array v3, v9, [I

    const/4 v9, 0x6

    new-array v6, v9, [B

    const v9, 0x7fffffff

    invoke-static {v1, v3, v9, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_1b6

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    if-ge v9, v10, :cond_1b6

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_1b6

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_1b6

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_1b6

    const/16 p2, 0x0

    goto/16 :goto_6

    :cond_10a
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_127

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    aput v10, v1, v9

    const/4 v9, 0x0

    aget v10, v1, v9

    const/high16 v11, 0x4000

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_82

    :cond_127
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    aput v10, v1, v9

    const/4 v9, 0x0

    aget v10, v1, v9

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_82

    :cond_13e
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_14f

    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_91

    :cond_14f
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_91

    :cond_15a
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_16b

    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_a0

    :cond_16b
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_a0

    :cond_176
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_187

    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x408aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_af

    :cond_187
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x40555555

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_af

    :cond_192
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_1a2

    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x4088

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_bd

    :cond_1a2
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x4050

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_bd

    :cond_1ac
    const/4 v9, 0x5

    aget v10, v1, v9

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_cb

    :cond_1b6
    const/4 v9, 0x5

    aget v9, v3, v9

    const/4 v10, 0x0

    aget v10, v3, v10

    if-lt v9, v10, :cond_1cf

    const/4 v9, 0x1

    aget-byte v9, v6, v9

    const/4 v10, 0x2

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x4

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    if-nez v9, :cond_1d3

    :cond_1cf
    const/16 p2, 0x5

    goto/16 :goto_6

    :cond_1d3
    const/4 v9, 0x1

    if-ne v5, v9, :cond_1df

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_1df

    const/16 p2, 0x4

    goto/16 :goto_6

    :cond_1df
    const/4 v9, 0x1

    if-ne v5, v9, :cond_1eb

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_1eb

    const/16 p2, 0x2

    goto/16 :goto_6

    :cond_1eb
    const/4 v9, 0x1

    if-ne v5, v9, :cond_1f7

    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_1f7

    const/16 p2, 0x3

    goto/16 :goto_6

    :cond_1f7
    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aget v10, v3, v10

    if-ge v9, v10, :cond_10

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_10

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_10

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_10

    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_22b

    const/16 p2, 0x1

    goto/16 :goto_6

    :cond_22b
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ne v9, v10, :cond_10

    add-int v9, p1, v2

    add-int/lit8 v7, v9, 0x1

    :goto_237
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v7, v9, :cond_251

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v9

    if-eqz v9, :cond_24b

    const/16 p2, 0x3

    goto/16 :goto_6

    :cond_24b
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-nez v9, :cond_255

    :cond_251
    const/16 p2, 0x1

    goto/16 :goto_6

    :cond_255
    add-int/lit8 v7, v7, 0x1

    goto :goto_237

    :array_258
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xa0t 0x3ft
    .end array-data

    :array_268
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x10t 0x40t
    .end array-data
.end method

.method private static randomize253State(CI)C
    .registers 5

    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit8 v0, v2, 0x1

    add-int v1, p0, v0

    const/16 v2, 0xfe

    if-gt v1, v2, :cond_e

    int-to-char v2, v1

    :goto_d
    return v2

    :cond_e
    add-int/lit16 v2, v1, -0xfe

    int-to-char v2, v2

    goto :goto_d
.end method
