.class public final Lcom/bbm/d/a/b/e;
.super Ljava/lang/Object;
.source "LiveMapManager.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bbm/d/a/d;",
            "Lcom/bbm/d/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bbm/d/a/h;

.field private final c:Lcom/bbm/f/a;

.field private final d:Lcom/bbm/util/dc;

.field private final e:Lcom/bbm/d/a/i;


# direct methods
.method public constructor <init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;Lcom/bbm/util/dc;Lcom/bbm/d/a/i;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/a/b/e;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/bbm/d/a/b/e;->b:Lcom/bbm/d/a/h;

    iput-object p1, p0, Lcom/bbm/d/a/b/e;->c:Lcom/bbm/f/a;

    iput-object p3, p0, Lcom/bbm/d/a/b/e;->d:Lcom/bbm/util/dc;

    invoke-interface {p1, p0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    iput-object p4, p0, Lcom/bbm/d/a/b/e;->e:Lcom/bbm/d/a/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bbm/d/a/a;",
            ">(",
            "Lcom/bbm/d/a/d;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/b/a/l",
            "<",
            "Lcom/bbm/d/a/b/a",
            "<TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/a/b/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/d/a/b/e;->b:Lcom/bbm/d/a/h;

    iget-object v1, p1, Lcom/bbm/d/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a/h;->a(Ljava/lang/String;)Lcom/bbm/d/a/c;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    new-instance v0, Lcom/bbm/d/a/b/a;

    iget-object v3, p0, Lcom/bbm/d/a/b/e;->c:Lcom/bbm/f/a;

    iget-object v4, p0, Lcom/bbm/d/a/b/e;->d:Lcom/bbm/util/dc;

    iget-object v5, p0, Lcom/bbm/d/a/b/e;->e:Lcom/bbm/d/a/i;

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bbm/d/a/b/a;-><init>(Lcom/bbm/d/a/c;Lcom/bbm/d/a/d;Lcom/bbm/f/a;Lcom/bbm/util/dc;Lcom/bbm/d/a/i;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbm/d/a/b/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    goto :goto_18
.end method

.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/d/a/b/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/d;

    iget-object v2, p0, Lcom/bbm/d/a/b/e;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    invoke-virtual {v0}, Lcom/bbm/d/a/b/a;->a()V

    goto :goto_a

    :cond_22
    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 11

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/d/a/b/e;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/bbm/d/a/b/e;->b:Lcom/bbm/d/a/h;

    invoke-virtual {v1, p1}, Lcom/bbm/d/a/h;->a(Lcom/bbm/f/ab;)Lcom/bbm/d/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    if-eqz v0, :cond_27

    iget-object v1, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v4, "listAdd"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v1, "elements"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a/b/a;->a(Lorg/json/JSONArray;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    const-string v4, "listChange"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const-string v1, "elements"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v2, v3

    :goto_37
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_27

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v1, v0, Lcom/bbm/d/a/b/a;->j:Ljava/lang/Class;

    invoke-static {v7, v1}, Lcom/bbm/d/a/b;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/a/b/c;

    if-eqz v1, :cond_68

    iget-object v4, v1, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    sget-object v8, Lcom/bbm/d/a/b/d;->c:Lcom/bbm/d/a/b/d;

    if-ne v4, v8, :cond_6c

    move v4, v5

    :goto_58
    if-eqz v4, :cond_68

    invoke-virtual {v1}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/bbm/d/a/a;->b()Lcom/bbm/d/a/a;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v4}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/a;)V

    :cond_68
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_37

    :cond_6c
    move v4, v3

    goto :goto_58

    :cond_6e
    const-string v4, "listChunk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-virtual {v0, v2}, Lcom/bbm/d/a/b/a;->a(Lorg/json/JSONObject;)V

    goto :goto_27

    :cond_7a
    const-string v4, "listElements"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    const-string v1, "cookie"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/d/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iput-boolean v5, v0, Lcom/bbm/d/a/b/a;->g:Z

    goto :goto_27

    :cond_93
    const-string v4, "listRemove"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "elements"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_a1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_27

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v4, v0, Lcom/bbm/d/a/b/a;->j:Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/bbm/d/a/b;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/a/b/c;

    if-eqz v1, :cond_c0

    sget-object v4, Lcom/bbm/d/a/b/d;->d:Lcom/bbm/d/a/b/d;

    invoke-virtual {v1, v4}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/b/d;)V

    :cond_c0
    add-int/lit8 v3, v3, 0x1

    goto :goto_a1
.end method
