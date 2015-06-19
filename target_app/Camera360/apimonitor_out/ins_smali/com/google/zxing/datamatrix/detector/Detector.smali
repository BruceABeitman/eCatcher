.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"
.field private final image:Lcom/google/zxing/common/BitMatrix;
.field private final rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;
invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V
iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;
return-void
.end method
.method private correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
.registers 18
invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
move-result v9
int-to-float v9, v9
move/from16 v0, p5
int-to-float v10, v0
div-float v3, v9, v10
invoke-static/range {p3 .. p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
move-result v7
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v10
sub-float/2addr v9, v10
int-to-float v10, v7
div-float v4, v9, v10
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
sub-float/2addr v9, v10
int-to-float v10, v7
div-float v8, v9, v10
new-instance v1, Lcom/google/zxing/ResultPoint;
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
mul-float v10, v3, v4
add-float/2addr v9, v10
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
mul-float v11, v3, v8
add-float/2addr v10, v11
invoke-direct {v1, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
invoke-static {p1, p3}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
move-result v9
int-to-float v9, v9
move/from16 v0, p5
int-to-float v10, v0
div-float v3, v9, v10
move-object/from16 v0, p4
invoke-static {p2, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
move-result v7
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v10
sub-float/2addr v9, v10
int-to-float v10, v7
div-float v4, v9, v10
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
sub-float/2addr v9, v10
int-to-float v10, v7
div-float v8, v9, v10
new-instance v2, Lcom/google/zxing/ResultPoint;
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
mul-float v10, v3, v4
add-float/2addr v9, v10
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
mul-float v11, v3, v8
add-float/2addr v10, v11
invoke-direct {v2, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v9
if-nez v9, :cond_84
invoke-direct {p0, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v9
if-eqz v9, :cond_82
move-object v1, v2
:cond_81
:goto_81
return-object v1
:cond_82
const/4 v1, 0x0
goto :goto_81
:cond_84
invoke-direct {p0, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v9
if-eqz v9, :cond_81
invoke-direct {p0, p3, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v9
invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v9
invoke-direct {p0, p2, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v10
invoke-virtual {v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v10
sub-int/2addr v9, v10
invoke-static {v9}, Ljava/lang/Math;->abs(I)I
move-result v5
invoke-direct {p0, p3, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v9
invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v9
invoke-direct {p0, p2, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v10
invoke-virtual {v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v10
sub-int/2addr v9, v10
invoke-static {v9}, Ljava/lang/Math;->abs(I)I
move-result v6
if-le v5, v6, :cond_81
move-object v1, v2
goto :goto_81
.end method
.method private correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;
.registers 19
invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
move-result v9
int-to-float v9, v9
move/from16 v0, p5
int-to-float v10, v0
div-float v3, v9, v10
invoke-static/range {p3 .. p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
move-result v7
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v10
sub-float/2addr v9, v10
int-to-float v10, v7
div-float v4, v9, v10
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
sub-float/2addr v9, v10
int-to-float v10, v7
div-float v8, v9, v10
new-instance v1, Lcom/google/zxing/ResultPoint;
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
mul-float v10, v3, v4
add-float/2addr v9, v10
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
mul-float v11, v3, v8
add-float/2addr v10, v11
invoke-direct {v1, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
invoke-static {p1, p3}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
move-result v9
int-to-float v9, v9
move/from16 v0, p6
int-to-float v10, v0
div-float v3, v9, v10
move-object/from16 v0, p4
invoke-static {p2, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
move-result v7
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v10
sub-float/2addr v9, v10
int-to-float v10, v7
div-float v4, v9, v10
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
sub-float/2addr v9, v10
int-to-float v10, v7
div-float v8, v9, v10
new-instance v2, Lcom/google/zxing/ResultPoint;
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
mul-float v10, v3, v4
add-float/2addr v9, v10
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
mul-float v11, v3, v8
add-float/2addr v10, v11
invoke-direct {v2, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v9
if-nez v9, :cond_83
invoke-direct {p0, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v9
if-eqz v9, :cond_81
:cond_80
:goto_80
return-object v2
:cond_81
const/4 v2, 0x0
goto :goto_80
:cond_83
invoke-direct {p0, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v9
if-nez v9, :cond_8b
move-object v2, v1
goto :goto_80
:cond_8b
invoke-direct {p0, p3, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v9
invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v9
sub-int v9, p5, v9
invoke-static {v9}, Ljava/lang/Math;->abs(I)I
move-result v9
invoke-direct {p0, p2, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v10
invoke-virtual {v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v10
sub-int v10, p6, v10
invoke-static {v10}, Ljava/lang/Math;->abs(I)I
move-result v10
add-int v5, v9, v10
invoke-direct {p0, p3, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v9
invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v9
sub-int v9, p5, v9
invoke-static {v9}, Ljava/lang/Math;->abs(I)I
move-result v9
invoke-direct {p0, p2, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v10
invoke-virtual {v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v10
sub-int v10, p6, v10
invoke-static {v10}, Ljava/lang/Math;->abs(I)I
move-result v10
add-int v6, v9, v10
if-gt v5, v6, :cond_80
move-object v2, v1
goto :goto_80
.end method
.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
.registers 3
invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
move-result v0
invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v0
return v0
.end method
.method private static increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V
.registers 4
invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_11
const/4 v1, 0x1
:goto_9
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_11
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
add-int/lit8 v1, v1, 0x1
goto :goto_9
.end method
.method private isValid(Lcom/google/zxing/ResultPoint;)Z
.registers 5
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v0
cmpl-float v0, v0, v2
if-ltz v0, :cond_31
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v0
iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v1
int-to-float v1, v1
cmpg-float v0, v0, v1
if-gez v0, :cond_31
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v0
cmpl-float v0, v0, v2
if-lez v0, :cond_31
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v0
iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v1
int-to-float v1, v1
cmpg-float v0, v0, v1
if-gez v0, :cond_31
const/4 v0, 0x1
:goto_30
return v0
:cond_31
const/4 v0, 0x0
goto :goto_30
.end method
.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
.registers 28
invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;
move-result-object v1
const/high16 v5, 0x3f00
const/high16 v6, 0x3f00
move/from16 v0, p5
int-to-float v2, v0
const/high16 v3, 0x3f00
sub-float v7, v2, v3
const/high16 v8, 0x3f00
move/from16 v0, p5
int-to-float v2, v0
const/high16 v3, 0x3f00
sub-float v9, v2, v3
move/from16 v0, p6
int-to-float v2, v0
const/high16 v3, 0x3f00
sub-float v10, v2, v3
const/high16 v11, 0x3f00
move/from16 v0, p6
int-to-float v2, v0
const/high16 v3, 0x3f00
sub-float v12, v2, v3
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v13
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v14
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v15
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v16
invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v17
invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v18
invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v19
invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v20
move-object/from16 v2, p0
move/from16 v3, p5
move/from16 v4, p6
invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
move-result-object v2
return-object v2
.end method
.method private transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
.registers 26
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v20
move/from16 v0, v20
float-to-int v7, v0
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v20
move/from16 v0, v20
float-to-int v8, v0
invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v20
move/from16 v0, v20
float-to-int v13, v0
invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v20
move/from16 v0, v20
float-to-int v14, v0
sub-int v20, v14, v8
invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I
move-result v20
sub-int v21, v13, v7
invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I
move-result v21
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_a5
const/4 v11, 0x1
:goto_2f
if-eqz v11, :cond_37
move v12, v7
move v7, v8
move v8, v12
move v12, v13
move v13, v14
move v14, v12
:cond_37
sub-int v20, v13, v7
invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I
move-result v4
sub-int v20, v14, v8
invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I
move-result v5
neg-int v0, v4
move/from16 v20, v0
shr-int/lit8 v6, v20, 0x1
if-ge v8, v14, :cond_a7
const/16 v19, 0x1
:goto_4c
if-ge v7, v13, :cond_aa
const/16 v17, 0x1
:goto_50
const/4 v15, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
move-object/from16 v22, v0
if-eqz v11, :cond_ad
move/from16 v21, v8
:goto_5b
if-eqz v11, :cond_b0
move/from16 v20, v7
:goto_5f
move-object/from16 v0, v22
move/from16 v1, v21
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v9
move/from16 v16, v7
move/from16 v18, v8
:goto_6d
move/from16 v0, v16
if-eq v0, v13, :cond_95
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
move-object/from16 v22, v0
if-eqz v11, :cond_b3
move/from16 v21, v18
:goto_7b
if-eqz v11, :cond_b6
move/from16 v20, v16
:goto_7f
move-object/from16 v0, v22
move/from16 v1, v21
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v10
if-eq v10, v9, :cond_8e
add-int/lit8 v15, v15, 0x1
move v9, v10
:cond_8e
add-int/2addr v6, v5
if-lez v6, :cond_bc
move/from16 v0, v18
if-ne v0, v14, :cond_b9
:cond_95
new-instance v20, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
const/16 v21, 0x0
move-object/from16 v0, v20
move-object/from16 v1, p1
move-object/from16 v2, p2
move-object/from16 v3, v21
invoke-direct {v0, v1, v2, v15, v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$1;)V
return-object v20
:cond_a5
const/4 v11, 0x0
goto :goto_2f
:cond_a7
const/16 v19, -0x1
goto :goto_4c
:cond_aa
const/16 v17, -0x1
goto :goto_50
:cond_ad
move/from16 v21, v7
goto :goto_5b
:cond_b0
move/from16 v20, v8
goto :goto_5f
:cond_b3
move/from16 v21, v16
goto :goto_7b
:cond_b6
move/from16 v20, v18
goto :goto_7f
:cond_b9
add-int v18, v18, v19
sub-int/2addr v6, v4
:cond_bc
add-int v16, v16, v17
goto :goto_6d
.end method
.method public detect()Lcom/google/zxing/common/DetectorResult;
.registers 39
move-object/from16 v0, p0
iget-object v3, v0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;
invoke-virtual {v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;
move-result-object v22
const/4 v3, 0x0
aget-object v31, v22, v3
const/4 v3, 0x1
aget-object v32, v22, v3
const/4 v3, 0x2
aget-object v33, v22, v3
const/4 v3, 0x3
aget-object v35, v22, v3
new-instance v36, Ljava/util/ArrayList;
const/4 v3, 0x4
move-object/from16 v0, v36
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
move-object/from16 v0, p0
move-object/from16 v1, v31
move-object/from16 v2, v32
invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v3
move-object/from16 v0, v36
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
move-object/from16 v1, v31
move-object/from16 v2, v33
invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v3
move-object/from16 v0, v36
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
move-object/from16 v1, v32
move-object/from16 v2, v35
invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v3
move-object/from16 v0, v36
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
move-object/from16 v1, v33
move-object/from16 v2, v35
invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v3
move-object/from16 v0, v36
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
const/4 v10, 0x0
invoke-direct {v3, v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V
move-object/from16 v0, v36
invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
const/4 v3, 0x0
move-object/from16 v0, v36
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v26
check-cast v26, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
const/4 v3, 0x1
move-object/from16 v0, v36
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v27
check-cast v27, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
new-instance v34, Ljava/util/HashMap;
invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V
invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;
move-result-object v3
move-object/from16 v0, v34
invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V
invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;
move-result-object v3
move-object/from16 v0, v34
invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V
invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;
move-result-object v3
move-object/from16 v0, v34
invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V
invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;
move-result-object v3
move-object/from16 v0, v34
invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V
const/16 v29, 0x0
const/4 v4, 0x0
const/16 v28, 0x0
invoke-interface/range {v34 .. v34}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v25
:goto_ab
invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_d5
invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v24
check-cast v24, Ljava/util/Map$Entry;
invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v30
check-cast v30, Lcom/google/zxing/ResultPoint;
invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v37
check-cast v37, Ljava/lang/Integer;
invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I
move-result v3
const/4 v10, 0x2
if-ne v3, v10, :cond_cd
move-object/from16 v4, v30
goto :goto_ab
:cond_cd
if-nez v29, :cond_d2
move-object/from16 v29, v30
goto :goto_ab
:cond_d2
move-object/from16 v28, v30
goto :goto_ab
:cond_d5
if-eqz v29, :cond_db
if-eqz v4, :cond_db
if-nez v28, :cond_e0
:cond_db
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v3
throw v3
:cond_e0
const/4 v3, 0x3
new-array v0, v3, [Lcom/google/zxing/ResultPoint;
move-object/from16 v23, v0
const/4 v3, 0x0
aput-object v29, v23, v3
const/4 v3, 0x1
aput-object v4, v23, v3
const/4 v3, 0x2
aput-object v28, v23, v3
invoke-static/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V
const/4 v3, 0x0
aget-object v5, v23, v3
const/4 v3, 0x1
aget-object v4, v23, v3
const/4 v3, 0x2
aget-object v6, v23, v3
move-object/from16 v0, v34
move-object/from16 v1, v31
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_188
move-object/from16 v7, v31
:goto_106
move-object/from16 v0, p0
invoke-direct {v0, v6, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v8
move-object/from16 v0, p0
invoke-direct {v0, v5, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v9
and-int/lit8 v3, v8, 0x1
const/4 v10, 0x1
if-ne v3, v10, :cond_121
add-int/lit8 v8, v8, 0x1
:cond_121
add-int/lit8 v8, v8, 0x2
and-int/lit8 v3, v9, 0x1
const/4 v10, 0x1
if-ne v3, v10, :cond_12a
add-int/lit8 v9, v9, 0x1
:cond_12a
add-int/lit8 v9, v9, 0x2
mul-int/lit8 v3, v8, 0x4
mul-int/lit8 v10, v9, 0x7
if-ge v3, v10, :cond_138
mul-int/lit8 v3, v9, 0x4
mul-int/lit8 v10, v8, 0x7
if-lt v3, v10, :cond_1a8
:cond_138
move-object/from16 v3, p0
invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;
move-result-object v14
if-nez v14, :cond_141
move-object v14, v7
:cond_141
move-object/from16 v0, p0
invoke-direct {v0, v6, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v8
move-object/from16 v0, p0
invoke-direct {v0, v5, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v9
and-int/lit8 v3, v8, 0x1
const/4 v10, 0x1
if-ne v3, v10, :cond_15c
add-int/lit8 v8, v8, 0x1
:cond_15c
and-int/lit8 v3, v9, 0x1
const/4 v10, 0x1
if-ne v3, v10, :cond_163
add-int/lit8 v9, v9, 0x1
:cond_163
move-object/from16 v0, p0
iget-object v10, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
move-object v11, v6
move-object v12, v4
move-object v13, v5
move v15, v8
move/from16 v16, v9
invoke-static/range {v10 .. v16}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
move-result-object v21
:goto_171
new-instance v3, Lcom/google/zxing/common/DetectorResult;
const/4 v10, 0x4
new-array v10, v10, [Lcom/google/zxing/ResultPoint;
const/4 v11, 0x0
aput-object v6, v10, v11
const/4 v11, 0x1
aput-object v4, v10, v11
const/4 v11, 0x2
aput-object v5, v10, v11
const/4 v11, 0x3
aput-object v14, v10, v11
move-object/from16 v0, v21
invoke-direct {v3, v0, v10}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V
return-object v3
:cond_188
move-object/from16 v0, v34
move-object/from16 v1, v32
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_196
move-object/from16 v7, v32
goto/16 :goto_106
:cond_196
move-object/from16 v0, v34
move-object/from16 v1, v33
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1a4
move-object/from16 v7, v33
goto/16 :goto_106
:cond_1a4
move-object/from16 v7, v35
goto/16 :goto_106
:cond_1a8
invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I
move-result v20
move-object/from16 v15, p0
move-object/from16 v16, v4
move-object/from16 v17, v5
move-object/from16 v18, v6
move-object/from16 v19, v7
invoke-direct/range {v15 .. v20}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
move-result-object v14
if-nez v14, :cond_1bd
move-object v14, v7
:cond_1bd
move-object/from16 v0, p0
invoke-direct {v0, v6, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v3
move-object/from16 v0, p0
invoke-direct {v0, v5, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
move-result-object v10
invoke-virtual {v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v10
invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I
move-result v15
add-int/lit8 v15, v15, 0x1
and-int/lit8 v3, v15, 0x1
const/4 v10, 0x1
if-ne v3, v10, :cond_1de
add-int/lit8 v15, v15, 0x1
:cond_1de
move-object/from16 v0, p0
iget-object v10, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
move-object v11, v6
move-object v12, v4
move-object v13, v5
move/from16 v16, v15
invoke-static/range {v10 .. v16}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
move-result-object v21
goto :goto_171
.end method