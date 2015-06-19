.class final Lcom/bbm/ui/activities/gv;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/gv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/gv; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v3, 0x42
const/4 v0, 0x1
const-string v1, "mOnKeyListener onKey"
const-class v2, Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-ne v1, v0, :cond_27
if-ne p2, v3, :cond_27
iget-object v1, p0, Lcom/bbm/ui/activities/gv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/gv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/activities/gv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->b()V
:cond_26
:goto_26
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/gv; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_27
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-nez v1, :cond_2f
if-eq p2, v3, :cond_26
:cond_2f
const/4 v0, 0x0
goto :goto_26
.end method