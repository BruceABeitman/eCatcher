.class  Lcom/twidroid/activity/UberSocialAccounts$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/twidroid/activity/UberSocialAccounts;
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccounts;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccounts$1;->b:Lcom/twidroid/activity/UberSocialAccounts;
iput-object p2, p0, Lcom/twidroid/activity/UberSocialAccounts$1;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialAccounts$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/activity/UberSocialAccounts$1$1;
invoke-direct {v0, p0}, Lcom/twidroid/activity/UberSocialAccounts$1$1;-><init>(Lcom/twidroid/activity/UberSocialAccounts$1;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialAccounts$1$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const-string v1, " - Lcom/twidroid/activity/UberSocialAccounts$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method