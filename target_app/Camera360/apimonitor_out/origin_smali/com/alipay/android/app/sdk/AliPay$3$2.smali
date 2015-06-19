.class Lcom/alipay/android/app/sdk/AliPay$3$2;
.super Ljava/lang/Object;
.source "AliPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/sdk/AliPay$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/sdk/AliPay$3;

.field private final synthetic val$cachePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay$3;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$3$2;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;

    iput-object p2, p0, Lcom/alipay/android/app/sdk/AliPay$3$2;->val$cachePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

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

    return-void
.end method
