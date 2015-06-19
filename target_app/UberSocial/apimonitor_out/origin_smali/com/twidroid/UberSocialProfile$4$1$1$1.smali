.class Lcom/twidroid/UberSocialProfile$4$1$1$1;
.super Lcom/twidroid/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$4$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$4$1$1;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$4$1$1;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$4$1$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1$1;

    invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$4$1$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1$1;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$4$1$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->x(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$4$1$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->y(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$4$1$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1$1;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->A(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$4$1$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->z(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile$4$1$1$1;->dismiss()V

    return-void
.end method
