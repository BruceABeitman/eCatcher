.class Lcom/glympse/android/lib/dp;
.super Ljava/lang/Object;
.source "HandoffManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GHandoffManagerPrivate;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

.field private mX:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/lib/GHandoffProviderPrivate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "Handoff"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/dp;->mX:Ljava/util/Hashtable;

    new-instance v0, Lcom/glympse/android/lib/cl;

    invoke-direct {v0}, Lcom/glympse/android/lib/cl;-><init>()V

    iget-object v1, p0, Lcom/glympse/android/lib/dp;->mX:Ljava/util/Hashtable;

    invoke-interface {v0}, Lcom/glympse/android/lib/GHandoffProviderPrivate;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

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

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

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

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHandoffProvider()Lcom/glympse/android/api/GHandoffProvider;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

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

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public overrideProviderConfig(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p2, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/glympse/android/lib/dp;->mX:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHandoffProviderPrivate;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/glympse/android/lib/GHandoffProviderPrivate;->getConfig()Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Lcom/glympse/android/core/GPrimitive;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->clone()Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_21
.end method

.method public removeAllListeners()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->removeAllListeners()Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GHandoffProviderPrivate;->setActive(Z)V

    :cond_9
    return-void
.end method

.method public setHandoffProvider(Lcom/glympse/android/lib/GHandoffProviderPrivate;)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-object p1, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

    if-nez v0, :cond_16

    const/4 v0, 0x4

    :goto_c
    iget-object v1, p0, Lcom/glympse/android/lib/dp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/glympse/android/lib/dp;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_4

    :cond_16
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 5

    iput-object p1, p0, Lcom/glympse/android/lib/dp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->mX:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/dp;->mX:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHandoffProviderPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/dp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GHandoffProviderPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V

    goto :goto_8

    :cond_22
    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GHandoffProviderPrivate;->stop()V

    iput-object v1, p0, Lcom/glympse/android/lib/dp;->mW:Lcom/glympse/android/lib/GHandoffProviderPrivate;

    :cond_c
    iput-object v1, p0, Lcom/glympse/android/lib/dp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method
