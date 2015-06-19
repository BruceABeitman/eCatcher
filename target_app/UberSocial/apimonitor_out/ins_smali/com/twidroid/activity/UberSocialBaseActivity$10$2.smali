.class  Lcom/twidroid/activity/UberSocialBaseActivity$10$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity$10;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$10;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10$2;->a:Lcom/twidroid/activity/UberSocialBaseActivity$10;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10$2;->a:Lcom/twidroid/activity/UberSocialBaseActivity$10;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$10$2;->a:Lcom/twidroid/activity/UberSocialBaseActivity$10;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$10;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V
:goto_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
goto :goto_10
.end method