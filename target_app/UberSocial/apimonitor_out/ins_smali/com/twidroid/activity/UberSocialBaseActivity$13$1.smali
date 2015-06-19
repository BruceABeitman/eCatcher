.class  Lcom/twidroid/activity/UberSocialBaseActivity$13$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity$13;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$13;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$13;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$13;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$13$1$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$13$1$1;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity$13$1;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method