.class Lcom/pinguo/camera360/gallery/AlbumPage$9;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/AlbumPage;->onSyncDone(Lcom/pinguo/camera360/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    iput p2, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    iget-object v1, v1, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V

    :try_start_c
    iget v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->val$resultCode:I

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    const/4 v2, 0x1

    #setter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mInitialSynced:Z
    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$24(Lcom/pinguo/camera360/gallery/AlbumPage;Z)V

    :cond_16
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    const/4 v2, 0x2

    #calls: Lcom/pinguo/camera360/gallery/AlbumPage;->clearLoadingBit(I)V
    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$14(Lcom/pinguo/camera360/gallery/AlbumPage;I)V

    iget v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->val$resultCode:I

    if-ne v1, v3, :cond_4b

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$7(Lcom/pinguo/camera360/gallery/AlbumPage;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$6(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->size()I

    move-result v1

    if-nez v1, :cond_4b

    new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    iget-object v2, v2, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    const v3, 0x7f08009f

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage$9;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    iget-object v4, v4, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/RootActivity;->getOrientation()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_4f

    :cond_4b
    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_4f
    move-exception v1

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
