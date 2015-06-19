.class Lcom/alipay/android/app/sdk/AliPay$1$1;
.super Ljava/lang/Object;
.source "AliPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/sdk/AliPay$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/sdk/AliPay$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay$1;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$1$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    sget-object v3, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;

    monitor-enter v3

    const/16 v2, 0x1771

    :try_start_5
    invoke-static {v2}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I

    move-result v2

    invoke-virtual {v1}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {v2, v4, v5}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/sdk/Result;->setPayResult(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_27

    :try_start_1b
    sget-object v2, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_22

    :goto_20
    :try_start_20
    monitor-exit v3

    return-void

    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V

    goto :goto_20

    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v2
.end method
