.class Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/adapters/PhotoDataAdapter;
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
.field mUpdateInfo:Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;

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

    invoke-virtual {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    iget-wide v8, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->version:J

    #setter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSourceVersion:J
    invoke-static {v6, v8, v9}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$13(Lcom/pinguo/album/adapters/PhotoDataAdapter;J)V

    iget v6, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->size:I

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$12(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v8

    if-eq v6, v8, :cond_4d

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    iget v8, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->size:I

    #setter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
    invoke-static {v6, v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$14(Lcom/pinguo/album/adapters/PhotoDataAdapter;I)V

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$7(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v6

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$12(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v8

    if-le v6, v8, :cond_34

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$12(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v8

    #setter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v6, v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$15(Lcom/pinguo/album/adapters/PhotoDataAdapter;I)V

    :cond_34
    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$16(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v6

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$12(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v8

    if-le v6, v8, :cond_4d

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$12(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v8

    #setter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v6, v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$17(Lcom/pinguo/album/adapters/PhotoDataAdapter;I)V

    :cond_4d
    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    iget v8, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->indexHint:I

    #setter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v6, v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$18(Lcom/pinguo/album/adapters/PhotoDataAdapter;I)V

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateSlidingWindow()V
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$19(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V

    iget-object v6, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-eqz v6, :cond_81

    iget v6, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
    invoke-static {v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$6(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v8, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$7(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    rem-int/lit16 v1, v5, 0x100

    move v3, v5

    :goto_7f
    if-lt v3, v2, :cond_cb

    :cond_81
    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$8(Lcom/pinguo/album/adapters/PhotoDataAdapter;)[Lcom/pinguo/album/data/MediaItem;

    move-result-object v6

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$9(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v8

    rem-int/lit16 v8, v8, 0x100

    aget-object v0, v6, v8

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    if-nez v0, :cond_e9

    move-object v6, v7

    :goto_96
    #setter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mItemPath:Lcom/pinguo/album/data/MediaPath;
    invoke-static {v8, v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$20(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaPath;)V

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageCache()V
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$21(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateTileProvider()V
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$22(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$23(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$24(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;

    move-result-object v6

    if-eqz v6, :cond_c5

    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$24(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;

    move-result-object v6

    iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$9(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I

    move-result v8

    iget-object v9, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mItemPath:Lcom/pinguo/album/data/MediaPath;
    invoke-static {v9}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$10(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaPath;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/pinguo/album/data/MediaPath;)V

    :cond_c5
    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->fireDataChange()V
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$25(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V

    return-object v7

    :cond_cb
    iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
    invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$8(Lcom/pinguo/album/adapters/PhotoDataAdapter;)[Lcom/pinguo/album/data/MediaItem;

    move-result-object v8

    iget-object v6, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget v9, v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v9, v3, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/album/data/MediaItem;

    aput-object v6, v8, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x100

    if-ne v1, v6, :cond_e6

    const/4 v1, 0x0

    :cond_e6
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_e9
    invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;

    move-result-object v6

    goto :goto_96
.end method
