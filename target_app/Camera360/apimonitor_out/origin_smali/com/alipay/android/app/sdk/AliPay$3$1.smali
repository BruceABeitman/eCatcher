.class Lcom/alipay/android/app/sdk/AliPay$3$1;
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

.field private final synthetic val$isWap:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/sdk/AliPay$3;Z)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay$3$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;

    iput-boolean p2, p0, Lcom/alipay/android/app/sdk/AliPay$3$1;->val$isWap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    iget-boolean v4, p0, Lcom/alipay/android/app/sdk/AliPay$3$1;->val$isWap:Z

    if-eqz v4, :cond_4b

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/alipay/android/app/sdk/AliPay$3$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;

    #getter for: Lcom/alipay/android/app/sdk/AliPay$3;->this$0:Lcom/alipay/android/app/sdk/AliPay;
    invoke-static {v4}, Lcom/alipay/android/app/sdk/AliPay$3;->access$0(Lcom/alipay/android/app/sdk/AliPay$3;)Lcom/alipay/android/app/sdk/AliPay;

    move-result-object v4

    #getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
    invoke-static {v4}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/alipay/android/app/sdk/WapPayActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "url"

    iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay$3$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;

    #getter for: Lcom/alipay/android/app/sdk/AliPay$3;->this$0:Lcom/alipay/android/app/sdk/AliPay;
    invoke-static {v5}, Lcom/alipay/android/app/sdk/AliPay$3;->access$0(Lcom/alipay/android/app/sdk/AliPay$3;)Lcom/alipay/android/app/sdk/AliPay;

    move-result-object v5

    #getter for: Lcom/alipay/android/app/sdk/AliPay;->mUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/android/app/sdk/AliPay;->access$2(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "timeout"

    iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay$3$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;

    #getter for: Lcom/alipay/android/app/sdk/AliPay$3;->this$0:Lcom/alipay/android/app/sdk/AliPay;
    invoke-static {v5}, Lcom/alipay/android/app/sdk/AliPay$3;->access$0(Lcom/alipay/android/app/sdk/AliPay$3;)Lcom/alipay/android/app/sdk/AliPay;

    move-result-object v5

    #getter for: Lcom/alipay/android/app/sdk/AliPay;->mTimeout:I
    invoke-static {v5}, Lcom/alipay/android/app/sdk/AliPay;->access$3(Lcom/alipay/android/app/sdk/AliPay;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/alipay/android/app/sdk/AliPay$3$1;->this$1:Lcom/alipay/android/app/sdk/AliPay$3;

    #getter for: Lcom/alipay/android/app/sdk/AliPay$3;->this$0:Lcom/alipay/android/app/sdk/AliPay;
    invoke-static {v4}, Lcom/alipay/android/app/sdk/AliPay$3;->access$0(Lcom/alipay/android/app/sdk/AliPay$3;)Lcom/alipay/android/app/sdk/AliPay;

    move-result-object v4

    #getter for: Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
    invoke-static {v4}, Lcom/alipay/android/app/sdk/AliPay;->access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_4a
    return-void

    :cond_4b
    sget-object v5, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;

    monitor-enter v5

    const/16 v4, 0x1771

    :try_start_50
    invoke-static {v4}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I

    move-result v4

    invoke-virtual {v3}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static {v4, v6, v7}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/sdk/Result;->setPayResult(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_6d

    :try_start_66
    sget-object v4, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_70

    :goto_6b
    :try_start_6b
    monitor-exit v5

    goto :goto_4a

    :catchall_6d
    move-exception v4

    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_6d

    throw v4

    :catch_70
    move-exception v0

    :try_start_71
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6d

    goto :goto_6b
.end method
