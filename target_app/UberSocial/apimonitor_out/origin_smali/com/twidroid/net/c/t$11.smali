.class final Lcom/twidroid/net/c/t$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/c/t;->b(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/twidroid/model/twitter/Tweet;

.field final synthetic c:Lcom/twidroid/net/c/a/f;

.field final synthetic d:Lcom/twidroid/net/c/u;

.field final synthetic e:Lcom/twidroid/ui/a/am;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;Lcom/twidroid/ui/a/am;)V
    .registers 6

    iput-object p1, p0, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twidroid/net/c/t$11;->b:Lcom/twidroid/model/twitter/Tweet;

    iput-object p3, p0, Lcom/twidroid/net/c/t$11;->c:Lcom/twidroid/net/c/a/f;

    iput-object p4, p0, Lcom/twidroid/net/c/t$11;->d:Lcom/twidroid/net/c/u;

    iput-object p5, p0, Lcom/twidroid/net/c/t$11;->e:Lcom/twidroid/ui/a/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    new-instance v5, Lcom/twidroid/net/c/t$11$1;

    invoke-direct {v5, p0}, Lcom/twidroid/net/c/t$11$1;-><init>(Lcom/twidroid/net/c/t$11;)V

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/net/c/t$11;->b:Lcom/twidroid/model/twitter/Tweet;

    iget v2, v2, Lcom/twidroid/model/twitter/Tweet;->aB:I

    invoke-virtual {v1, v2}, Lcom/twidroid/b/a/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->c(I)Z

    invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/c/t$11;->b:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v1, v1, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->l(J)V

    iget-object v0, p0, Lcom/twidroid/net/c/t$11;->b:Lcom/twidroid/model/twitter/Tweet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twidroid/model/twitter/Tweet;->aj:Z
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_a3
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_3 .. :try_end_37} :catch_48

    iget-object v0, p0, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$11;->c:Lcom/twidroid/net/c/a/f;

    new-array v2, v6, [Ljava/lang/Runnable;

    new-instance v3, Lcom/twidroid/net/c/t$11$2;

    invoke-direct {v3, p0}, Lcom/twidroid/net/c/t$11$2;-><init>(Lcom/twidroid/net/c/t$11;)V

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V

    :goto_47
    return-void

    :catch_48
    move-exception v0

    :try_start_49
    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    const-string v1, "TwitterHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_a3

    :try_start_68
    invoke-static {}, Lcom/twidroid/net/c/t;->a()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->l()I

    move-result v0

    if-ge v0, v6, :cond_9c

    move v0, v6

    :goto_73
    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/twidroid/c/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :cond_7b
    iget-object v0, p0, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$11;->c:Lcom/twidroid/net/c/a/f;

    const v2, 0x7f0c00f9

    const v3, 0x7f0c0027

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
    :try_end_8b
    .catchall {:try_start_68 .. :try_end_8b} :catchall_a3
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_8b} :catch_9e

    :goto_8b
    iget-object v0, p0, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$11;->c:Lcom/twidroid/net/c/a/f;

    new-array v2, v6, [Ljava/lang/Runnable;

    new-instance v3, Lcom/twidroid/net/c/t$11$2;

    invoke-direct {v3, p0}, Lcom/twidroid/net/c/t$11$2;-><init>(Lcom/twidroid/net/c/t$11;)V

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V

    goto :goto_47

    :cond_9c
    move v0, v7

    goto :goto_73

    :catch_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_8b

    :catchall_a3
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twidroid/net/c/t$11;->c:Lcom/twidroid/net/c/a/f;

    new-array v3, v6, [Ljava/lang/Runnable;

    new-instance v4, Lcom/twidroid/net/c/t$11$2;

    invoke-direct {v4, p0}, Lcom/twidroid/net/c/t$11$2;-><init>(Lcom/twidroid/net/c/t$11;)V

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V

    throw v0
.end method
