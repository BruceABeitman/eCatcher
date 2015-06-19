.class final Lcom/twidroid/net/c/t$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/a/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/model/twitter/Tweet;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/twidroid/net/c/a/f;

.field final synthetic d:Lcom/twidroid/model/twitter/c;

.field final synthetic e:Lcom/twidroid/UberSocialApplication;


# direct methods
.method constructor <init>(Lcom/twidroid/model/twitter/Tweet;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/model/twitter/c;Lcom/twidroid/UberSocialApplication;)V
    .registers 6

    iput-object p1, p0, Lcom/twidroid/net/c/t$9;->a:Lcom/twidroid/model/twitter/Tweet;

    iput-object p2, p0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/twidroid/net/c/t$9;->c:Lcom/twidroid/net/c/a/f;

    iput-object p4, p0, Lcom/twidroid/net/c/t$9;->d:Lcom/twidroid/model/twitter/c;

    iput-object p5, p0, Lcom/twidroid/net/c/t$9;->e:Lcom/twidroid/UberSocialApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/16 v11, 0x8

    const v10, 0x7f0c00f9

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_7
    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->a:Lcom/twidroid/model/twitter/Tweet;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->c:Lcom/twidroid/net/c/a/f;

    const v2, 0x7f0c00f9

    const v3, 0x7f0c0119

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->d:Lcom/twidroid/model/twitter/c;

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/twidroid/net/c/t;->a()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->d:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    :cond_2a
    invoke-static {}, Lcom/twidroid/net/c/t;->a()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->m()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_74

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->c:Lcom/twidroid/net/c/a/f;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    new-instance v4, Lcom/twidroid/net/c/t$9$1;

    invoke-direct {v4, p0}, Lcom/twidroid/net/c/t$9$1;-><init>(Lcom/twidroid/net/c/t$9;)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
    :try_end_47
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_7 .. :try_end_47} :catch_48

    goto :goto_1c

    :catch_48
    move-exception v0

    const-string v1, "TwitterHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update message throws twitterexception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->c:Lcom/twidroid/net/c/a/f;

    const v3, 0x7f0c0027

    new-array v5, v8, [Ljava/lang/Runnable;

    move v2, v10

    move-object v4, v9

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V

    goto :goto_1c

    :cond_74
    :try_start_74
    const-string v0, "TwitterHandler"

    const-string v1, "rate limit ok - starting send"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_74 .. :try_end_7b} :catch_48

    :try_start_7b
    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->a:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d6

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->a:Lcom/twidroid/model/twitter/Tweet;

    iget-object v0, v0, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->d:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Already retweeted"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_9f
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_7b .. :try_end_9f} :catch_9f

    :catch_9f
    move-exception v0

    move-object v6, v0

    :try_start_a1
    invoke-virtual {v6}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    if-ne v0, v11, :cond_13e

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->c:Lcom/twidroid/net/c/a/f;

    const v2, 0x7f0c010f

    const v3, 0x7f0c003b

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V

    :goto_b8
    const-string v0, "TwitterHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retweet throws twitterexception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_a1 .. :try_end_d4} :catch_48

    goto/16 :goto_1c

    :cond_d6
    :try_start_d6
    invoke-static {}, Lcom/twidroid/net/c/t;->a()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->d:Lcom/twidroid/model/twitter/c;

    iget-object v2, p0, Lcom/twidroid/net/c/t$9;->a:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->c(Lcom/twidroid/model/twitter/c;J)Lcom/twidroid/model/twitter/Tweet;

    invoke-static {}, Lcom/twidroid/net/c/t;->a()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->d:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/net/c/t$9;->a:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/twidroid/b/a/b;->a(JLcom/twidroid/model/twitter/User;)V

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->a:Lcom/twidroid/model/twitter/Tweet;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->a:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v1, v1, Lcom/twidroid/model/twitter/Tweet;->x:J

    iput-wide v1, v0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->a:Lcom/twidroid/model/twitter/Tweet;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->d:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->e:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aI()Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->c:Lcom/twidroid/net/c/a/f;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->c(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V

    :cond_124
    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->c:Lcom/twidroid/net/c/a/f;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    new-instance v4, Lcom/twidroid/net/c/v;

    iget-object v5, p0, Lcom/twidroid/net/c/t$9;->e:Lcom/twidroid/UberSocialApplication;

    const v6, 0x7f0c016c

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/twidroid/net/c/v;-><init>(Lcom/twidroid/UberSocialApplication;IZ)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
    :try_end_13c
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_d6 .. :try_end_13c} :catch_9f

    goto/16 :goto_1c

    :cond_13e
    :try_start_13e
    invoke-virtual {v6}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_159

    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->c:Lcom/twidroid/net/c/a/f;

    const v2, 0x7f0c00f9

    const v3, 0x7f0c008c

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V

    goto/16 :goto_b8

    :cond_159
    iget-object v0, p0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$9;->c:Lcom/twidroid/net/c/a/f;

    const v2, 0x7f0c00f9

    const v3, 0x7f0c0027

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
    :try_end_16a
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_13e .. :try_end_16a} :catch_48

    goto/16 :goto_b8
.end method
