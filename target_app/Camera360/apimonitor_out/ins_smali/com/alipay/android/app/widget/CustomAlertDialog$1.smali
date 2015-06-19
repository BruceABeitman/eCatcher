.class  Lcom/alipay/android/app/widget/CustomAlertDialog$1;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;
.method constructor <init>(Lcom/alipay/android/app/widget/CustomAlertDialog;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$1;->this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/alipay/android/app/widget/CustomAlertDialog$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Message;
if-nez v0, :cond_e
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$1;->this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;
invoke-virtual {v2}, Lcom/alipay/android/app/widget/CustomAlertDialog;->dismiss()V
:goto_d
const-string v1, " - Lcom/alipay/android/app/widget/CustomAlertDialog$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_e
invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;
move-result-object v1
if-eqz v1, :cond_17
invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
:cond_17
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$1;->this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;
#getter for: Lcom/alipay/android/app/widget/CustomAlertDialog;->mHandler:Landroid/os/Handler;
invoke-static {v2}, Lcom/alipay/android/app/widget/CustomAlertDialog;->access$0(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/os/Handler;
move-result-object v2
const/4 v3, 0x1
iget-object v4, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$1;->this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;
#getter for: Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogInterface:Landroid/content/DialogInterface;
invoke-static {v4}, Lcom/alipay/android/app/widget/CustomAlertDialog;->access$1(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/content/DialogInterface;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v2
invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
goto :goto_d
.end method