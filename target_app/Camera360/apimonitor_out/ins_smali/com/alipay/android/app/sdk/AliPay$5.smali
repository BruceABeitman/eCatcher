.class  Lcom/alipay/android/app/sdk/AliPay$5;
.super Ljava/lang/Object;
.source "AliPay.java"
.implements Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
.field final synthetic this$0:Lcom/alipay/android/app/sdk/AliPay;
.field private final synthetic val$cachePath:Ljava/lang/String;
.field private final synthetic val$loading:Lcom/alipay/android/app/widget/Loading;
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay;Lcom/alipay/android/app/widget/Loading;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
iput-object p2, p0, Lcom/alipay/android/app/sdk/AliPay$5;->val$loading:Lcom/alipay/android/app/widget/Loading;
iput-object p3, p0, Lcom/alipay/android/app/sdk/AliPay$5;->val$cachePath:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public downloadFail()V
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/alipay/android/app/sdk/AliPay;->access$8(Lcom/alipay/android/app/sdk/AliPay;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mDownloadFailRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$10(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay$5;->val$loading:Lcom/alipay/android/app/widget/Loading;
invoke-virtual {v0}, Lcom/alipay/android/app/widget/Loading;->dismiss()V
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/alipay/android/app/sdk/AliPay;->access$8(Lcom/alipay/android/app/sdk/AliPay;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mDownloadFailRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$10(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public downloadProgress(F)V
.registers 2
return-void
.end method
.method public downloadSucess()V
.registers 4
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$5;->val$loading:Lcom/alipay/android/app/widget/Loading;
invoke-virtual {v1}, Lcom/alipay/android/app/widget/Loading;->dismiss()V
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$8(Lcom/alipay/android/app/sdk/AliPay;)Landroid/os/Handler;
move-result-object v1
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mDownloadFailRunnable:Ljava/lang/Runnable;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay;->access$10(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/Runnable;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$5;->val$cachePath:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/alipay/android/app/util/Utils;->installApk(Landroid/app/Activity;Ljava/lang/String;)V
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string/jumbo v1, "package"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mReceiver:Landroid/content/BroadcastReceiver;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay;->access$7(Lcom/alipay/android/app/sdk/AliPay;)Landroid/content/BroadcastReceiver;
move-result-object v2
invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$5;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#calls: Lcom/alipay/android/app/sdk/AliPay;->showInstallMessage()V
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$9(Lcom/alipay/android/app/sdk/AliPay;)V
return-void
.end method