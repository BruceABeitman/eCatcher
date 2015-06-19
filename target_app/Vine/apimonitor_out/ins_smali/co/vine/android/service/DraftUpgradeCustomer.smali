.class public Lco/vine/android/service/DraftUpgradeCustomer;
.super Ljava/lang/Object;
.source "DraftUpgradeCustomer.java"
.field public count:I
.field private mBound:Z
.field private mConnection:Landroid/content/ServiceConnection;
.field private final mContext:Landroid/content/Context;
.field private final mCountChangeRunnable:Ljava/lang/Runnable;
.field private final mHandler:Landroid/os/Handler;
.field private mIsCountRequested:Z
.field private final mMessenger:Landroid/os/Messenger;
.field public mService:Landroid/os/Messenger;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lco/vine/android/service/DraftUpgradeCustomer$1;
invoke-direct {v0, p0}, Lco/vine/android/service/DraftUpgradeCustomer$1;-><init>(Lco/vine/android/service/DraftUpgradeCustomer;)V
iput-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mHandler:Landroid/os/Handler;
new-instance v0, Landroid/os/Messenger;
iget-object v1, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mHandler:Landroid/os/Handler;
invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mMessenger:Landroid/os/Messenger;
new-instance v0, Lco/vine/android/service/DraftUpgradeCustomer$2;
invoke-direct {v0, p0}, Lco/vine/android/service/DraftUpgradeCustomer$2;-><init>(Lco/vine/android/service/DraftUpgradeCustomer;)V
iput-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mConnection:Landroid/content/ServiceConnection;
iput-object p1, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mContext:Landroid/content/Context;
iput-object p2, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mCountChangeRunnable:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/service/DraftUpgradeCustomer;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mCountChangeRunnable:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic access$102(Lco/vine/android/service/DraftUpgradeCustomer;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mBound:Z
return p1
.end method
.method static synthetic access$200(Lco/vine/android/service/DraftUpgradeCustomer;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mIsCountRequested:Z
return v0
.end method
.method public onStart()V
.registers 5
const-string v1, " + Lco/vine/android/service/DraftUpgradeCustomer; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mContext:Landroid/content/Context;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mContext:Landroid/content/Context;
const-class v3, Lco/vine/android/service/VineUploadService;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "action_get_draft_count"
invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
iget-object v2, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mConnection:Landroid/content/ServiceConnection;
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
const-string v1, " - Lco/vine/android/service/DraftUpgradeCustomer; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lco/vine/android/service/DraftUpgradeCustomer; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-boolean v0, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mBound:Z
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mContext:Landroid/content/Context;
iget-object v1, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mConnection:Landroid/content/ServiceConnection;
invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mBound:Z
:cond_e
const-string v1, " - Lco/vine/android/service/DraftUpgradeCustomer; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public requestCount()V
.registers 7
iget-object v2, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mService:Landroid/os/Messenger;
if-eqz v2, :cond_21
const/4 v2, 0x0
:try_start_5
iput-boolean v2, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mIsCountRequested:Z
const/4 v2, 0x0
const/16 v3, 0x8
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;
move-result-object v1
iget-object v2, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mMessenger:Landroid/os/Messenger;
iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
iget-object v2, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mService:Landroid/os/Messenger;
invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:try_end_19
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1a
:goto_19
return-void
:catch_1a
move-exception v0
const-string v2, "Failed to request count."
invoke-static {v2, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_19
:cond_21
const/4 v2, 0x1
iput-boolean v2, p0, Lco/vine/android/service/DraftUpgradeCustomer;->mIsCountRequested:Z
goto :goto_19
.end method