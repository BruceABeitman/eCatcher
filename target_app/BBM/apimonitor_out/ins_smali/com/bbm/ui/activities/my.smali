.class final Lcom/bbm/ui/activities/my;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/my;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/my; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p2, :cond_1e
const-string v0, "mMessageInput Focused"
const-class v1, Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/my;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/my;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
:cond_1e
const-string v1, " - Lcom/bbm/ui/activities/my; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method