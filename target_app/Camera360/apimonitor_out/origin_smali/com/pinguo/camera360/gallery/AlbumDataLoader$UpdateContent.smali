.class Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;
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
.field private mUpdateInfo:Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;

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

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->call()Ljava/lang/Void;

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

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    iget-wide v11, v4, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->version:J

    #setter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSourceVersion:J
    invoke-static {v10, v11, v12}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$6(Lcom/pinguo/camera360/gallery/AlbumDataLoader;J)V

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$2(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v10

    iget v11, v4, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->size:I

    if-eq v10, v11, :cond_66

    iget-object v7, v4, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->allSortTag:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    iget v11, v4, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->size:I

    #setter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
    invoke-static {v10, v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$7(Lcom/pinguo/camera360/gallery/AlbumDataLoader;I)V

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$8(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;

    move-result-object v10

    if-eqz v10, :cond_34

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$8(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;

    move-result-object v10

    iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$2(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v11

    invoke-interface {v10, v11, v7}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;->onSizeChanged(ILjava/util/ArrayList;)V

    :cond_34
    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v10

    iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$2(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v11

    if-le v10, v11, :cond_4d

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$2(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v11

    #setter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
    invoke-static {v10, v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$9(Lcom/pinguo/camera360/gallery/AlbumDataLoader;I)V

    :cond_4d
    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$10(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v10

    iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$2(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v11

    if-le v10, v11, :cond_66

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
    invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$2(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v11

    #setter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v10, v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$11(Lcom/pinguo/camera360/gallery/AlbumDataLoader;I)V

    :cond_66
    iget-object v0, v4, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->cachedItems:Ljava/util/ArrayList;

    if-nez v0, :cond_6b

    :cond_6a
    return-object v13

    :cond_6b
    iget v10, v4, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentStart:I
    invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$4(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v10, v4, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadStart:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
    invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v8

    :goto_89
    if-ge v2, v1, :cond_6a

    rem-int/lit16 v3, v2, 0x3e8

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSetVersion:[J
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$3(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)[J

    move-result-object v10

    iget-wide v11, v4, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->version:J

    aput-wide v11, v10, v3

    iget v10, v4, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadStart:I

    sub-int v10, v2, v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pinguo/camera360/gallery/data/MediaItem;

    invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v5

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mItemVersion:[J
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$12(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)[J

    move-result-object v10

    aget-wide v10, v10, v3

    cmp-long v10, v10, v5

    if-eqz v10, :cond_e2

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mItemVersion:[J
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$12(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)[J

    move-result-object v10

    aput-wide v5, v10, v3

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$13(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)[Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v10

    aput-object v9, v10, v3

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$8(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;

    move-result-object v10

    if-eqz v10, :cond_e2

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveStart:I
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$14(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v10

    if-lt v2, v10, :cond_e2

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$10(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v10

    if-ge v2, v10, :cond_e2

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$8(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;

    move-result-object v10

    invoke-interface {v10, v2}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;->onSlotContentChanged(I)V

    :cond_e2
    add-int/lit8 v2, v2, 0x1

    goto :goto_89
.end method
