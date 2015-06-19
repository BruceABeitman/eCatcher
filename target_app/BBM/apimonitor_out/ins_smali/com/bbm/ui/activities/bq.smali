.class final Lcom/bbm/ui/activities/bq;
.super Ljava/lang/Object;
.source "ChangeStatusActivity.java"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/bbm/ui/activities/ChangeStatusActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/bq;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/bq; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const-string v0, "onKey"
const-class v1, Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_32
const/16 v0, 0x42
if-ne p2, v0, :cond_32
iget-object v0, p0, Lcom/bbm/ui/activities/bq;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->e(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/bbm/ui/activities/bq;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->g(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/RelativeLayout;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
:goto_32
:cond_32
const-string v1, " - Lcom/bbm/ui/activities/bq; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
:cond_33
iget-object v0, p0, Lcom/bbm/ui/activities/bq;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->h(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/bq;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
const-string v1, "input_method"
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/bbm/ui/activities/bq;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->e(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
goto :goto_32
.end method