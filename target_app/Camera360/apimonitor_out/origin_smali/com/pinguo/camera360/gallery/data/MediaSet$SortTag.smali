.class public Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;
.super Ljava/lang/Object;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortTag"
.end annotation


# instance fields
.field public checked:Z

.field public count:I

.field public index:I

.field public isYearTag:Z

.field public offsetSlotCount:I

.field public pos:Landroid/graphics/Rect;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->index:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->offsetSlotCount:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->count:I

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->checked:Z

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->index:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->offsetSlotCount:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->count:I

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->checked:Z

    iget-boolean v0, p1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->checked:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->checked:Z

    iget v0, p1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->count:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->count:I

    iget v0, p1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->index:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->index:I

    iget v0, p1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->offsetSlotCount:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->offsetSlotCount:I

    iget-boolean v0, p1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    iget-object v0, p1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tag index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":tagname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":tagoffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->offsetSlotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":tagcount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
