.class public final Lcom/ford/syncV4/proxy/rpc/am;
.super Lcom/ford/syncV4/proxy/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "PerformInteraction"

    invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "interactionMode"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "interactionMode"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "initialText"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "initialText"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final a(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/ford/syncV4/proxy/rpc/bp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "initialPrompt"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "initialPrompt"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final b(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "timeout"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final b(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "interactionChoiceSetIDList"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/ford/syncV4/proxy/rpc/bp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "helpPrompt"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "helpPrompt"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final d(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/ford/syncV4/proxy/rpc/bp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "timeoutPrompt"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/am;->b:Ljava/util/Hashtable;

    const-string v1, "timeoutPrompt"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method
