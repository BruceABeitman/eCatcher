.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"
.field private static final CENTER_QUORUM:I = 0x2
.field private static final INTEGER_MATH_SHIFT:I = 0x8
.field protected static final MAX_MODULES:I = 0x39
.field protected static final MIN_SKIP:I = 0x3
.field private final crossCheckStateCount:[I
.field private hasSkipped:Z
.field private final image:Lcom/google/zxing/common/BitMatrix;
.field private final possibleCenters:Ljava/util/List;
.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
return-void
.end method
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
const/4 v0, 0x5
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I
iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;
return-void
.end method
.method private static centerFromEnd([II)F
.registers 5
const/4 v0, 0x4
aget v0, p0, v0
sub-int v0, p1, v0
const/4 v1, 0x3
aget v1, p0, v1
sub-int/2addr v0, v1
int-to-float v0, v0
const/4 v1, 0x2
aget v1, p0, v1
int-to-float v1, v1
const/high16 v2, 0x4000
div-float/2addr v1, v2
sub-float/2addr v0, v1
return v0
.end method
.method private crossCheckDiagonal(IIII)Z
.registers 13
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v1
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v2
invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I
move-result-object v3
const/4 v0, 0x0
:goto_11
sub-int v5, p1, v0
if-ltz v5, :cond_2b
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
sub-int v6, p2, v0
sub-int v7, p1, v0
invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_2b
const/4 v5, 0x2
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_2b
sub-int v5, p1, v0
if-ltz v5, :cond_33
sub-int v5, p2, v0
if-gez v5, :cond_35
:cond_33
const/4 v5, 0x0
:goto_34
return v5
:goto_35
:cond_35
sub-int v5, p1, v0
if-ltz v5, :cond_58
sub-int v5, p2, v0
if-ltz v5, :cond_58
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
sub-int v6, p2, v0
sub-int v7, p1, v0
invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-nez v5, :cond_58
const/4 v5, 0x1
aget v5, v3, v5
if-gt v5, p3, :cond_58
const/4 v5, 0x1
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, 0x1
goto :goto_35
:cond_58
sub-int v5, p1, v0
if-ltz v5, :cond_65
sub-int v5, p2, v0
if-ltz v5, :cond_65
const/4 v5, 0x1
aget v5, v3, v5
if-le v5, p3, :cond_67
:cond_65
const/4 v5, 0x0
goto :goto_34
:cond_67
:goto_67
sub-int v5, p1, v0
if-ltz v5, :cond_8a
sub-int v5, p2, v0
if-ltz v5, :cond_8a
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
sub-int v6, p2, v0
sub-int v7, p1, v0
invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_8a
const/4 v5, 0x0
aget v5, v3, v5
if-gt v5, p3, :cond_8a
const/4 v5, 0x0
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, 0x1
goto :goto_67
:cond_8a
const/4 v5, 0x0
aget v5, v3, v5
if-le v5, p3, :cond_91
const/4 v5, 0x0
goto :goto_34
:cond_91
const/4 v0, 0x1
:goto_92
add-int v5, p1, v0
if-ge v5, v1, :cond_b0
add-int v5, p2, v0
if-ge v5, v2, :cond_b0
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
add-int v6, p2, v0
add-int v7, p1, v0
invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_b0
const/4 v5, 0x2
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, 0x1
goto :goto_92
:cond_b0
add-int v5, p1, v0
if-ge v5, v1, :cond_b8
add-int v5, p2, v0
if-lt v5, v2, :cond_bb
:cond_b8
const/4 v5, 0x0
goto/16 :goto_34
:goto_bb
:cond_bb
add-int v5, p1, v0
if-ge v5, v1, :cond_de
add-int v5, p2, v0
if-ge v5, v2, :cond_de
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
add-int v6, p2, v0
add-int v7, p1, v0
invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-nez v5, :cond_de
const/4 v5, 0x3
aget v5, v3, v5
if-ge v5, p3, :cond_de
const/4 v5, 0x3
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, 0x1
goto :goto_bb
:cond_de
add-int v5, p1, v0
if-ge v5, v1, :cond_eb
add-int v5, p2, v0
if-ge v5, v2, :cond_eb
const/4 v5, 0x3
aget v5, v3, v5
if-lt v5, p3, :cond_ee
:cond_eb
const/4 v5, 0x0
goto/16 :goto_34
:cond_ee
:goto_ee
add-int v5, p1, v0
if-ge v5, v1, :cond_111
add-int v5, p2, v0
if-ge v5, v2, :cond_111
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
add-int v6, p2, v0
add-int v7, p1, v0
invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_111
const/4 v5, 0x4
aget v5, v3, v5
if-ge v5, p3, :cond_111
const/4 v5, 0x4
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, 0x1
goto :goto_ee
:cond_111
const/4 v5, 0x4
aget v5, v3, v5
if-lt v5, p3, :cond_119
const/4 v5, 0x0
goto/16 :goto_34
:cond_119
const/4 v5, 0x0
aget v5, v3, v5
const/4 v6, 0x1
aget v6, v3, v6
add-int/2addr v5, v6
const/4 v6, 0x2
aget v6, v3, v6
add-int/2addr v5, v6
const/4 v6, 0x3
aget v6, v3, v6
add-int/2addr v5, v6
const/4 v6, 0x4
aget v6, v3, v6
add-int v4, v5, v6
sub-int v5, v4, p4
invoke-static {v5}, Ljava/lang/Math;->abs(I)I
move-result v5
mul-int/lit8 v6, p4, 0x2
if-ge v5, v6, :cond_140
invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z
move-result v5
if-eqz v5, :cond_140
const/4 v5, 0x1
goto/16 :goto_34
:cond_140
const/4 v5, 0x0
goto/16 :goto_34
.end method
.method private crossCheckHorizontal(IIII)F
.registers 12
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v2
invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I
move-result-object v3
move v1, p1
:goto_b
if-ltz v1, :cond_1d
invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_1d
const/4 v5, 0x2
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v1, v1, -0x1
goto :goto_b
:cond_1d
if-gez v1, :cond_22
const/high16 v5, 0x7fc0
:goto_21
return v5
:goto_22
:cond_22
if-ltz v1, :cond_39
invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-nez v5, :cond_39
const/4 v5, 0x1
aget v5, v3, v5
if-gt v5, p3, :cond_39
const/4 v5, 0x1
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v1, v1, -0x1
goto :goto_22
:cond_39
if-ltz v1, :cond_40
const/4 v5, 0x1
aget v5, v3, v5
if-le v5, p3, :cond_43
:cond_40
const/high16 v5, 0x7fc0
goto :goto_21
:goto_43
:cond_43
if-ltz v1, :cond_5a
invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_5a
const/4 v5, 0x0
aget v5, v3, v5
if-gt v5, p3, :cond_5a
const/4 v5, 0x0
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v1, v1, -0x1
goto :goto_43
:cond_5a
const/4 v5, 0x0
aget v5, v3, v5
if-le v5, p3, :cond_62
const/high16 v5, 0x7fc0
goto :goto_21
:cond_62
add-int/lit8 v1, p1, 0x1
:goto_64
if-ge v1, v2, :cond_76
invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_76
const/4 v5, 0x2
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v1, v1, 0x1
goto :goto_64
:cond_76
if-ne v1, v2, :cond_7b
const/high16 v5, 0x7fc0
goto :goto_21
:cond_7b
:goto_7b
if-ge v1, v2, :cond_92
invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-nez v5, :cond_92
const/4 v5, 0x3
aget v5, v3, v5
if-ge v5, p3, :cond_92
const/4 v5, 0x3
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v1, v1, 0x1
goto :goto_7b
:cond_92
if-eq v1, v2, :cond_99
const/4 v5, 0x3
aget v5, v3, v5
if-lt v5, p3, :cond_9c
:cond_99
const/high16 v5, 0x7fc0
goto :goto_21
:goto_9c
:cond_9c
if-ge v1, v2, :cond_b3
invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_b3
const/4 v5, 0x4
aget v5, v3, v5
if-ge v5, p3, :cond_b3
const/4 v5, 0x4
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v1, v1, 0x1
goto :goto_9c
:cond_b3
const/4 v5, 0x4
aget v5, v3, v5
if-lt v5, p3, :cond_bc
const/high16 v5, 0x7fc0
goto/16 :goto_21
:cond_bc
const/4 v5, 0x0
aget v5, v3, v5
const/4 v6, 0x1
aget v6, v3, v6
add-int/2addr v5, v6
const/4 v6, 0x2
aget v6, v3, v6
add-int/2addr v5, v6
const/4 v6, 0x3
aget v6, v3, v6
add-int/2addr v5, v6
const/4 v6, 0x4
aget v6, v3, v6
add-int v4, v5, v6
sub-int v5, v4, p4
invoke-static {v5}, Ljava/lang/Math;->abs(I)I
move-result v5
mul-int/lit8 v5, v5, 0x5
if-lt v5, p4, :cond_de
const/high16 v5, 0x7fc0
goto/16 :goto_21
:cond_de
invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z
move-result v5
if-eqz v5, :cond_ea
invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F
move-result v5
goto/16 :goto_21
:cond_ea
const/high16 v5, 0x7fc0
goto/16 :goto_21
.end method
.method private crossCheckVertical(IIII)F
.registers 12
iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v2
invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I
move-result-object v3
move v0, p1
:goto_b
if-ltz v0, :cond_1d
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_1d
const/4 v5, 0x2
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, -0x1
goto :goto_b
:cond_1d
if-gez v0, :cond_22
const/high16 v5, 0x7fc0
:goto_21
return v5
:goto_22
:cond_22
if-ltz v0, :cond_39
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-nez v5, :cond_39
const/4 v5, 0x1
aget v5, v3, v5
if-gt v5, p3, :cond_39
const/4 v5, 0x1
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, -0x1
goto :goto_22
:cond_39
if-ltz v0, :cond_40
const/4 v5, 0x1
aget v5, v3, v5
if-le v5, p3, :cond_43
:cond_40
const/high16 v5, 0x7fc0
goto :goto_21
:goto_43
:cond_43
if-ltz v0, :cond_5a
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_5a
const/4 v5, 0x0
aget v5, v3, v5
if-gt v5, p3, :cond_5a
const/4 v5, 0x0
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, -0x1
goto :goto_43
:cond_5a
const/4 v5, 0x0
aget v5, v3, v5
if-le v5, p3, :cond_62
const/high16 v5, 0x7fc0
goto :goto_21
:cond_62
add-int/lit8 v0, p1, 0x1
:goto_64
if-ge v0, v2, :cond_76
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_76
const/4 v5, 0x2
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, 0x1
goto :goto_64
:cond_76
if-ne v0, v2, :cond_7b
const/high16 v5, 0x7fc0
goto :goto_21
:cond_7b
:goto_7b
if-ge v0, v2, :cond_92
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-nez v5, :cond_92
const/4 v5, 0x3
aget v5, v3, v5
if-ge v5, p3, :cond_92
const/4 v5, 0x3
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, 0x1
goto :goto_7b
:cond_92
if-eq v0, v2, :cond_99
const/4 v5, 0x3
aget v5, v3, v5
if-lt v5, p3, :cond_9c
:cond_99
const/high16 v5, 0x7fc0
goto :goto_21
:goto_9c
:cond_9c
if-ge v0, v2, :cond_b3
invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v5
if-eqz v5, :cond_b3
const/4 v5, 0x4
aget v5, v3, v5
if-ge v5, p3, :cond_b3
const/4 v5, 0x4
aget v6, v3, v5
add-int/lit8 v6, v6, 0x1
aput v6, v3, v5
add-int/lit8 v0, v0, 0x1
goto :goto_9c
:cond_b3
const/4 v5, 0x4
aget v5, v3, v5
if-lt v5, p3, :cond_bc
const/high16 v5, 0x7fc0
goto/16 :goto_21
:cond_bc
const/4 v5, 0x0
aget v5, v3, v5
const/4 v6, 0x1
aget v6, v3, v6
add-int/2addr v5, v6
const/4 v6, 0x2
aget v6, v3, v6
add-int/2addr v5, v6
const/4 v6, 0x3
aget v6, v3, v6
add-int/2addr v5, v6
const/4 v6, 0x4
aget v6, v3, v6
add-int v4, v5, v6
sub-int v5, v4, p4
invoke-static {v5}, Ljava/lang/Math;->abs(I)I
move-result v5
mul-int/lit8 v5, v5, 0x5
mul-int/lit8 v6, p4, 0x2
if-lt v5, v6, :cond_e0
const/high16 v5, 0x7fc0
goto/16 :goto_21
:cond_e0
invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z
move-result v5
if-eqz v5, :cond_ec
invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F
move-result v5
goto/16 :goto_21
:cond_ec
const/high16 v5, 0x7fc0
goto/16 :goto_21
.end method
.method private findRowSkip()I
.registers 9
const/4 v7, 0x1
const/4 v4, 0x0
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v3
if-gt v3, v7, :cond_b
:cond_a
:goto_a
return v4
:cond_b
const/4 v1, 0x0
iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_12
:goto_12
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I
move-result v5
const/4 v6, 0x2
if-lt v5, v6, :cond_12
if-nez v1, :cond_29
move-object v1, v0
goto :goto_12
:cond_29
iput-boolean v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z
invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v4
invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F
move-result v5
sub-float/2addr v4, v5
invoke-static {v4}, Ljava/lang/Math;->abs(F)F
move-result v4
invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v5
invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F
move-result v6
sub-float/2addr v5, v6
invoke-static {v5}, Ljava/lang/Math;->abs(F)F
move-result v5
sub-float/2addr v4, v5
float-to-int v4, v4
div-int/lit8 v4, v4, 0x2
goto :goto_a
.end method
.method protected static foundPatternCross([I)Z
.registers 10
const/4 v5, 0x1
const/4 v6, 0x0
const/4 v4, 0x0
const/4 v1, 0x0
:goto_4
const/4 v7, 0x5
if-ge v1, v7, :cond_10
aget v0, p0, v1
if-nez v0, :cond_c
:cond_b
:goto_b
return v6
:cond_c
add-int/2addr v4, v0
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_10
const/4 v7, 0x7
if-lt v4, v7, :cond_b
shl-int/lit8 v7, v4, 0x8
div-int/lit8 v3, v7, 0x7
div-int/lit8 v2, v3, 0x2
aget v7, p0, v6
shl-int/lit8 v7, v7, 0x8
sub-int v7, v3, v7
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
if-ge v7, v2, :cond_5d
aget v7, p0, v5
shl-int/lit8 v7, v7, 0x8
sub-int v7, v3, v7
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
if-ge v7, v2, :cond_5d
mul-int/lit8 v7, v3, 0x3
const/4 v8, 0x2
aget v8, p0, v8
shl-int/lit8 v8, v8, 0x8
sub-int/2addr v7, v8
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
mul-int/lit8 v8, v2, 0x3
if-ge v7, v8, :cond_5d
const/4 v7, 0x3
aget v7, p0, v7
shl-int/lit8 v7, v7, 0x8
sub-int v7, v3, v7
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
if-ge v7, v2, :cond_5d
const/4 v7, 0x4
aget v7, p0, v7
shl-int/lit8 v7, v7, 0x8
sub-int v7, v3, v7
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
if-ge v7, v2, :cond_5d
:goto_5b
move v6, v5
goto :goto_b
:cond_5d
move v5, v6
goto :goto_5b
.end method
.method private getCrossCheckStateCount()[I
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I
aput v2, v0, v2
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I
const/4 v1, 0x1
aput v2, v0, v1
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I
const/4 v1, 0x2
aput v2, v0, v1
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I
const/4 v1, 0x3
aput v2, v0, v1
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I
const/4 v1, 0x4
aput v2, v0, v1
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I
return-object v0
.end method
.method private haveMultiplyConfirmedCenters()Z
.registers 11
const/4 v7, 0x0
const/4 v1, 0x0
const/4 v6, 0x0
iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v3
iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_f
:goto_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_2a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I
move-result v8
const/4 v9, 0x2
if-lt v8, v9, :cond_f
add-int/lit8 v1, v1, 0x1
invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v8
add-float/2addr v6, v8
goto :goto_f
:cond_2a
const/4 v8, 0x3
if-ge v1, v8, :cond_2e
:goto_2d
:cond_2d
return v7
:cond_2e
int-to-float v8, v3
div-float v0, v6, v8
const/4 v5, 0x0
iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_38
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_4f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v8
sub-float/2addr v8, v0
invoke-static {v8}, Ljava/lang/Math;->abs(F)F
move-result v8
add-float/2addr v5, v8
goto :goto_38
:cond_4f
const v8, 0x3d4ccccd
mul-float/2addr v8, v6
cmpg-float v8, v5, v8
if-gtz v8, :cond_2d
const/4 v7, 0x1
goto :goto_2d
.end method
.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
.registers 18
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v10
const/4 v13, 0x3
if-ge v10, v13, :cond_10
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v13
throw v13
:cond_10
const/4 v13, 0x3
if-le v10, v13, :cond_8f
const/4 v12, 0x0
const/4 v9, 0x0
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_32
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v8
add-float/2addr v12, v8
mul-float v13, v8, v8
add-float/2addr v9, v13
goto :goto_1d
:cond_32
int-to-float v13, v10
div-float v1, v12, v13
int-to-float v13, v10
div-float v13, v9, v13
mul-float v14, v1, v1
sub-float/2addr v13, v14
float-to-double v13, v13
invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v13
double-to-float v11, v13
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
new-instance v14, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
const/4 v15, 0x0
invoke-direct {v14, v1, v15}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
const v13, 0x3e4ccccd
mul-float/2addr v13, v1
invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F
move-result v5
const/4 v3, 0x0
:goto_57
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v13
if-ge v3, v13, :cond_8f
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v13
const/4 v14, 0x3
if-le v13, v14, :cond_8f
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v13
sub-float/2addr v13, v1
invoke-static {v13}, Ljava/lang/Math;->abs(F)F
move-result v13
cmpl-float v13, v13, v5
if-lez v13, :cond_8c
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v13, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
add-int/lit8 v3, v3, -0x1
:cond_8c
add-int/lit8 v3, v3, 0x1
goto :goto_57
:cond_8f
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v13
const/4 v14, 0x3
if-le v13, v14, :cond_e1
const/4 v12, 0x0
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_a3
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_b5
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v13
add-float/2addr v12, v13
goto :goto_a3
:cond_b5
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v13
int-to-float v13, v13
div-float v1, v12, v13
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
new-instance v14, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
const/4 v15, 0x0
invoke-direct {v14, v1, v15}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
const/4 v14, 0x3
move-object/from16 v0, p0
iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v15}, Ljava/util/List;->size()I
move-result v15
invoke-interface {v13, v14, v15}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v13
invoke-interface {v13}, Ljava/util/List;->clear()V
:cond_e1
const/4 v13, 0x3
new-array v14, v13, [Lcom/google/zxing/qrcode/detector/FinderPattern;
const/4 v15, 0x0
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
const/16 v16, 0x0
move/from16 v0, v16
invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;
aput-object v13, v14, v15
const/4 v15, 0x1
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
const/16 v16, 0x1
move/from16 v0, v16
invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;
aput-object v13, v14, v15
const/4 v15, 0x2
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
const/16 v16, 0x2
move/from16 v0, v16
invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;
aput-object v13, v14, v15
return-object v14
.end method
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
.registers 18
if-eqz p1, :cond_70
sget-object v14, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;
move-object/from16 v0, p1
invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v14
if-eqz v14, :cond_70
const/4 v13, 0x1
:goto_d
if-eqz p1, :cond_72
sget-object v14, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;
move-object/from16 v0, p1
invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v14
if-eqz v14, :cond_72
const/4 v10, 0x1
:goto_1a
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v7
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v8
mul-int/lit8 v14, v7, 0x3
div-int/lit16 v5, v14, 0xe4
const/4 v14, 0x3
if-lt v5, v14, :cond_33
if-eqz v13, :cond_34
:cond_33
const/4 v5, 0x3
:cond_34
const/4 v3, 0x0
const/4 v14, 0x5
new-array v12, v14, [I
add-int/lit8 v4, v5, -0x1
:goto_3a
if-ge v4, v7, :cond_126
if-nez v3, :cond_126
const/4 v14, 0x0
const/4 v15, 0x0
aput v15, v12, v14
const/4 v14, 0x1
const/4 v15, 0x0
aput v15, v12, v14
const/4 v14, 0x2
const/4 v15, 0x0
aput v15, v12, v14
const/4 v14, 0x3
const/4 v15, 0x0
aput v15, v12, v14
const/4 v14, 0x4
const/4 v15, 0x0
aput v15, v12, v14
const/4 v2, 0x0
const/4 v6, 0x0
:goto_54
if-ge v6, v8, :cond_108
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v14, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v14
if-eqz v14, :cond_74
and-int/lit8 v14, v2, 0x1
const/4 v15, 0x1
if-ne v14, v15, :cond_67
add-int/lit8 v2, v2, 0x1
:cond_67
aget v14, v12, v2
add-int/lit8 v14, v14, 0x1
aput v14, v12, v2
:goto_6d
add-int/lit8 v6, v6, 0x1
goto :goto_54
:cond_70
const/4 v13, 0x0
goto :goto_d
:cond_72
const/4 v10, 0x0
goto :goto_1a
:cond_74
and-int/lit8 v14, v2, 0x1
if-nez v14, :cond_100
const/4 v14, 0x4
if-ne v2, v14, :cond_f6
invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z
move-result v14
if-eqz v14, :cond_d9
move-object/from16 v0, p0
invoke-virtual {v0, v12, v4, v6, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z
move-result v1
if-eqz v1, :cond_bd
const/4 v5, 0x2
move-object/from16 v0, p0
iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z
if-eqz v14, :cond_aa
invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z
move-result v3
:cond_94
:goto_94
const/4 v2, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
aput v15, v12, v14
const/4 v14, 0x1
const/4 v15, 0x0
aput v15, v12, v14
const/4 v14, 0x2
const/4 v15, 0x0
aput v15, v12, v14
const/4 v14, 0x3
const/4 v15, 0x0
aput v15, v12, v14
const/4 v14, 0x4
const/4 v15, 0x0
aput v15, v12, v14
goto :goto_6d
:cond_aa
invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I
move-result v11
const/4 v14, 0x2
aget v14, v12, v14
if-le v11, v14, :cond_94
const/4 v14, 0x2
aget v14, v12, v14
sub-int v14, v11, v14
sub-int/2addr v14, v5
add-int/2addr v4, v14
add-int/lit8 v6, v8, -0x1
goto :goto_94
:cond_bd
const/4 v14, 0x0
const/4 v15, 0x2
aget v15, v12, v15
aput v15, v12, v14
const/4 v14, 0x1
const/4 v15, 0x3
aget v15, v12, v15
aput v15, v12, v14
const/4 v14, 0x2
const/4 v15, 0x4
aget v15, v12, v15
aput v15, v12, v14
const/4 v14, 0x3
const/4 v15, 0x1
aput v15, v12, v14
const/4 v14, 0x4
const/4 v15, 0x0
aput v15, v12, v14
const/4 v2, 0x3
goto :goto_6d
:cond_d9
const/4 v14, 0x0
const/4 v15, 0x2
aget v15, v12, v15
aput v15, v12, v14
const/4 v14, 0x1
const/4 v15, 0x3
aget v15, v12, v15
aput v15, v12, v14
const/4 v14, 0x2
const/4 v15, 0x4
aget v15, v12, v15
aput v15, v12, v14
const/4 v14, 0x3
const/4 v15, 0x1
aput v15, v12, v14
const/4 v14, 0x4
const/4 v15, 0x0
aput v15, v12, v14
const/4 v2, 0x3
goto/16 :goto_6d
:cond_f6
add-int/lit8 v2, v2, 0x1
aget v14, v12, v2
add-int/lit8 v14, v14, 0x1
aput v14, v12, v2
goto/16 :goto_6d
:cond_100
aget v14, v12, v2
add-int/lit8 v14, v14, 0x1
aput v14, v12, v2
goto/16 :goto_6d
:cond_108
invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z
move-result v14
if-eqz v14, :cond_123
move-object/from16 v0, p0
invoke-virtual {v0, v12, v4, v8, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z
move-result v1
if-eqz v1, :cond_123
const/4 v14, 0x0
aget v5, v12, v14
move-object/from16 v0, p0
iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z
if-eqz v14, :cond_123
invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z
move-result v3
:cond_123
add-int/2addr v4, v5
goto/16 :goto_3a
:cond_126
invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
move-result-object v9
invoke-static {v9}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V
new-instance v14, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
invoke-direct {v14, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V
return-object v14
.end method
.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
.registers 2
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;
return-object v0
.end method
.method protected final getPossibleCenters()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
return-object v0
.end method
.method protected final handlePossibleCenter([IIIZ)Z
.registers 16
const/4 v8, 0x0
aget v8, p1, v8
const/4 v9, 0x1
aget v9, p1, v9
add-int/2addr v8, v9
const/4 v9, 0x2
aget v9, p1, v9
add-int/2addr v8, v9
const/4 v9, 0x3
aget v9, p1, v9
add-int/2addr v8, v9
const/4 v9, 0x4
aget v9, p1, v9
add-int v7, v8, v9
invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F
move-result v2
float-to-int v8, v2
const/4 v9, 0x2
aget v9, p1, v9
invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F
move-result v1
invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z
move-result v8
if-nez v8, :cond_83
float-to-int v8, v2
float-to-int v9, v1
const/4 v10, 0x2
aget v10, p1, v10
invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F
move-result v2
invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z
move-result v8
if-nez v8, :cond_83
if-eqz p4, :cond_42
float-to-int v8, v1
float-to-int v9, v2
const/4 v10, 0x2
aget v10, p1, v10
invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(IIII)Z
move-result v8
if-eqz v8, :cond_83
:cond_42
int-to-float v8, v7
const/high16 v9, 0x40e0
div-float v3, v8, v9
const/4 v4, 0x0
const/4 v5, 0x0
:goto_49
iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v8
if-ge v5, v8, :cond_69
iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z
move-result v8
if-eqz v8, :cond_80
iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;
move-result-object v9
invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
const/4 v4, 0x1
:cond_69
if-nez v4, :cond_7e
new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V
iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;
invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;
if-eqz v8, :cond_7e
iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;
invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
:cond_7e
const/4 v8, 0x1
:goto_7f
return v8
:cond_80
add-int/lit8 v5, v5, 0x1
goto :goto_49
:cond_83
const/4 v8, 0x0
goto :goto_7f
.end method