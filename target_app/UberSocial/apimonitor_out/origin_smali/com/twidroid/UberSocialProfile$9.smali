.class Lcom/twidroid/UberSocialProfile$9;
.super Lcom/twidroid/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$9;->a:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$9;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->M(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$9;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->L(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$9;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->N(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$9;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$9;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    iget-object v1, v1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/UberSocialProfile;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile$9;->dismiss()V

    return-void
.end method
