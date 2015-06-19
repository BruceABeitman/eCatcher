.class  Lcom/alipay/android/app/widget/Loading$2;
.super Ljava/lang/Object;
.source "Loading.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/alipay/android/app/widget/Loading;
.method constructor <init>(Lcom/alipay/android/app/widget/Loading;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/widget/Loading$2;->this$0:Lcom/alipay/android/app/widget/Loading;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$2;->this$0:Lcom/alipay/android/app/widget/Loading;
invoke-virtual {v0}, Lcom/alipay/android/app/widget/Loading;->isShowing()Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$2;->this$0:Lcom/alipay/android/app/widget/Loading;
#getter for: Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/alipay/android/app/widget/Loading;->access$0(Lcom/alipay/android/app/widget/Loading;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$2;->this$0:Lcom/alipay/android/app/widget/Loading;
const/4 v1, 0x0
#setter for: Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0, v1}, Lcom/alipay/android/app/widget/Loading;->access$2(Lcom/alipay/android/app/widget/Loading;Landroid/app/ProgressDialog;)V
:cond_17
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v0
goto :goto_17
.end method