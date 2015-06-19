.class  Lcom/twidroid/TwidroidClient$35;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$35;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/TwidroidClient$35; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$35;->a:Lcom/twidroid/TwidroidClient;
invoke-virtual {v0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "ubersocial.broadcast.account.changed"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v2, "account"
invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
iget-object v0, p0, Lcom/twidroid/TwidroidClient$35;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
iget-object v0, p0, Lcom/twidroid/TwidroidClient$35;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->e(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/widgets/AccountSpinner;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/twidroid/ui/widgets/AccountSpinner;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-static {v1, v0}, Lcom/twidroid/widget/WidgetUpdateBroadcastReceiver;->a(Landroid/content/Context;I)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$35;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->e(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/widgets/AccountSpinner;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/twidroid/ui/widgets/AccountSpinner;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/TwidroidClient$35;->a:Lcom/twidroid/TwidroidClient;
iget-object v2, p0, Lcom/twidroid/TwidroidClient$35;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v2}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-virtual {v2, v0}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-static {v1, v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;Lcom/twidroid/model/twitter/c;)V
const-string v1, " - Lcom/twidroid/TwidroidClient$35; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/TwidroidClient$35; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/TwidroidClient$35; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method