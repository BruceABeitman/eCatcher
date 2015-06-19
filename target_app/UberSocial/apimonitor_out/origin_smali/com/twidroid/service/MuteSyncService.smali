.class public Lcom/twidroid/service/MuteSyncService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MuteSyncService"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "MuteSyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/twidroid/model/twitter/c;)V
    .registers 15

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twidroid/UberSocialApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/net/a/c/c;->d(Lcom/twidroid/model/twitter/c;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/twidroid/model/twitter/User;

    invoke-virtual {v7}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    mul-long/2addr v5, v11

    add-long/2addr v2, v5

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;JLjava/lang/String;ZI)V

    goto :goto_1f

    :cond_65
    invoke-virtual {v7}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->j(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_75
    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/a;

    iget-boolean v2, v0, Lcom/twidroid/model/a;->e:Z

    if-nez v2, :cond_75

    iget-object v2, v0, Lcom/twidroid/model/a;->b:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, v0, Lcom/twidroid/model/a;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v9}, Lcom/twidroid/service/MuteSyncService;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v7}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    iget-object v0, v0, Lcom/twidroid/model/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;I)V

    goto :goto_75

    :cond_aa
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Z
    .registers 5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private b(Lcom/twidroid/model/twitter/c;)V
    .registers 8

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->j(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/a;

    iget-boolean v3, v0, Lcom/twidroid/model/a;->e:Z

    if-eqz v3, :cond_1f

    :try_start_2f
    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v3

    iget-object v4, v0, Lcom/twidroid/model/a;->b:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Z)Lcom/twidroid/model/twitter/User;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    iget-object v0, v0, Lcom/twidroid/model/a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;ZI)V
    :try_end_4b
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_2f .. :try_end_4b} :catch_4c

    goto :goto_1f

    :catch_4c
    move-exception v0

    const-string v3, "MuteSyncService"

    const-string v4, "can\'t sync mutes"

    invoke-static {v3, v4, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_55
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    :try_start_18
    invoke-direct {p0, v0}, Lcom/twidroid/service/MuteSyncService;->a(Lcom/twidroid/model/twitter/c;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_28

    :goto_1b
    :try_start_1b
    invoke-direct {p0, v0}, Lcom/twidroid/service/MuteSyncService;->b(Lcom/twidroid/model/twitter/c;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_c

    :catch_1f
    move-exception v0

    const-string v0, "MuteSyncService"

    const-string v2, "can\'t send mutes"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_28
    move-exception v2

    const-string v3, "MuteSyncService"

    const-string v4, "can\'t get remote mutes"

    invoke-static {v3, v4, v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_31
    return-void
.end method
