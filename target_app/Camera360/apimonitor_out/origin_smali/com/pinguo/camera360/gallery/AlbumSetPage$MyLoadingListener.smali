.class Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field mediaItemCount:I

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->mediaItemCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    iget-object v3, v3, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/gallery/RootActivity;->setProgressBar(Z)V

    sget-object v3, Lcom/pinguo/camera360/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$7(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryOtherGallerySum(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$7(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v4

    iput v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->mediaItemCount:I

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_61

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    iget-object v3, v3, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    iget-object v4, v4, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->mediaItemCount:I

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setHeaderTitle(Ljava/lang/String;I)V

    iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->mediaItemCount:I

    if-gtz v3, :cond_64

    move v0, v1

    :goto_47
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    iget-object v3, v3, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v3

    if-eqz v0, :cond_66

    :goto_51
    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateAlbumSetSelection(Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    iget-object v2, v2, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->setEmptyAlbumView(Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v2, v1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$8(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V

    return-void

    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1

    :cond_64
    move v0, v2

    goto :goto_47

    :cond_66
    move v2, v1

    goto :goto_51
.end method

.method public onLoadingStarted()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    iget-object v1, v1, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setHeaderTitle(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumSetPage;->setLoadingBit(I)V
    invoke-static {v0, v3}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$6(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V

    return-void
.end method
