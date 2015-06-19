.class final Lcom/bbm/ui/a/m;
.super Ljava/lang/Object;
.source "ChannelPostCommentListAdapter.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Lcom/bbm/ui/a/k;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/k;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/m;->a:Lcom/bbm/ui/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 6

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->N()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ei;

    iget-object v2, v0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;

    sget-object v3, Lcom/bbm/d/ej;->b:Lcom/bbm/d/ej;

    if-eq v2, v3, :cond_30

    iget-object v2, v0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;

    sget-object v3, Lcom/bbm/d/ej;->c:Lcom/bbm/d/ej;

    if-ne v2, v3, :cond_18

    :cond_30
    iget-object v2, p0, Lcom/bbm/ui/a/m;->a:Lcom/bbm/ui/a/k;

    invoke-static {v2}, Lcom/bbm/ui/a/k;->b(Lcom/bbm/ui/a/k;)Lcom/bbm/d/ec;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    iget-object v3, v0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;

    const-string v4, "channelUri"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/bbm/ui/a/m;->a:Lcom/bbm/ui/a/k;

    iget-object v2, v2, Lcom/bbm/ui/a/k;->h:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;

    const-string v4, "triggerCommentId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/bbm/d/ei;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_58
    const/4 v0, 0x1

    :goto_59
    return v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_59
.end method
