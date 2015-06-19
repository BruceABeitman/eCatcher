.class  Lcom/alipay/android/app/sdk/AliPay$6$1;
.super Ljava/lang/Object;
.source "AliPay.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/alipay/android/app/sdk/AliPay$6;
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay$6;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$6$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$6;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/alipay/android/app/sdk/AliPay$6$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$6$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$6;
#getter for: Lcom/alipay/android/app/sdk/AliPay$6;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay$6;->access$0(Lcom/alipay/android/app/sdk/AliPay$6;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v2
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
move-result-object v2
iget-object v3, p0, Lcom/alipay/android/app/sdk/AliPay$6$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$6;
#getter for: Lcom/alipay/android/app/sdk/AliPay$6;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v3}, Lcom/alipay/android/app/sdk/AliPay$6;->access$0(Lcom/alipay/android/app/sdk/AliPay$6;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v3
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mReceiver:Landroid/content/BroadcastReceiver;
invoke-static {v3}, Lcom/alipay/android/app/sdk/AliPay;->access$7(Lcom/alipay/android/app/sdk/AliPay;)Landroid/content/BroadcastReceiver;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$6$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$6;
#getter for: Lcom/alipay/android/app/sdk/AliPay$6;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay$6;->access$0(Lcom/alipay/android/app/sdk/AliPay$6;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v2
const/4 v3, 0x0
#setter for: Lcom/alipay/android/app/sdk/AliPay;->isInstall:Z
invoke-static {v2, v3}, Lcom/alipay/android/app/sdk/AliPay;->access$6(Lcom/alipay/android/app/sdk/AliPay;Z)V
const/16 v2, 0x1771
invoke-static {v2}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;
move-result-object v1
invoke-virtual {v1}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I
move-result v2
invoke-virtual {v1}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, ""
invoke-static {v2, v3, v4}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/alipay/android/app/sdk/Result;->setPayResult(Ljava/lang/String;)V
sget-object v3, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
monitor-enter v3
:try_start_3c
sget-object v2, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
invoke-virtual {v2}, Ljava/lang/Object;->notify()V
:goto_41
:try_end_41
.catchall {:try_start_3c .. :try_end_41} :catchall_48
.catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_43
:try_start_41
monitor-exit v3
const-string v1, " - Lcom/alipay/android/app/sdk/AliPay$6$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_43
move-exception v0
invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V
goto :goto_41
:catchall_48
move-exception v2
monitor-exit v3
:try_end_4a
.catchall {:try_start_41 .. :try_end_4a} :catchall_48
throw v2
.end method