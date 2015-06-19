.class Lcom/twidroid/UberSocialProfile$16$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$16$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$16$1;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$16$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$16$1$1;->a:Lcom/twidroid/UberSocialProfile$16$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$16$1$1;->a:Lcom/twidroid/UberSocialProfile$16$1;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$16$1;->a:Lcom/twidroid/UberSocialProfile$16;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Z)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$16$1$1;->a:Lcom/twidroid/UberSocialProfile$16$1;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$16$1;->a:Lcom/twidroid/UberSocialProfile$16;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->d(Z)V

    return-void
.end method
