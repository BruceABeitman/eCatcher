.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# static fields
.field private static final N1:I = 0x3

.field private static final N2:I = 0x3

.field private static final N3:I = 0x28

.field private static final N4:I = 0xa


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .registers 13

    const/4 v10, 0x5

    const/4 v7, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    :goto_8
    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    :goto_e
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_4a

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v5, :cond_40

    if-eqz p1, :cond_31

    aget-object v9, v0, v2

    aget-byte v1, v9, v4

    :goto_20
    if-ne v1, v8, :cond_36

    add-int/lit8 v6, v6, 0x1

    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_27
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    goto :goto_8

    :cond_2c
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    goto :goto_e

    :cond_31
    aget-object v9, v0, v4

    aget-byte v1, v9, v2

    goto :goto_20

    :cond_36
    if-lt v6, v10, :cond_3d

    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    :cond_3d
    const/4 v6, 0x1

    move v8, v1

    goto :goto_24

    :cond_40
    if-lt v6, v10, :cond_47

    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_4a
    return v7
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    const/4 v6, 0x0

    :goto_e
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_3d

    const/4 v5, 0x0

    :goto_13
    add-int/lit8 v7, v4, -0x1

    if-ge v5, v7, :cond_3a

    aget-object v7, v0, v6

    aget-byte v3, v7, v5

    aget-object v7, v0, v6

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_37

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v3, v7, :cond_37

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_37

    add-int/lit8 v2, v2, 0x1

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_3d
    mul-int/lit8 v7, v2, 0x3

    return v7
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 11

    const/4 v9, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v2, :cond_ac

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_a8

    aget-object v1, v0, v6

    add-int/lit8 v7, v5, 0x6

    if-ge v7, v4, :cond_56

    aget-byte v7, v1, v5

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_56

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, 0x4

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, 0x5

    aget-byte v7, v1, v7

    if-nez v7, :cond_56

    add-int/lit8 v7, v5, 0x6

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, -0x4

    invoke-static {v1, v7, v5}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-nez v7, :cond_54

    add-int/lit8 v7, v5, 0x7

    add-int/lit8 v8, v5, 0xb

    invoke-static {v1, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-eqz v7, :cond_56

    :cond_54
    add-int/lit8 v3, v3, 0x1

    :cond_56
    add-int/lit8 v7, v6, 0x6

    if-ge v7, v2, :cond_a4

    aget-object v7, v0, v6

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_a4

    add-int/lit8 v7, v6, 0x2

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, 0x3

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, 0x4

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, 0x5

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_a4

    add-int/lit8 v7, v6, 0x6

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, -0x4

    invoke-static {v0, v5, v7, v6}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-nez v7, :cond_a2

    add-int/lit8 v7, v6, 0x7

    add-int/lit8 v8, v6, 0xb

    invoke-static {v0, v5, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-eqz v7, :cond_a4

    :cond_a2
    add-int/lit8 v3, v3, 0x1

    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    :cond_a8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    :cond_ac
    mul-int/lit8 v7, v3, 0x28

    return v7
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 12

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_22

    aget-object v1, v0, v8

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v6, :cond_1f

    aget-byte v9, v1, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1c

    add-int/lit8 v4, v4, 0x1

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_22
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v10

    mul-int v5, v9, v10

    mul-int/lit8 v9, v4, 0x2

    sub-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0xa

    div-int v2, v9, v5

    mul-int/lit8 v9, v2, 0xa

    return v9
.end method

.method static getDataMaskBit(III)Z
    .registers 8

    packed-switch p0, :pswitch_data_5a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid mask pattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1d
    add-int v2, p2, p1

    and-int/lit8 v0, v2, 0x1

    :goto_21
    if-nez v0, :cond_57

    const/4 v2, 0x1

    :goto_24
    return v2

    :pswitch_25
    and-int/lit8 v0, p2, 0x1

    goto :goto_21

    :pswitch_28
    rem-int/lit8 v0, p1, 0x3

    goto :goto_21

    :pswitch_2b
    add-int v2, p2, p1

    rem-int/lit8 v0, v2, 0x3

    goto :goto_21

    :pswitch_30
    ushr-int/lit8 v2, p2, 0x1

    div-int/lit8 v3, p1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    goto :goto_21

    :pswitch_38
    mul-int v1, p2, p1

    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int v0, v2, v3

    goto :goto_21

    :pswitch_41
    mul-int v1, p2, p1

    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    goto :goto_21

    :pswitch_4b
    mul-int v1, p2, p1

    rem-int/lit8 v2, v1, 0x3

    add-int v3, p2, p1

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    goto :goto_21

    :cond_57
    const/4 v2, 0x0

    goto :goto_24

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_30
        :pswitch_38
        :pswitch_41
        :pswitch_4b
    .end packed-switch
.end method

.method private static isWhiteHorizontal([BII)Z
    .registers 6

    const/4 v1, 0x1

    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_e

    if-ltz v0, :cond_f

    array-length v2, p0

    if-ge v0, v2, :cond_f

    aget-byte v2, p0, v0

    if-ne v2, v1, :cond_f

    const/4 v1, 0x0

    :cond_e
    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static isWhiteVertical([[BIII)Z
    .registers 7

    const/4 v1, 0x1

    move v0, p2

    :goto_2
    if-ge v0, p3, :cond_10

    if-ltz v0, :cond_11

    array-length v2, p0

    if-ge v0, v2, :cond_11

    aget-object v2, p0, v0

    aget-byte v2, v2, p1

    if-ne v2, v1, :cond_11

    const/4 v1, 0x0

    :cond_10
    return v1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
