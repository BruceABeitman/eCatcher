.class final Lcom/bbm/ui/activities/me;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/me;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/me; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mOnRootClickListener Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/me;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/EmoticonInputPanel;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
iget-object v0, p0, Lcom/bbm/ui/activities/me;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getWindow()Landroid/view/Window;
move-result-object v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/me;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/me;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->clearFocus()V
:cond_31
const-string v1, " - Lcom/bbm/ui/activities/me; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method