.class final Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"
.field private final crossCheckStateCount:[I
.field private final height:I
.field private final image:Lcom/google/zxing/common/BitMatrix;
.field private final moduleSize:F
.field private final possibleCenters:Ljava/util/List;
.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;
.field private final startX:I
.field private final startY:I
.field private final width:I
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x5
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;
iput p2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I
iput p3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I
iput p4, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I
iput p5, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I
iput p6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F
const/4 v0, 0x3
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I
iput-object p7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;
return-void
.end method
.method private static centerFromEnd([II)F
.registers 5
const/4 v0, 0x2
aget v0, p0, v0
sub-int v0, p1, v0
int-to-float v0, v0
const/4 v1, 0x1
aget v1, p0, v1
int-to-float v1, v1
const/high16 v2, 0x4000
div-float/2addr v1, v2
sub-float/2addr v0, v1
return v0
.end method
.method private crossCheckVertical(IIII)F
.registers 15
const/4 v9, 0x2
const/high16 v5, 0x7fc0
const/4 v8, 0x1
const/4 v7, 0x0
iget-object v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v2
iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I
aput v7, v3, v7
aput v7, v3, v8
aput v7, v3, v9
move v0, p1
:goto_14
if-ltz v0, :cond_29
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v6
if-eqz v6, :cond_29
aget v6, v3, v8
if-gt v6, p3, :cond_29
aget v6, v3, v8
add-int/lit8 v6, v6, 0x1
aput v6, v3, v8
add-int/lit8 v0, v0, -0x1
goto :goto_14
:cond_29
if-ltz v0, :cond_2f
aget v6, v3, v8
if-le v6, p3, :cond_30
:cond_2f
:goto_2f
return v5
:goto_30
:cond_30
if-ltz v0, :cond_45
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v6
if-nez v6, :cond_45
aget v6, v3, v7
if-gt v6, p3, :cond_45
aget v6, v3, v7
add-int/lit8 v6, v6, 0x1
aput v6, v3, v7
add-int/lit8 v0, v0, -0x1
goto :goto_30
:cond_45
aget v6, v3, v7
if-gt v6, p3, :cond_2f
add-int/lit8 v0, p1, 0x1
:goto_4b
if-ge v0, v2, :cond_60
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v6
if-eqz v6, :cond_60
aget v6, v3, v8
if-gt v6, p3, :cond_60
aget v6, v3, v8
add-int/lit8 v6, v6, 0x1
aput v6, v3, v8
add-int/lit8 v0, v0, 0x1
goto :goto_4b
:cond_60
if-eq v0, v2, :cond_2f
aget v6, v3, v8
if-gt v6, p3, :cond_2f
:goto_66
if-ge v0, v2, :cond_7b
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v6
if-nez v6, :cond_7b
aget v6, v3, v9
if-gt v6, p3, :cond_7b
aget v6, v3, v9
add-int/lit8 v6, v6, 0x1
aput v6, v3, v9
add-int/lit8 v0, v0, 0x1
goto :goto_66
:cond_7b
aget v6, v3, v9
if-gt v6, p3, :cond_2f
aget v6, v3, v7
aget v7, v3, v8
add-int/2addr v6, v7
aget v7, v3, v9
add-int v4, v6, v7
sub-int v6, v4, p4
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v6
mul-int/lit8 v6, v6, 0x5
mul-int/lit8 v7, p4, 0x2
if-ge v6, v7, :cond_2f
invoke-direct {p0, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z
move-result v6
if-eqz v6, :cond_2f
invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F
move-result v5
goto :goto_2f
.end method
.method private foundPatternCross([I)Z
.registers 6
iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F
const/high16 v3, 0x4000
div-float v1, v2, v3
const/4 v0, 0x0
:goto_7
const/4 v3, 0x3
if-ge v0, v3, :cond_1c
aget v3, p1, v0
int-to-float v3, v3
sub-float v3, v2, v3
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v3
cmpl-float v3, v3, v1
if-ltz v3, :cond_19
const/4 v3, 0x0
:goto_18
return v3
:cond_19
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1c
const/4 v3, 0x1
goto :goto_18
.end method
.method private handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
.registers 16
const/4 v11, 0x2
const/4 v10, 0x0
const/4 v9, 0x1
aget v7, p1, v10
aget v8, p1, v9
add-int/2addr v7, v8
aget v8, p1, v11
add-int v6, v7, v8
invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F
move-result v2
float-to-int v7, v2
aget v8, p1, v9
mul-int/lit8 v8, v8, 0x2
invoke-direct {p0, p2, v7, v8, v6}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckVertical(IIII)F
move-result v1
invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z
move-result v7
if-nez v7, :cond_5c
aget v7, p1, v10
aget v8, p1, v9
add-int/2addr v7, v8
aget v8, p1, v11
add-int/2addr v7, v8
int-to-float v7, v7
const/high16 v8, 0x4040
div-float v3, v7, v8
iget-object v7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_32
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_49
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;
invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->aboutEquals(FFF)Z
move-result v7
if-eqz v7, :cond_32
invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
move-result-object v7
:goto_48
return-object v7
:cond_49
new-instance v5, Lcom/google/zxing/qrcode/detector/AlignmentPattern;
invoke-direct {v5, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V
iget-object v7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;
if-eqz v7, :cond_5c
iget-object v7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;
invoke-interface {v7, v5}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
:cond_5c
const/4 v7, 0x0
goto :goto_48
.end method
.method  find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;
.registers 16
const/4 v14, 0x2
const/4 v13, 0x1
const/4 v12, 0x0
iget v8, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I
iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I
iget v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I
add-int v6, v8, v10
iget v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I
shr-int/lit8 v11, v2, 0x1
add-int v7, v10, v11
const/4 v10, 0x3
new-array v9, v10, [I
const/4 v4, 0x0
:goto_15
if-ge v4, v2, :cond_8d
and-int/lit8 v10, v4, 0x1
if-nez v10, :cond_35
add-int/lit8 v10, v4, 0x1
shr-int/lit8 v10, v10, 0x1
:goto_1f
add-int v3, v7, v10
aput v12, v9, v12
aput v12, v9, v13
aput v12, v9, v14
move v5, v8
:goto_28
if-ge v5, v6, :cond_3b
iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v10, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v10
if-nez v10, :cond_3b
add-int/lit8 v5, v5, 0x1
goto :goto_28
:cond_35
add-int/lit8 v10, v4, 0x1
shr-int/lit8 v10, v10, 0x1
neg-int v10, v10
goto :goto_1f
:cond_3b
const/4 v1, 0x0
:goto_3c
if-ge v5, v6, :cond_7e
iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v10, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v10
if-eqz v10, :cond_73
if-ne v1, v13, :cond_51
aget v10, v9, v1
add-int/lit8 v10, v10, 0x1
aput v10, v9, v1
:goto_4e
add-int/lit8 v5, v5, 0x1
goto :goto_3c
:cond_51
if-ne v1, v14, :cond_6a
invoke-direct {p0, v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z
move-result v10
if-eqz v10, :cond_60
invoke-direct {p0, v9, v3, v5}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
move-result-object v0
if-eqz v0, :cond_60
:cond_5f
:goto_5f
return-object v0
:cond_60
aget v10, v9, v14
aput v10, v9, v12
aput v13, v9, v13
aput v12, v9, v14
const/4 v1, 0x1
goto :goto_4e
:cond_6a
add-int/lit8 v1, v1, 0x1
aget v10, v9, v1
add-int/lit8 v10, v10, 0x1
aput v10, v9, v1
goto :goto_4e
:cond_73
if-ne v1, v13, :cond_77
add-int/lit8 v1, v1, 0x1
:cond_77
aget v10, v9, v1
add-int/lit8 v10, v10, 0x1
aput v10, v9, v1
goto :goto_4e
:cond_7e
invoke-direct {p0, v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z
move-result v10
if-eqz v10, :cond_8a
invoke-direct {p0, v9, v3, v6}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
move-result-object v0
if-nez v0, :cond_5f
:cond_8a
add-int/lit8 v4, v4, 0x1
goto :goto_15
:cond_8d
iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v10}, Ljava/util/List;->isEmpty()Z
move-result v10
if-nez v10, :cond_9f
iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/google/zxing/qrcode/detector/AlignmentPattern;
move-object v0, v10
goto :goto_5f
:cond_9f
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v10
throw v10
.end method