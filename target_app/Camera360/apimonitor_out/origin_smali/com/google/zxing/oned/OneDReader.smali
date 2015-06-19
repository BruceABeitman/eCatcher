.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field protected static final INTEGER_MATH_SHIFT:I = 0x8

.field protected static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v3

    new-instance v11, Lcom/google/zxing/common/BitArray;

    move/from16 v0, v16

    invoke-direct {v11, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    shr-int/lit8 v7, v3, 0x1

    if-eqz p2, :cond_51

    sget-object v18, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_51

    const/4 v15, 0x1

    :goto_20
    const/16 v19, 0x1

    if-eqz v15, :cond_53

    const/16 v18, 0x8

    :goto_26
    shr-int v18, v3, v18

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-eqz v15, :cond_56

    move v6, v3

    :goto_33
    const/16 v17, 0x0

    :goto_35
    move/from16 v0, v17

    if-ge v0, v6, :cond_4c

    add-int/lit8 v18, v17, 0x1

    shr-int/lit8 v14, v18, 0x1

    and-int/lit8 v18, v17, 0x1

    if-nez v18, :cond_59

    const/4 v5, 0x1

    :goto_42
    if-eqz v5, :cond_5b

    :goto_44
    mul-int v18, v13, v14

    add-int v12, v7, v18

    if-ltz v12, :cond_4c

    if-lt v12, v3, :cond_5d

    :cond_4c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    :cond_51
    const/4 v15, 0x0

    goto :goto_20

    :cond_53
    const/16 v18, 0x5

    goto :goto_26

    :cond_56
    const/16 v6, 0xf

    goto :goto_33

    :cond_59
    const/4 v5, 0x0

    goto :goto_42

    :cond_5b
    neg-int v14, v14

    goto :goto_44

    :cond_5d
    :try_start_5d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_62
    .catch Lcom/google/zxing/NotFoundException; {:try_start_5d .. :try_end_62} :catch_104

    move-result-object v11

    const/4 v2, 0x0

    :goto_64
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v2, v0, :cond_105

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_98

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->reverse()V

    if-eqz p2, :cond_98

    sget-object v18, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_98

    new-instance v8, Ljava/util/EnumMap;

    const-class v18, Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v18, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p2, v8

    :cond_98
    :try_start_98
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v11, v1}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v10

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_103

    sget-object v18, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v19, 0xb4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    if-eqz v9, :cond_103

    const/16 v18, 0x0

    new-instance v19, Lcom/google/zxing/ResultPoint;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aget-object v21, v9, v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v21

    sub-float v20, v20, v21

    const/high16 v21, 0x3f80

    sub-float v20, v20, v21

    const/16 v21, 0x0

    aget-object v21, v9, v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v19, v9, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/google/zxing/ResultPoint;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aget-object v21, v9, v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v21

    sub-float v20, v20, v21

    const/high16 v21, 0x3f80

    sub-float v20, v20, v21

    const/16 v21, 0x1

    aget-object v21, v9, v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v19, v9, v18
    :try_end_103
    .catch Lcom/google/zxing/ReaderException; {:try_start_98 .. :try_end_103} :catch_109

    :cond_103
    return-object v10

    :catch_104
    move-exception v4

    :cond_105
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_35

    :catch_109
    move-exception v18

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_64
.end method

.method protected static patternMatchVariance([I[II)I
    .registers 15

    const v10, 0x7fffffff

    array-length v2, p0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_12

    aget v11, p0, v1

    add-int/2addr v5, v11

    aget v11, p1, v1

    add-int/2addr v3, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    if-ge v5, v3, :cond_15

    :cond_14
    :goto_14
    return v10

    :cond_15
    shl-int/lit8 v11, v5, 0x8

    div-int v7, v11, v3

    mul-int v11, p2, v7

    shr-int/lit8 p2, v11, 0x8

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v2, :cond_36

    aget v11, p0, v9

    shl-int/lit8 v0, v11, 0x8

    aget v11, p1, v9

    mul-int v4, v11, v7

    if-le v0, v4, :cond_33

    sub-int v8, v0, v4

    :goto_2d
    if-gt v8, p2, :cond_14

    add-int/2addr v6, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    :cond_33
    sub-int v8, v4, v0

    goto :goto_2d

    :cond_36
    div-int v10, v6, v5

    goto :goto_14
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    array-length v4, p2

    invoke-static {p2, v6, v4, v6}, Ljava/util/Arrays;->fill([IIII)V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-lt p1, v1, :cond_11

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    :cond_11
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_2c

    move v3, v5

    :goto_18
    const/4 v0, 0x0

    move v2, p1

    :goto_1a
    if-ge v2, v1, :cond_32

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_2e

    aget v7, p2, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, p2, v0

    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2c
    move v3, v6

    goto :goto_18

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_3f

    :cond_32
    if-eq v0, v4, :cond_47

    add-int/lit8 v5, v4, -0x1

    if-ne v0, v5, :cond_3a

    if-eq v2, v1, :cond_47

    :cond_3a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    :cond_3f
    aput v5, p2, v0

    if-nez v3, :cond_45

    move v3, v5

    :goto_44
    goto :goto_29

    :cond_45
    move v3, v6

    goto :goto_44

    :cond_47
    return-void
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    array-length v1, p2

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    :cond_5
    :goto_5
    if-lez p1, :cond_19

    if-ltz v1, :cond_19

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v0, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    goto :goto_5

    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    :cond_19
    if-ltz v1, :cond_20

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_20
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v6

    :cond_4
    return-object v6

    :catch_5
    move-exception v3

    if-eqz p2, :cond_72

    sget-object v9, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    const/4 v8, 0x1

    :goto_11
    if-eqz v8, :cond_74

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v9

    if-eqz v9, :cond_74

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v2

    const/16 v4, 0x10e

    if-eqz v2, :cond_40

    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v4

    rem-int/lit16 v4, v9, 0x168

    :cond_40
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    :goto_54
    array-length v9, v5

    if-ge v1, v9, :cond_4

    new-instance v9, Lcom/google/zxing/ResultPoint;

    int-to-float v10, v0

    aget-object v11, v5, v1

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f80

    sub-float/2addr v10, v11

    aget-object v11, v5, v1

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_72
    const/4 v8, 0x0

    goto :goto_11

    :cond_74
    throw v3
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .registers 1

    return-void
.end method
