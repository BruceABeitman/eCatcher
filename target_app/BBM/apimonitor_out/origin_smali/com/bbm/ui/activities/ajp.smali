.class final Lcom/bbm/ui/activities/ajp;
.super Lcom/bbm/j/u;
.source "ViewOwnedChannelActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ajp;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 10

    const/16 v8, 0x190

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ajp;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v2, :cond_15

    move v0, v1

    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/bbm/ui/activities/ajp;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ajp;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->c(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ajp;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->d(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fq;

    iget-object v1, v0, Lcom/bbm/d/fq;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/activities/ajp;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-virtual {v5}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, v0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;

    sget-object v5, Lcom/bbm/d/fr;->h:Lcom/bbm/d/fr;

    if-eq v1, v5, :cond_39

    :try_start_59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    iget-object v6, v0, Lcom/bbm/d/fq;->f:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "title"

    iget-object v6, v0, Lcom/bbm/d/fq;->i:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/bbm/d/fq;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_83

    const/4 v6, 0x0

    const/16 v7, 0x190

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_83
    const-string v6, "content"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channelUri"

    iget-object v6, v0, Lcom/bbm/d/fq;->a:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/bbm/d/fq;->g:Ljava/lang/String;

    if-eqz v1, :cond_a2

    iget-object v1, v0, Lcom/bbm/d/fq;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "imagePath"

    iget-object v0, v0, Lcom/bbm/d/fq;->g:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_a5} :catch_a6

    goto :goto_39

    :catch_a6
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_39

    :cond_ab
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    const-string v1, "pendingPost"

    invoke-static {v2, v1}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    const-string v1, "pendingPost"

    invoke-static {v3, v1}, Lcom/bbm/d/z;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    const/4 v0, 0x1

    goto/16 :goto_14
.end method
