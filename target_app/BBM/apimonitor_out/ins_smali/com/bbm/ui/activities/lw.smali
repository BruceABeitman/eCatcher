.class final Lcom/bbm/ui/activities/lw;
.super Ljava/lang/Object;
.source "GroupChatListActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupChatListActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupChatListActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/lw;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/lw; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/lw;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->f(Lcom/bbm/ui/activities/GroupChatListActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/activities/lw;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
const-class v3, Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "groupConversationUri"
iget-object v0, v0, Lcom/bbm/g/q;->k:Ljava/lang/String;
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "groupUri"
iget-object v2, p0, Lcom/bbm/ui/activities/lw;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/lw;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupChatListActivity;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/bbm/ui/activities/lw; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method