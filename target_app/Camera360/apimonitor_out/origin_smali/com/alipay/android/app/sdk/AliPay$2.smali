.class Lcom/alipay/android/app/sdk/AliPay$2;
.super Landroid/content/BroadcastReceiver;
.source "AliPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/sdk/AliPay;
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

    iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$2;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/app/sdk/AliPay$2;)Lcom/alipay/android/app/sdk/AliPay;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay$2;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$2;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    #getter for: Lcom/alipay/android/app/sdk/AliPay;->mInstallMessageAlert:Lcom/alipay/android/app/widget/CustomAlertDialog;
    invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$5(Lcom/alipay/android/app/sdk/AliPay;)Lcom/alipay/android/app/widget/CustomAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v0, Lcom/alipay/android/app/sdk/AliPay$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/sdk/AliPay$2$1;-><init>(Lcom/alipay/android/app/sdk/AliPay$2;)V

    iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay$2;->this$0:Lcom/alipay/android/app/sdk/AliPay;

    #getter for: Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alipay/android/app/sdk/AliPay;->access$8(Lcom/alipay/android/app/sdk/AliPay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method
