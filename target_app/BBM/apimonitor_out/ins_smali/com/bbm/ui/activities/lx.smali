.class final Lcom/bbm/ui/activities/lx;
.super Ljava/lang/Object;
.source "GroupChatListActivity.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupChatListActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupChatListActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/lx;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/lx; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/lx;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->g(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/ef;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/ef;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
iget-boolean v0, v0, Lcom/bbm/g/q;->a:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/bbm/ui/activities/lx;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-static {v0, p3}, Lcom/bbm/ui/activities/GroupChatListActivity;->a(Lcom/bbm/ui/activities/GroupChatListActivity;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/lx;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->o()V
const/4 v0, 0x1
:goto_1b
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/lx; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method