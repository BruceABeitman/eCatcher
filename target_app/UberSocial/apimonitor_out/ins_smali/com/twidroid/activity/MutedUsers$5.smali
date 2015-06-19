.class  Lcom/twidroid/activity/MutedUsers$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/twidroid/activity/MutedUsers;
.method constructor <init>(Lcom/twidroid/activity/MutedUsers;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/MutedUsers$5;->a:Lcom/twidroid/activity/MutedUsers;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/MutedUsers$5; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$5;->a:Lcom/twidroid/activity/MutedUsers;
iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->g:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_24
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers$5;->a:Lcom/twidroid/activity/MutedUsers;
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$5;->a:Lcom/twidroid/activity/MutedUsers;
iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->c:Lcom/twidroid/ui/a/e;
invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/e;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
check-cast v0, Ljava/lang/String;
const-string v2, "mute screen"
const/4 v3, 0x0
invoke-virtual {v1, v0, v2, v3}, Lcom/twidroid/activity/MutedUsers;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/activity/aa;)V
:goto_1e
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$5;->a:Lcom/twidroid/activity/MutedUsers;
invoke-virtual {v0}, Lcom/twidroid/activity/MutedUsers;->r_()V
const-string v1, " - Lcom/twidroid/activity/MutedUsers$5; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_24
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers$5;->a:Lcom/twidroid/activity/MutedUsers;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iget-object v0, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v2, "mute screen"
new-instance v3, Lcom/twidroid/activity/MutedUsers$5$1;
invoke-direct {v3, p0}, Lcom/twidroid/activity/MutedUsers$5$1;-><init>(Lcom/twidroid/activity/MutedUsers$5;)V
invoke-virtual {v1, v0, v2, v3}, Lcom/twidroid/activity/MutedUsers;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/activity/aa;)V
goto :goto_1e
.end method