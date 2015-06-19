.class  Lcom/alipay/android/app/sdk/WapPayActivity$1;
.super Ljava/lang/Object;
.source "WapPayActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
.method constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$1;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$1;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mRefreshButton:Landroid/widget/Button;
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$0(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/widget/Button;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$1;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mRefreshButton:Landroid/widget/Button;
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$0(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
:cond_16
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$1;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#calls: Lcom/alipay/android/app/sdk/WapPayActivity;->dismissLoading()V
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$1(Lcom/alipay/android/app/sdk/WapPayActivity;)V
return-void
.end method