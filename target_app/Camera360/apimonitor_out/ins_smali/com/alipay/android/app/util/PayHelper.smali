.class public Lcom/alipay/android/app/util/PayHelper;
.super Ljava/lang/Object;
.source "PayHelper.java"
.field private mAlixPay:Lcom/alipay/android/app/IAlixPay;
.field private mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;
.field private mContext:Landroid/app/Activity;
.field private mIsPaying:Z
.field private mLock:Ljava/lang/Object;
.field private mServiceConnection:Landroid/content/ServiceConnection;
.method public constructor <init>(Landroid/app/Activity;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/alipay/android/app/util/PayHelper;->mIsPaying:Z
new-instance v0, Lcom/alipay/android/app/util/PayHelper$1;
invoke-direct {v0, p0}, Lcom/alipay/android/app/util/PayHelper$1;-><init>(Lcom/alipay/android/app/util/PayHelper;)V
iput-object v0, p0, Lcom/alipay/android/app/util/PayHelper;->mServiceConnection:Landroid/content/ServiceConnection;
new-instance v0, Lcom/alipay/android/app/util/PayHelper$2;
invoke-direct {v0, p0}, Lcom/alipay/android/app/util/PayHelper$2;-><init>(Lcom/alipay/android/app/util/PayHelper;)V
iput-object v0, p0, Lcom/alipay/android/app/util/PayHelper;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;
iput-object p1, p0, Lcom/alipay/android/app/util/PayHelper;->mContext:Landroid/app/Activity;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/alipay/android/app/util/PayHelper;->mLock:Ljava/lang/Object;
return-void
.end method
.method static synthetic access$0(Lcom/alipay/android/app/util/PayHelper;Lcom/alipay/android/app/IAlixPay;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
return-void
.end method
.method static synthetic access$1(Lcom/alipay/android/app/util/PayHelper;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper;->mLock:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic access$2(Lcom/alipay/android/app/util/PayHelper;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/util/PayHelper;->mContext:Landroid/app/Activity;
return-object v0
.end method
.method private pay(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
.registers 10
const/4 v4, 0x1
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v1, 0x0
iget-boolean v2, p0, Lcom/alipay/android/app/util/PayHelper;->mIsPaying:Z
if-eqz v2, :cond_c
const-string/jumbo v2, ""
:goto_b
return-object v2
:cond_c
iput-boolean v4, p0, Lcom/alipay/android/app/util/PayHelper;->mIsPaying:Z
iget-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
if-nez v2, :cond_1d
iget-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mContext:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/alipay/android/app/util/PayHelper;->mServiceConnection:Landroid/content/ServiceConnection;
invoke-virtual {v2, p2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
:try_start_1d
:cond_1d
iget-object v3, p0, Lcom/alipay/android/app/util/PayHelper;->mLock:Ljava/lang/Object;
monitor-enter v3
:try_end_20
.catchall {:try_start_1d .. :try_end_20} :catchall_61
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_4f
:try_start_20
iget-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
if-nez v2, :cond_29
iget-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mLock:Ljava/lang/Object;
invoke-virtual {v2}, Ljava/lang/Object;->wait()V
:cond_29
monitor-exit v3
:try_start_2a
:try_end_2a
.catchall {:try_start_20 .. :try_end_2a} :catchall_4c
iget-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
iget-object v3, p0, Lcom/alipay/android/app/util/PayHelper;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;
invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
iget-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
invoke-interface {v2, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
iget-object v3, p0, Lcom/alipay/android/app/util/PayHelper;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;
invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
const/4 v2, 0x0
iput-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
:try_end_41
.catchall {:try_start_2a .. :try_end_41} :catchall_61
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_41} :catch_4f
:try_start_41
iget-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mContext:Landroid/app/Activity;
iget-object v3, p0, Lcom/alipay/android/app/util/PayHelper;->mServiceConnection:Landroid/content/ServiceConnection;
invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
:try_end_48
.catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_70
:goto_48
iput-boolean v6, p0, Lcom/alipay/android/app/util/PayHelper;->mIsPaying:Z
:goto_4a
move-object v2, v1
goto :goto_b
:catchall_4c
move-exception v2
:try_start_4d
monitor-exit v3
:try_start_4e
:try_end_4e
.catchall {:try_start_4d .. :try_end_4e} :catchall_4c
throw v2
:try_end_4f
.catchall {:try_start_4e .. :try_end_4f} :catchall_61
.catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4f} :catch_4f
:catch_4f
move-exception v0
:try_start_50
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_start_53
:try_end_53
.catchall {:try_start_50 .. :try_end_53} :catchall_61
iget-object v2, p0, Lcom/alipay/android/app/util/PayHelper;->mContext:Landroid/app/Activity;
iget-object v3, p0, Lcom/alipay/android/app/util/PayHelper;->mServiceConnection:Landroid/content/ServiceConnection;
invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
:try_end_5a
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_5d
:goto_5a
iput-boolean v6, p0, Lcom/alipay/android/app/util/PayHelper;->mIsPaying:Z
goto :goto_4a
:catch_5d
move-exception v0
iput-object v5, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
goto :goto_5a
:catchall_61
move-exception v2
:try_start_62
iget-object v3, p0, Lcom/alipay/android/app/util/PayHelper;->mContext:Landroid/app/Activity;
iget-object v4, p0, Lcom/alipay/android/app/util/PayHelper;->mServiceConnection:Landroid/content/ServiceConnection;
invoke-virtual {v3, v4}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
:try_end_69
.catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_6c
:goto_69
iput-boolean v6, p0, Lcom/alipay/android/app/util/PayHelper;->mIsPaying:Z
throw v2
:catch_6c
move-exception v0
iput-object v5, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
goto :goto_69
:catch_70
move-exception v0
iput-object v5, p0, Lcom/alipay/android/app/util/PayHelper;->mAlixPay:Lcom/alipay/android/app/IAlixPay;
goto :goto_48
.end method
.method public pay4Client(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.eg.android.AlipayGphone.IAlixPay"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/util/PayHelper;->pay(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public pay4Msp(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/alipay/android/app/IAlixPay;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/util/PayHelper;->pay(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method