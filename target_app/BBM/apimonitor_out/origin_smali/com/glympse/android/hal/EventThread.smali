.class public Lcom/glympse/android/hal/EventThread;
.super Ljava/lang/Object;
.source "EventThread.java"

# interfaces
.implements Lcom/glympse/android/hal/GEventThread;


# instance fields
.field private _handler:Lcom/glympse/android/core/GHandler;

.field private aU:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_10

    :goto_b
    iput-object v1, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/glympse/android/hal/EventThread;->_handler:Lcom/glympse/android/core/GHandler;

    goto :goto_5

    :catch_10
    move-exception v0

    goto :goto_b
.end method

.method public getHandler()Lcom/glympse/android/core/GHandler;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/glympse/android/hal/EventThread;->_handler:Lcom/glympse/android/core/GHandler;

    if-nez v0, :cond_1c

    :try_start_a
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/glympse/android/hal/ad;

    invoke-direct {v1, v0}, Lcom/glympse/android/hal/ad;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/glympse/android/hal/EventThread;->_handler:Lcom/glympse/android/core/GHandler;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1c} :catch_1f

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/glympse/android/hal/EventThread;->_handler:Lcom/glympse/android/core/GHandler;

    goto :goto_5

    :catch_1f
    move-exception v0

    goto :goto_1c
.end method

.method public join()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_10

    :goto_b
    iput-object v1, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/glympse/android/hal/EventThread;->_handler:Lcom/glympse/android/core/GHandler;

    goto :goto_5

    :catch_10
    move-exception v0

    goto :goto_b
.end method

.method public start()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventThread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/glympse/android/hal/EventThread;->aU:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_4

    :catch_15
    move-exception v0

    goto :goto_4
.end method
