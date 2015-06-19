.class  Lcom/alipay/android/app/sdk/AliPay$3$2;
.super Ljava/lang/Object;
.source "AliPay.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/alipay/android/app/sdk/AliPay$3;
.field private final synthetic val$cachePath:Ljava/lang/String;
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay$3;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$3$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;
iput-object p2, p0, Lcom/alipay/android/app/sdk/AliPay$3$2;->val$cachePath:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/alipay/android/app/sdk/AliPay$3$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$3$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;
#getter for: Lcom/alipay/android/app/sdk/AliPay$3;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay$3;->access$0(Lcom/alipay/android/app/sdk/AliPay$3;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v1
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$3$2;->val$cachePath:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/alipay/android/app/util/Utils;->installApk(Landroid/app/Activity;Ljava/lang/String;)V
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string/jumbo v1, "package"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$3$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;
#getter for: Lcom/alipay/android/app/sdk/AliPay$3;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay$3;->access$0(Lcom/alipay/android/app/sdk/AliPay$3;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v1
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$3$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;
#getter for: Lcom/alipay/android/app/sdk/AliPay$3;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay$3;->access$0(Lcom/alipay/android/app/sdk/AliPay$3;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v2
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mReceiver:Landroid/content/BroadcastReceiver;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay;->access$7(Lcom/alipay/android/app/sdk/AliPay;)Landroid/content/BroadcastReceiver;
move-result-object v2
invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$3$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;
#getter for: Lcom/alipay/android/app/sdk/AliPay$3;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay$3;->access$0(Lcom/alipay/android/app/sdk/AliPay$3;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v1
#calls: Lcom/alipay/android/app/sdk/AliPay;->showInstallMessage()V
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$9(Lcom/alipay/android/app/sdk/AliPay;)V
const-string v1, " - Lcom/alipay/android/app/sdk/AliPay$3$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method