.class public abstract Lcom/instagram/common/q/b/a;
.super Landroid/app/IntentService;
.source "C2DMBaseReceiver.java"
.field private static a:Landroid/os/PowerManager$WakeLock;
.method public constructor <init>()V
.registers 2
const-string v0, "C2DMBaseReceiverWorker"
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method private static a()V
.registers 1
sget-object v0, Lcom/instagram/common/q/b/a;->a:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
move-result v0
if-eqz v0, :cond_d
sget-object v0, Lcom/instagram/common/q/b/a;->a:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_d
return-void
.end method
.method private static a(Landroid/content/Context;)V
.registers 4
sget-object v0, Lcom/instagram/common/q/b/a;->a:Landroid/os/PowerManager$WakeLock;
if-nez v0, :cond_15
const-string v0, "power"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const/4 v1, 0x1
const-string v2, "C2DM_LIB"
invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
sput-object v0, Lcom/instagram/common/q/b/a;->a:Landroid/os/PowerManager$WakeLock;
:cond_15
return-void
.end method
.method private a(Landroid/content/Context;Landroid/content/Intent;)V
.registers 10
const/4 v4, 0x0
const-string v0, "registration_id"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "error"
invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "unregistered"
invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_19
invoke-static {p1}, Lcom/instagram/common/q/b/c;->b(Landroid/content/Context;)V
:cond_18
:goto_18
return-void
:cond_19
if-eqz v1, :cond_6b
invoke-static {p1}, Lcom/instagram/common/q/b/c;->b(Landroid/content/Context;)V
const-string v0, "C2DM"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Registration error "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lcom/instagram/common/q/b/a;->a(Ljava/lang/String;)V
const-string v0, "SERVICE_NOT_AVAILABLE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
invoke-static {p1}, Lcom/instagram/common/q/b/c;->a(Landroid/content/Context;)J
move-result-wide v1
new-instance v0, Landroid/content/Intent;
invoke-static {p1}, Lcom/instagram/common/q/b/f;->a(Landroid/content/Context;)Lcom/instagram/common/q/b/e;
move-result-object v3
invoke-interface {v3}, Lcom/instagram/common/q/b/e;->d()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
const-string v0, "alarm"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
const/4 v4, 0x3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v5
add-long/2addr v5, v1
invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
const-wide/16 v3, 0x2
mul-long v0, v1, v3
invoke-static {p1, v0, v1}, Lcom/instagram/common/q/b/c;->a(Landroid/content/Context;J)V
goto :goto_18
:cond_6b
:try_start_6b
invoke-virtual {p0, p1, v0}, Lcom/instagram/common/q/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {p1, v0}, Lcom/instagram/common/q/b/c;->b(Landroid/content/Context;Ljava/lang/String;)V
:try_end_71
.catch Ljava/io/IOException; {:try_start_6b .. :try_end_71} :catch_72
goto :goto_18
:catch_72
move-exception v0
const-string v1, "C2DM"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Registration error "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_18
.end method
.method private static b(Landroid/content/Context;)V
.registers 2
invoke-static {p0}, Lcom/instagram/common/q/b/a;->a(Landroid/content/Context;)V
sget-object v0, Lcom/instagram/common/q/b/a;->a:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
return-void
.end method
.method public abstract a(Landroid/content/Context;Ljava/lang/String;)V
.end method
.method protected abstract a(Landroid/content/Intent;)V
.end method
.method public abstract a(Ljava/lang/String;)V
.end method
.method public final onHandleIntent(Landroid/content/Intent;)V
.registers 6
invoke-static {p0}, Lcom/instagram/common/q/b/a;->b(Landroid/content/Context;)V
:try_start_3
invoke-virtual {p0}, Lcom/instagram/common/q/b/a;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/q/b/f;->a(Landroid/content/Context;)Lcom/instagram/common/q/b/e;
move-result-object v1
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-interface {v1}, Lcom/instagram/common/q/b/e;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_20
invoke-direct {p0, v0, p1}, Lcom/instagram/common/q/b/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
:try_end_1c
.catchall {:try_start_3 .. :try_end_1c} :catchall_32
:goto_1c
:cond_1c
invoke-static {}, Lcom/instagram/common/q/b/a;->a()V
return-void
:try_start_20
:cond_20
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-interface {v1}, Lcom/instagram/common/q/b/e;->e()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_37
invoke-virtual {p0, p1}, Lcom/instagram/common/q/b/a;->a(Landroid/content/Intent;)V
:try_end_31
.catchall {:try_start_20 .. :try_end_31} :catchall_32
goto :goto_1c
:catchall_32
move-exception v0
invoke-static {}, Lcom/instagram/common/q/b/a;->a()V
throw v0
:try_start_37
:cond_37
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-interface {v1}, Lcom/instagram/common/q/b/e;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1c
invoke-interface {v1}, Lcom/instagram/common/q/b/e;->g()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/q/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V
:try_end_4c
.catchall {:try_start_37 .. :try_end_4c} :catchall_32
goto :goto_1c
.end method