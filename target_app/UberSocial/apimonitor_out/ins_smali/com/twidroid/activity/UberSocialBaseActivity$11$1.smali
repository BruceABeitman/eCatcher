.class  Lcom/twidroid/activity/UberSocialBaseActivity$11$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity$11;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$11;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$11$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$11;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
const/4 v4, 0x0
:try_start_1
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$11$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$11;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$11;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$11$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$11;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$11;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$11$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$11;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$11;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$11$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$11;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity$11;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const v3, 0x7f0c017e
invoke-virtual {v2, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$11$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$11;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity$11;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$11$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$11;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity$11;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const v3, 0x7f0c017f
invoke-virtual {v2, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:try_end_57
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_58
:goto_57
return-void
:catch_58
move-exception v0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$11$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$11;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$11;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iput-boolean v4, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z
goto :goto_57
.end method