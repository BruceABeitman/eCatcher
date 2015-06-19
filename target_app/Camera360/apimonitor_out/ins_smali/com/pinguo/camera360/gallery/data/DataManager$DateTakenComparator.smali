.class  Lcom/pinguo/camera360/gallery/data/DataManager$DateTakenComparator;
.super Ljava/lang/Object;
.source "DataManager.java"
.implements Ljava/util/Comparator;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Lcom/pinguo/camera360/gallery/data/MediaItem;Lcom/pinguo/camera360/gallery/data/MediaItem;)I
.registers 7
invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getDateInMs()J
move-result-wide v0
invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getDateInMs()J
move-result-wide v2
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/util/Utils;->compare(JJ)I
move-result v0
neg-int v0, v0
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/pinguo/camera360/gallery/data/MediaItem;
check-cast p2, Lcom/pinguo/camera360/gallery/data/MediaItem;
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/gallery/data/DataManager$DateTakenComparator;->compare(Lcom/pinguo/camera360/gallery/data/MediaItem;Lcom/pinguo/camera360/gallery/data/MediaItem;)I
move-result v0
return v0
.end method