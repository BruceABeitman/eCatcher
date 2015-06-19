.class final Lcom/google/zxing/datamatrix/encoder/X12Encoder;
.super Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.source "X12Encoder.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rem-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_5

    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v4

    if-eq v3, v4, :cond_5

    invoke-virtual {p1, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    :cond_3a
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .registers 5

    const/4 v1, 0x1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9
    return v1

    :cond_a
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_12

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_1b

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1b
    const/16 v0, 0x20

    if-ne p1, v0, :cond_24

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_24
    const/16 v0, 0x30

    if-lt p1, v0, :cond_35

    const/16 v0, 0x39

    if-gt p1, v0, :cond_35

    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_35
    const/16 v0, 0x41

    if-lt p1, v0, :cond_46

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_46

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xe

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_46
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    goto :goto_9
.end method

.method public getEncodingMode()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .registers 10

    const/16 v6, 0xfe

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    if-ne v1, v5, :cond_28

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    if-le v0, v5, :cond_36

    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_36
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_28
.end method
