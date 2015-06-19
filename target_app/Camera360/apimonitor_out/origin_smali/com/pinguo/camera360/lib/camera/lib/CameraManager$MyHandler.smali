.class Lcom/pinguo/camera360/lib/camera/lib/CameraManager$MyHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/lib/CameraManager;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/CameraManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$MyHandler;->this$0:Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$MyHandler;->this$0:Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->forceReleaseCamera()V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
