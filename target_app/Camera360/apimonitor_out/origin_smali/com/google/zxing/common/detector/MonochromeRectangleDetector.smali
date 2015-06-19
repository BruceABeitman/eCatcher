.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .registers 13

    add-int v5, p3, p4

    shr-int/lit8 v0, v5, 0x1

    move v2, v0

    :cond_5
    :goto_5
    if-lt v2, p3, :cond_32

    if-eqz p5, :cond_14

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_14
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_1c
    move v4, v2

    :cond_1d
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p3, :cond_2b

    if-eqz p5, :cond_44

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_2b
    :goto_2b
    sub-int v3, v4, v2

    if-lt v2, p3, :cond_31

    if-le v3, p2, :cond_5

    :cond_31
    move v2, v4

    :cond_32
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    :cond_35
    :goto_35
    if-ge v1, p4, :cond_6b

    if-eqz p5, :cond_4d

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v1, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_55

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_44
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_2b

    :cond_4d
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_41

    :cond_55
    move v4, v1

    :cond_56
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p4, :cond_64

    if-eqz p5, :cond_79

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v1, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_56

    :cond_64
    :goto_64
    sub-int v3, v1, v4

    if-ge v1, p4, :cond_6a

    if-le v3, p2, :cond_35

    :cond_6a
    move v1, v4

    :cond_6b
    add-int/lit8 v1, v1, -0x1

    if-le v1, v2, :cond_82

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    :goto_78
    return-object v5

    :cond_79
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_56

    goto :goto_64

    :cond_82
    const/4 v5, 0x0

    goto :goto_78
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v9, 0x0

    move/from16 v2, p5

    move v13, p1

    :goto_4
    move/from16 v0, p8

    if-ge v2, v0, :cond_b0

    move/from16 v0, p7

    if-lt v2, v0, :cond_b0

    move/from16 v0, p4

    if-ge v13, v0, :cond_b0

    move/from16 v0, p3

    if-lt v13, v0, :cond_b0

    if-nez p2, :cond_2b

    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v3, p9

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v12

    :goto_22
    if-nez v12, :cond_a9

    if-nez v9, :cond_39

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_2b
    const/4 v8, 0x0

    move-object v3, p0

    move v4, v13

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v12

    goto :goto_22

    :cond_39
    if-nez p2, :cond_70

    sub-int v11, v2, p6

    const/4 v1, 0x0

    aget v1, v9, v1

    if-ge v1, p1, :cond_65

    const/4 v1, 0x1

    aget v1, v9, v1

    if-le v1, p1, :cond_5a

    new-instance v3, Lcom/google/zxing/ResultPoint;

    if-lez p6, :cond_55

    const/4 v1, 0x0

    aget v1, v9, v1

    int-to-float v1, v1

    :goto_4f
    int-to-float v4, v11

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v1, v3

    :goto_54
    return-object v1

    :cond_55
    const/4 v1, 0x1

    aget v1, v9, v1

    int-to-float v1, v1

    goto :goto_4f

    :cond_5a
    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aget v3, v9, v3

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_54

    :cond_65
    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_54

    :cond_70
    sub-int v10, v13, p2

    const/4 v1, 0x0

    aget v1, v9, v1

    move/from16 v0, p5

    if-ge v1, v0, :cond_9e

    const/4 v1, 0x1

    aget v1, v9, v1

    move/from16 v0, p5

    if-le v1, v0, :cond_93

    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v4, v10

    if-gez p2, :cond_8e

    const/4 v1, 0x0

    aget v1, v9, v1

    int-to-float v1, v1

    :goto_89
    invoke-direct {v3, v4, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v1, v3

    goto :goto_54

    :cond_8e
    const/4 v1, 0x1

    aget v1, v9, v1

    int-to-float v1, v1

    goto :goto_89

    :cond_93
    new-instance v1, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v10

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_54

    :cond_9e
    new-instance v1, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v10

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_54

    :cond_a9
    move-object v9, v12

    add-int v2, v2, p6

    add-int v13, v13, p2

    goto/16 :goto_4

    :cond_b0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v18

    shr-int/lit8 v6, v13, 0x1

    shr-int/lit8 v2, v18, 0x1

    const/4 v1, 0x1

    div-int/lit16 v3, v13, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v1, 0x1

    move/from16 v0, v18

    div-int/lit16 v3, v0, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v8, 0x0

    move v9, v13

    const/4 v4, 0x0

    move/from16 v5, v18

    const/4 v3, 0x0

    neg-int v7, v12

    shr-int/lit8 v10, v2, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v8, v1, -0x1

    neg-int v3, v11

    const/4 v7, 0x0

    shr-int/lit8 v10, v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v4, v1, -0x1

    const/4 v7, 0x0

    shr-int/lit8 v10, v6, 0x1

    move-object/from16 v1, p0

    move v3, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v5, v1, 0x1

    const/4 v3, 0x0

    shr-int/lit8 v10, v2, 0x1

    move-object/from16 v1, p0

    move v7, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v9, v1, 0x1

    const/4 v3, 0x0

    neg-int v7, v12

    shr-int/lit8 v10, v2, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v14

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v15, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    const/4 v3, 0x3

    aput-object v17, v1, v3

    return-object v1
.end method
