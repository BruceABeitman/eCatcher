.class public abstract Lcom/commonsware/cwac/wakeful/WakefulIntentService;
.super Landroid/app/IntentService;
.source "WakefulIntentService.java"
.field public static final LOCK_NAME_STATIC:Ljava/lang/String; = "com.commonsware.cwac.wakeful.WakefulIntentService"
.field private static lockStatic:Landroid/os/PowerManager$WakeLock;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method

.method public static acquireStaticLock(Landroid/content/Context;)V
.registers 2
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

const-string v1, " < Lcom/commonsware/cwac/wakeful/demo/AppService; acquireWakeLock"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V

return-void
.end method

.method public static releaseStaticLock(Landroid/content/Context;)V
.registers 2
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

const-string v1, " > Lcom/commonsware/cwac/wakeful/demo/AppService; releaseWakeLock"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V

return-void
.end method

.method private static declared-synchronized getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
.registers 5
const-class v2, Lcom/commonsware/cwac/wakeful/WakefulIntentService;
monitor-enter v2
:try_start_3
sget-object v1, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;
if-nez v1, :cond_1e
const-string v1, "power"
invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const/4 v1, 0x1
const-string v3, "com.commonsware.cwac.wakeful.WakefulIntentService"
invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v1
sput-object v1, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;
sget-object v1, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;
const/4 v3, 0x1
invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
:cond_1e
sget-object v1, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_22
monitor-exit v2
return-object v1
:catchall_22
move-exception v1
monitor-exit v2
throw v1
.end method
.method public static sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V
.registers 2
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->acquireStaticLock(Landroid/content/Context;)V
invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public static sendWakefulWork(Landroid/content/Context;Ljava/lang/Class;)V
.registers 3
new-instance v0, Landroid/content/Intent;
invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {p0, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method
.method protected abstract doWakefulWork(Landroid/content/Intent;)V
.end method
.method protected final onHandleIntent(Landroid/content/Intent;)V
.registers 4
:try_start_0
invoke-virtual {p0, p1}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->doWakefulWork(Landroid/content/Intent;)V
:try_end_3
.catchall {:try_start_0 .. :try_end_3} :catchall_b
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->releaseStaticLock(Landroid/content/Context;)V

return-void
:catchall_b
move-exception v0
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
move-result-object v1
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->releaseStaticLock(Landroid/content/Context;)V

throw v0
.end method
.method public onStart(Landroid/content/Intent;I)V
.registers 4
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
move-result v0
if-nez v0, :cond_11
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
invoke-static {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->acquireStaticLock(Landroid/content/Context;)V
:cond_11
invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V
return-void
.end method
