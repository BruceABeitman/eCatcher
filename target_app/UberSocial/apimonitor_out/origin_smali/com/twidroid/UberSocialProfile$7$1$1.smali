.class Lcom/twidroid/UberSocialProfile$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$7$1;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twidroid/UberSocialProfile$7$1;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$7$1;I)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$7$1$1;->b:Lcom/twidroid/UberSocialProfile$7$1;

    iput p2, p0, Lcom/twidroid/UberSocialProfile$7$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$7$1$1;->b:Lcom/twidroid/UberSocialProfile$7$1;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$7$1;->a:Lcom/twidroid/UberSocialProfile$7;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$7;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->D(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$7$1$1;->b:Lcom/twidroid/UberSocialProfile$7$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$7$1;->a:Lcom/twidroid/UberSocialProfile$7;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$7;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->C(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    iget v2, p0, Lcom/twidroid/UberSocialProfile$7$1$1;->a:I

    invoke-virtual {v1, v2}, Lcom/twidroid/b/a/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$7$1$1;->b:Lcom/twidroid/UberSocialProfile$7$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$7$1;->a:Lcom/twidroid/UberSocialProfile$7;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$7;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->E(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$7$1$1;->b:Lcom/twidroid/UberSocialProfile$7$1;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$7$1;->a:Lcom/twidroid/UberSocialProfile$7;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$7;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->G(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$7$1$1;->b:Lcom/twidroid/UberSocialProfile$7$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$7$1;->a:Lcom/twidroid/UberSocialProfile$7;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$7;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->F(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$7$1$1;->b:Lcom/twidroid/UberSocialProfile$7$1;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile$7$1;->dismiss()V

    return-void
.end method
