.class  Lcom/alipay/android/app/widget/Loading$1;
.super Ljava/lang/Object;
.source "Loading.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/alipay/android/app/widget/Loading;
.field private final synthetic val$message:Ljava/lang/CharSequence;
.method constructor <init>(Lcom/alipay/android/app/widget/Loading;Ljava/lang/CharSequence;)V
.registers 3
iput-object p1, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
iput-object p2, p0, Lcom/alipay/android/app/widget/Loading$1;->val$message:Ljava/lang/CharSequence;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
#getter for: Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/alipay/android/app/widget/Loading;->access$0(Lcom/alipay/android/app/widget/Loading;)Landroid/app/ProgressDialog;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
#getter for: Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/alipay/android/app/widget/Loading;->access$0(Lcom/alipay/android/app/widget/Loading;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-nez v0, :cond_48
:cond_14
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
invoke-virtual {v0}, Lcom/alipay/android/app/widget/Loading;->dismiss()V
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
new-instance v1, Landroid/app/ProgressDialog;
iget-object v2, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
#getter for: Lcom/alipay/android/app/widget/Loading;->mContext:Landroid/app/Activity;
invoke-static {v2}, Lcom/alipay/android/app/widget/Loading;->access$1(Lcom/alipay/android/app/widget/Loading;)Landroid/app/Activity;
move-result-object v2
invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
#setter for: Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0, v1}, Lcom/alipay/android/app/widget/Loading;->access$2(Lcom/alipay/android/app/widget/Loading;Landroid/app/ProgressDialog;)V
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
#getter for: Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/alipay/android/app/widget/Loading;->access$0(Lcom/alipay/android/app/widget/Loading;)Landroid/app/ProgressDialog;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
#getter for: Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/alipay/android/app/widget/Loading;->access$0(Lcom/alipay/android/app/widget/Loading;)Landroid/app/ProgressDialog;
move-result-object v0
iget-object v1, p0, Lcom/alipay/android/app/widget/Loading$1;->val$message:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
#getter for: Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/alipay/android/app/widget/Loading;->access$0(Lcom/alipay/android/app/widget/Loading;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:goto_47
return-void
:cond_48
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading$1;->this$0:Lcom/alipay/android/app/widget/Loading;
#getter for: Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/alipay/android/app/widget/Loading;->access$0(Lcom/alipay/android/app/widget/Loading;)Landroid/app/ProgressDialog;
move-result-object v0
iget-object v1, p0, Lcom/alipay/android/app/widget/Loading$1;->val$message:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_47
.end method