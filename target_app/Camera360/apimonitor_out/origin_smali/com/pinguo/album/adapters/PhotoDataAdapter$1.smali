.class Lcom/pinguo/album/adapters/PhotoDataAdapter$1;
.super Lcom/pinguo/album/SynchronizedHandler;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/adapters/PhotoDataAdapter;-><init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/data/MediaPath;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/views/GLController;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$1;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/pinguo/album/SynchronizedHandler;-><init>(Lcom/pinguo/album/views/GLController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_12
    :goto_12
    return-void

    :pswitch_13
    iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$1;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$24(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$1;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$24(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;->onLoadingStarted()V

    goto :goto_12

    :pswitch_25
    iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$1;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$24(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$1;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$24(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;->onLoadingFinished(Z)V

    goto :goto_12

    :pswitch_38
    iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$1;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$23(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V

    goto :goto_12

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_25
        :pswitch_b
        :pswitch_38
    .end packed-switch
.end method
