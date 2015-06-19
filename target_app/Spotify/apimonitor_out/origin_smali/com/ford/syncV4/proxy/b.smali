.class public Lcom/ford/syncV4/proxy/b;
.super Lcom/ford/syncV4/proxy/g;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/Hashtable;

.field protected c:Ljava/util/Hashtable;


# direct methods
.method protected constructor <init>(Lcom/ford/syncV4/proxy/b;)V
    .registers 3

    iget-object v0, p1, Lcom/ford/syncV4/proxy/b;->d:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/b;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected constructor <init>(Lcom/ford/syncV4/proxy/g;)V
    .registers 4

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/ford/syncV4/proxy/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/ford/syncV4/proxy/g;->d:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/ford/syncV4/proxy/b;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "request"

    invoke-direct {p0, p1, v0}, Lcom/ford/syncV4/proxy/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/ford/syncV4/proxy/g;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/proxy/b;->c:Ljava/util/Hashtable;

    iput-object p2, p0, Lcom/ford/syncV4/proxy/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ford/syncV4/proxy/b;->d:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/ford/syncV4/proxy/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/proxy/b;->b:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/ford/syncV4/proxy/b;->c:Ljava/util/Hashtable;

    const-string v1, "parameters"

    iget-object v2, p0, Lcom/ford/syncV4/proxy/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ford/syncV4/proxy/b;->c:Ljava/util/Hashtable;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 5

    invoke-direct {p0}, Lcom/ford/syncV4/proxy/g;-><init>()V

    iput-object p1, p0, Lcom/ford/syncV4/proxy/b;->d:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bulkData"

    if-eq v1, v2, :cond_d

    iput-object v1, p0, Lcom/ford/syncV4/proxy/b;->a:Ljava/lang/String;

    goto :goto_d

    :cond_22
    iget-object v0, p0, Lcom/ford/syncV4/proxy/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/ford/syncV4/proxy/b;->c:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/ford/syncV4/proxy/b;->c:Ljava/util/Hashtable;

    const-string v1, "parameters"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/ford/syncV4/proxy/b;->b:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/b;->c:Ljava/util/Hashtable;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/proxy/b;->a:Ljava/lang/String;

    return-object v0
.end method
