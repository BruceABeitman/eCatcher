.class Lcom/pinguo/camera360/gallery/PhotoPage$3;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoPage;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/PhotoPage;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$3;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    :pswitch_5
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_d
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$3;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    const/4 v1, 0x1

    #calls: Lcom/pinguo/camera360/gallery/PhotoPage;->hideBars(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$14(Lcom/pinguo/camera360/gallery/PhotoPage;Z)V

    :goto_13
    :pswitch_13
    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$3;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unfreeze()V

    goto :goto_13

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_d
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_5
        :pswitch_14
    .end packed-switch
.end method
