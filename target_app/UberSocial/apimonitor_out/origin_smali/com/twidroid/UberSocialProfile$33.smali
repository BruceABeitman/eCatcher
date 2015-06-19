.class Lcom/twidroid/UberSocialProfile$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile;->u()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/model/twitter/User;)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->h(Lcom/twidroid/UberSocialProfile;)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Z)V
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    const-string v1, "com.twidroid.activity.UberSocialProfile"

    const-string v2, "activity destroyed"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public b()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    new-instance v0, Lcom/twidroid/ui/c/i;

    invoke-direct {v0}, Lcom/twidroid/ui/c/i;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/i;->c(Z)Lcom/twidroid/ui/c/h;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/i;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->F:Lcom/twidroid/ui/c/g;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/g;->a(Lcom/twidroid/ui/c/h;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twidroid/UberSocialProfile;->G:Z

    :cond_24
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->i(Lcom/twidroid/UberSocialProfile;)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->j(Lcom/twidroid/UberSocialProfile;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_a5
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_1 .. :try_end_2e} :catch_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_44

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0, v4}, Lcom/twidroid/UberSocialProfile;->c(Lcom/twidroid/UberSocialProfile;Z)Z

    :goto_33
    return-void

    :catch_34
    move-exception v0

    :try_start_35
    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;Lcom/ubermedia/net/a/a/a;I)Z
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_a5

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0, v4}, Lcom/twidroid/UberSocialProfile;->c(Lcom/twidroid/UberSocialProfile;Z)Z

    goto :goto_33

    :catch_44
    move-exception v0

    :try_start_45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->k(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/net/a/c/c;->l()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_74

    const/4 v0, 0x0

    sput-boolean v0, Lcom/twidroid/UberSocialProfile;->q:Z

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->l(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/twidroid/UberSocialProfile$33$1;

    invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$33$1;-><init>(Lcom/twidroid/UberSocialProfile$33;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6e
    .catchall {:try_start_45 .. :try_end_6e} :catchall_a5

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0, v4}, Lcom/twidroid/UberSocialProfile;->c(Lcom/twidroid/UberSocialProfile;Z)Z

    goto :goto_33

    :cond_74
    :try_start_74
    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v2, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    const v3, 0x7f0c0028

    invoke-virtual {v2, v3}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twidroid/UberSocialProfile;->c(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->m(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->n(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/twidroid/UberSocialProfile$33$2;

    invoke-direct {v2, p0}, Lcom/twidroid/UberSocialProfile$33$2;-><init>(Lcom/twidroid/UberSocialProfile$33;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_74 .. :try_end_9f} :catchall_a5

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0, v4}, Lcom/twidroid/UberSocialProfile;->c(Lcom/twidroid/UberSocialProfile;Z)Z

    goto :goto_33

    :catchall_a5
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$33;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1, v4}, Lcom/twidroid/UberSocialProfile;->c(Lcom/twidroid/UberSocialProfile;Z)Z

    throw v0
.end method
