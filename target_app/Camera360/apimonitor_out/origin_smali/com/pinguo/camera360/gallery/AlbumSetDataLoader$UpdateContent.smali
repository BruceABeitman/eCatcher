.class Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUpdateInfo:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 9

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$0(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    move-result-object v4

    if-nez v4, :cond_a

    :cond_9
    :goto_9
    return-object v7

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    iget-wide v5, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->version:J

    #setter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSourceVersion:J
    invoke-static {v4, v5, v6}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$6(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;J)V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v4

    iget v5, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->size:I

    if-eq v4, v5, :cond_6d

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    iget v5, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->size:I

    #setter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I
    invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$7(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;I)V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$8(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;

    move-result-object v4

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$8(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;->onSizeChanged(I)V

    :cond_3b
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$3(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v5

    if-le v4, v5, :cond_54

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v5

    #setter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$9(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;I)V

    :cond_54
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$10(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v5

    if-le v4, v5, :cond_6d

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v5

    #setter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I
    invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$11(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;I)V

    :cond_6d
    iget v4, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentStart:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$2(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v5

    if-lt v4, v5, :cond_9

    iget v4, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$3(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v5

    if-ge v4, v5, :cond_9

    iget v4, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$12(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v5

    array-length v5, v5

    rem-int v3, v4, v5

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSetVersion:[J
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$1(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[J

    move-result-object v4

    iget-wide v5, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->version:J

    aput-wide v5, v4, v3

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->item:Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getDataVersion()J

    move-result-wide v1

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mItemVersion:[J
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$13(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[J

    move-result-object v4

    aget-wide v4, v4, v3

    cmp-long v4, v4, v1

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mItemVersion:[J
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$13(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[J

    move-result-object v4

    aput-wide v1, v4, v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$14(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v4

    iget-object v5, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->item:Lcom/pinguo/camera360/gallery/data/MediaSet;

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$12(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v4

    iget-object v5, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/pinguo/camera360/gallery/data/MediaItem;

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mTotalCount:[I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$15(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[I

    move-result-object v4

    iget v5, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    aput v5, v4, v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mBucketId:[I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$16(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[I

    move-result-object v4

    iget v5, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->bucketId:I

    aput v5, v4, v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$8(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;

    move-result-object v4

    if-eqz v4, :cond_9

    iget v4, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveStart:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$17(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v5

    if-lt v4, v5, :cond_9

    iget v4, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$10(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I

    move-result v5

    if-ge v4, v5, :cond_9

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$8(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;

    move-result-object v4

    iget v5, v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-interface {v4, v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;->onContentChanged(I)V

    goto/16 :goto_9
.end method
