.class  Lcom/twidroid/TwidroidClient$26;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/TwidroidClient$26;->b:Lcom/twidroid/TwidroidClient;
iput-object p2, p0, Lcom/twidroid/TwidroidClient$26;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/TwidroidClient$26; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$26;->b:Lcom/twidroid/TwidroidClient;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/twidroid/TwidroidClient$26;->b:Lcom/twidroid/TwidroidClient;
invoke-virtual {v2}, Lcom/twidroid/TwidroidClient;->getApplication()Landroid/app/Application;
move-result-object v2
const-class v3, Lcom/twidroid/activity/StreamingPreferences;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$26;->a:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$26;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
const-string v1, " - Lcom/twidroid/TwidroidClient$26; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method