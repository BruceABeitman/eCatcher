.class  Lcom/twidroid/activity/UberSocialSettings20$10;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialSettings20;
.method constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialSettings20$10;->a:Lcom/twidroid/activity/UberSocialSettings20;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialSettings20$10; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
sget-object v1, Lcom/twidroid/TwidroidClient;->k:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20$10;->a:Lcom/twidroid/activity/UberSocialSettings20;
invoke-virtual {v1, v0}, Lcom/twidroid/activity/UberSocialSettings20;->sendBroadcast(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$10;->a:Lcom/twidroid/activity/UberSocialSettings20;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialSettings20;->finish()V
new-instance v0, Landroid/content/Intent;
const-string v1, "Twidroyd.Tabswitch"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "Action"
const-string v2, "exit"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20$10;->a:Lcom/twidroid/activity/UberSocialSettings20;
invoke-virtual {v1, v0}, Lcom/twidroid/activity/UberSocialSettings20;->sendBroadcast(Landroid/content/Intent;)V
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/System;->exit(I)V
const-string v1, " - Lcom/twidroid/activity/UberSocialSettings20$10; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method