.class public Lcom/pinguo/album/data/MediaSet$SortTag;
.super Ljava/lang/Object;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortTag"
.end annotation


# instance fields
.field public beginTime:Ljava/lang/String;

.field public beginTimeLong:J

.field public checked:Z

.field public count:I

.field public crc32s:Ljava/lang/String;

.field public drawBeginPos:F

.field public endTime:Ljava/lang/String;

.field public index:I

.field public isYearTag:Z

.field public offsetSlotCount:I

.field public pos:Landroid/graphics/Rect;

.field public tagName:Ljava/lang/String;

.field public week:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    iput v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    iput v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I

    iput v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I

    iput-boolean v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaSet$SortTag;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    iput v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    iput v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I

    iput v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I

    iput-boolean v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z

    iget-boolean v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z

    iput-boolean v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z

    iget v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I

    iput v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I

    iget v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    iput v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    iget v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I

    iput v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I

    iget-boolean v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    iput-boolean v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    iget-object v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    iget-wide v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    iput-wide v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    iget-object v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->tagName:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->tagName:Ljava/lang/String;

    iget v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->drawBeginPos:F

    iput v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->drawBeginPos:F

    iget-object v0, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tag index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":beginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":endTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "count ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isYearTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
