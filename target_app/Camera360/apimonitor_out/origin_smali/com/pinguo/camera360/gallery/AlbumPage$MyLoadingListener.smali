.class Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .registers 5

    const/16 v3, 0x3ea

    sget-object v1, Lcom/pinguo/camera360/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$8(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v2

    #setter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaCount:I
    invoke-static {v0, v2}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$12(Lcom/pinguo/camera360/gallery/AlbumPage;I)V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_5a

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$8(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaCount:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$13(Lcom/pinguo/camera360/gallery/AlbumPage;)I

    move-result v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryMyGallerySum(I)V

    :cond_2e
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    const/4 v1, 0x1

    #calls: Lcom/pinguo/camera360/gallery/AlbumPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$14(Lcom/pinguo/camera360/gallery/AlbumPage;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaCount:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$13(Lcom/pinguo/camera360/gallery/AlbumPage;)I

    move-result v0

    if-gtz v0, :cond_5d

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$8(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I

    move-result v0

    if-eq v0, v3, :cond_5d

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/StateManager;->finishState(Lcom/pinguo/camera360/gallery/ActivityState;)V

    :goto_59
    return-void

    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0

    :cond_5d
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaCount:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$13(Lcom/pinguo/camera360/gallery/AlbumPage;)I

    move-result v1

    #calls: Lcom/pinguo/camera360/gallery/AlbumPage;->updateTitle(I)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$10(Lcom/pinguo/camera360/gallery/AlbumPage;I)V

    goto :goto_59
.end method

.method public onLoadingStarted()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumPage;->updateTitle(I)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$10(Lcom/pinguo/camera360/gallery/AlbumPage;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$11(Lcom/pinguo/camera360/gallery/AlbumPage;I)V

    return-void
.end method
