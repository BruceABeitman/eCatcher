.class Lcom/alipay/android/app/sdk/AliPay$6;
.super Ljava/lang/Object;
.source "AliPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/sdk/AliPay;->showInstallMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/sdk/AliPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$6;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/app/sdk/AliPay$6;)Lcom/alipay/android/app/sdk/AliPay;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay$6;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$6;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    #getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_confirm_title()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$6;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    #getter for: Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$11(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "safepay"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_cancelInstallTips()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    :cond_28
    :goto_28
    invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_ensure()I

    move-result v1

    new-instance v2, Lcom/alipay/android/app/sdk/AliPay$6$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/sdk/AliPay$6$1;-><init>(Lcom/alipay/android/app/sdk/AliPay$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$6;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->show()Lcom/alipay/android/app/widget/CustomAlertDialog;

    move-result-object v2

    #setter for: Lcom/alipay/android/app/sdk/AliPay;->mInstallMessageAlert:Lcom/alipay/android/app/widget/CustomAlertDialog;
    invoke-static {v1, v2}, Lcom/alipay/android/app/sdk/AliPay;->access$12(Lcom/alipay/android/app/sdk/AliPay;Lcom/alipay/android/app/widget/CustomAlertDialog;)V

    return-void

    :cond_3e
    iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$6;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    #getter for: Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$11(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alipay"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_cancelInstallAlipayTips()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    goto :goto_28
.end method
