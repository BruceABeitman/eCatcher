.class Lcom/twidroid/UberSocialProfile$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/activity/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$2;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$2;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$2$1;->a:Lcom/twidroid/UberSocialProfile$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$2$1;->a:Lcom/twidroid/UberSocialProfile$2;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$2;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->r(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$2$1;->a:Lcom/twidroid/UberSocialProfile$2;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$2;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->q(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
