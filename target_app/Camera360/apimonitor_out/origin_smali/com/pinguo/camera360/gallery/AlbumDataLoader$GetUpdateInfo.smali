.class Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;J)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    return-void
.end method


# virtual methods
.method public call()Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;

    invoke-direct {v2, v7}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;-><init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;)V

    iget-wide v5, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSourceVersion:J
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$1(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->version:J

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$2(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v8

    iput v8, v2, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->size:I

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSetVersion:[J
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$3(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)[J

    move-result-object v4

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentStart:I
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$4(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v0

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v3

    :goto_2a
    if-lt v0, v3, :cond_3a

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSourceVersion:J
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$1(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_39

    move-object v2, v7

    :cond_39
    :goto_39
    return-object v2

    :cond_3a
    rem-int/lit16 v1, v0, 0x3e8

    aget-wide v8, v4, v1

    cmp-long v8, v8, v5

    if-eqz v8, :cond_4f

    iput v0, v2, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadStart:I

    const/16 v7, 0x40

    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v2, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadCount:I

    goto :goto_39

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;->call()Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
