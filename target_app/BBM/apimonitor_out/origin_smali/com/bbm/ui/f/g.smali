.class public final Lcom/bbm/ui/f/g;
.super Ljava/lang/Object;
.source "BbmdsNotificationModel.java"

# interfaces
.implements Lcom/bbm/f/ac;
.implements Lcom/bbm/ui/f/c;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/ui/f/e;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/ui/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bbm/f/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/f/g;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/f/g;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V
    .registers 4

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/af;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/f/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/f/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_16
    iget-object v0, p0, Lcom/bbm/ui/f/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method private a(Lorg/json/JSONArray;I)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2f

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/bbm/d/fn;

    invoke-direct {v2}, Lcom/bbm/d/fn;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bbm/d/fn;->a(Lorg/json/JSONObject;)V

    iget-object v1, v2, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    packed-switch p2, :pswitch_data_30

    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1b
    iget-boolean v3, v2, Lcom/bbm/d/fn;->d:Z

    if-eqz v3, :cond_2b

    new-instance v3, Lcom/bbm/ui/f/s;

    invoke-direct {v3, p0, v2}, Lcom/bbm/ui/f/s;-><init>(Lcom/bbm/ui/f/g;Lcom/bbm/d/fn;)V

    invoke-direct {p0, v1, v3}, Lcom/bbm/ui/f/g;->a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V

    invoke-virtual {v3}, Lcom/bbm/ui/f/s;->c()V

    goto :goto_18

    :cond_2b
    :pswitch_2b
    invoke-direct {p0, v1}, Lcom/bbm/ui/f/g;->c(Ljava/lang/String;)V

    goto :goto_18

    :cond_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_2b
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/f/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/f/e;

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/bbm/ui/f/t;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/bbm/ui/f/t;

    invoke-virtual {v1}, Lcom/bbm/ui/f/t;->e()V

    :cond_14
    if-eqz v0, :cond_1f

    instance-of v1, v0, Lcom/bbm/ui/f/w;

    if-eqz v1, :cond_1f

    check-cast v0, Lcom/bbm/ui/f/w;

    invoke-virtual {v0}, Lcom/bbm/ui/f/w;->e()V

    :cond_1f
    iget-object v0, p0, Lcom/bbm/ui/f/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/f/e;

    if-eqz v0, :cond_33

    instance-of v1, v0, Lcom/bbm/ui/f/t;

    if-eqz v1, :cond_33

    move-object v1, v0

    check-cast v1, Lcom/bbm/ui/f/t;

    invoke-virtual {v1}, Lcom/bbm/ui/f/t;->e()V

    :cond_33
    if-eqz v0, :cond_3e

    instance-of v1, v0, Lcom/bbm/ui/f/w;

    if-eqz v1, :cond_3e

    check-cast v0, Lcom/bbm/ui/f/w;

    invoke-virtual {v0}, Lcom/bbm/ui/f/w;->e()V

    :cond_3e
    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 11

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v2, "listAdd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    const-string v2, "elements"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    move v0, v1

    :goto_2f
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_aa

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v6, Lcom/bbm/d/fg;

    invoke-direct {v6}, Lcom/bbm/d/fg;-><init>()V

    invoke-virtual {v6, v2}, Lcom/bbm/d/fg;->a(Lorg/json/JSONObject;)V

    sget-object v2, Lcom/bbm/ui/f/h;->a:[I

    iget-object v7, v6, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    invoke-virtual {v7}, Lcom/bbm/d/fk;->ordinal()I

    move-result v7

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_14c

    iget-boolean v2, v6, Lcom/bbm/d/fg;->j:Z

    if-eqz v2, :cond_6b

    iget-object v2, v6, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v7, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-eq v2, v7, :cond_6b

    new-instance v2, Lcom/bbm/ui/f/t;

    invoke-direct {v2, p0, v6}, Lcom/bbm/ui/f/t;-><init>(Lcom/bbm/ui/f/g;Lcom/bbm/d/fg;)V

    iget-object v6, v6, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v7, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;

    if-ne v6, v7, :cond_95

    iget-object v6, p0, Lcom/bbm/ui/f/g;->b:Ljava/util/Map;

    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_68
    invoke-virtual {v2}, Lcom/bbm/ui/f/t;->c()V

    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :pswitch_6e
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    iget-object v7, v6, Lcom/bbm/d/fg;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/bbm/d/a;->X(Ljava/lang/String;)Lcom/bbm/d/dx;

    move-result-object v2

    iget-object v7, v2, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    sget-object v8, Lcom/bbm/d/dz;->c:Lcom/bbm/d/dz;

    if-ne v7, v8, :cond_6b

    new-instance v7, Lcom/bbm/ui/f/v;

    invoke-direct {v7, p0, v6}, Lcom/bbm/ui/f/v;-><init>(Lcom/bbm/ui/f/g;Lcom/bbm/d/fg;)V

    iget-object v2, v2, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    sget-object v6, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;

    if-ne v2, v6, :cond_93

    move v2, v3

    :goto_8a
    iput-boolean v2, v7, Lcom/bbm/ui/f/v;->a:Z

    invoke-direct {p0, v5, v7}, Lcom/bbm/ui/f/g;->a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V

    invoke-virtual {v7}, Lcom/bbm/ui/f/v;->c()V

    goto :goto_6b

    :cond_93
    move v2, v1

    goto :goto_8a

    :cond_95
    invoke-direct {p0, v5, v2}, Lcom/bbm/ui/f/g;->a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V

    goto :goto_68

    :cond_99
    const-string v4, "pendingContact"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/bbm/ui/f/g;->a(Lorg/json/JSONArray;I)V

    :cond_aa
    :goto_aa
    return-void

    :cond_ab
    const-string v3, "systemMessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const-string v2, "elements"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_b9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_aa

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/bbm/d/gl;

    invoke-direct {v3}, Lcom/bbm/d/gl;-><init>()V

    invoke-virtual {v3, v2}, Lcom/bbm/d/gl;->a(Lorg/json/JSONObject;)V

    new-instance v2, Lcom/bbm/ui/f/w;

    invoke-direct {v2, p0, v3}, Lcom/bbm/ui/f/w;-><init>(Lcom/bbm/ui/f/g;Lcom/bbm/d/gl;)V

    iget-object v3, v3, Lcom/bbm/d/gl;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/bbm/ui/f/g;->a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V

    invoke-virtual {v2}, Lcom/bbm/ui/f/w;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b9

    :cond_db
    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v2, "listRemove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pendingContact"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/bbm/ui/f/g;->a(Lorg/json/JSONArray;I)V

    goto :goto_aa

    :cond_100
    const-string v3, "conversation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    const-string v2, "elements"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_aa

    :goto_110
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_aa

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "conversationUri"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bbm/ui/f/g;->c(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_110

    :cond_126
    const-string v3, "systemMessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const-string v2, "elements"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_aa

    :goto_136
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_aa

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bbm/ui/f/g;->c(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_6e
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/f/g;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/bbm/ui/f/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/f/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/f/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/f/g;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/bbm/ui/f/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->a()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/bbm/ui/f/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Z)V

    goto :goto_1a
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/f/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method
