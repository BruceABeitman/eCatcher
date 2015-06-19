.class  Lcom/twidroid/activity/UberSocialAccounts$1$1;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccounts$1;
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccounts$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a:Lcom/twidroid/activity/UberSocialAccounts$1;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a([Ljava/lang/Void;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
.registers 4
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a:Lcom/twidroid/activity/UberSocialAccounts$1;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccounts$1;->b:Lcom/twidroid/activity/UberSocialAccounts;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccounts;->e:Lcom/twidroid/net/a/a/c;
invoke-virtual {v0}, Lcom/twidroid/net/a/a/c;->a()Lcom/facebook/a/e;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a:Lcom/twidroid/activity/UberSocialAccounts$1;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccounts$1;->b:Lcom/twidroid/activity/UberSocialAccounts;
invoke-virtual {v0, v1}, Lcom/facebook/a/e;->a(Landroid/content/Context;)Ljava/lang/String;
:try_start_11
:try_end_11
.catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_28
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_22
:goto_11
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a:Lcom/twidroid/activity/UberSocialAccounts$1;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccounts$1;->b:Lcom/twidroid/activity/UberSocialAccounts;
invoke-static {v0}, Lcom/twidroid/net/a/a/c;->c(Landroid/content/Context;)V
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->G()V
const-string v0, "OK"
:goto_21
:try_end_21
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_22
return-object v0
:catch_22
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const/4 v0, 0x0
goto :goto_21
:catch_28
move-exception v0
goto :goto_11
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a(Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x1
if-nez p1, :cond_11
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a:Lcom/twidroid/activity/UberSocialAccounts$1;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccounts$1;->b:Lcom/twidroid/activity/UberSocialAccounts;
const-string v1, "Facebook logout failed."
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a:Lcom/twidroid/activity/UberSocialAccounts$1;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccounts$1;->b:Lcom/twidroid/activity/UberSocialAccounts;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccounts;->i()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a:Lcom/twidroid/activity/UberSocialAccounts$1;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccounts$1;->a:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts$1$1;->a:Lcom/twidroid/activity/UberSocialAccounts$1;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccounts$1;->b:Lcom/twidroid/activity/UberSocialAccounts;
const v1, 0x7f0c011d
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_10
.end method