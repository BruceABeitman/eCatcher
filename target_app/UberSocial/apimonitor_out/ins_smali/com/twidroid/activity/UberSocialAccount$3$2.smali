.class  Lcom/twidroid/activity/UberSocialAccount$3$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccount$3;
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount$3;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$3$2;->a:Lcom/twidroid/activity/UberSocialAccount$3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialAccount$3$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$3$2;->a:Lcom/twidroid/activity/UberSocialAccount$3;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$3;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccount;->e()V
const-string v1, " - Lcom/twidroid/activity/UberSocialAccount$3$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method