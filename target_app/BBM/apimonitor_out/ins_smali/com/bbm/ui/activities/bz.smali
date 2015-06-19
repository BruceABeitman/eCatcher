.class final Lcom/bbm/ui/activities/bz;
.super Ljava/lang/Object;
.source "ChangeStatusActivity.java"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/bbm/ui/activities/by;
.method constructor <init>(Lcom/bbm/ui/activities/by;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/bz;->a:Lcom/bbm/ui/activities/by;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/bz; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_3c
const/16 v0, 0x42
if-ne p2, v0, :cond_3c
iget-object v0, p0, Lcom/bbm/ui/activities/bz;->a:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;
move-result-object v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/bbm/ui/activities/bz;->a:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
:cond_21
iget-object v0, p0, Lcom/bbm/ui/activities/bz;->a:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
const-string v1, "input_method"
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/bbm/ui/activities/bz;->a:Lcom/bbm/ui/activities/by;
iget-object v1, v1, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
:cond_3c
const-string v1, " - Lcom/bbm/ui/activities/bz; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
.end method