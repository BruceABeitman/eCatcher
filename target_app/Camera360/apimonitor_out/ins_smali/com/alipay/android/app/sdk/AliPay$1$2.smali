.class  Lcom/alipay/android/app/sdk/AliPay$1$2;
.super Ljava/lang/Object;
.source "AliPay.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/alipay/android/app/sdk/AliPay$1;
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay$1;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$1$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/alipay/android/app/sdk/AliPay$1$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$1$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$1;
#getter for: Lcom/alipay/android/app/sdk/AliPay$1;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay$1;->access$0(Lcom/alipay/android/app/sdk/AliPay$1;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v2
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mDownloadUrl:Ljava/lang/String;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay;->access$1(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/alipay/android/app/util/Utils;->isVerifyURL(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_57
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$1$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$1;
#getter for: Lcom/alipay/android/app/sdk/AliPay$1;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay$1;->access$0(Lcom/alipay/android/app/sdk/AliPay$1;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v2
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
move-result-object v2
const-class v3, Lcom/alipay/android/app/sdk/WapPayActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v2, "url"
iget-object v3, p0, Lcom/alipay/android/app/sdk/AliPay$1$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$1;
#getter for: Lcom/alipay/android/app/sdk/AliPay$1;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v3}, Lcom/alipay/android/app/sdk/AliPay$1;->access$0(Lcom/alipay/android/app/sdk/AliPay$1;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v3
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mUrl:Ljava/lang/String;
invoke-static {v3}, Lcom/alipay/android/app/sdk/AliPay;->access$2(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "timeout"
iget-object v3, p0, Lcom/alipay/android/app/sdk/AliPay$1$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$1;
#getter for: Lcom/alipay/android/app/sdk/AliPay$1;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v3}, Lcom/alipay/android/app/sdk/AliPay$1;->access$0(Lcom/alipay/android/app/sdk/AliPay$1;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v3
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mTimeout:I
invoke-static {v3}, Lcom/alipay/android/app/sdk/AliPay;->access$3(Lcom/alipay/android/app/sdk/AliPay;)I
move-result v3
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$1$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$1;
#getter for: Lcom/alipay/android/app/sdk/AliPay$1;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay$1;->access$0(Lcom/alipay/android/app/sdk/AliPay$1;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v2
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:goto_56
const-string v1, " - Lcom/alipay/android/app/sdk/AliPay$1$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_57
iget-object v2, p0, Lcom/alipay/android/app/sdk/AliPay$1$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$1;
#getter for: Lcom/alipay/android/app/sdk/AliPay$1;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay$1;->access$0(Lcom/alipay/android/app/sdk/AliPay$1;)Lcom/alipay/android/app/sdk/AliPay;
move-result-object v2
#calls: Lcom/alipay/android/app/sdk/AliPay;->downloadFile()V
invoke-static {v2}, Lcom/alipay/android/app/sdk/AliPay;->access$4(Lcom/alipay/android/app/sdk/AliPay;)V
goto :goto_56
.end method