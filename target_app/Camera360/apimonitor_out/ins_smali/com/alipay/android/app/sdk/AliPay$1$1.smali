.class  Lcom/alipay/android/app/sdk/AliPay$1$1;
.super Ljava/lang/Object;
.source "AliPay.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/alipay/android/app/sdk/AliPay$1;
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay$1;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$1$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/alipay/android/app/sdk/AliPay$1$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v3, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
monitor-enter v3
const/16 v2, 0x1771
:try_start_5
invoke-static {v2}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;
move-result-object v1
invoke-virtual {v1}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I
move-result v2
invoke-virtual {v1}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, ""
invoke-static {v2, v4, v5}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/alipay/android/app/sdk/Result;->setPayResult(Ljava/lang/String;)V
:try_start_1b
:try_end_1b
.catchall {:try_start_5 .. :try_end_1b} :catchall_27
sget-object v2, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
invoke-virtual {v2}, Ljava/lang/Object;->notify()V
:goto_20
:try_start_20
:try_end_20
.catchall {:try_start_1b .. :try_end_20} :catchall_27
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_22
monitor-exit v3
const-string v1, " - Lcom/alipay/android/app/sdk/AliPay$1$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_22
move-exception v0
invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V
goto :goto_20
:catchall_27
move-exception v2
monitor-exit v3
:try_end_29
.catchall {:try_start_20 .. :try_end_29} :catchall_27
throw v2
.end method