.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"
.field private static final BARCODE_MIN_HEIGHT:I = 0xa
.field private static final INDEXES_START_PATTERN:[I = null
.field private static final INDEXES_STOP_PATTERN:[I = null
.field private static final INTEGER_MATH_SHIFT:I = 0x8
.field private static final MAX_AVG_VARIANCE:I = 0x6b
.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc
.field private static final MAX_PATTERN_DRIFT:I = 0x5
.field private static final MAX_PIXEL_DRIFT:I = 0x3
.field private static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100
.field private static final ROW_STEP:I = 0x5
.field private static final SKIPPED_ROW_COUNT_MAX:I = 0x19
.field private static final START_PATTERN:[I
.field private static final STOP_PATTERN:[I
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x4
new-array v0, v1, [I
fill-array-data v0, :array_22
sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I
new-array v0, v1, [I
fill-array-data v0, :array_2e
sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I
const/16 v0, 0x8
new-array v0, v0, [I
fill-array-data v0, :array_3a
sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I
const/16 v0, 0x9
new-array v0, v0, [I
fill-array-data v0, :array_4e
sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I
return-void
:array_2e
.array-data 0x4
0x6t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_4e
.array-data 0x4
0x7t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_22
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
.end array-data
:array_3a
.array-data 0x4
0x8t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
.registers 6
const/4 v0, 0x0
:goto_1
array-length v1, p2
if-ge v0, v1, :cond_d
aget v1, p2, v0
aget-object v2, p1, v0
aput-object v2, p0, v1
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_d
return-void
.end method
.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
.registers 6
invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
move-result-object v1
invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_19
invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->rotate180()V
invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
move-result-object v0
:cond_19
new-instance v2, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
invoke-direct {v2, v1, v0}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;)V
return-object v2
.end method
.method private static detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
.registers 15
const/4 v12, 0x4
const/4 v11, 0x1
const/4 v10, 0x3
const/4 v9, 0x2
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v5, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
:goto_c
invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v7
if-ge v5, v7, :cond_21
invoke-static {p1, v5, v2}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
move-result-object v6
const/4 v7, 0x0
aget-object v7, v6, v7
if-nez v7, :cond_57
aget-object v7, v6, v10
if-nez v7, :cond_57
if-nez v3, :cond_22
:cond_21
return-object v1
:cond_22
const/4 v3, 0x0
const/4 v2, 0x0
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_28
:goto_28
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_54
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/zxing/ResultPoint;
aget-object v7, v0, v11
if-eqz v7, :cond_44
int-to-float v7, v5
aget-object v8, v0, v11
invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v8
invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F
move-result v7
float-to-int v5, v7
:cond_44
aget-object v7, v0, v10
if-eqz v7, :cond_28
aget-object v7, v0, v10
invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v7
float-to-int v7, v7
invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I
move-result v5
goto :goto_28
:cond_54
add-int/lit8 v5, v5, 0x5
goto :goto_c
:cond_57
const/4 v3, 0x1
invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
if-eqz p0, :cond_21
aget-object v7, v6, v9
if-eqz v7, :cond_70
aget-object v7, v6, v9
invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v7
float-to-int v2, v7
aget-object v7, v6, v9
invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v7
float-to-int v5, v7
goto :goto_c
:cond_70
aget-object v7, v6, v12
invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v7
float-to-int v2, v7
aget-object v7, v6, v12
invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v7
float-to-int v5, v7
goto :goto_c
.end method
.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
.registers 20
const/4 v10, 0x0
move-object/from16 v0, p6
array-length v11, v0
const/4 v12, 0x0
move-object/from16 v0, p6
invoke-static {v0, v10, v11, v12}, Ljava/util/Arrays;->fill([IIII)V
move-object/from16 v0, p5
array-length v4, v0
move/from16 v3, p4
move v5, p1
const/4 v7, 0x0
:goto_11
invoke-virtual {p0, v5, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v10
if-eqz v10, :cond_23
if-lez v5, :cond_23
add-int/lit8 v8, v7, 0x1
const/4 v10, 0x3
if-ge v7, v10, :cond_22
add-int/lit8 v5, v5, -0x1
move v7, v8
goto :goto_11
:cond_22
move v7, v8
:cond_23
move v9, v5
const/4 v2, 0x0
:goto_25
move/from16 v0, p3
if-ge v9, v0, :cond_81
invoke-virtual {p0, v9, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v6
xor-int v10, v6, v3
if-eqz v10, :cond_3a
aget v10, p6, v2
add-int/lit8 v10, v10, 0x1
aput v10, p6, v2
:goto_37
add-int/lit8 v9, v9, 0x1
goto :goto_25
:cond_3a
add-int/lit8 v10, v4, -0x1
if-ne v2, v10, :cond_7c
const/16 v10, 0xcc
move-object/from16 v0, p6
move-object/from16 v1, p5
invoke-static {v0, v1, v10}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I
move-result v10
const/16 v11, 0x6b
if-ge v10, v11, :cond_56
const/4 v10, 0x2
new-array v10, v10, [I
const/4 v11, 0x0
aput v5, v10, v11
const/4 v11, 0x1
aput v9, v10, v11
:goto_55
return-object v10
:cond_56
const/4 v10, 0x0
aget v10, p6, v10
const/4 v11, 0x1
aget v11, p6, v11
add-int/2addr v10, v11
add-int/2addr v5, v10
const/4 v10, 0x2
const/4 v11, 0x0
add-int/lit8 v12, v4, -0x2
move-object/from16 v0, p6
move-object/from16 v1, p6
invoke-static {v0, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v10, v4, -0x2
const/4 v11, 0x0
aput v11, p6, v10
add-int/lit8 v10, v4, -0x1
const/4 v11, 0x0
aput v11, p6, v10
add-int/lit8 v2, v2, -0x1
:goto_75
const/4 v10, 0x1
aput v10, p6, v2
if-nez v3, :cond_7f
const/4 v3, 0x1
:goto_7b
goto :goto_37
:cond_7c
add-int/lit8 v2, v2, 0x1
goto :goto_75
:cond_7f
const/4 v3, 0x0
goto :goto_7b
:cond_81
add-int/lit8 v10, v4, -0x1
if-ne v2, v10, :cond_9f
const/16 v10, 0xcc
move-object/from16 v0, p6
move-object/from16 v1, p5
invoke-static {v0, v1, v10}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I
move-result v10
const/16 v11, 0x6b
if-ge v10, v11, :cond_9f
const/4 v10, 0x2
new-array v10, v10, [I
const/4 v11, 0x0
aput v5, v10, v11
const/4 v11, 0x1
add-int/lit8 v12, v9, -0x1
aput v12, v10, v11
goto :goto_55
:cond_9f
const/4 v10, 0x0
goto :goto_55
.end method
.method private static findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
.registers 20
const/4 v1, 0x4
new-array v12, v1, [Lcom/google/zxing/ResultPoint;
const/4 v8, 0x0
move-object/from16 v0, p5
array-length v1, v0
new-array v7, v1, [I
:goto_9
move/from16 v0, p3
if-ge v0, p1, :cond_54
const/4 v5, 0x0
move-object v1, p0
move/from16 v2, p4
move/from16 v3, p3
move/from16 v4, p2
move-object/from16 v6, p5
invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
move-result-object v10
if-eqz v10, :cond_a4
:goto_1d
if-lez p3, :cond_35
add-int/lit8 p3, p3, -0x1
const/4 v5, 0x0
move-object v1, p0
move/from16 v2, p4
move/from16 v3, p3
move/from16 v4, p2
move-object/from16 v6, p5
invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
move-result-object v11
if-eqz v11, :cond_33
move-object v10, v11
goto :goto_1d
:cond_33
add-int/lit8 p3, p3, 0x1
:cond_35
const/4 v1, 0x0
new-instance v2, Lcom/google/zxing/ResultPoint;
const/4 v4, 0x0
aget v4, v10, v4
int-to-float v4, v4
move/from16 v0, p3
int-to-float v5, v0
invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v2, v12, v1
const/4 v1, 0x1
new-instance v2, Lcom/google/zxing/ResultPoint;
const/4 v4, 0x1
aget v4, v10, v4
int-to-float v4, v4
move/from16 v0, p3
int-to-float v5, v0
invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v2, v12, v1
const/4 v8, 0x1
:cond_54
add-int/lit8 v3, p3, 0x1
if-eqz v8, :cond_c9
const/4 v13, 0x0
const/4 v1, 0x2
new-array v11, v1, [I
const/4 v1, 0x0
const/4 v2, 0x0
aget-object v2, v12, v2
invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v2
float-to-int v2, v2
aput v2, v11, v1
const/4 v1, 0x1
const/4 v2, 0x1
aget-object v2, v12, v2
invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v2
float-to-int v2, v2
aput v2, v11, v1
:goto_72
if-ge v3, p1, :cond_ac
const/4 v1, 0x0
aget v2, v11, v1
const/4 v5, 0x0
move-object v1, p0
move/from16 v4, p2
move-object/from16 v6, p5
invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
move-result-object v10
if-eqz v10, :cond_a8
const/4 v1, 0x0
aget v1, v11, v1
const/4 v2, 0x0
aget v2, v10, v2
sub-int/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
const/4 v2, 0x5
if-ge v1, v2, :cond_a8
const/4 v1, 0x1
aget v1, v11, v1
const/4 v2, 0x1
aget v2, v10, v2
sub-int/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
const/4 v2, 0x5
if-ge v1, v2, :cond_a8
move-object v11, v10
const/4 v13, 0x0
:goto_a1
add-int/lit8 v3, v3, 0x1
goto :goto_72
:cond_a4
add-int/lit8 p3, p3, 0x5
goto/16 :goto_9
:cond_a8
const/16 v1, 0x19
if-le v13, v1, :cond_d9
:cond_ac
add-int/lit8 v1, v13, 0x1
sub-int/2addr v3, v1
const/4 v1, 0x2
new-instance v2, Lcom/google/zxing/ResultPoint;
const/4 v4, 0x0
aget v4, v11, v4
int-to-float v4, v4
int-to-float v5, v3
invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v2, v12, v1
const/4 v1, 0x3
new-instance v2, Lcom/google/zxing/ResultPoint;
const/4 v4, 0x1
aget v4, v11, v4
int-to-float v4, v4
int-to-float v5, v3
invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v2, v12, v1
:cond_c9
sub-int v1, v3, p3
const/16 v2, 0xa
if-ge v1, v2, :cond_dc
const/4 v9, 0x0
:goto_d0
array-length v1, v12
if-ge v9, v1, :cond_dc
const/4 v1, 0x0
aput-object v1, v12, v9
add-int/lit8 v9, v9, 0x1
goto :goto_d0
:cond_d9
add-int/lit8 v13, v13, 0x1
goto :goto_a1
:cond_dc
return-object v12
.end method
.method private static findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
.registers 11
const/4 v7, 0x4
invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v1
invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v2
const/16 v0, 0x8
new-array v6, v0, [Lcom/google/zxing/ResultPoint;
sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I
move-object v0, p0
move v3, p1
move v4, p2
invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
move-result-object v0
sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I
invoke-static {v6, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
aget-object v0, v6, v7
if-eqz v0, :cond_2d
aget-object v0, v6, v7
invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v0
float-to-int p2, v0
aget-object v0, v6, v7
invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v0
float-to-int p1, v0
:cond_2d
sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I
move-object v0, p0
move v3, p1
move v4, p2
invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
move-result-object v0
sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I
invoke-static {v6, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
return-object v6
.end method
.method private static patternMatchVariance([I[II)I
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