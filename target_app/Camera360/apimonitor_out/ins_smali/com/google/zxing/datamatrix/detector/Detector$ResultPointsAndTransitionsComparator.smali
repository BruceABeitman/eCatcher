.class final Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
.super Ljava/lang/Object;
.source "Detector.java"
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>()V
return-void
.end method
.method public compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I
.registers 5
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v0
invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
check-cast p2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;->compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I
move-result v0
return v0
.end method