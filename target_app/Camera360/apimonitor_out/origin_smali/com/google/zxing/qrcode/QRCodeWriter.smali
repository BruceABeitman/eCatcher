.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;
    .registers 23

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v2

    if-nez v2, :cond_c

    new-instance v17, Ljava/lang/IllegalStateException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalStateException;-><init>()V

    throw v17

    :cond_c
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    shl-int/lit8 v17, p3, 0x1

    add-int v15, v4, v17

    shl-int/lit8 v17, p3, 0x1

    add-int v14, v3, v17

    move/from16 v0, p1

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v0, p2

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int v17, v11, v15

    div-int v18, v10, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int v17, v4, v8

    sub-int v17, v11, v17

    div-int/lit8 v7, v17, 0x2

    mul-int v17, v3, v8

    sub-int v17, v10, v17

    div-int/lit8 v16, v17, 0x2

    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v11, v10}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v6, 0x0

    move/from16 v13, v16

    :goto_44
    if-ge v6, v3, :cond_61

    const/4 v5, 0x0

    move v12, v7

    :goto_48
    if-ge v5, v4, :cond_5d

    invoke-virtual {v2, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_59

    invoke-virtual {v9, v12, v13, v8, v8}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_59
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v12, v8

    goto :goto_48

    :cond_5d
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v13, v8

    goto :goto_44

    :cond_61
    return-object v9
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Found empty contents"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v5, :cond_2d

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can only encode QR_CODE, but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2d
    if-ltz p3, :cond_31

    if-gez p4, :cond_55

    :cond_31
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requested dimensions are too small: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_55
    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v2, 0x4

    if-eqz p5, :cond_73

    sget-object v5, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v4, :cond_65

    move-object v1, v4

    :cond_65
    sget-object v5, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_73

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_73
    invoke-static {p1, v1, p5}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    invoke-static {v0, p3, p4, v2}, Lcom/google/zxing/qrcode/QRCodeWriter;->renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    return-object v5
.end method
