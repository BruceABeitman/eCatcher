.class final Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return-void
.end method

.method private removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_58

    aget-object v0, p1, v1

    aget-object v4, p1, v1

    if-nez v4, :cond_e

    :cond_b
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v4

    rem-int/lit8 v3, v4, 0x1e

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-le v2, v4, :cond_21

    aput-object v6, p1, v1

    goto :goto_b

    :cond_21
    iget-boolean v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v4, :cond_27

    add-int/lit8 v2, v2, 0x2

    :cond_27
    rem-int/lit8 v4, v2, 0x3

    packed-switch v4, :pswitch_data_5a

    goto :goto_b

    :pswitch_2d
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v5

    if-eq v4, v5, :cond_b

    aput-object v6, p1, v1

    goto :goto_b

    :pswitch_3a
    div-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v5

    if-ne v4, v5, :cond_4a

    rem-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v5

    if-eq v4, v5, :cond_b

    :cond_4a
    aput-object v6, p1, v1

    goto :goto_b

    :pswitch_4d
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v5

    if-eq v4, v5, :cond_b

    aput-object v6, p1, v1

    goto :goto_b

    :cond_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_3a
        :pswitch_4d
    .end packed-switch
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I
    .registers 24

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6b

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v17

    :goto_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v18, v0

    if-eqz v18, :cond_70

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    :goto_2a
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v12

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v14

    sub-int v18, v14, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v2, v18, v19

    const/4 v3, -0x1

    const/4 v15, 0x1

    const/4 v11, 0x0

    move v10, v12

    :goto_62
    if-ge v10, v14, :cond_dd

    aget-object v18, v9, v10

    if-nez v18, :cond_75

    :goto_68
    add-int/lit8 v10, v10, 0x1

    goto :goto_62

    :cond_6b
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v17

    goto :goto_1e

    :cond_70
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    goto :goto_2a

    :cond_75
    aget-object v8, v9, v10

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v18

    sub-int v16, v18, v3

    if-nez v16, :cond_82

    add-int/lit8 v11, v11, 0x1

    goto :goto_68

    :cond_82
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_94

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/4 v11, 0x1

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    goto :goto_68

    :cond_94
    if-ltz v16, :cond_a8

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a8

    move/from16 v0, v16

    if-le v0, v10, :cond_ad

    :cond_a8
    const/16 v18, 0x0

    aput-object v18, v9, v10

    goto :goto_68

    :cond_ad
    const/16 v18, 0x2

    move/from16 v0, v18

    if-le v15, v0, :cond_c9

    add-int/lit8 v18, v15, -0x2

    mul-int v6, v18, v16

    :goto_b7
    if-lt v6, v10, :cond_cc

    const/4 v7, 0x1

    :goto_ba
    const/4 v13, 0x1

    :goto_bb
    if-gt v13, v6, :cond_d0

    if-nez v7, :cond_d0

    sub-int v18, v10, v13

    aget-object v18, v9, v18

    if-eqz v18, :cond_ce

    const/4 v7, 0x1

    :goto_c6
    add-int/lit8 v13, v13, 0x1

    goto :goto_bb

    :cond_c9
    move/from16 v6, v16

    goto :goto_b7

    :cond_cc
    const/4 v7, 0x0

    goto :goto_ba

    :cond_ce
    const/4 v7, 0x0

    goto :goto_c6

    :cond_d0
    if-eqz v7, :cond_d7

    const/16 v18, 0x0

    aput-object v18, v9, v10

    goto :goto_68

    :cond_d7
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    const/4 v11, 0x1

    goto :goto_68

    :cond_dd
    float-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    return v18
.end method

.method adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I
    .registers 20

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v14, :cond_49

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v13

    :goto_e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v14, :cond_4e

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    :goto_18
    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v9

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v10

    sub-int v14, v10, v9

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v15

    int-to-float v15, v15

    div-float v1, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    const/4 v2, -0x1

    const/4 v11, 0x1

    const/4 v8, 0x0

    move v7, v9

    :goto_40
    if-ge v7, v10, :cond_84

    aget-object v14, v6, v7

    if-nez v14, :cond_53

    :goto_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_49
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v13

    goto :goto_e

    :cond_4e
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    goto :goto_18

    :cond_53
    aget-object v5, v6, v7

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v14

    sub-int v12, v14, v2

    if-nez v12, :cond_63

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_63
    const/4 v14, 0x1

    if-ne v12, v14, :cond_70

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v8, 0x1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    goto :goto_46

    :cond_70
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v15

    if-lt v14, v15, :cond_7e

    const/4 v14, 0x0

    aput-object v14, v6, v7

    goto :goto_46

    :cond_7e
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    const/4 v8, 0x1

    goto :goto_46

    :cond_84
    float-to-double v14, v1

    const-wide/high16 v16, 0x3fe0

    add-double v14, v14, v16

    double-to-int v14, v14

    return v14
.end method

.method getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 19

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    new-instance v2, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    new-instance v6, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    new-instance v3, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    move-object v1, v9

    array-length v11, v1

    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v11, :cond_58

    aget-object v7, v1, v10

    if-nez v7, :cond_24

    :goto_21
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    :cond_24
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v13

    rem-int/lit8 v12, v13, 0x1e

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v13, :cond_39

    add-int/lit8 v8, v8, 0x2

    :cond_39
    rem-int/lit8 v13, v8, 0x3

    packed-switch v13, :pswitch_data_d0

    goto :goto_21

    :pswitch_3f
    mul-int/lit8 v13, v12, 0x3

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v6, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_21

    :pswitch_47
    div-int/lit8 v13, v12, 0x3

    invoke-virtual {v3, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    rem-int/lit8 v13, v12, 0x3

    invoke-virtual {v5, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_21

    :pswitch_52
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v2, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_21

    :cond_58
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    array-length v13, v13

    if-eqz v13, :cond_a3

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    array-length v13, v13

    if-eqz v13, :cond_a3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    array-length v13, v13

    if-eqz v13, :cond_a3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    array-length v13, v13

    if-eqz v13, :cond_a3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    const/4 v14, 0x1

    if-lt v13, v14, :cond_a3

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v13, v14

    const/4 v14, 0x3

    if-lt v13, v14, :cond_a3

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x5a

    if-le v13, v14, :cond_a5

    :cond_a3
    const/4 v4, 0x0

    :goto_a4
    return-object v4

    :cond_a5
    new-instance v4, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v16

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-direct {v4, v13, v14, v15, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    goto :goto_a4

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_47
        :pswitch_52
    .end packed-switch
.end method

.method getRowHeights()[I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v5, 0x0

    :cond_7
    return-object v5

    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v7

    new-array v5, v7, [I

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v4, :cond_7

    aget-object v2, v0, v3

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    array-length v7, v5

    if-lt v6, v7, :cond_29

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :cond_29
    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method

.method isLeft()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method setRowNumbers()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IsLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
