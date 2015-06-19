.class public Lcom/ford/syncV4/proxy/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field protected d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/proxy/g;->a:[B

    iput-object v0, p0, Lcom/ford/syncV4/proxy/g;->d:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/proxy/g;->d:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/proxy/g;->a:[B

    iput-object v0, p0, Lcom/ford/syncV4/proxy/g;->d:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/ford/syncV4/proxy/g;->d:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final a(B)Lorg/json/JSONObject;
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Lcom/ford/syncV4/proxy/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ford/syncV4/proxy/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "parameters"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/ford/syncV4/a/a;->a(Ljava/util/Hashtable;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/ford/syncV4/proxy/g;->d:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/ford/syncV4/a/a;->a(Ljava/util/Hashtable;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_23
.end method

.method public final g()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/proxy/g;->d:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/ford/syncV4/a/a;->a(Ljava/util/Hashtable;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final h()[B
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/proxy/g;->a:[B

    return-object v0
.end method
