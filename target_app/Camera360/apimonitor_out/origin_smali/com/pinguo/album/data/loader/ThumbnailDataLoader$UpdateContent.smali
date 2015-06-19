.class Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "ThumbnailDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
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
.field private mUpdateInfo:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->mUpdateInfo:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;

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

    invoke-virtual {p0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v13, 0x0

    iget-object v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->mUpdateInfo:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    iget-wide v11, v3, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->version:J

    #setter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSourceVersion:J
    invoke-static {v10, v11, v12}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$6(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;J)V

    iget-object v10, v3, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->allSortTag:Ljava/util/ArrayList;

    if-eqz v10, :cond_60

    iget-object v7, v3, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->allSortTag:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    iget v11, v3, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->size:I

    #setter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I
    invoke-static {v10, v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$7(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;I)V

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mDataListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$8(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;

    move-result-object v10

    if-eqz v10, :cond_2e

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mDataListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$8(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;

    move-result-object v10

    iget-object v11, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$2(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v11

    invoke-interface {v10, v11, v7}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;->onSizeChanged(ILjava/util/ArrayList;)V

    :cond_2e
    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$5(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v10

    iget-object v11, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$2(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v11

    if-le v10, v11, :cond_47

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    iget-object v11, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$2(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v11

    #setter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I
    invoke-static {v10, v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$9(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;I)V

    :cond_47
    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$10(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v10

    iget-object v11, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$2(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v11

    if-le v10, v11, :cond_60

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    iget-object v11, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$2(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v11

    #setter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I
    invoke-static {v10, v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$11(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;I)V

    :cond_60
    iget-object v6, v3, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->cachedItems:Ljava/util/ArrayList;

    if-nez v6, :cond_65

    :cond_64
    return-object v13

    :cond_65
    iget v10, v3, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->reloadStart:I

    iget-object v11, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentStart:I
    invoke-static {v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$4(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v10, v3, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->reloadStart:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I
    invoke-static {v11}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$5(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v8

    :goto_83
    if-ge v1, v0, :cond_64

    rem-int/lit16 v2, v1, 0x3e8

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSetVersion:[J
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$3(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)[J

    move-result-object v10

    iget-wide v11, v3, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->version:J

    aput-wide v11, v10, v2

    iget v10, v3, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->reloadStart:I

    sub-int v10, v1, v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pinguo/album/data/MediaItem;

    invoke-virtual {v9}, Lcom/pinguo/album/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mItemVersion:[J
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$12(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)[J

    move-result-object v10

    aget-wide v10, v10, v2

    cmp-long v10, v10, v4

    if-eqz v10, :cond_dc

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mItemVersion:[J
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$12(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)[J

    move-result-object v10

    aput-wide v4, v10, v2

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mData:[Lcom/pinguo/album/data/MediaItem;
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$13(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)[Lcom/pinguo/album/data/MediaItem;

    move-result-object v10

    aput-object v9, v10, v2

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mDataListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$8(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;

    move-result-object v10

    if-eqz v10, :cond_dc

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveStart:I
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$14(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v10

    if-lt v1, v10, :cond_dc

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$10(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I

    move-result v10

    if-ge v1, v10, :cond_dc

    iget-object v10, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mDataListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;
    invoke-static {v10}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$8(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;->onSlotContentChanged(I)V

    :cond_dc
    add-int/lit8 v1, v1, 0x1

    goto :goto_83
.end method
