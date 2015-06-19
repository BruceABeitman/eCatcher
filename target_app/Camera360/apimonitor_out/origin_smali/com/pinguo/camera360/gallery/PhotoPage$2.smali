.class Lcom/pinguo/camera360/gallery/PhotoPage$2;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoPage;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/PhotoPage;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onPhotoBrowsed()V
    .registers 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mModel:Lcom/pinguo/camera360/gallery/PhotoPage$Model;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$6(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/PhotoPage$Model;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/pinguo/camera360/gallery/PhotoPage$Model;->getMediaItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #calls: Lcom/pinguo/camera360/gallery/PhotoPage;->updateCurrentPhoto(Lcom/pinguo/camera360/gallery/data/MediaItem;)V
    invoke-static {v3, v1}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$7(Lcom/pinguo/camera360/gallery/PhotoPage;Lcom/pinguo/camera360/gallery/data/MediaItem;)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$8(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$4(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->onPhotoBrowsed(Ljava/lang/String;IZ)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$0(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/ui/PhotoView;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$8(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->getCurrPhotoCameraModeIndex()I

    move-result v4

    const/16 v5, 0xe

    if-eq v4, v5, :cond_3f

    const/4 v2, 0x1

    :cond_3f
    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setScalable(Z)V

    :cond_42
    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mModel:Lcom/pinguo/camera360/gallery/PhotoPage$Model;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$6(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/PhotoPage$Model;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoPage$2;->onPhotoBrowsed()V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mOnlyPageInStack:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$11(Lcom/pinguo/camera360/gallery/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #calls: Lcom/pinguo/camera360/gallery/PhotoPage;->onStartNewAlbum()V
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$12(Lcom/pinguo/camera360/gallery/PhotoPage;)V

    goto :goto_f

    :cond_1e
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/StateManager;->finishState(Lcom/pinguo/camera360/gallery/ActivityState;)V

    goto :goto_f
.end method

.method public onLoadingStarted()V
    .registers 8

    const v6, 0x7f0800a1

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mOriginalSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$9(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v1

    #setter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mTotalCount:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$10(Lcom/pinguo/camera360/gallery/PhotoPage;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$4(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mTotalCount:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$5(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_57

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    iget-object v1, v1, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mTotalCount:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$5(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mTotalCount:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$5(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updatePhotoBrowseTitle(Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void

    :cond_57
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$4(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v0

    if-ltz v0, :cond_56

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    iget-object v1, v1, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$4(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mTotalCount:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$5(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updatePhotoBrowseTitle(Ljava/lang/String;)V

    goto :goto_56
.end method

.method public onPhotoChanged(ILjava/lang/String;)V
    .registers 10

    const/4 v6, 0x1

    const-string/jumbo v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPhotoChanged index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$1(Lcom/pinguo/camera360/gallery/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$2(Lcom/pinguo/camera360/gallery/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_33
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #setter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I
    invoke-static {v0, p1}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$3(Lcom/pinguo/camera360/gallery/PhotoPage;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    iget-object v1, v1, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$4(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoPage$2;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mTotalCount:I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$5(Lcom/pinguo/camera360/gallery/PhotoPage;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updatePhotoBrowseTitle(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoPage$2;->onPhotoBrowsed()V

    return-void
.end method
