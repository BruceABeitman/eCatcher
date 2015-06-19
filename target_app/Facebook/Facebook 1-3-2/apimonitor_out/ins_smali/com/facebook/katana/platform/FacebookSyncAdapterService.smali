.class public Lcom/facebook/katana/platform/FacebookSyncAdapterService;
.super Landroid/app/Service;
.source "FacebookSyncAdapterService.java"
.field private static final IS_TAG_LOGGABLE_DEBUG:Z = false
.field private static final MESSAGE_CLEANUP_DONE:I = 0x4
.field private static final MESSAGE_START:I = 0x1
.field private static final MESSAGE_SYNC_BEGIN:I = 0x2
.field private static final MESSAGE_SYNC_END:I = 0x3
.field private static final TAG:Ljava/lang/String; = "FBSyncAdapter"
.field private static sSyncAdapter:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
.field private static final sSyncAdapterLock:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 2
const-string v0, "FBSyncAdapter"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
sput-boolean v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->IS_TAG_LOGGABLE_DEBUG:Z
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;
const/4 v0, 0x0
sput-object v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->sSyncAdapter:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Service;-><init>()V
return-void
.end method
.method static synthetic access$0()Z
.registers 1
sget-boolean v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->IS_TAG_LOGGABLE_DEBUG:Z
return v0
.end method
.method public static requestSync(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
new-instance v0, Landroid/accounts/Account;
const-string v1, "com.facebook.auth.login"
invoke-direct {v0, v1, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "com.android.contacts"
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
sget-object v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->sSyncAdapter:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
invoke-virtual {v0}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;
move-result-object v0
return-object v0
.end method
.method public onCreate()V
.registers 5
const-string v1, " + Lcom/facebook/katana/platform/FacebookSyncAdapterService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->sSyncAdapter:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
if-nez v1, :cond_17
new-instance v1, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
invoke-virtual {p0}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->getApplicationContext()Landroid/content/Context;
move-result-object v2
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
invoke-direct {v1, p0, v2, v3}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;-><init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService;Landroid/content/Context;Landroid/os/Handler;)V
sput-object v1, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->sSyncAdapter:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
:cond_17
monitor-exit v0
const-string v1, " - Lcom/facebook/katana/platform/FacebookSyncAdapterService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_19
move-exception v1
monitor-exit v0
:try_end_1b
.catchall {:try_start_3 .. :try_end_1b} :catchall_19
throw v1
.end method