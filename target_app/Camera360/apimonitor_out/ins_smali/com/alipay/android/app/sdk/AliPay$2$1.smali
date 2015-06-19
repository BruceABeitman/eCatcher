.class  Lcom/alipay/android/app/sdk/AliPay$2$1;
.super Ljava/lang/Object;
.source "AliPay.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/alipay/android/app/sdk/AliPay$2;
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay$2;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$2$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay$2$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$2;
#getter for: Lcom/alipay/android/app/sdk/AliPay$2;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v0}, Lcom/alipay/android/app/sdk/AliPay$2;->access$0(Lcom/alipay/android/app/sdk/AliPay$2;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v0
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mInstallMessageAlert:Lcom/alipay/android/app/widget/CustomAlertDialog;
invoke-static {v0}, Lcom/alipay/android/app/sdk/AliPay;->access$5(Lcom/alipay/android/app/sdk/AliPay;)Lcom/alipay/android/app/widget/CustomAlertDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->dismiss()V
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay$2$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$2;
#getter for: Lcom/alipay/android/app/sdk/AliPay$2;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v0}, Lcom/alipay/android/app/sdk/AliPay$2;->access$0(Lcom/alipay/android/app/sdk/AliPay$2;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v0
const/4 v1, 0x1
#setter for: Lcom/alipay/android/app/sdk/AliPay;->isInstall:Z
invoke-static {v0, v1}, Lcom/alipay/android/app/sdk/AliPay;->access$6(Lcom/alipay/android/app/sdk/AliPay;Z)V
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay$2$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$2;
#getter for: Lcom/alipay/android/app/sdk/AliPay$2;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v0}, Lcom/alipay/android/app/sdk/AliPay$2;->access$0(Lcom/alipay/android/app/sdk/AliPay$2;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v0
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v0}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
move-result-object v0
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$2$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$2;
#getter for: Lcom/alipay/android/app/sdk/AliPay$2;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay$2;->access$0(Lcom/alipay/android/app/sdk/AliPay$2;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v1
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mReceiver:Landroid/content/BroadcastReceiver;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$7(Lcom/alipay/android/app/sdk/AliPay;)Landroid/content/BroadcastReceiver;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
sget-object v1, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
monitor-enter v1
:try_start_31
sget-object v0, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
return-void
:catchall_38
move-exception v0
monitor-exit v1
:try_end_3a
.catchall {:try_start_31 .. :try_end_3a} :catchall_38
throw v0
.end method