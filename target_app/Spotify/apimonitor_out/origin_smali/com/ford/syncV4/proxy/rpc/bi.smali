.class public final Lcom/ford/syncV4/proxy/rpc/bi;
.super Lcom/ford/syncV4/proxy/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ford/syncV4/proxy/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bi;->d:Ljava/util/Hashtable;

    const-string v1, "hours"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public final b(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bi;->d:Ljava/util/Hashtable;

    const-string v1, "minutes"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public final c(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bi;->d:Ljava/util/Hashtable;

    const-string v1, "seconds"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method
