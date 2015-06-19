.class final Lcom/bbm/ui/activities/ly;
.super Ljava/lang/Object;
.source "GroupChatListActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:I
.field final synthetic b:Lcom/bbm/ui/activities/GroupChatListActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupChatListActivity;I)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ly;->b:Lcom/bbm/ui/activities/GroupChatListActivity;
iput p2, p0, Lcom/bbm/ui/activities/ly;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ly; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
const-string v0, "ContextSlideMenu bottom item Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ly;->b:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->g(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/ef;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/ef;->getCount()I
move-result v0
if-le v0, v3, :cond_5b
invoke-static {}, Lcom/bbm/ui/activities/GroupChatListActivity;->b()Lcom/bbm/g/am;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/activities/ly;->b:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->g(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/ef;
move-result-object v0
iget v2, p0, Lcom/bbm/ui/activities/ly;->a:I
invoke-virtual {v0, v2}, Lcom/bbm/ui/ef;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
iget-object v0, v0, Lcom/bbm/g/q;->k:Ljava/lang/String;
new-instance v2, Lcom/bbm/g/bf;
invoke-direct {v2, v0}, Lcom/bbm/g/bf;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ly;->b:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->g(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/ef;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/ef;->notifyDataSetChanged()V
invoke-static {}, Lcom/bbm/ui/activities/GroupChatListActivity;->b()Lcom/bbm/g/am;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/activities/ly;->b:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->g(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/ef;
move-result-object v0
iget v2, p0, Lcom/bbm/ui/activities/ly;->a:I
invoke-virtual {v0, v2}, Lcom/bbm/ui/ef;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
iget-object v0, v0, Lcom/bbm/g/q;->k:Ljava/lang/String;
const-string v2, ""
invoke-virtual {v1, v0, v2}, Lcom/bbm/g/am;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ly;->b:Lcom/bbm/ui/activities/GroupChatListActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
:cond_5b
const-string v1, " - Lcom/bbm/ui/activities/ly; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method