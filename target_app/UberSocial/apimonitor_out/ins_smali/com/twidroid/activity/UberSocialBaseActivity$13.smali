.class  Lcom/twidroid/activity/UberSocialBaseActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iput-object p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->m(Ljava/lang/String;)Z
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$13$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$13$1;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity$13;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_23
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z
return-void
:catch_23
move-exception v0
const-string v1, "UberSocialBaseActivity"
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
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const v3, 0x7f0c0036
invoke-virtual {v2, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$13;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;
new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$13$2;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$13$2;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity$13;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_1d
.end method