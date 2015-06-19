.class Lcom/twidroid/activity/UberSocialBaseActivity$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialBaseActivity$8;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity$8;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$8;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v1, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$8;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$8;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->ac:I

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$8;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$8;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->ac:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    :cond_12
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$8;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$8;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$8;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$8;->a:Lcom/twidroid/model/twitter/User;

    iget-object v1, v1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$8;

    iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity$8;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$8;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$8;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$8;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$8;->a:Lcom/twidroid/model/twitter/User;

    iget-object v1, v1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Z)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3d

    goto :goto_2d

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method
