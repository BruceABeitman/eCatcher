.class Lcom/glympse/android/lib/ch;
.super Lcom/glympse/android/lib/ii;
.source "GogoHandoff.java"


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/glympse/android/lib/ii;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method


# virtual methods
.method public shouldRetry(ZI)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/ch;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/glympse/android/lib/ch;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandoffManager()Lcom/glympse/android/api/GHandoffManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/api/GHandoffManager;->getHandoffProvider()Lcom/glympse/android/api/GHandoffProvider;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/glympse/android/api/GHandoffProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/glympse/android/lib/ce;->bq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Lcom/glympse/android/api/GHandoffProvider;->isEnabled()Z

    move-result v0

    goto :goto_9
.end method
