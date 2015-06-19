.class Lcom/twidroid/UberSocialProfile$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$4$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$4$1;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$4$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$4$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Lcom/twidroid/UberSocialProfile$4$1$1$1;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$4$1$1;->a:Lcom/twidroid/UberSocialProfile$4$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    invoke-direct {v0, p0, v1}, Lcom/twidroid/UberSocialProfile$4$1$1$1;-><init>(Lcom/twidroid/UberSocialProfile$4$1$1;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile$4$1$1$1;->show()V

    return-void
.end method
