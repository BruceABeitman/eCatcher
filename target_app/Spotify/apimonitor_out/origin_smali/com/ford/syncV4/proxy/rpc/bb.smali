.class public final Lcom/ford/syncV4/proxy/rpc/bb;
.super Lcom/ford/syncV4/proxy/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Show"

    invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ford/syncV4/proxy/rpc/enums/TextAlignment;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "alignment"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "alignment"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final a(Lcom/ford/syncV4/proxy/rpc/v;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "graphic"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "graphic"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mainField1"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mainField1"

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
            "Lcom/ford/syncV4/proxy/rpc/be;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "softButtons"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "softButtons"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mainField2"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mainField2"

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "customPresets"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "customPresets"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mainField3"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mainField3"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "statusBar"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mainField4"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mainField4"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mediaTrack"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mediaClock"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bb;->b:Ljava/util/Hashtable;

    const-string v1, "mediaClock"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method
