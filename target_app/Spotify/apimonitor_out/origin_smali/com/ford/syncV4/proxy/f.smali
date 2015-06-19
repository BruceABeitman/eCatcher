.class public Lcom/ford/syncV4/proxy/f;
.super Lcom/ford/syncV4/proxy/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ford/syncV4/proxy/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/b;-><init>(Lcom/ford/syncV4/proxy/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "response"

    invoke-direct {p0, p1, v0}, Lcom/ford/syncV4/proxy/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/b;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/f;->c:Ljava/util/Hashtable;

    const-string v1, "correlationID"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/f;->b:Ljava/util/Hashtable;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final e()Lcom/ford/syncV4/proxy/rpc/enums/Result;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ford/syncV4/proxy/f;->b:Ljava/util/Hashtable;

    const-string v2, "resultCode"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    if-eqz v2, :cond_10

    check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    :goto_f
    return-object v0

    :cond_10
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3e

    :try_start_14
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ford/syncV4/proxy/rpc/enums/Result;->a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/Result;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_f

    :catch_1b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".resultCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_f

    :cond_3e
    move-object v0, v1

    goto :goto_f
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/f;->b:Ljava/util/Hashtable;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
