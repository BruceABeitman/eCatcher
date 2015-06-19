.class Lcom/pinguo/camera360/gallery/AlbumPage$3$1;
.super Ljava/lang/Thread;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/AlbumPage$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/AlbumPage$3;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage$3;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;->this$1:Lcom/pinguo/camera360/gallery/AlbumPage$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;->this$1:Lcom/pinguo/camera360/gallery/AlbumPage$3;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage$3;->access$0(Lcom/pinguo/camera360/gallery/AlbumPage$3;)Lcom/pinguo/camera360/gallery/AlbumPage;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$15(Lcom/pinguo/camera360/gallery/AlbumPage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;->this$1:Lcom/pinguo/camera360/gallery/AlbumPage$3;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage$3;->access$0(Lcom/pinguo/camera360/gallery/AlbumPage$3;)Lcom/pinguo/camera360/gallery/AlbumPage;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$8(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemNeedSync()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;->this$1:Lcom/pinguo/camera360/gallery/AlbumPage$3;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage$3;->access$0(Lcom/pinguo/camera360/gallery/AlbumPage$3;)Lcom/pinguo/camera360/gallery/AlbumPage;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$15(Lcom/pinguo/camera360/gallery/AlbumPage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
