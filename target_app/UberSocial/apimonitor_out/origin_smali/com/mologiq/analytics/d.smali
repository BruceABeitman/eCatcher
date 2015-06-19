.class public Lcom/mologiq/analytics/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mologiq/analytics/c;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/mologiq/analytics/c;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/d;->a:Lcom/mologiq/analytics/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/d;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/d;->b:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/d;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/d;->g:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/d;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public b(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/d;->c:Ljava/lang/Long;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/d;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/d;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/d;->g:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method g()Lorg/json/JSONObject;
    .registers 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ts"

    iget-object v2, p0, Lcom/mologiq/analytics/d;->b:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bid"

    iget-object v2, p0, Lcom/mologiq/analytics/d;->c:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sid"

    iget-object v2, p0, Lcom/mologiq/analytics/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pid"

    iget-object v2, p0, Lcom/mologiq/analytics/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "p"

    iget-object v2, p0, Lcom/mologiq/analytics/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/mologiq/analytics/d;->g:Ljava/util/List;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/mologiq/analytics/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/mologiq/analytics/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "tp"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4a
    return-object v1

    :cond_4b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/e;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "n"

    invoke-virtual {v0}, Lcom/mologiq/analytics/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v0}, Lcom/mologiq/analytics/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3f
.end method
