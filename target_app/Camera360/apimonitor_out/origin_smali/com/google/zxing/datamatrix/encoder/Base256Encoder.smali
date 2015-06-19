.class final Lcom/google/zxing/datamatrix/encoder/Base256Encoder;
.super Ljava/lang/Object;
.source "Base256Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static randomize255State(CI)C
    .registers 5

    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, 0x1

    add-int v1, p0, v0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_e

    int-to-char v2, v1

    :goto_d
    return v2

    :cond_e
    add-int/lit16 v2, v1, -0x100

    int-to-char v2, v2

    goto :goto_d
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .registers 16

    const/16 v13, 0xf9

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v10

    iget v11, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v7

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v10

    if-eq v7, v10, :cond_c

    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v10

    add-int/2addr v10, v3

    add-int v2, v10, v5

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v10

    sub-int/2addr v10, v2

    if-lez v10, :cond_7c

    move v6, v8

    :goto_53
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v10

    if-nez v10, :cond_5b

    if-eqz v6, :cond_61

    :cond_5b
    if-gt v3, v13, :cond_7e

    int-to-char v8, v3

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_61
    :goto_61
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_66
    if-ge v4, v1, :cond_ad

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->randomize255State(CI)C

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_7c
    move v6, v9

    goto :goto_53

    :cond_7e
    if-le v3, v13, :cond_93

    const/16 v10, 0x613

    if-gt v3, v10, :cond_93

    div-int/lit16 v10, v3, 0xfa

    add-int/lit16 v10, v10, 0xf9

    int-to-char v10, v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    rem-int/lit16 v9, v3, 0xfa

    int-to-char v9, v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_61

    :cond_93
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Message length not in valid ranges: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_ad
    return-void
.end method

.method public getEncodingMode()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method
