.class public final Lcom/ford/syncV4/proxy/rpc/bm;
.super Lcom/ford/syncV4/proxy/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ford/syncV4/proxy/g;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/g;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bm;->d:Ljava/util/Hashtable;

    const-string v1, "majorVersion"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bm;->d:Ljava/util/Hashtable;

    const-string v1, "majorVersion"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bm;->d:Ljava/util/Hashtable;

    const-string v1, "minorVersion"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final b(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bm;->d:Ljava/util/Hashtable;

    const-string v1, "minorVersion"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
