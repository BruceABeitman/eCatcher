.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"
.field private static final EXPECTED_CORNER_BITS:[I
.field private compact:Z
.field private final image:Lcom/google/zxing/common/BitMatrix;
.field private nbCenterLayers:I
.field private nbDataBlocks:I
.field private nbLayers:I
.field private shift:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x4
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I
return-void
nop
:array_a
.array-data 0x4
0xe0t 0xet 0x0t 0x0t
0xdct 0x1t 0x0t 0x0t
0x3bt 0x8t 0x0t 0x0t
0x7t 0x7t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
return-void
.end method
.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
.registers 6
invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v0
invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v1
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v2
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v3
invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F
move-result v0
return v0
.end method
.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
.registers 6
invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v0
invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v1
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v2
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v3
invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F
move-result v0
return v0
.end method
.method private static expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
.registers 14
const/high16 v9, 0x4000
mul-float/2addr v9, p1
div-float v4, p2, v9
const/4 v9, 0x0
aget-object v9, p0, v9
invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
const/4 v10, 0x2
aget-object v10, p0, v10
invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v10
sub-float v2, v9, v10
const/4 v9, 0x0
aget-object v9, p0, v9
invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
const/4 v10, 0x2
aget-object v10, p0, v10
invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
sub-float v3, v9, v10
const/4 v9, 0x0
aget-object v9, p0, v9
invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
const/4 v10, 0x2
aget-object v10, p0, v10
invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v10
add-float/2addr v9, v10
const/high16 v10, 0x4000
div-float v0, v9, v10
const/4 v9, 0x0
aget-object v9, p0, v9
invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
const/4 v10, 0x2
aget-object v10, p0, v10
invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
add-float/2addr v9, v10
const/high16 v10, 0x4000
div-float v1, v9, v10
new-instance v5, Lcom/google/zxing/ResultPoint;
mul-float v9, v4, v2
add-float/2addr v9, v0
mul-float v10, v4, v3
add-float/2addr v10, v1
invoke-direct {v5, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
new-instance v7, Lcom/google/zxing/ResultPoint;
mul-float v9, v4, v2
sub-float v9, v0, v9
mul-float v10, v4, v3
sub-float v10, v1, v10
invoke-direct {v7, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
const/4 v9, 0x1
aget-object v9, p0, v9
invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
const/4 v10, 0x3
aget-object v10, p0, v10
invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v10
sub-float v2, v9, v10
const/4 v9, 0x1
aget-object v9, p0, v9
invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
const/4 v10, 0x3
aget-object v10, p0, v10
invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
sub-float v3, v9, v10
const/4 v9, 0x1
aget-object v9, p0, v9
invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
const/4 v10, 0x3
aget-object v10, p0, v10
invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v10
add-float/2addr v9, v10
const/high16 v10, 0x4000
div-float v0, v9, v10
const/4 v9, 0x1
aget-object v9, p0, v9
invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
const/4 v10, 0x3
aget-object v10, p0, v10
invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v10
add-float/2addr v9, v10
const/high16 v10, 0x4000
div-float v1, v9, v10
new-instance v6, Lcom/google/zxing/ResultPoint;
mul-float v9, v4, v2
add-float/2addr v9, v0
mul-float v10, v4, v3
add-float/2addr v10, v1
invoke-direct {v6, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
new-instance v8, Lcom/google/zxing/ResultPoint;
mul-float v9, v4, v2
sub-float v9, v0, v9
mul-float v10, v4, v3
sub-float v10, v1, v10
invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
const/4 v9, 0x4
new-array v9, v9, [Lcom/google/zxing/ResultPoint;
const/4 v10, 0x0
aput-object v5, v9, v10
const/4 v10, 0x1
aput-object v6, v9, v10
const/4 v10, 0x2
aput-object v7, v9, v10
const/4 v10, 0x3
aput-object v8, v9, v10
return-object v9
.end method
.method private extractParameters([Lcom/google/zxing/ResultPoint;)V
.registers 16
const/4 v13, 0x4
const/4 v12, 0x3
const/4 v11, 0x2
const/4 v10, 0x1
const/4 v9, 0x0
aget-object v7, p1, v9
invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v7
if-eqz v7, :cond_25
aget-object v7, p1, v10
invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v7
if-eqz v7, :cond_25
aget-object v7, p1, v11
invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v7
if-eqz v7, :cond_25
aget-object v7, p1, v12
invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z
move-result v7
if-nez v7, :cond_2a
:cond_25
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v7
throw v7
:cond_2a
iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
mul-int/lit8 v2, v7, 0x2
new-array v6, v13, [I
aget-object v7, p1, v9
aget-object v8, p1, v10
invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
move-result v7
aput v7, v6, v9
aget-object v7, p1, v10
aget-object v8, p1, v11
invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
move-result v7
aput v7, v6, v10
aget-object v7, p1, v11
aget-object v8, p1, v12
invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
move-result v7
aput v7, v6, v11
aget-object v7, p1, v12
aget-object v8, p1, v9
invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
move-result v7
aput v7, v6, v12
invoke-static {v6, v2}, Lcom/google/zxing/aztec/detector/Detector;->getRotation([II)I
move-result v7
iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I
const-wide/16 v3, 0x0
const/4 v1, 0x0
:goto_61
if-ge v1, v13, :cond_88
iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I
add-int/2addr v7, v1
rem-int/lit8 v7, v7, 0x4
aget v5, v6, v7
iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z
if-eqz v7, :cond_79
const/4 v7, 0x7
shl-long/2addr v3, v7
shr-int/lit8 v7, v5, 0x1
and-int/lit8 v7, v7, 0x7f
int-to-long v7, v7
add-long/2addr v3, v7
:goto_76
add-int/lit8 v1, v1, 0x1
goto :goto_61
:cond_79
const/16 v7, 0xa
shl-long/2addr v3, v7
shr-int/lit8 v7, v5, 0x2
and-int/lit16 v7, v7, 0x3e0
shr-int/lit8 v8, v5, 0x1
and-int/lit8 v8, v8, 0x1f
add-int/2addr v7, v8
int-to-long v7, v7
add-long/2addr v3, v7
goto :goto_76
:cond_88
iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z
invoke-static {v3, v4, v7}, Lcom/google/zxing/aztec/detector/Detector;->getCorrectedParameterData(JZ)I
move-result v0
iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z
if-eqz v7, :cond_9f
shr-int/lit8 v7, v0, 0x6
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I
and-int/lit8 v7, v0, 0x3f
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I
:goto_9e
return-void
:cond_9f
shr-int/lit8 v7, v0, 0xb
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I
and-int/lit16 v7, v0, 0x7ff
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I
goto :goto_9e
.end method
.method private getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
.registers 23
move-object/from16 v4, p1
move-object/from16 v6, p1
move-object/from16 v8, p1
move-object/from16 v10, p1
const/4 v3, 0x1
const/16 v17, 0x1
move/from16 v0, v17
move-object/from16 v1, p0
iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
:goto_11
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v17, v0
const/16 v18, 0x9
move/from16 v0, v17
move/from16 v1, v18
if-ge v0, v1, :cond_a9
const/16 v17, 0x1
const/16 v18, -0x1
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, v18
invoke-direct {v0, v4, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v12
const/16 v17, 0x1
const/16 v18, 0x1
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, v18
invoke-direct {v0, v6, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v13
const/16 v17, -0x1
const/16 v18, 0x1
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, v18
invoke-direct {v0, v8, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v14
const/16 v17, -0x1
const/16 v18, -0x1
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, v18
invoke-direct {v0, v10, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v15
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v17, v0
const/16 v18, 0x2
move/from16 v0, v17
move/from16 v1, v18
if-le v0, v1, :cond_ca
invoke-static {v15, v12}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
move-result v17
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v18, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
mul-float v17, v17, v18
invoke-static {v10, v4}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
move-result v18
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v19, v0
add-int/lit8 v19, v19, 0x2
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
mul-float v18, v18, v19
div-float v16, v17, v18
move/from16 v0, v16
float-to-double v0, v0
move-wide/from16 v17, v0
const-wide/high16 v19, 0x3fe8
cmpg-double v17, v17, v19
if-ltz v17, :cond_a9
move/from16 v0, v16
float-to-double v0, v0
move-wide/from16 v17, v0
const-wide/high16 v19, 0x3ff4
cmpl-double v17, v17, v19
if-gtz v17, :cond_a9
move-object/from16 v0, p0
invoke-direct {v0, v12, v13, v14, v15}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
move-result v17
if-nez v17, :cond_ca
:cond_a9
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v17, v0
const/16 v18, 0x5
move/from16 v0, v17
move/from16 v1, v18
if-eq v0, v1, :cond_e3
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v17, v0
const/16 v18, 0x7
move/from16 v0, v17
move/from16 v1, v18
if-eq v0, v1, :cond_e3
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v17
throw v17
:cond_ca
move-object v4, v12
move-object v6, v13
move-object v8, v14
move-object v10, v15
if-nez v3, :cond_e1
const/4 v3, 0x1
:goto_d1
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v17, v0
add-int/lit8 v17, v17, 0x1
move/from16 v0, v17
move-object/from16 v1, p0
iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
goto/16 :goto_11
:cond_e1
const/4 v3, 0x0
goto :goto_d1
:cond_e3
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v17, v0
const/16 v18, 0x5
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_1be
const/16 v17, 0x1
:goto_f3
move/from16 v0, v17
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/google/zxing/aztec/detector/Detector;->compact:Z
new-instance v5, Lcom/google/zxing/ResultPoint;
invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v17
move/from16 v0, v17
int-to-float v0, v0
move/from16 v17, v0
const/high16 v18, 0x3f00
add-float v17, v17, v18
invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v18
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
const/high16 v19, 0x3f00
sub-float v18, v18, v19
move/from16 v0, v17
move/from16 v1, v18
invoke-direct {v5, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
new-instance v7, Lcom/google/zxing/ResultPoint;
invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v17
move/from16 v0, v17
int-to-float v0, v0
move/from16 v17, v0
const/high16 v18, 0x3f00
add-float v17, v17, v18
invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v18
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
const/high16 v19, 0x3f00
add-float v18, v18, v19
move/from16 v0, v17
move/from16 v1, v18
invoke-direct {v7, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
new-instance v9, Lcom/google/zxing/ResultPoint;
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v17
move/from16 v0, v17
int-to-float v0, v0
move/from16 v17, v0
const/high16 v18, 0x3f00
sub-float v17, v17, v18
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v18
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
const/high16 v19, 0x3f00
add-float v18, v18, v19
move/from16 v0, v17
move/from16 v1, v18
invoke-direct {v9, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
new-instance v11, Lcom/google/zxing/ResultPoint;
invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v17
move/from16 v0, v17
int-to-float v0, v0
move/from16 v17, v0
const/high16 v18, 0x3f00
sub-float v17, v17, v18
invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v18
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
const/high16 v19, 0x3f00
sub-float v18, v18, v19
move/from16 v0, v17
move/from16 v1, v18
invoke-direct {v11, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
const/16 v17, 0x4
move/from16 v0, v17
new-array v0, v0, [Lcom/google/zxing/ResultPoint;
move-object/from16 v17, v0
const/16 v18, 0x0
aput-object v5, v17, v18
const/16 v18, 0x1
aput-object v7, v17, v18
const/16 v18, 0x2
aput-object v9, v17, v18
const/16 v18, 0x3
aput-object v11, v17, v18
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v18, v0
mul-int/lit8 v18, v18, 0x2
add-int/lit8 v18, v18, -0x3
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
move/from16 v19, v0
mul-int/lit8 v19, v19, 0x2
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
invoke-static/range {v17 .. v19}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
move-result-object v17
return-object v17
:cond_1be
const/16 v17, 0x0
goto/16 :goto_f3
.end method
.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
.registers 15
invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
move-result v1
invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v9
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v10
sub-int/2addr v9, v10
int-to-float v9, v9
div-float v2, v9, v1
invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v9
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v10
sub-int/2addr v9, v10
int-to-float v9, v9
div-float v3, v9, v1
const/4 v5, 0x0
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v9
int-to-float v7, v9
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v9
int-to-float v8, v9
iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v10
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v11
invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v0
const/4 v6, 0x0
:goto_36
int-to-float v9, v6
cmpg-float v9, v9, v1
if-gez v9, :cond_52
add-float/2addr v7, v2
add-float/2addr v8, v3
iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v10
invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v11
invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v9
if-eq v9, v0, :cond_4f
add-int/lit8 v5, v5, 0x1
:cond_4f
add-int/lit8 v6, v6, 0x1
goto :goto_36
:cond_52
int-to-float v9, v5
div-float v4, v9, v1
const v9, 0x3dcccccd
cmpl-float v9, v4, v9
if-lez v9, :cond_65
const v9, 0x3f666666
cmpg-float v9, v4, v9
if-gez v9, :cond_65
const/4 v9, 0x0
:goto_64
return v9
:cond_65
const v9, 0x3dcccccd
cmpg-float v9, v4, v9
if-gtz v9, :cond_71
const/4 v9, 0x1
:goto_6d
if-ne v9, v0, :cond_73
const/4 v9, 0x1
goto :goto_64
:cond_71
const/4 v9, 0x0
goto :goto_6d
:cond_73
const/4 v9, -0x1
goto :goto_64
.end method
.method private static getCorrectedParameterData(JZ)I
.registers 13
if-eqz p2, :cond_16
const/4 v2, 0x7
const/4 v3, 0x2
:goto_4
sub-int v4, v2, v3
new-array v5, v2, [I
add-int/lit8 v0, v2, -0x1
:goto_a
if-ltz v0, :cond_1a
long-to-int v8, p0
and-int/lit8 v8, v8, 0xf
aput v8, v5, v0
const/4 v8, 0x4
shr-long/2addr p0, v8
add-int/lit8 v0, v0, -0x1
goto :goto_a
:cond_16
const/16 v2, 0xa
const/4 v3, 0x4
goto :goto_4
:try_start_1a
:cond_1a
new-instance v7, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
sget-object v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;
invoke-direct {v7, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
invoke-virtual {v7, v5, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
:try_end_24
.catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_1a .. :try_end_24} :catch_31
const/4 v6, 0x0
const/4 v0, 0x0
:goto_26
if-ge v0, v3, :cond_37
shl-int/lit8 v8, v6, 0x4
aget v9, v5, v0
add-int v6, v8, v9
add-int/lit8 v0, v0, 0x1
goto :goto_26
:catch_31
move-exception v1
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v8
throw v8
:cond_37
return v6
.end method
.method private getDimension()I
.registers 3
iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z
if-eqz v0, :cond_b
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I
mul-int/lit8 v0, v0, 0x4
add-int/lit8 v0, v0, 0xb
:goto_a
return v0
:cond_b
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I
const/4 v1, 0x4
if-gt v0, v1, :cond_17
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I
mul-int/lit8 v0, v0, 0x4
add-int/lit8 v0, v0, 0xf
goto :goto_a
:cond_17
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I
mul-int/lit8 v0, v0, 0x4
iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I
add-int/lit8 v1, v1, -0x4
div-int/lit8 v1, v1, 0x8
add-int/lit8 v1, v1, 0x1
mul-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
add-int/lit8 v0, v0, 0xf
goto :goto_a
.end method
.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
.registers 8
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v2
add-int v0, v2, p3
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v2
add-int v1, v2, p4
:goto_c
invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z
move-result v2
if-eqz v2, :cond_1d
iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v2
if-ne v2, p2, :cond_1d
add-int/2addr v0, p3
add-int/2addr v1, p4
goto :goto_c
:cond_1d
sub-int/2addr v0, p3
sub-int/2addr v1, p4
:goto_1f
invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z
move-result v2
if-eqz v2, :cond_2f
iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v2
if-ne v2, p2, :cond_2f
add-int/2addr v0, p3
goto :goto_1f
:cond_2f
sub-int/2addr v0, p3
:goto_30
invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z
move-result v2
if-eqz v2, :cond_40
iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v2
if-ne v2, p2, :cond_40
add-int/2addr v1, p4
goto :goto_30
:cond_40
sub-int/2addr v1, p4
new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;
invoke-direct {v2, v0, v1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
return-object v2
.end method
.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
.registers 16
const/high16 v14, 0x4080
const/4 v13, -0x1
const/4 v12, 0x1
const/4 v11, 0x0
:try_start_5
new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;
iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-direct {v8, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V
invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;
move-result-object v0
const/4 v8, 0x0
aget-object v4, v0, v8
const/4 v8, 0x1
aget-object v5, v0, v8
const/4 v8, 0x2
aget-object v6, v0, v8
const/4 v8, 0x3
aget-object v7, v0, v8
:try_end_1c
.catch Lcom/google/zxing/NotFoundException; {:try_start_5 .. :try_end_1c} :catch_9b
:goto_1c
invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v8
invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
add-float/2addr v8, v9
invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
add-float/2addr v8, v9
invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
add-float/2addr v8, v9
div-float/2addr v8, v14
invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v1
invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v8
invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
add-float/2addr v8, v9
invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
add-float/2addr v8, v9
invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
add-float/2addr v8, v9
div-float/2addr v8, v14
invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v2
:try_start_4c
new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;
iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
const/16 v10, 0xf
invoke-direct {v8, v9, v10, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V
invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;
move-result-object v0
const/4 v8, 0x0
aget-object v4, v0, v8
const/4 v8, 0x1
aget-object v5, v0, v8
const/4 v8, 0x2
aget-object v6, v0, v8
const/4 v8, 0x3
aget-object v7, v0, v8
:try_end_65
.catch Lcom/google/zxing/NotFoundException; {:try_start_4c .. :try_end_65} :catch_f2
:goto_65
invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v8
invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
add-float/2addr v8, v9
invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
add-float/2addr v8, v9
invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
add-float/2addr v8, v9
div-float/2addr v8, v14
invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v1
invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v8
invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
add-float/2addr v8, v9
invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
add-float/2addr v8, v9
invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
add-float/2addr v8, v9
div-float/2addr v8, v14
invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v2
new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;
invoke-direct {v8, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
return-object v8
:catch_9b
move-exception v3
iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v8
div-int/lit8 v1, v8, 0x2
iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v8
div-int/lit8 v2, v8, 0x2
new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;
add-int/lit8 v9, v1, 0x7
add-int/lit8 v10, v2, -0x7
invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
invoke-direct {p0, v8, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v8
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;
move-result-object v4
new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;
add-int/lit8 v9, v1, 0x7
add-int/lit8 v10, v2, 0x7
invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
invoke-direct {p0, v8, v11, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v8
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;
move-result-object v5
new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;
add-int/lit8 v9, v1, -0x7
add-int/lit8 v10, v2, 0x7
invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
invoke-direct {p0, v8, v11, v13, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v8
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;
move-result-object v6
new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;
add-int/lit8 v9, v1, -0x7
add-int/lit8 v10, v2, -0x7
invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
invoke-direct {p0, v8, v11, v13, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v8
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;
move-result-object v7
goto/16 :goto_1c
:catch_f2
move-exception v3
new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;
add-int/lit8 v9, v1, 0x7
add-int/lit8 v10, v2, -0x7
invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
invoke-direct {p0, v8, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v8
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;
move-result-object v4
new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;
add-int/lit8 v9, v1, 0x7
add-int/lit8 v10, v2, 0x7
invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
invoke-direct {p0, v8, v11, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v8
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;
move-result-object v5
new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;
add-int/lit8 v9, v1, -0x7
add-int/lit8 v10, v2, 0x7
invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
invoke-direct {p0, v8, v11, v13, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v8
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;
move-result-object v6
new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;
add-int/lit8 v9, v1, -0x7
add-int/lit8 v10, v2, -0x7
invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
invoke-direct {p0, v8, v11, v13, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v8
invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;
move-result-object v7
goto/16 :goto_65
.end method
.method private getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
.registers 4
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
mul-int/lit8 v0, v0, 0x2
int-to-float v0, v0
invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I
move-result v1
int-to-float v1, v1
invoke-static {p1, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
move-result-object v0
return-object v0
.end method
.method private static getRotation([II)I
.registers 11
const/4 v1, 0x0
move-object v0, p0
array-length v3, v0
const/4 v2, 0x0
:goto_4
if-ge v2, v3, :cond_19
aget v5, v0, v2
add-int/lit8 v7, p1, -0x2
shr-int v7, v5, v7
shl-int/lit8 v7, v7, 0x1
and-int/lit8 v8, v5, 0x1
add-int v6, v7, v8
shl-int/lit8 v7, v1, 0x3
add-int v1, v7, v6
add-int/lit8 v2, v2, 0x1
goto :goto_4
:cond_19
and-int/lit8 v7, v1, 0x1
shl-int/lit8 v7, v7, 0xb
shr-int/lit8 v8, v1, 0x1
add-int v1, v7, v8
const/4 v4, 0x0
:goto_22
const/4 v7, 0x4
if-ge v4, v7, :cond_35
sget-object v7, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I
aget v7, v7, v4
xor-int/2addr v7, v1
invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I
move-result v7
const/4 v8, 0x2
if-gt v7, v8, :cond_32
return v4
:cond_32
add-int/lit8 v4, v4, 0x1
goto :goto_22
:cond_35
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v7
throw v7
.end method
.method private isValid(II)Z
.registers 4
if-ltz p1, :cond_16
iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v0
if-ge p1, v0, :cond_16
if-lez p2, :cond_16
iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v0
if-ge p2, v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method private isValid(Lcom/google/zxing/ResultPoint;)Z
.registers 5
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v2
invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v0
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v2
invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v1
invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z
move-result v2
return v2
.end method
.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
.registers 15
const/4 v7, 0x0
const/4 v2, 0x3
new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v8
sub-int/2addr v8, v2
invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v9
add-int/2addr v9, v2
invoke-direct {v3, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;
invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v8
sub-int/2addr v8, v2
invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v9
sub-int/2addr v9, v2
invoke-direct {v4, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;
invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v8
add-int/2addr v8, v2
invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v9
sub-int/2addr v9, v2
invoke-direct {v5, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
new-instance v6, Lcom/google/zxing/aztec/detector/Detector$Point;
invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v8
add-int/2addr v8, v2
invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v9
add-int/2addr v9, v2
invoke-direct {v6, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V
invoke-direct {p0, v6, v3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
move-result v1
if-nez v1, :cond_45
:cond_44
:goto_44
return v7
:cond_45
invoke-direct {p0, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
move-result v0
if-ne v0, v1, :cond_44
invoke-direct {p0, v4, v5}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
move-result v0
if-ne v0, v1, :cond_44
invoke-direct {p0, v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
move-result v0
if-ne v0, v1, :cond_44
const/4 v7, 0x1
goto :goto_44
.end method
.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
.registers 27
invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;
move-result-object v1
invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I
move-result v3
int-to-float v2, v3
const/high16 v4, 0x4000
div-float/2addr v2, v4
move-object/from16 v0, p0
iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
int-to-float v4, v4
sub-float v5, v2, v4
int-to-float v2, v3
const/high16 v4, 0x4000
div-float/2addr v2, v4
move-object/from16 v0, p0
iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I
int-to-float v4, v4
add-float v7, v2, v4
invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v13
invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v14
invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v15
invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v16
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v17
invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v18
invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v19
invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v20
move-object/from16 v2, p1
move v4, v3
move v6, v5
move v8, v5
move v9, v7
move v10, v7
move v11, v5
move v12, v7
invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
move-result-object v2
return-object v2
.end method
.method private sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
.registers 15
const/4 v7, 0x0
invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
move-result v0
int-to-float v8, p3
div-float v4, v0, v8
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v5
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v6
invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v8
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v9
sub-float/2addr v8, v9
mul-float/2addr v8, v4
div-float v1, v8, v0
invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v8
invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v9
sub-float/2addr v8, v9
mul-float/2addr v8, v4
div-float v2, v8, v0
const/4 v3, 0x0
:goto_29
if-ge v3, p3, :cond_4b
iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
int-to-float v9, v3
mul-float/2addr v9, v1
add-float/2addr v9, v5
invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v9
int-to-float v10, v3
mul-float/2addr v10, v2
add-float/2addr v10, v6
invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I
move-result v10
invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v8
if-eqz v8, :cond_48
const/4 v8, 0x1
sub-int v9, p3, v3
add-int/lit8 v9, v9, -0x1
shl-int/2addr v8, v9
or-int/2addr v7, v8
:cond_48
add-int/lit8 v3, v3, 0x1
goto :goto_29
:cond_4b
return v7
.end method
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
move-result-object v0
return-object v0
.end method
.method public detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
.registers 11
const/4 v4, 0x2
const/4 v3, 0x0
invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
move-result-object v7
invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
move-result-object v6
if-eqz p1, :cond_14
aget-object v8, v6, v3
aget-object v0, v6, v4
aput-object v0, v6, v3
aput-object v8, v6, v4
:cond_14
invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/ResultPoint;)V
iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I
rem-int/lit8 v0, v0, 0x4
aget-object v2, v6, v0
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I
add-int/lit8 v0, v0, 0x1
rem-int/lit8 v0, v0, 0x4
aget-object v3, v6, v0
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I
add-int/lit8 v0, v0, 0x2
rem-int/lit8 v0, v0, 0x4
aget-object v4, v6, v0
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I
add-int/lit8 v0, v0, 0x3
rem-int/lit8 v0, v0, 0x4
aget-object v5, v6, v0
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
move-result-object v1
invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
move-result-object v2
new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;
iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z
iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I
iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I
invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V
return-object v0
.end method