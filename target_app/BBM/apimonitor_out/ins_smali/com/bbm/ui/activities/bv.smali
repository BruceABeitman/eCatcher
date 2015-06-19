.class final Lcom/bbm/ui/activities/bv;
.super Ljava/lang/Object;
.source "ChangeStatusActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ChangeStatusActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/bv; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Done button onClick"
const-class v1, Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Landroid/widget/EditText;
if-ne v0, v1, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getId()I
move-result v0
const v1, 0x7f0a00f2
if-ne v0, v1, :cond_37
iget-object v0, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->h(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
:cond_31
:goto_31
iget-object v0, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/bv; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_37
iget-object v0, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
if-eqz v0, :cond_72
invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/View;
if-eqz v1, :cond_72
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v2
if-eqz v2, :cond_72
iget-object v2, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ChangeStatusActivity;->f(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I
move-result v1
iget-object v2, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/activities/by;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/bbm/ui/activities/by;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ge;
iget-object v2, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v1, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;Lcom/bbm/d/ge;Ljava/lang/String;)V
:cond_72
iget-object v0, p0, Lcom/bbm/ui/activities/bv;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V
goto :goto_31
.end method