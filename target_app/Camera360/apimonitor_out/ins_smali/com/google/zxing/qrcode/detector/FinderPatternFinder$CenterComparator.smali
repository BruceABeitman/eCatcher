.class final Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;
.field private final average:F
.method private constructor <init>(F)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F
return-void
.end method
.method synthetic constructor <init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(F)V
return-void
.end method
.method public compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
.registers 7
invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I
move-result v2
invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I
move-result v3
if-ne v2, v3, :cond_2e
invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v2
iget v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F
sub-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v0
invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v2
iget v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F
sub-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpg-float v2, v0, v1
if-gez v2, :cond_26
const/4 v2, 0x1
:goto_25
return v2
:cond_26
cmpl-float v2, v0, v1
if-nez v2, :cond_2c
const/4 v2, 0x0
goto :goto_25
:cond_2c
const/4 v2, -0x1
goto :goto_25
:cond_2e
invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I
move-result v2
invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I
move-result v3
sub-int/2addr v2, v3
goto :goto_25
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;
check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
move-result v0
return v0
.end method