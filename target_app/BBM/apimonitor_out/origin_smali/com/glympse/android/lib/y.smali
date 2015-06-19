.class Lcom/glympse/android/lib/y;
.super Lcom/glympse/android/lib/HttpJob;
.source "BatchJob.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private _time:J

.field private f:Ljava/lang/String;

.field private gQ:Ljava/lang/String;

.field protected hS:Lcom/glympse/android/lib/GBatchListener;

.field protected hT:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;

.field private hV:Z

.field private hW:Ljava/lang/String;

.field private hX:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hY:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private hf:Ljava/lang/String;

.field private hg:Ljava/lang/String;

.field private hh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/GGlympsePrivate;",
            "Lcom/glympse/android/lib/GBatchListener;",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/y;->_readResponseForFailedCall:Z

    iput-object p1, p0, Lcom/glympse/android/lib/y;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/y;->hS:Lcom/glympse/android/lib/GBatchListener;

    iput-object p3, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    iget-object v0, p0, Lcom/glympse/android/lib/y;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GNetworkManagerPrivate;

    iput-object v0, p0, Lcom/glympse/android/lib/y;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/y;->hX:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/y;->hY:Lcom/glympse/android/hal/GVector;

    iget-object v0, p0, Lcom/glympse/android/lib/y;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->isSslEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/glympse/android/lib/y;->hV:Z

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/y;->hW:Ljava/lang/String;

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/y;->f:Ljava/lang/String;

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/y;->gQ:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glympse/android/lib/y;->_time:J

    return-void
.end method

.method private a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_2a

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;

    iget v3, p0, Lcom/glympse/android/lib/y;->_failures:I

    invoke-interface {v0, p1, v3}, Lcom/glympse/android/lib/GApiEndpoint;->shouldRetry(ZI)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->cancel()V

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    :goto_25
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_7

    :cond_2a
    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/glympse/android/lib/y;->abort()V

    :cond_35
    return-void

    :cond_36
    move v0, v1

    move v1, v2

    goto :goto_25
.end method

.method private an()V
    .registers 10

    const/high16 v8, 0x100

    const/4 v7, 0x4

    const/4 v6, 0x3

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/glympse/android/lib/y;->_time:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/glympse/android/lib/y;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/y;->_time:J

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GCorrectedTime;->setServerTime(J)V

    :cond_17
    iget-object v0, p0, Lcom/glympse/android/lib/y;->hf:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f5

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hY:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_36
    if-ge v2, v3, :cond_ed

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hY:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;

    iget-object v1, p0, Lcom/glympse/android/lib/y;->hX:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->getResult()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    const-string v5, "retry"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    iget-object v4, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v4, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needs to be retried"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :goto_77
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_36

    :cond_7b
    const-string v5, "rate_limited"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    iget-object v0, p0, Lcom/glympse/android/lib/y;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/glympse/android/lib/GServerPost;->rememberEvents(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was rate limited"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_77

    :cond_a3
    invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->process()Z

    move-result v4

    if-eqz v4, :cond_c0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " succeeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_77

    :cond_c0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed with error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " details: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->getErrorDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_77

    :cond_ed
    iget-object v0, p0, Lcom/glympse/android/lib/y;->hS:Lcom/glympse/android/lib/GBatchListener;

    iget-object v1, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatchListener;->batchCompleted(Lcom/glympse/android/hal/GVector;)V

    :cond_f4
    :goto_f4
    return-void

    :cond_f5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://batch: failed with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/y;->hg:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/y;->hh:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hg:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f4

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hg:Ljava/lang/String;

    const-string v1, "rate_limited"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lcom/glympse/android/lib/y;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/glympse/android/lib/GServerPost;->rememberEvents(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    :cond_13d
    iget-object v0, p0, Lcom/glympse/android/lib/y;->hS:Lcom/glympse/android/lib/GBatchListener;

    iget-object v1, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatchListener;->batchFailed(Lcom/glympse/android/hal/GVector;)V

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hg:Ljava/lang/String;

    const-string v1, "oauth_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hS:Lcom/glympse/android/lib/GBatchListener;

    iget-object v1, p0, Lcom/glympse/android/lib/y;->gQ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatchListener;->sessionFailed(Ljava/lang/String;)V

    goto :goto_f4
.end method


# virtual methods
.method public onAbort()V
    .registers 3

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onAbort()V

    iget-object v0, p0, Lcom/glympse/android/lib/y;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;

    invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->cancel()V

    goto :goto_12

    :cond_22
    iget-object v0, p0, Lcom/glympse/android/lib/y;->hS:Lcom/glympse/android/lib/GBatchListener;

    iget-object v1, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatchListener;->batchFailed(Lcom/glympse/android/hal/GVector;)V

    goto :goto_b
.end method

.method public onComplete()V
    .registers 3

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onComplete()V

    iget-object v0, p0, Lcom/glympse/android/lib/y;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/glympse/android/lib/y;->isSucceeded()Z

    move-result v0

    iget-object v1, p0, Lcom/glympse/android/lib/y;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GNetworkManagerPrivate;->requestCompleted(Z)V

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/y;->a(Z)V

    goto :goto_b

    :cond_1c
    invoke-direct {p0}, Lcom/glympse/android/lib/y;->an()V

    goto :goto_b
.end method

.method public onPreProcess()V
    .registers 13

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/glympse/android/lib/y;->gQ:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_13
    invoke-virtual {p0}, Lcom/glympse/android/lib/y;->abort()V

    :goto_16
    return-void

    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-boolean v0, p0, Lcom/glympse/android/lib/y;->hV:Z

    if-eqz v0, :cond_c7

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTPS()Ljava/lang/String;

    move-result-object v0

    :goto_26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/y;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "batch?oauth_token="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/y;->gQ:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/glympse/android/lib/y;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v4, v0}, Lcom/glympse/android/hal/GHttpConnection;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/y;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    const-string v4, "Content-Type"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/json"

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/glympse/android/hal/GHttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    mul-int/lit16 v0, v1, 0x400

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x5b

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v8

    move v5, v3

    move v6, v3

    :goto_66
    if-ge v5, v8, :cond_d8

    iget-object v0, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v5}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;

    invoke-static {v2, v11, v0, v11}, Lcom/glympse/android/lib/j;->a(ZLjava/lang/String;Lcom/glympse/android/lib/GApiEndpoint;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->post()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_cd

    move v1, v2

    :goto_7f
    const-string v4, "{\"method\":\""

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_cf

    const-string v4, "POST"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_8c
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"url\":\""

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a6

    const-string v1, ",\"body\":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a6
    const/16 v1, 0x7d

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v8, -0x1

    if-ge v5, v1, :cond_b4

    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b4
    iget-object v1, p0, Lcom/glympse/android/lib/y;->hX:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v9}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    if-nez v6, :cond_c1

    invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->userAgent()Z

    move-result v0

    if-eqz v0, :cond_d6

    :cond_c1
    move v0, v2

    :goto_c2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v0

    goto :goto_66

    :cond_c7
    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTP()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_26

    :cond_cd
    move v1, v3

    goto :goto_7f

    :cond_cf
    const-string v4, "GET"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8c

    :cond_d6
    move v0, v3

    goto :goto_c2

    :cond_d8
    const/16 v0, 0x5d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/y;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GHttpConnection;->setRequestMethod(Z)V

    iget-object v1, p0, Lcom/glympse/android/lib/y;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/GHttpConnection;->setRequestData(Ljava/lang/String;)V

    if-eqz v6, :cond_fa

    iget-object v1, p0, Lcom/glympse/android/lib/y;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    const-string v2, "X-GlympseAgent"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/glympse/android/lib/y;->hW:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/hal/GHttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fa
    invoke-static {v0}, Lcom/glympse/android/lib/Debug;->dumpPackets(Ljava/lang/String;)V

    goto/16 :goto_16
.end method

.method public onProcessResponse()V
    .registers 6

    invoke-virtual {p0}, Lcom/glympse/android/lib/y;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/y;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/glympse/android/lib/Debug;->dumpPackets(Ljava/lang/String;)V

    new-instance v1, Lcom/glympse/android/lib/json/JsonParser;

    invoke-direct {v1}, Lcom/glympse/android/lib/json/JsonParser;-><init>()V

    new-instance v2, Lcom/glympse/android/lib/z;

    iget-object v3, p0, Lcom/glympse/android/lib/y;->hT:Lcom/glympse/android/hal/GVector;

    iget-object v4, p0, Lcom/glympse/android/lib/y;->hY:Lcom/glympse/android/hal/GVector;

    invoke-direct {v2, v3, v4, v1}, Lcom/glympse/android/lib/z;-><init>(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/hal/GVector;Lcom/glympse/android/lib/json/GJsonHandlerStack;)V

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/json/GJsonParser;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/json/GJsonParser;->parse(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1}, Lcom/glympse/android/lib/json/GJsonParser;->clearStack()V

    iget-object v1, v2, Lcom/glympse/android/lib/z;->hf:Ljava/lang/String;

    iput-object v1, p0, Lcom/glympse/android/lib/y;->hf:Ljava/lang/String;

    iget-object v1, v2, Lcom/glympse/android/lib/z;->hg:Ljava/lang/String;

    iput-object v1, p0, Lcom/glympse/android/lib/y;->hg:Ljava/lang/String;

    iget-object v1, v2, Lcom/glympse/android/lib/z;->hh:Ljava/lang/String;

    iput-object v1, p0, Lcom/glympse/android/lib/y;->hh:Ljava/lang/String;

    iget-wide v1, v2, Lcom/glympse/android/lib/z;->_time:J

    iput-wide v1, p0, Lcom/glympse/android/lib/y;->_time:J

    iput-boolean v0, p0, Lcom/glympse/android/lib/y;->_success:Z

    if-nez v0, :cond_6

    const/4 v0, 0x5

    const-string v1, "[http:batch]: failed with parsing error"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_6
.end method

.method public onRetry()V
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onRetry()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/y;->a(Z)V

    return-void
.end method
