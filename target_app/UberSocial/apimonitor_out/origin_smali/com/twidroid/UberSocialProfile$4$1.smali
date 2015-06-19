.class Lcom/twidroid/UberSocialProfile$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$4;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$4;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    iget-boolean v0, v0, Lcom/twidroid/UberSocialProfile;->v:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    iget-object v1, v1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->w(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->v(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_48

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    new-instance v1, Lcom/twidroid/UberSocialProfile$4$1$1;

    invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$4$1$1;-><init>(Lcom/twidroid/UberSocialProfile$4$1;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_2a

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->B(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$4$1;->a:Lcom/twidroid/UberSocialProfile$4;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->z(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5b} :catch_43

    goto :goto_2a
.end method
