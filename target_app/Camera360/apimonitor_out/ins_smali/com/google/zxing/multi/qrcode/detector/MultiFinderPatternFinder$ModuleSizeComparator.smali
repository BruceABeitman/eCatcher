.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
.super Ljava/lang/Object;
.source "MultiFinderPatternFinder.java"
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>()V
return-void
.end method
.method public compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
.registers 8
const-wide/16 v3, 0x0
invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v1
invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F
move-result v2
sub-float v0, v1, v2
float-to-double v1, v0
cmpg-double v1, v1, v3
if-gez v1, :cond_13
const/4 v1, -0x1
:goto_12
return v1
:cond_13
float-to-double v1, v0
cmpl-double v1, v1, v3
if-lez v1, :cond_1a
const/4 v1, 0x1
goto :goto_12
:cond_1a
const/4 v1, 0x0
goto :goto_12
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;
check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;
invoke-virtual {p0, p1, p2}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;->compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
move-result v0
return v0
.end method