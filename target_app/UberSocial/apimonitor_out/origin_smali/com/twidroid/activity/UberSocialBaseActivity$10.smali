.class Lcom/twidroid/activity/UberSocialBaseActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialBaseActivity;->e(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iput-object p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->d(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/twidroid/d/g;->a()V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$10$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$10$1;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    const-string v1, "Block user EXEPTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v3, v3, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error. Please try again later."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->U:Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$10$2;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$10$2;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity$10;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method
