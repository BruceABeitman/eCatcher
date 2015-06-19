.class Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/Camera360Lib/async/AsyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    :goto_9
    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;->request:Lcom/pinguo/Camera360Lib/async/AsyncRequest;

    iget-object v2, v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;->data:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    #calls: Lcom/pinguo/Camera360Lib/async/AsyncRequest;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$0(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_15
    iget-object v1, v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;->request:Lcom/pinguo/Camera360Lib/async/AsyncRequest;

    iget-object v2, v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;->data:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_9

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
