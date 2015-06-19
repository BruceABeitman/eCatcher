.class final Lcom/twidroid/net/c/t$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/c/t;->d(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/model/twitter/Tweet;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/twidroid/net/c/a/f;

.field final synthetic d:Lcom/twidroid/net/c/u;


# direct methods
.method constructor <init>(Lcom/twidroid/model/twitter/Tweet;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/net/c/t$12;->a:Lcom/twidroid/model/twitter/Tweet;

    iput-object p2, p0, Lcom/twidroid/net/c/t$12;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/twidroid/net/c/t$12;->c:Lcom/twidroid/net/c/a/f;

    iput-object p4, p0, Lcom/twidroid/net/c/t$12;->d:Lcom/twidroid/net/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v1, 0x1

    const/4 v6, 0x0

    :try_start_2
    invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/net/c/t$12;->a:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v0, v2, v3}, Lcom/twidroid/b/a/b;->k(J)V

    iget-object v0, p0, Lcom/twidroid/net/c/t$12;->a:Lcom/twidroid/model/twitter/Tweet;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/twidroid/model/twitter/Tweet;->aj:Z
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_76
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_2 .. :try_end_12} :catch_1e

    iget-object v0, p0, Lcom/twidroid/net/c/t$12;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$12;->c:Lcom/twidroid/net/c/a/f;

    iget-object v2, p0, Lcom/twidroid/net/c/t$12;->d:Lcom/twidroid/net/c/u;

    new-array v3, v6, [Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;[Ljava/lang/Runnable;)V

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    const-string v2, "TwidroydClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_76

    :try_start_3e
    invoke-static {}, Lcom/twidroid/net/c/t;->a()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->l()I

    move-result v0

    if-ge v0, v1, :cond_6d

    move v0, v1

    :goto_49
    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/twidroid/net/c/t$12;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/twidroid/c/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :goto_51
    iget-object v0, p0, Lcom/twidroid/net/c/t$12;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$12;->c:Lcom/twidroid/net/c/a/f;

    const v2, 0x7f0c00f9

    const v3, 0x7f0c0027

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
    :try_end_61
    .catchall {:try_start_3e .. :try_end_61} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_61} :catch_71

    :goto_61
    iget-object v0, p0, Lcom/twidroid/net/c/t$12;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$12;->c:Lcom/twidroid/net/c/a/f;

    iget-object v2, p0, Lcom/twidroid/net/c/t$12;->d:Lcom/twidroid/net/c/u;

    new-array v3, v6, [Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;[Ljava/lang/Runnable;)V

    goto :goto_1d

    :cond_6d
    move v0, v6

    goto :goto_49

    :cond_6f
    const/4 v4, 0x0

    goto :goto_51

    :catch_71
    move-exception v0

    :try_start_72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_61

    :catchall_76
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/net/c/t$12;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twidroid/net/c/t$12;->c:Lcom/twidroid/net/c/a/f;

    iget-object v3, p0, Lcom/twidroid/net/c/t$12;->d:Lcom/twidroid/net/c/u;

    new-array v4, v6, [Ljava/lang/Runnable;

    invoke-static {v1, v2, v3, v4}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;[Ljava/lang/Runnable;)V

    throw v0
.end method
