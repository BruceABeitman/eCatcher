.class  Lcom/alipay/android/app/sdk/AliPay$1;
.super Ljava/lang/Object;
.source "AliPay.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/alipay/android/app/sdk/AliPay;
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$1;->this$0:Lcom/alipay/android/app/sdk/AliPay;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/alipay/android/app/sdk/AliPay$1;)Lcom/alipay/android/app/sdk/AliPay;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay$1;->this$0:Lcom/alipay/android/app/sdk/AliPay;
return-object v0
.end method
.method public run()V
.registers 4
new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$1;->this$0:Lcom/alipay/android/app/sdk/AliPay;
#getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_confirm_title()I
move-result v1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_download_fail()I
move-result v1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_cancel()I
move-result v1
new-instance v2, Lcom/alipay/android/app/sdk/AliPay$1$1;
invoke-direct {v2, p0}, Lcom/alipay/android/app/sdk/AliPay$1$1;-><init>(Lcom/alipay/android/app/sdk/AliPay$1;)V
invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_redo()I
move-result v1
new-instance v2, Lcom/alipay/android/app/sdk/AliPay$1$2;
invoke-direct {v2, p0}, Lcom/alipay/android/app/sdk/AliPay$1$2;-><init>(Lcom/alipay/android/app/sdk/AliPay$1;)V
invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->show()Lcom/alipay/android/app/widget/CustomAlertDialog;
return-void
.end method