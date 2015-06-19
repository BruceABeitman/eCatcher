.class  Lcom/twidroid/activity/UberSocialBaseActivity$14$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity$14;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$14;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$14$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$14;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialBaseActivity$14$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$14$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$14;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$14;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const-class v2, Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$14$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$14;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$14;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$14$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$14;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$14;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const/16 v2, 0x3e7
invoke-virtual {v1, v0, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lcom/twidroid/activity/UberSocialBaseActivity$14$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method