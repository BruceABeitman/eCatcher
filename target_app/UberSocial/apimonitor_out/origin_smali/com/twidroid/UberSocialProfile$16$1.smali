.class Lcom/twidroid/UberSocialProfile$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$16;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$16;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$16;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$16$1;->a:Lcom/twidroid/UberSocialProfile$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$16$1;->a:Lcom/twidroid/UberSocialProfile$16;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->ad(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/twidroid/UberSocialProfile$16$1$1;

    invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$16$1$1;-><init>(Lcom/twidroid/UberSocialProfile$16$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
