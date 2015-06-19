.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f
.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f
.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo; = null
.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f
.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
return-void
.end method
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V
return-void
.end method
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
return-void
.end method
.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
.registers 30
invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;
move-result-object v14
invoke-interface {v14}, Ljava/util/List;->size()I
move-result v16
const/16 v24, 0x3
move/from16 v0, v16
move/from16 v1, v24
if-ge v0, v1, :cond_15
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v24
throw v24
:cond_15
const/16 v24, 0x3
move/from16 v0, v16
move/from16 v1, v24
if-ne v0, v1, :cond_5e
const/16 v24, 0x1
move/from16 v0, v24
new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;
move-object/from16 v25, v0
const/16 v26, 0x0
const/16 v24, 0x3
move/from16 v0, v24
new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;
move-object/from16 v27, v0
const/16 v28, 0x0
const/16 v24, 0x0
move/from16 v0, v24
invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v24
check-cast v24, Lcom/google/zxing/qrcode/detector/FinderPattern;
aput-object v24, v27, v28
const/16 v28, 0x1
const/16 v24, 0x1
move/from16 v0, v24
invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v24
check-cast v24, Lcom/google/zxing/qrcode/detector/FinderPattern;
aput-object v24, v27, v28
const/16 v28, 0x2
const/16 v24, 0x2
move/from16 v0, v24
invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v24
check-cast v24, Lcom/google/zxing/qrcode/detector/FinderPattern;
aput-object v24, v27, v28
aput-object v27, v25, v26
move-object/from16 v24, v25
:goto_5d
return-object v24
:cond_5e
new-instance v24, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
const/16 v25, 0x0
invoke-direct/range {v24 .. v25}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V
move-object/from16 v0, v24
invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
new-instance v15, Ljava/util/ArrayList;
invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
const/4 v7, 0x0
:goto_70
add-int/lit8 v24, v16, -0x2
move/from16 v0, v24
if-ge v7, v0, :cond_1a4
invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;
if-nez v11, :cond_81
:cond_7e
add-int/lit8 v7, v7, 0x1
goto :goto_70
:cond_81
add-int/lit8 v8, v7, 0x1
:goto_83
add-int/lit8 v24, v16, -0x1
move/from16 v0, v24
if-ge v8, v0, :cond_7e
invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;
if-nez v12, :cond_94
:cond_91
add-int/lit8 v8, v8, 0x1
goto :goto_83
:cond_94
invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v24
invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v25
sub-float v24, v24, v25
invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v25
invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v26
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F
move-result v25
div-float v19, v24, v25
invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v24
invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v25
sub-float v24, v24, v25
invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F
move-result v20
const/high16 v24, 0x3f00
cmpl-float v24, v20, v24
if-lez v24, :cond_c7
const v24, 0x3d4ccccd
cmpl-float v24, v19, v24
if-gez v24, :cond_7e
:cond_c7
add-int/lit8 v9, v8, 0x1
:goto_c9
move/from16 v0, v16
if-ge v9, v0, :cond_91
invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;
if-nez v13, :cond_d8
:goto_d5
:cond_d5
add-int/lit8 v9, v9, 0x1
goto :goto_c9
:cond_d8
invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v24
invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v25
sub-float v24, v24, v25
invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v25
invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v26
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F
move-result v25
div-float v21, v24, v25
invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v24
invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v25
sub-float v24, v24, v25
invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F
move-result v22
const/high16 v24, 0x3f00
cmpl-float v24, v22, v24
if-lez v24, :cond_10b
const v24, 0x3d4ccccd
cmpl-float v24, v21, v24
if-gez v24, :cond_91
:cond_10b
const/16 v24, 0x3
move/from16 v0, v24
new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;
move-object/from16 v17, v0
const/16 v24, 0x0
aput-object v11, v17, v24
const/16 v24, 0x1
aput-object v12, v17, v24
const/16 v24, 0x2
aput-object v13, v17, v24
invoke-static/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V
new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
move-object/from16 v0, v17
invoke-direct {v10, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V
invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
move-result-object v24
invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
move-result-object v25
invoke-static/range {v24 .. v25}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
move-result v2
invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;
move-result-object v24
invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
move-result-object v25
invoke-static/range {v24 .. v25}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
move-result v4
invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
move-result-object v24
invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;
move-result-object v25
invoke-static/range {v24 .. v25}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
move-result v3
add-float v24, v2, v3
invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v25
const/high16 v26, 0x4000
mul-float v25, v25, v26
div-float v6, v24, v25
const/high16 v24, 0x4334
cmpl-float v24, v6, v24
if-gtz v24, :cond_d5
const/high16 v24, 0x4110
cmpg-float v24, v6, v24
if-ltz v24, :cond_d5
sub-float v24, v2, v3
invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F
move-result v25
div-float v24, v24, v25
invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F
move-result v18
const v24, 0x3dcccccd
cmpl-float v24, v18, v24
if-gez v24, :cond_d5
mul-float v24, v2, v2
mul-float v25, v3, v3
add-float v24, v24, v25
move/from16 v0, v24
float-to-double v0, v0
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v24
move-wide/from16 v0, v24
double-to-float v5, v0
sub-float v24, v4, v5
invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F
move-result v25
div-float v24, v24, v25
invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F
move-result v23
const v24, 0x3dcccccd
cmpl-float v24, v23, v24
if-gez v24, :cond_d5
move-object/from16 v0, v17
invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_d5
:cond_1a4
invoke-interface {v15}, Ljava/util/List;->isEmpty()Z
move-result v24
if-nez v24, :cond_1be
invoke-interface {v15}, Ljava/util/List;->size()I
move-result v24
move/from16 v0, v24
new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;
move-object/from16 v24, v0
move-object/from16 v0, v24
invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v24
check-cast v24, [[Lcom/google/zxing/qrcode/detector/FinderPattern;
goto/16 :goto_5d
:cond_1be
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v24
throw v24
.end method
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
.registers 22
if-eqz p1, :cond_8b
sget-object v18, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_8b
const/16 v17, 0x1
:goto_10
if-eqz p1, :cond_8e
sget-object v18, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_8e
const/4 v14, 0x1
:goto_1f
invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;
move-result-object v7
invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v10
invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v11
int-to-float v0, v10
move/from16 v18, v0
const/high16 v19, 0x4364
div-float v18, v18, v19
const/high16 v19, 0x4040
mul-float v18, v18, v19
move/from16 v0, v18
float-to-int v6, v0
const/16 v18, 0x3
move/from16 v0, v18
if-lt v6, v0, :cond_41
if-eqz v17, :cond_42
:cond_41
const/4 v6, 0x3
:cond_42
const/16 v18, 0x5
move/from16 v0, v18
new-array v0, v0, [I
move-object/from16 v16, v0
add-int/lit8 v4, v6, -0x1
:goto_4c
if-ge v4, v10, :cond_110
const/16 v18, 0x0
const/16 v19, 0x0
aput v19, v16, v18
const/16 v18, 0x1
const/16 v19, 0x0
aput v19, v16, v18
const/16 v18, 0x2
const/16 v19, 0x0
aput v19, v16, v18
const/16 v18, 0x3
const/16 v19, 0x0
aput v19, v16, v18
const/16 v18, 0x4
const/16 v19, 0x0
aput v19, v16, v18
const/4 v3, 0x0
const/4 v8, 0x0
:goto_6e
if-ge v8, v11, :cond_100
invoke-virtual {v7, v8, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v18
if-eqz v18, :cond_90
and-int/lit8 v18, v3, 0x1
const/16 v19, 0x1
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_82
add-int/lit8 v3, v3, 0x1
:cond_82
aget v18, v16, v3
add-int/lit8 v18, v18, 0x1
aput v18, v16, v3
:goto_88
add-int/lit8 v8, v8, 0x1
goto :goto_6e
:cond_8b
const/16 v17, 0x0
goto :goto_10
:cond_8e
const/4 v14, 0x0
goto :goto_1f
:cond_90
and-int/lit8 v18, v3, 0x1
if-nez v18, :cond_f9
const/16 v18, 0x4
move/from16 v0, v18
if-ne v3, v0, :cond_f0
invoke-static/range {v16 .. v16}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z
move-result v18
if-eqz v18, :cond_ca
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1, v4, v8, v14}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z
move-result v18
if-eqz v18, :cond_ca
const/4 v3, 0x0
const/16 v18, 0x0
const/16 v19, 0x0
aput v19, v16, v18
const/16 v18, 0x1
const/16 v19, 0x0
aput v19, v16, v18
const/16 v18, 0x2
const/16 v19, 0x0
aput v19, v16, v18
const/16 v18, 0x3
const/16 v19, 0x0
aput v19, v16, v18
const/16 v18, 0x4
const/16 v19, 0x0
aput v19, v16, v18
goto :goto_88
:cond_ca
const/16 v18, 0x0
const/16 v19, 0x2
aget v19, v16, v19
aput v19, v16, v18
const/16 v18, 0x1
const/16 v19, 0x3
aget v19, v16, v19
aput v19, v16, v18
const/16 v18, 0x2
const/16 v19, 0x4
aget v19, v16, v19
aput v19, v16, v18
const/16 v18, 0x3
const/16 v19, 0x1
aput v19, v16, v18
const/16 v18, 0x4
const/16 v19, 0x0
aput v19, v16, v18
const/4 v3, 0x3
goto :goto_88
:cond_f0
add-int/lit8 v3, v3, 0x1
aget v18, v16, v3
add-int/lit8 v18, v18, 0x1
aput v18, v16, v3
goto :goto_88
:cond_f9
aget v18, v16, v3
add-int/lit8 v18, v18, 0x1
aput v18, v16, v3
goto :goto_88
:cond_100
invoke-static/range {v16 .. v16}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z
move-result v18
if-eqz v18, :cond_10d
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1, v4, v11, v14}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z
:cond_10d
add-int/2addr v4, v6
goto/16 :goto_4c
:cond_110
invoke-direct/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
move-result-object v13
new-instance v15, Ljava/util/ArrayList;
invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
move-object v2, v13
array-length v9, v2
const/4 v5, 0x0
:goto_11c
if-ge v5, v9, :cond_132
aget-object v12, v2, v5
invoke-static {v12}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V
new-instance v18, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
move-object/from16 v0, v18
invoke-direct {v0, v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V
move-object/from16 v0, v18
invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v5, v5, 0x1
goto :goto_11c
:cond_132
invoke-interface {v15}, Ljava/util/List;->isEmpty()Z
move-result v18
if-eqz v18, :cond_13b
sget-object v18, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
:goto_13a
return-object v18
:cond_13b
invoke-interface {v15}, Ljava/util/List;->size()I
move-result v18
move/from16 v0, v18
new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v18
check-cast v18, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
goto :goto_13a
.end method