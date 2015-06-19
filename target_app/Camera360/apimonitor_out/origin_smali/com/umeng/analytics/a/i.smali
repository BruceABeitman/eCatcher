.class public Lcom/umeng/analytics/a/i;
.super Ljava/lang/Object;
.source "LogBody.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    const-string/jumbo v0, "launch"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->f:Ljava/lang/String;

    const-string/jumbo v0, "terminate"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->g:Ljava/lang/String;

    const-string/jumbo v0, "error"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->h:Ljava/lang/String;

    const-string/jumbo v0, "event"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->i:Ljava/lang/String;

    const-string/jumbo v0, "ekv"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->j:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_44

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    move-object v0, v3

    :goto_18
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_42

    :cond_20
    :goto_20
    return-object v2

    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    :try_start_27
    new-instance v4, Lcom/umeng/analytics/a/j;

    invoke-direct {v4, p0, v0}, Lcom/umeng/analytics/a/j;-><init>(Lcom/umeng/analytics/a/i;Lcom/umeng/analytics/a/g;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_31

    move-object v0, v4

    :goto_2d
    if-nez v0, :cond_3d

    move-object v1, v0

    goto :goto_11

    :catch_31
    move-exception v0

    const-string/jumbo v4, "MobclickAgent"

    const-string/jumbo v6, "Fail to write json ..."

    invoke-static {v4, v6, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_2d

    :cond_3d
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v0

    goto :goto_11

    :cond_42
    move-object v2, v0

    goto :goto_20

    :cond_44
    move-object v0, v2

    goto :goto_18
.end method

.method private b(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return-void

    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/b;

    iget-object v2, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    check-cast v0, Lcom/umeng/analytics/a/b;

    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/a/b;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/b;->a(Lcom/umeng/analytics/a/b;)V

    goto :goto_10

    :cond_5d
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    check-cast v0, Lcom/umeng/analytics/a/b;

    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/a/b;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/b;->a(Lcom/umeng/analytics/a/b;)V

    goto :goto_1c

    :cond_7f
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "launch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "launch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_18

    :cond_17
    return-void

    :cond_18
    new-instance v2, Lcom/umeng/analytics/a/h;

    invoke-direct {v2}, Lcom/umeng/analytics/a/h;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/h;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "terminate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "terminate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_18

    :cond_17
    return-void

    :cond_18
    new-instance v2, Lcom/umeng/analytics/a/m;

    invoke-direct {v2}, Lcom/umeng/analytics/a/m;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/m;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/m;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_18

    :cond_17
    return-void

    :cond_18
    new-instance v2, Lcom/umeng/analytics/a/e;

    invoke-direct {v2}, Lcom/umeng/analytics/a/e;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/e;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_18

    :cond_17
    return-void

    :cond_18
    new-instance v2, Lcom/umeng/analytics/a/b;

    invoke-direct {v2}, Lcom/umeng/analytics/a/b;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/b;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_18

    :cond_17
    return-void

    :cond_18
    new-instance v2, Lcom/umeng/analytics/a/d;

    invoke-direct {v2}, Lcom/umeng/analytics/a/d;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/d;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/a/b;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/umeng/analytics/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/d;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/umeng/analytics/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/e;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/umeng/analytics/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/h;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/umeng/analytics/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/i;)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/a/i;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/a/m;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/umeng/analytics/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V
    .registers 6

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Lcom/umeng/analytics/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/umeng/analytics/a/b;

    invoke-direct {v1, p1, p2}, Lcom/umeng/analytics/a/b;-><init>(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    check-cast v0, Lcom/umeng/analytics/a/b;

    iget-object v2, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v0, v0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->c(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->d(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->e(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->f(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->g(Lorg/json/JSONObject;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_2

    :catch_13
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "merge log body eror"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public a()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_ad

    move v0, v1

    :goto_66
    return v0

    :cond_67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_66

    :cond_75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_66

    :cond_83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_66

    :cond_91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    goto :goto_66

    :cond_9f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v1

    goto :goto_66

    :cond_ad
    const/4 v0, 0x1

    goto :goto_66
.end method

.method public b()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    check-cast v0, Lcom/umeng/analytics/a/b;

    iget-object v0, v0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v0, :cond_26

    const-string/jumbo v5, "launch"

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    if-eqz v1, :cond_2e

    const-string/jumbo v0, "terminate"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2e
    if-eqz v2, :cond_36

    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_36
    if-eqz v3, :cond_3e

    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e
    if-eqz v4, :cond_46

    const-string/jumbo v0, "ekv"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_46
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
