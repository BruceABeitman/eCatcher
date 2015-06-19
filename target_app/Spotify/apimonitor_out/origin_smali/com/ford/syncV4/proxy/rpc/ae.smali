.class public final Lcom/ford/syncV4/proxy/rpc/ae;
.super Lcom/ford/syncV4/proxy/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "OnEncodedSyncPData"

    invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/c;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Vector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ae;->b:Ljava/util/Hashtable;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Vector;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ae;->b:Ljava/util/Hashtable;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_28

    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ae;->b:Ljava/util/Hashtable;

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ae;->b:Ljava/util/Hashtable;

    const-string v1, "Timeout"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ae;->b:Ljava/util/Hashtable;

    const-string v1, "Timeout"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
