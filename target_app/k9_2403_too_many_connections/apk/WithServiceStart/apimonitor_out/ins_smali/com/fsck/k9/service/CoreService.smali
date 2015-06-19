.class public abstract Lcom/fsck/k9/service/CoreService;
.super Landroid/app/Service;
.source "CoreService.java"
.field public static WAKE_LOCK_ID:Ljava/lang/String;
.field private static wakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;
.field private static wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;
.field private final threadPool:Ljava/util/concurrent/ExecutorService;
.method static constructor <clinit>()V
.registers 2
const-string v0, "com.fsck.k9.service.CoreService.wakeLockId"
sput-object v0, Lcom/fsck/k9/service/CoreService;->WAKE_LOCK_ID:Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lcom/fsck/k9/service/CoreService;->wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/fsck/k9/service/CoreService;->wakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
const/4 v0, 0x1
invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/service/CoreService;->threadPool:Ljava/util/concurrent/ExecutorService;
return-void
.end method
.method protected static addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
const-string v3, "power"
invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const/4 v3, 0x1
const-string v4, "K9"
invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
const-wide/16 v3, 0x7530
invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
sget-object v3, Lcom/fsck/k9/service/CoreService;->wakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
sget-object v3, Lcom/fsck/k9/service/CoreService;->wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v3, Lcom/fsck/k9/service/CoreService;->WAKE_LOCK_ID:Ljava/lang/String;
invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
return-void
.end method
.method protected static addWakeLockId(Landroid/content/Intent;Ljava/lang/Integer;)V
.registers 3
if-eqz p1, :cond_7
sget-object v0, Lcom/fsck/k9/service/BootReceiver;->WAKE_LOCK_ID:Ljava/lang/String;
invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
:cond_7
return-void
.end method
.method public execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V
.registers 11
const-string v3, "power"
invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/PowerManager;
const/4 v3, 0x1
const-string v4, "K9"
invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
int-to-long v3, p3
invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v3, :cond_41
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "CoreService queueing Runnable "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " with startId "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_41
new-instance v0, Lcom/fsck/k9/service/CoreService$1;
invoke-direct {v0, p0, p2, p4, v2}, Lcom/fsck/k9/service/CoreService$1;-><init>(Lcom/fsck/k9/service/CoreService;Ljava/lang/Runnable;Ljava/lang/Integer;Landroid/os/PowerManager$WakeLock;)V
iget-object v3, p0, Lcom/fsck/k9/service/CoreService;->threadPool:Ljava/util/concurrent/ExecutorService;
invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public onDestroy()V
.registers 4
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_2a
const-string v0, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "CoreService: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".onDestroy()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
return-void
.end method
.method public onStart(Landroid/content/Intent;I)V
.registers 12
const/4 v7, -0x1
const-string v8, "k9"
const-string v5, "power"
invoke-virtual {p0, v5}, Lcom/fsck/k9/service/CoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/PowerManager;
const/4 v5, 0x1
const-string v6, "K9"
invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v3
const/4 v5, 0x0
invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
const-wide/16 v5, 0x7530
invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v5, :cond_53
const-string v5, "k9"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "CoreService: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ".onStart("
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ", "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_53
sget-object v5, Lcom/fsck/k9/service/BootReceiver;->WAKE_LOCK_ID:Ljava/lang/String;
invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v4
if-eq v4, v7, :cond_5e
invoke-static {p0, v4}, Lcom/fsck/k9/service/BootReceiver;->releaseWakeLock(Landroid/content/Context;I)V
:cond_5e
sget-object v5, Lcom/fsck/k9/service/CoreService;->WAKE_LOCK_ID:Ljava/lang/String;
invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
if-eqz v1, :cond_bb
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v5
if-eq v5, v7, :cond_bb
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v5, :cond_8c
const-string v5, "k9"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Got core wake lock id "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_8c
sget-object v5, Lcom/fsck/k9/service/CoreService;->wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager$WakeLock;
if-eqz v0, :cond_bb
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v5, :cond_b8
const-string v5, "k9"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Found core wake lock with id "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ", releasing"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_b8
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_bb
:try_start_bb
invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/service/CoreService;->startService(Landroid/content/Intent;I)V
:try_end_c1
.catchall {:try_start_bb .. :try_end_c1} :catchall_c7
if-eqz v3, :cond_c6
invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_c6
return-void
:catchall_c7
move-exception v5
if-eqz v3, :cond_cd
invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_cd
throw v5
.end method
.method public abstract startService(Landroid/content/Intent;I)V
.end method