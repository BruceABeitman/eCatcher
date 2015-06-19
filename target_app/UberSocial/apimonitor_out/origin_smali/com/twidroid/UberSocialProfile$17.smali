.class Lcom/twidroid/UberSocialProfile$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->ag(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->z()Lcom/twidroid/model/twitter/e;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/UberSocialProfile;->t:Lcom/twidroid/model/twitter/e;

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->t:Lcom/twidroid/model/twitter/e;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/e;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/d;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->ah(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/twidroid/b/a/b;->d(Ljava/lang/String;)Lcom/twidroid/model/twitter/c;

    move-result-object v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->ai(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    :cond_48
    iget-object v3, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v3, v3, Lcom/twidroid/UberSocialProfile;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v5}, Lcom/twidroid/UberSocialProfile;->aj(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v5

    iget-object v6, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v6, v6, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    iget-wide v6, v6, Lcom/twidroid/model/twitter/User;->b:J

    invoke-virtual {v5, v1, v0, v6, v7}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/d;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_1a

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/twidroid/UberSocialProfile;->b(Lcom/twidroid/UberSocialProfile;Lcom/ubermedia/net/a/a/a;I)Z

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->al(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/twidroid/UberSocialProfile$17$2;

    invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$17$2;-><init>(Lcom/twidroid/UberSocialProfile$17;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_88
    return-void

    :cond_89
    :try_start_89
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->ak(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/twidroid/UberSocialProfile$17$1;

    invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$17$1;-><init>(Lcom/twidroid/UberSocialProfile$17;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_97
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_89 .. :try_end_97} :catch_70

    goto :goto_88
.end method
