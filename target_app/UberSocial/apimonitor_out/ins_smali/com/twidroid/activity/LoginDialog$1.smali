.class  Lcom/twidroid/activity/LoginDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic a:Lcom/twidroid/activity/LoginDialog;
.method constructor <init>(Lcom/twidroid/activity/LoginDialog;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/LoginDialog$1; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;
invoke-static {v0}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/Spinner;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;
invoke-static {v0, v2}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;Z)V
:goto_12
const-string v1, " - Lcom/twidroid/activity/LoginDialog$1; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;
invoke-static {v0}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/Spinner;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_27
iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;Z)V
goto :goto_12
:cond_27
iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;
invoke-static {v0, v2}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;Z)V
goto :goto_12
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/LoginDialog$1; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/LoginDialog$1; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method