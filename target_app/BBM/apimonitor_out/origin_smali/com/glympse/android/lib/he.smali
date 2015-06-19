.class Lcom/glympse/android/lib/he;
.super Ljava/lang/Object;
.source "SearchEngine.java"

# interfaces
.implements Lcom/glympse/android/lib/GSearchEngine;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private rc:Lcom/glympse/android/lib/GJob;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/he;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "SearchEngine"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public cancel(Lcom/glympse/android/core/GCommon;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    if-eq v0, p1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->abort()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    goto :goto_8
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public completed(Lcom/glympse/android/core/GCommon;Lcom/glympse/android/core/GArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GCommon;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lib/GSearchResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    if-eq v0, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    iget-object v0, p0, Lcom/glympse/android/lib/he;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_18

    const/4 v0, 0x1

    :goto_f
    iget-object v1, p0, Lcom/glympse/android/lib/he;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const v2, 0x10001

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/glympse/android/lib/he;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_4

    :cond_18
    const/4 v0, 0x2

    goto :goto_f
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GEventSink;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;Lcom/glympse/android/core/GLatLng;)Lcom/glympse/android/core/GCommon;
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/he;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/glympse/android/lib/he;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/glympse/android/lib/he;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/lib/GServerPost;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/he;->cancel(Lcom/glympse/android/core/GCommon;)V

    :cond_27
    new-instance v0, Lcom/glympse/android/lib/hf;

    iget-object v1, p0, Lcom/glympse/android/lib/he;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GSearchEngine;

    invoke-static {}, Lcom/glympse/android/hal/Platform;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/hf;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GSearchEngine;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/core/GLatLng;)V

    iput-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    iget-object v0, p0, Lcom/glympse/android/lib/he;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    iget-object v1, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V

    iget-object v0, p0, Lcom/glympse/android/lib/he;->rc:Lcom/glympse/android/lib/GJob;

    goto :goto_d
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 4

    iput-object p1, p0, Lcom/glympse/android/lib/he;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    new-instance v0, Lcom/glympse/android/lib/fc;

    invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/fc;-><init>(Lcom/glympse/android/core/GHandler;)V

    iput-object v0, p0, Lcom/glympse/android/lib/he;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    iget-object v0, p0, Lcom/glympse/android/lib/he;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->start(I)Z

    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/he;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->canAbortNetworkRequest()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->stop(Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/he;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->removeAllListeners()Z

    iput-object v2, p0, Lcom/glympse/android/lib/he;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    iput-object v2, p0, Lcom/glympse/android/lib/he;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method
