.class Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;
.super Landroid/os/Handler;
.source "PGVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/video/PGVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_68

    invoke-static {}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$3()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unhandled message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_1e
    return-void

    :pswitch_1f
    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    #getter for: Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z
    invoke-static {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$0(Lcom/pinguo/camera360/video/PGVideoFragment;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1e

    :pswitch_37
    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    #calls: Lcom/pinguo/camera360/video/PGVideoFragment;->updateRecordingTime()V
    invoke-static {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$1(Lcom/pinguo/camera360/video/PGVideoFragment;)V

    goto :goto_1e

    :pswitch_3d
    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, LvStudio/Android/Camera360/activity/CameraActivity;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->recordUserAction()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    #getter for: Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$2(Lcom/pinguo/camera360/video/PGVideoFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const-wide/32 v3, 0x15ba8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1e

    :pswitch_60
    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->setVideoParametersWhenIdle(I)V

    goto :goto_1e

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_60
        :pswitch_1f
        :pswitch_37
        :pswitch_3d
    .end packed-switch
.end method
