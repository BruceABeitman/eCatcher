.class  Lcom/alipay/android/app/util/PayHelper$1;
.super Ljava/lang/Object;
.source "PayHelper.java"
.implements Landroid/content/ServiceConnection;
.field final synthetic this$0:Lcom/alipay/android/app/util/PayHelper;
.method constructor <init>(Lcom/alipay/android/app/util/PayHelper;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/alipay/android/app/util/PayHelper$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;
#getter for: Lcom/alipay/android/app/util/PayHelper;->mLock:Ljava/lang/Object;
invoke-static {v0}, Lcom/alipay/android/app/util/PayHelper;->access$1(Lcom/alipay/android/app/util/PayHelper;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;
invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;
move-result-object v2
#setter for: Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
invoke-static {v0, v2}, Lcom/alipay/android/app/util/PayHelper;->access$0(Lcom/alipay/android/app/util/PayHelper;Lcom/alipay/android/app/IAlixPay;)V
iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;
#getter for: Lcom/alipay/android/app/util/PayHelper;->mLock:Ljava/lang/Object;
invoke-static {v0}, Lcom/alipay/android/app/util/PayHelper;->access$1(Lcom/alipay/android/app/util/PayHelper;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
const-string v1, " - Lcom/alipay/android/app/util/PayHelper$1; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_1b
move-exception v0
monitor-exit v1
:try_end_1d
.catchall {:try_start_7 .. :try_end_1d} :catchall_1b
throw v0
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/alipay/android/app/util/PayHelper$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;
const/4 v1, 0x0
#setter for: Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
invoke-static {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->access$0(Lcom/alipay/android/app/util/PayHelper;Lcom/alipay/android/app/IAlixPay;)V
const-string v1, " - Lcom/alipay/android/app/util/PayHelper$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method