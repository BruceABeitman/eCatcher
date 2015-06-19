.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 10

    const/high16 v6, 0x40e0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3b

    div-float v2, v1, v6

    :goto_3a
    return v2

    :cond_3b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_44

    div-float v2, v0, v6

    goto :goto_3a

    :cond_44
    add-float v2, v0, v1

    const/high16 v3, 0x4160

    div-float/2addr v2, v3

    goto :goto_3a
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    div-float/2addr v3, p3

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    div-float/2addr v3, p3

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    add-int v3, v2, v1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v3, 0x7

    and-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_2a

    :goto_1d
    :pswitch_1d
    return v0

    :pswitch_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :pswitch_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :pswitch_24
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method private static createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;
    .registers 22

    move/from16 v0, p4

    int-to-float v1, v0

    const/high16 v2, 0x4060

    sub-float v3, v1, v2

    if-eqz p3, :cond_3c

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    const/high16 v1, 0x4040

    sub-float v5, v3, v1

    move v6, v5

    :goto_16
    const/high16 v1, 0x4060

    const/high16 v2, 0x4060

    const/high16 v4, 0x4060

    const/high16 v7, 0x4060

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    move v8, v3

    invoke-static/range {v1 .. v16}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v1

    return-object v1

    :cond_3c
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float v13, v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float v14, v1, v2

    move v5, v3

    move v6, v3

    goto :goto_16
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p2, p1}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .registers 24

    sub-int v17, p4, p2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    sub-int v18, p3, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_79

    const/4 v10, 0x1

    :goto_13
    if-eqz v10, :cond_21

    move/from16 v11, p1

    move/from16 p1, p2

    move/from16 p2, v11

    move/from16 v11, p3

    move/from16 p3, p4

    move/from16 p4, v11

    :cond_21
    sub-int v17, p3, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v17, p4, p2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v5

    neg-int v0, v4

    move/from16 v17, v0

    shr-int/lit8 v6, v17, 0x1

    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_7b

    const/4 v14, 0x1

    :goto_39
    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_7d

    const/16 v16, 0x1

    :goto_41
    const/4 v9, 0x0

    add-int v13, p3, v14

    move/from16 v12, p1

    move/from16 v15, p2

    :goto_48
    if-eq v12, v13, :cond_90

    if-eqz v10, :cond_80

    move v7, v15

    :goto_4d
    if-eqz v10, :cond_82

    move v8, v12

    :goto_50
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_84

    const/16 v17, 0x1

    :goto_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_89

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v9, v0, :cond_87

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v12, v15, v0, v1}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v17

    :goto_78
    return v17

    :cond_79
    const/4 v10, 0x0

    goto :goto_13

    :cond_7b
    const/4 v14, -0x1

    goto :goto_39

    :cond_7d
    const/16 v16, -0x1

    goto :goto_41

    :cond_80
    move v7, v12

    goto :goto_4d

    :cond_82
    move v8, v15

    goto :goto_50

    :cond_84
    const/16 v17, 0x0

    goto :goto_58

    :cond_87
    add-int/lit8 v9, v9, 0x1

    :cond_89
    add-int/2addr v6, v5

    if-lez v6, :cond_a8

    move/from16 v0, p4

    if-ne v15, v0, :cond_a5

    :cond_90
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v9, v0, :cond_aa

    add-int v17, p3, v14

    move/from16 v0, v17

    move/from16 v1, p4

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v17

    goto :goto_78

    :cond_a5
    add-int v15, v15, v16

    sub-int/2addr v6, v4

    :cond_a8
    add-int/2addr v12, v14

    goto :goto_48

    :cond_aa
    const/high16 v17, 0x7fc0

    goto :goto_78
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .registers 11

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v2

    const/high16 v3, 0x3f80

    sub-int v4, p3, p1

    sub-int v0, p1, v4

    if-gez v0, :cond_36

    int-to-float v4, p1

    sub-int v5, p1, v0

    int-to-float v5, v5

    div-float v3, v4, v5

    const/4 v0, 0x0

    :cond_13
    :goto_13
    int-to-float v4, p2

    sub-int v5, p4, p2

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v1, v4

    const/high16 v3, 0x3f80

    if-gez v1, :cond_56

    int-to-float v4, p2

    sub-int v5, p2, v1

    int-to-float v5, v5

    div-float v3, v4, v5

    const/4 v1, 0x0

    :cond_25
    :goto_25
    int-to-float v4, p1

    sub-int v5, v0, p1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v0, v4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v4

    add-float/2addr v2, v4

    const/high16 v4, 0x3f80

    sub-float v4, v2, v4

    return v4

    :cond_36
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    if-lt v0, v4, :cond_13

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p1

    int-to-float v4, v4

    sub-int v5, v0, p1

    int-to-float v5, v5

    div-float v3, v4, v5

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_13

    :cond_56
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    if-lt v1, v4, :cond_25

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p2

    int-to-float v4, v4

    sub-int v5, v1, p2

    int-to-float v5, v5

    div-float v3, v4, v5

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    goto :goto_25
.end method


# virtual methods
.method protected final calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public detect()Lcom/google/zxing/common/DetectorResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-nez p1, :cond_17

    const/4 v2, 0x0

    :goto_3
    iput-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    return-object v2

    :cond_17
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPointCallback;

    goto :goto_3
.end method

.method protected final findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v6, 0x0

    const/high16 v5, 0x4040

    mul-float v1, p4, p1

    float-to-int v10, v1

    sub-int v1, p2, v10

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, p2, v10

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v1, v9, v2

    int-to-float v1, v1

    mul-float v4, p1, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_28

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_28
    sub-int v1, p3, v10

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, p3, v10

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v1, v8, v3

    int-to-float v1, v1

    mul-float v4, p1, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4a

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_4a
    new-instance v0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v4, v9, v2

    sub-int v5, v8, v3

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v1

    return-object v1
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    return-object v0
.end method

.method protected final processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v13

    const/high16 v20, 0x3f80

    cmpg-float v20, v13, v20

    if-gez v20, :cond_21

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v20

    throw v20

    :cond_21
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v13}, Lcom/google/zxing/qrcode/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v9

    invoke-static {v9}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v20

    add-int/lit8 v14, v20, -0x7

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_9e

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v21

    sub-float v20, v20, v21

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v21

    add-float v6, v20, v21

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v21

    sub-float v20, v20, v21

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v21

    add-float v7, v20, v21

    const/high16 v20, 0x3f80

    const/high16 v21, 0x4040

    int-to-float v0, v14

    move/from16 v22, v0

    div-float v21, v21, v22

    sub-float v8, v20, v21

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v21

    sub-float v21, v6, v21

    mul-float v21, v21, v8

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v10, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v21

    sub-float v21, v7, v21

    mul-float v21, v21, v8

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v11, v0

    const/4 v12, 0x4

    :goto_8d
    const/16 v20, 0x10

    move/from16 v0, v20

    if-gt v12, v0, :cond_9e

    int-to-float v0, v12

    move/from16 v20, v0

    :try_start_96
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v10, v11, v1}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :try_end_9d
    .catch Lcom/google/zxing/NotFoundException; {:try_start_96 .. :try_end_9d} :catch_d0

    move-result-object v3

    :cond_9e
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v3, v9}, Lcom/google/zxing/qrcode/detector/Detector;->createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/google/zxing/qrcode/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    if-nez v3, :cond_d4

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v15, v0, [Lcom/google/zxing/ResultPoint;

    const/16 v20, 0x0

    aput-object v5, v15, v20

    const/16 v20, 0x1

    aput-object v17, v15, v20

    const/16 v20, 0x2

    aput-object v18, v15, v20

    :goto_c8
    new-instance v20, Lcom/google/zxing/common/DetectorResult;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v15}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v20

    :catch_d0
    move-exception v20

    shl-int/lit8 v12, v12, 0x1

    goto :goto_8d

    :cond_d4
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v15, v0, [Lcom/google/zxing/ResultPoint;

    const/16 v20, 0x0

    aput-object v5, v15, v20

    const/16 v20, 0x1

    aput-object v17, v15, v20

    const/16 v20, 0x2

    aput-object v18, v15, v20

    const/16 v20, 0x3

    aput-object v3, v15, v20

    goto :goto_c8
.end method
