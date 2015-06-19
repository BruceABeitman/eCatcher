.class public Lcom/glympse/android/lib/HttpJob;
.super Lcom/glympse/android/lib/fb;
.source "HttpJob.java"


# static fields
.field public static final STOP:I = -0x1


# instance fields
.field protected _abortHttp:Z

.field protected _backOffPolicy:Lcom/glympse/android/lib/bm;

.field protected _failures:I

.field protected _httpConnection:Lcom/glympse/android/hal/GHttpConnection;

.field protected _readResponseForFailedCall:Z

.field protected _responseCode:I

.field protected _success:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/glympse/android/lib/fb;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    iput v1, p0, Lcom/glympse/android/lib/HttpJob;->_responseCode:I

    iput-boolean v1, p0, Lcom/glympse/android/lib/HttpJob;->_readResponseForFailedCall:Z

    iput-boolean v1, p0, Lcom/glympse/android/lib/HttpJob;->_abortHttp:Z

    iput-boolean v1, p0, Lcom/glympse/android/lib/HttpJob;->_success:Z

    iput v1, p0, Lcom/glympse/android/lib/HttpJob;->_failures:I

    new-instance v0, Lcom/glympse/android/lib/bm;

    invoke-direct {v0}, Lcom/glympse/android/lib/bm;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_backOffPolicy:Lcom/glympse/android/lib/bm;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 1

    invoke-super {p0}, Lcom/glympse/android/lib/fb;->abort()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/HttpJob;->cancel()V

    return-void
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_abortHttp:Z

    iput-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_success:Z

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->close()V

    :cond_e
    return-void
.end method

.method public checkResponse(II)Z
    .registers 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getRetryInterval(I)I
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_backOffPolicy:Lcom/glympse/android/lib/bm;

    invoke-virtual {v0}, Lcom/glympse/android/lib/bm;->aX()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isAborted()Z
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/fb;->isAborted()Z

    move-result v0

    return v0
.end method

.method public isSucceeded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_success:Z

    return v0
.end method

.method public onAbort()V
    .registers 1

    invoke-super {p0}, Lcom/glympse/android/lib/fb;->onAbort()V

    return-void
.end method

.method public onComplete()V
    .registers 6

    const/4 v4, 0x4

    invoke-super {p0}, Lcom/glympse/android/lib/fb;->onComplete()V

    iget-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_abortHttp:Z

    if-nez v0, :cond_70

    invoke-virtual {p0}, Lcom/glympse/android/lib/HttpJob;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_70

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpJob.onComplete request failed with code:"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/glympse/android/lib/HttpJob;->_responseCode:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_handler:Lcom/glympse/android/core/GHandler;

    if-eqz v0, :cond_6f

    iget v0, p0, Lcom/glympse/android/lib/HttpJob;->_failures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/HttpJob;->_failures:I

    iget v0, p0, Lcom/glympse/android/lib/HttpJob;->_failures:I

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/HttpJob;->getRetryInterval(I)I

    move-result v1

    const/4 v0, -0x1

    if-eq v0, v1, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpJob.onComplete retry scheduled after failures: "

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/glympse/android/lib/HttpJob;->_failures:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/glympse/android/lib/HttpJob;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GJob;

    int-to-long v3, v1

    invoke-interface {v2, v0, v3, v4}, Lcom/glympse/android/lib/GJobQueue;->retryDelayed(Lcom/glympse/android/lib/GJob;J)V

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    const/4 v0, 0x0

    iput v0, p0, Lcom/glympse/android/lib/HttpJob;->_failures:I

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_backOffPolicy:Lcom/glympse/android/lib/bm;

    invoke-virtual {v0}, Lcom/glympse/android/lib/bm;->reset()V

    goto :goto_6f
.end method

.method public onPreProcess()V
    .registers 1

    return-void
.end method

.method public onProcess()V
    .registers 6

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/glympse/android/lib/HttpJob;->_abortHttp:Z

    iput-boolean v4, p0, Lcom/glympse/android/lib/HttpJob;->_success:Z

    invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createHttpConnection()Lcom/glympse/android/hal/GHttpConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-virtual {p0}, Lcom/glympse/android/lib/HttpJob;->onPreProcess()V

    iget-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_abortHttp:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_aborted:Z

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    iget-object v1, p0, Lcom/glympse/android/lib/HttpJob;->_backOffPolicy:Lcom/glympse/android/lib/bm;

    invoke-virtual {v1}, Lcom/glympse/android/lib/bm;->aY()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GHttpConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    iget-object v1, p0, Lcom/glympse/android/lib/HttpJob;->_backOffPolicy:Lcom/glympse/android/lib/bm;

    invoke-virtual {v1}, Lcom/glympse/android/lib/bm;->aZ()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GHttpConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/HttpJob;->_handler:Lcom/glympse/android/core/GHandler;

    if-eqz v1, :cond_93

    new-instance v1, Lcom/glympse/android/lib/dy;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/HttpJob;

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/dy;-><init>(Lcom/glympse/android/lib/HttpJob;)V

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_handler:Lcom/glympse/android/core/GHandler;

    iget-object v2, p0, Lcom/glympse/android/lib/HttpJob;->_backOffPolicy:Lcom/glympse/android/lib/bm;

    invoke-virtual {v2}, Lcom/glympse/android/lib/bm;->ba()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_48
    :try_start_48
    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->establish()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_8e

    :goto_4d
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Lcom/glympse/android/lib/dy;->abort()V

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V

    :cond_57
    iget-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_abortHttp:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_aborted:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/glympse/android/lib/HttpJob;->_responseCode:I

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataLength()I

    move-result v0

    iget-boolean v1, p0, Lcom/glympse/android/lib/HttpJob;->_abortHttp:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/glympse/android/lib/HttpJob;->_aborted:Z

    if-nez v1, :cond_16

    iget v1, p0, Lcom/glympse/android/lib/HttpJob;->_responseCode:I

    invoke-virtual {p0, v1, v0}, Lcom/glympse/android/lib/HttpJob;->checkResponse(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_success:Z

    iget-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_success:Z

    if-nez v0, :cond_85

    iget-boolean v0, p0, Lcom/glympse/android/lib/HttpJob;->_readResponseForFailedCall:Z

    if-eqz v0, :cond_16

    :cond_85
    invoke-virtual {p0}, Lcom/glympse/android/lib/HttpJob;->onProcessResponse()V

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->close()V

    goto :goto_16

    :catch_8e
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_4d

    :cond_93
    move-object v1, v0

    goto :goto_48
.end method

.method public onProcessResponse()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onRetry()V
    .registers 1

    invoke-super {p0}, Lcom/glympse/android/lib/fb;->onRetry()V

    return-void
.end method

.method public bridge synthetic onSchedule(Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/core/GHandler;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/glympse/android/lib/fb;->onSchedule(Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/core/GHandler;)V

    return-void
.end method

.method public reset()V
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/fb;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/glympse/android/lib/HttpJob;->_failures:I

    iget-object v0, p0, Lcom/glympse/android/lib/HttpJob;->_backOffPolicy:Lcom/glympse/android/lib/bm;

    invoke-virtual {v0}, Lcom/glympse/android/lib/bm;->reset()V

    return-void
.end method

.method public useHandler()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
