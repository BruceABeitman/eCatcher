.class public final Lcom/bbm/ui/f/l;
.super Ljava/lang/Object;
.source "ChannelsNotificationModel.java"

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

.field private final d:Lcom/bbm/d/a;


# direct methods
.method public constructor <init>(Lcom/bbm/f/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/f/l;->d:Lcom/bbm/d/a;

    invoke-interface {p1, p0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/f/l;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/f/l;->b:Ljava/util/Map;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/bbm/ui/f/i;

    invoke-direct {v0, p0, p1}, Lcom/bbm/ui/f/i;-><init>(Lcom/bbm/ui/f/l;Ljava/lang/String;)V

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/af;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bbm/ui/f/l;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v0}, Lcom/bbm/ui/f/i;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "channelNotification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "listAdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v0, 0x1

    move v3, v0

    :goto_23
    if-eqz v4, :cond_85

    move v1, v2

    :goto_26
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_85

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    packed-switch v3, :pswitch_data_86

    :cond_39
    :goto_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    :cond_3d
    const-string v1, "listChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v0, 0x3

    move v3, v0

    goto :goto_23

    :cond_48
    const-string v1, "listRemove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x2

    move v3, v0

    goto :goto_23

    :cond_53
    const/4 v0, 0x4

    move v3, v0

    goto :goto_23

    :pswitch_56
    invoke-direct {p0, v6}, Lcom/bbm/ui/f/l;->b(Ljava/lang/String;)V

    goto :goto_39

    :pswitch_5a
    iget-object v0, p0, Lcom/bbm/ui/f/l;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/f/i;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/bbm/ui/f/i;->e()V

    const-string v0, "read"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_6f
    invoke-direct {p0, v6}, Lcom/bbm/ui/f/l;->b(Ljava/lang/String;)V

    goto :goto_39

    :pswitch_73
    iget-object v0, p0, Lcom/bbm/ui/f/l;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/f/l;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->a()V

    goto :goto_39

    :cond_85
    return-void

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_56
        :pswitch_73
        :pswitch_5a
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/f/l;->c:Ljava/lang/String;

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/f/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bbm/ui/f/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/f/i;

    iget-object v1, v0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;

    iget-boolean v1, v1, Lcom/bbm/d/ei;->c:Z

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/bbm/ui/f/l;->c:Ljava/lang/String;

    if-eqz v1, :cond_24

    if-eqz p2, :cond_24

    iget-object v1, p0, Lcom/bbm/ui/f/l;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    :cond_24
    iget-object v1, p0, Lcom/bbm/ui/f/l;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->a()V

    :cond_30
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

    iget-object v0, p0, Lcom/bbm/ui/f/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/f/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bbm/ui/f/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->a()V

    return-void
.end method

.method public final d()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/f/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/f/e;

    check-cast v0, Lcom/bbm/ui/f/i;

    iget-object v2, p0, Lcom/bbm/ui/f/l;->d:Lcom/bbm/d/a;

    iget-object v0, v0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;

    iget-object v0, v0, Lcom/bbm/d/ei;->b:Ljava/lang/String;

    new-instance v3, Lcom/bbm/d/as;

    invoke-direct {v3, v0}, Lcom/bbm/d/as;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_a

    :cond_27
    return-void
.end method
