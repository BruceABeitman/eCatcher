.class Lcom/twidroid/UberSocialProfile$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile;->i(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/model/twitter/User;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    iput-object p1, v0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, p1, Lcom/twidroid/model/twitter/User;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->b(Lcom/twidroid/UberSocialProfile;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 6

    instance-of v0, p1, Lcom/ubermedia/net/a/a/a;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/ubermedia/net/a/a/a;

    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->e(Lcom/twidroid/UberSocialProfile;)V

    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Z)V

    return-void

    :cond_1a
    invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->f(Lcom/twidroid/UberSocialProfile;)V

    goto :goto_13

    :cond_2a
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->g(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    const v2, 0x7f0c0028

    invoke-static {v1, v2}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->b(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$30;->a:Lcom/twidroid/UberSocialProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    goto :goto_13
.end method
