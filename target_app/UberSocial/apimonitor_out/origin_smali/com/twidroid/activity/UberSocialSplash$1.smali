.class Lcom/twidroid/activity/UberSocialSplash$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubermedia/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialSplash;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialSplash;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialSplash;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x1

    const-string v0, "license"

    const-string v1, "successful"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_15
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-static {v0}, Lcom/twidroid/activity/UberSocialSplash;->a(Lcom/twidroid/activity/UberSocialSplash;)Lcom/twidroid/d/v;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-static {v0}, Lcom/twidroid/activity/UberSocialSplash;->a(Lcom/twidroid/activity/UberSocialSplash;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twidroid/d/v;->e(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-static {v0}, Lcom/twidroid/activity/UberSocialSplash;->a(Lcom/twidroid/activity/UberSocialSplash;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twidroid/d/v;->f(Z)V

    :cond_2f
    return-void
.end method

.method public b()V
    .registers 3

    const-string v0, "license"

    const-string v1, "retry"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    const v1, 0x52455452

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1d
    return-void
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "license"

    const-string v1, "unsuccessful"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-static {v0}, Lcom/twidroid/activity/UberSocialSplash;->a(Lcom/twidroid/activity/UberSocialSplash;)Lcom/twidroid/d/v;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-static {v0}, Lcom/twidroid/activity/UberSocialSplash;->a(Lcom/twidroid/activity/UberSocialSplash;)Lcom/twidroid/d/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->e(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-static {v0}, Lcom/twidroid/activity/UberSocialSplash;->a(Lcom/twidroid/activity/UberSocialSplash;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twidroid/d/v;->f(Z)V

    :cond_23
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    const v1, 0x474f544f

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$1;->a:Lcom/twidroid/activity/UberSocialSplash;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_38
    return-void
.end method

.method public d()V
    .registers 3

    const-string v0, "license"

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
