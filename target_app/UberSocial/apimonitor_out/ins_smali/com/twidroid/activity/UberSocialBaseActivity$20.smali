.class  Lcom/twidroid/activity/UberSocialBaseActivity$20;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/aa;
.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;Lcom/twidroid/activity/aa;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$20;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iput-object p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$20;->a:Lcom/twidroid/activity/aa;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialBaseActivity$20; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$20;->a:Lcom/twidroid/activity/aa;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$20;->a:Lcom/twidroid/activity/aa;
invoke-interface {v0}, Lcom/twidroid/activity/aa;->b()V
:cond_9
const-string v1, " - Lcom/twidroid/activity/UberSocialBaseActivity$20; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method