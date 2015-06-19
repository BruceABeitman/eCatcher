.class Lcom/alipay/android/app/util/PayHelper$1;
.super Ljava/lang/Object;
.source "PayHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/util/PayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/util/PayHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/util/PayHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;

    #getter for: Lcom/alipay/android/app/util/PayHelper;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alipay/android/app/util/PayHelper;->access$1(Lcom/alipay/android/app/util/PayHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    #setter for: Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
    invoke-static {v0, v2}, Lcom/alipay/android/app/util/PayHelper;->access$0(Lcom/alipay/android/app/util/PayHelper;Lcom/alipay/android/app/IAlixPay;)V

    iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;

    #getter for: Lcom/alipay/android/app/util/PayHelper;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alipay/android/app/util/PayHelper;->access$1(Lcom/alipay/android/app/util/PayHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper$1;->this$0:Lcom/alipay/android/app/util/PayHelper;

    const/4 v1, 0x0

    #setter for: Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
    invoke-static {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->access$0(Lcom/alipay/android/app/util/PayHelper;Lcom/alipay/android/app/IAlixPay;)V

    return-void
.end method
