.class final Lcom/bbm/ui/c/hz;
.super Lcom/bbm/j/u;
.source "UpdatesFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/hk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hz;->a:Lcom/bbm/ui/c/hk;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 15

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v0

    const-string v1, "adsEnabled"

    invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v1

    const-string v2, "postFrequency"

    invoke-virtual {v1, v2}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v1

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v2

    const-string v3, "lastRequestedAd"

    invoke-virtual {v2, v3}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v3

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/b/q;->a()Lcom/bbm/j/w;

    move-result-object v2

    invoke-interface {v2}, Lcom/bbm/j/w;->b()Z

    move-result v4

    if-nez v4, :cond_3e

    iget-object v4, v1, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v4, v5, :cond_3e

    iget-object v4, v3, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v4, v5, :cond_3e

    iget-object v4, v0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v4, v5, :cond_40

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    return v0

    :cond_40
    iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v4, "value"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_3f

    :cond_4d
    invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/bbm/b/e;->a(Ljava/util/List;)Lcom/bbm/b/a;

    move-result-object v5

    if-nez v5, :cond_5b

    const/4 v0, 0x0

    goto :goto_3f

    :cond_5b
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/hz;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->d(Lcom/bbm/ui/c/hk;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    iget-object v4, p0, Lcom/bbm/ui/c/hz;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v4}, Lcom/bbm/ui/c/hk;->e(Lcom/bbm/ui/c/hk;)Ljava/util/Random;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "UpdatesFragment: Target position for unrendered ad is "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v8}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    if-lez v6, :cond_18b

    iget-object v4, v1, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v8, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v4, v8, :cond_18b

    iget-object v3, v3, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v3, v4, :cond_18b

    iget-object v1, v1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v3, "value"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    add-int v1, v8, v7

    const/4 v3, 0x0

    if-lt v6, v1, :cond_188

    add-int/lit8 v1, v7, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/util/ew;

    iget-wide v9, v1, Lcom/bbm/util/ew;->b:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "UpdatesFragment: Inserting Time stamp is "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move v4, v1

    :goto_d0
    if-ge v4, v6, :cond_188

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/util/ew;

    iget-object v1, v1, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v11, Lcom/bbm/util/ex;->d:Lcom/bbm/util/ex;

    if-ne v1, v11, :cond_119

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/util/ew;

    iget-object v1, v1, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v1, Lcom/bbm/b/a;

    iget-object v1, v1, Lcom/bbm/b/a;->h:Ljava/lang/String;

    iget-object v11, v5, Lcom/bbm/b/a;->h:Ljava/lang/String;

    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_180

    move v1, v2

    :goto_f3
    if-eqz v1, :cond_197

    add-int/lit8 v1, v7, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/ew;

    iget-wide v0, v0, Lcom/bbm/util/ew;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :try_start_102
    iget-object v2, v5, Lcom/bbm/b/a;->o:Lorg/json/JSONObject;

    const-string v3, "orderingIndex"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v2

    iget-object v3, v5, Lcom/bbm/b/a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/bbm/b/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_116
    .catch Lorg/json/JSONException; {:try_start_102 .. :try_end_116} :catch_18e

    const/4 v0, 0x1

    goto/16 :goto_3f

    :cond_119
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/util/ew;

    iget-wide v11, v1, Lcom/bbm/util/ew;->b:J

    cmp-long v1, v11, v9

    if-gez v1, :cond_157

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "UpdatesFragment: Found valid update at position = "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v11}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    add-int/lit8 v1, v3, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "UpdatesFragment: TotalValidUpdates = "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3, v11}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_153
    if-ne v1, v8, :cond_182

    const/4 v1, 0x1

    goto :goto_f3

    :cond_157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "UpdatesFragment: Skipping update at position = "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " with time stamp "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/util/ew;

    iget-wide v12, v1, Lcom/bbm/util/ew;->b:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v11}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_180
    move v1, v3

    goto :goto_153

    :cond_182
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto/16 :goto_d0

    :cond_188
    move v1, v2

    goto/16 :goto_f3

    :cond_18b
    const/4 v0, 0x0

    goto/16 :goto_3f

    :catch_18e
    move-exception v0

    const-string v1, "Can\'t update SponsoredPost orderingIndex"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_197
    const/4 v0, 0x0

    goto/16 :goto_3f
.end method
