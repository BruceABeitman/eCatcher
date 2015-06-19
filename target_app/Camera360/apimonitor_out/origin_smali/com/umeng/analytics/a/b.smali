.class public Lcom/umeng/analytics/a/b;
.super Ljava/lang/Object;
.source "EKVHub.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    goto :goto_6
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    new-instance v2, Lcom/umeng/analytics/a/a;

    invoke-direct {v2}, Lcom/umeng/analytics/a/a;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/a;->a(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/a/b;)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/b;->c(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/b;->d(Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public a()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_e

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_e
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/a;

    new-instance v3, Lcom/umeng/analytics/a/c;

    invoke-direct {v3, p0, v0}, Lcom/umeng/analytics/a/c;-><init>(Lcom/umeng/analytics/a/b;Lcom/umeng/analytics/a/a;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b
.end method
