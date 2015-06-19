.class Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$1;
.super Landroid/os/Handler;
.source "WelcomeAdsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string/jumbo v0, "WelcomeAdsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "msg.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    :goto_20
    return-void

    :pswitch_21
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/event/ShowCameraFragmentEvent;

    invoke-direct {v1}, Lcom/pinguo/camera360/camera/event/ShowCameraFragmentEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    goto :goto_20

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_21
    .end packed-switch
.end method
