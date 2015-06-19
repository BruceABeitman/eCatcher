.class Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$1;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :pswitch_e
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$21(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$21(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/LoadingListener;->onLoadingStarted()V

    goto :goto_5

    :pswitch_20
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$21(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$21(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/LoadingListener;->onLoadingFinished()V

    goto :goto_5

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_e
        :pswitch_20
        :pswitch_6
    .end packed-switch
.end method
