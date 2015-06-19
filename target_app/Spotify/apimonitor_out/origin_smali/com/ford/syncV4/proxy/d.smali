.class public Lcom/ford/syncV4/proxy/d;
.super Lcom/ford/syncV4/proxy/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "request"

    invoke-direct {p0, p1, v0}, Lcom/ford/syncV4/proxy/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request"

    iput-object v0, p0, Lcom/ford/syncV4/proxy/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ford/syncV4/proxy/d;->c:Ljava/util/Hashtable;

    const-string v1, "correlationID"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ford/syncV4/proxy/d;->b:Ljava/util/Hashtable;

    const-string v1, "correlationID"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ford/syncV4/proxy/d;->c:Ljava/util/Hashtable;

    const-string v1, "correlationID"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public final c()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/d;->c:Ljava/util/Hashtable;

    const-string v1, "correlationID"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
