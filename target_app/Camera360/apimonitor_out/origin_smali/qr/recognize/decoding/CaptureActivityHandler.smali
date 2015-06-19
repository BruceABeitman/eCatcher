.class public final Lqr/recognize/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqr/recognize/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final decodeThread:Lqr/recognize/decoding/DecodeThread;

.field private mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;

.field private state:Lqr/recognize/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lqr/recognize/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqr/recognize/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;Ljava/util/Vector;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/camera/controller/QRCamera;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lqr/recognize/decoding/CaptureActivityHandler;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;

    new-instance v0, Lqr/recognize/decoding/DecodeThread;

    new-instance v1, Lqr/recognize/view/ViewfinderResultPointCallback;

    iget-object v2, p0, Lqr/recognize/decoding/CaptureActivityHandler;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/QRCamera;->getViewfinder()Lqr/recognize/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lqr/recognize/view/ViewfinderResultPointCallback;-><init>(Lqr/recognize/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lqr/recognize/decoding/DecodeThread;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lqr/recognize/decoding/CaptureActivityHandler;->decodeThread:Lqr/recognize/decoding/DecodeThread;

    iget-object v0, p0, Lqr/recognize/decoding/CaptureActivityHandler;->decodeThread:Lqr/recognize/decoding/DecodeThread;

    invoke-virtual {v0}, Lqr/recognize/decoding/DecodeThread;->start()V

    sget-object v0, Lqr/recognize/decoding/CaptureActivityHandler$State;->SUCCESS:Lqr/recognize/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lqr/recognize/decoding/CaptureActivityHandler;->state:Lqr/recognize/decoding/CaptureActivityHandler$State;

    invoke-direct {p0}, Lqr/recognize/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .registers 4

    iget-object v1, p0, Lqr/recognize/decoding/CaptureActivityHandler;->state:Lqr/recognize/decoding/CaptureActivityHandler$State;

    sget-object v2, Lqr/recognize/decoding/CaptureActivityHandler$State;->SUCCESS:Lqr/recognize/decoding/CaptureActivityHandler$State;

    if-ne v1, v2, :cond_a

    sget-object v1, Lqr/recognize/decoding/CaptureActivityHandler$State;->PREVIEW:Lqr/recognize/decoding/CaptureActivityHandler$State;

    iput-object v1, p0, Lqr/recognize/decoding/CaptureActivityHandler;->state:Lqr/recognize/decoding/CaptureActivityHandler$State;

    :cond_a
    iget-object v1, p0, Lqr/recognize/decoding/CaptureActivityHandler;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->getViewfinder()Lqr/recognize/view/ViewfinderView;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lqr/recognize/view/ViewfinderView;->drawViewfinder()V

    :cond_15
    return-void
.end method


# virtual methods
.method public getDecodeThread()Lqr/recognize/decoding/DecodeThread;
    .registers 2

    iget-object v0, p0, Lqr/recognize/decoding/CaptureActivityHandler;->decodeThread:Lqr/recognize/decoding/DecodeThread;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    sget-object v0, Lqr/recognize/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got restart preview message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lqr/recognize/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_5

    :pswitch_12
    sget-object v0, Lqr/recognize/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got decode succeeded message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lqr/recognize/decoding/CaptureActivityHandler$State;->SUCCESS:Lqr/recognize/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lqr/recognize/decoding/CaptureActivityHandler;->state:Lqr/recognize/decoding/CaptureActivityHandler$State;

    iget-object v1, p0, Lqr/recognize/decoding/CaptureActivityHandler;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->handleDecode(Lcom/google/zxing/Result;)V

    goto :goto_5

    :pswitch_28
    sget-object v0, Lqr/recognize/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got return scan result message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lqr/recognize/decoding/CaptureActivityHandler;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->handleDecode(Lcom/google/zxing/Result;)V

    goto :goto_5

    :pswitch_data_3a
    .packed-switch 0x7f0a0029
        :pswitch_5
        :pswitch_5
        :pswitch_12
        :pswitch_12
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_28
    .end packed-switch
.end method

.method public quitSynchronously()V
    .registers 4

    sget-object v1, Lqr/recognize/decoding/CaptureActivityHandler$State;->DONE:Lqr/recognize/decoding/CaptureActivityHandler$State;

    iput-object v1, p0, Lqr/recognize/decoding/CaptureActivityHandler;->state:Lqr/recognize/decoding/CaptureActivityHandler$State;

    iget-object v1, p0, Lqr/recognize/decoding/CaptureActivityHandler;->decodeThread:Lqr/recognize/decoding/DecodeThread;

    invoke-virtual {v1}, Lqr/recognize/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :try_start_14
    iget-object v1, p0, Lqr/recognize/decoding/CaptureActivityHandler;->decodeThread:Lqr/recognize/decoding/DecodeThread;

    invoke-virtual {v1}, Lqr/recognize/decoding/DecodeThread;->join()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_26

    :goto_19
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lqr/recognize/decoding/CaptureActivityHandler;->removeMessages(I)V

    const v1, 0x7f0a002b

    invoke-virtual {p0, v1}, Lqr/recognize/decoding/CaptureActivityHandler;->removeMessages(I)V

    return-void

    :catch_26
    move-exception v1

    goto :goto_19
.end method
