.class public Lcom/fsck/k9/service/CoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CoreReceiver.java"


# static fields
.field public static WAKE_LOCK_ID:Ljava/lang/String;

.field public static WAKE_LOCK_RELEASE:Ljava/lang/String;

.field private static wakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.fsck.k9.service.CoreReceiver.wakeLockRelease"

    sput-object v0, Lcom/fsck/k9/service/CoreReceiver;->WAKE_LOCK_RELEASE:Ljava/lang/String;

    const-string v0, "com.fsck.k9.service.CoreReceiver.wakeLockId"

    sput-object v0, Lcom/fsck/k9/service/CoreReceiver;->WAKE_LOCK_ID:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/service/CoreReceiver;->wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fsck/k9/service/CoreReceiver;->wakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getWakeLock(Landroid/content/Context;)Ljava/lang/Integer;
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

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    sget-object v3, Lcom/fsck/k9/service/CoreReceiver;->wakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/fsck/k9/service/CoreReceiver;->wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_44

    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CoreReceiver Created wakeLock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return-object v1
.end method

.method public static releaseWakeLock(Landroid/content/Context;I)V
    .registers 6

    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_1c

    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoreReceiver Got request to release wakeLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/fsck/k9/service/CoreReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/fsck/k9/service/CoreReceiver;->WAKE_LOCK_RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/fsck/k9/service/CoreReceiver;->WAKE_LOCK_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static releaseWakeLock(Ljava/lang/Integer;)V
    .registers 5

    const-string v3, "k9"

    if-eqz p0, :cond_2d

    sget-object v1, Lcom/fsck/k9/service/CoreReceiver;->wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2e

    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoreReceiver Releasing wakeLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    const-string v1, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BootReceiver WakeLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v5, -0x1

    const-string v2, "k9"

    invoke-static {p1}, Lcom/fsck/k9/service/CoreReceiver;->getWakeLock(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    :try_start_7
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_23

    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CoreReceiver.onReceive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    sget-object v2, Lcom/fsck/k9/service/CoreReceiver;->WAKE_LOCK_RELEASE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    sget-object v2, Lcom/fsck/k9/service/CoreReceiver;->WAKE_LOCK_ID:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_5f

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_5c

    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CoreReceiver Release wakeLock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    invoke-static {v1}, Lcom/fsck/k9/service/CoreReceiver;->releaseWakeLock(Ljava/lang/Integer;)V
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_68

    :cond_5f
    :goto_5f
    invoke-static {v0}, Lcom/fsck/k9/service/CoreReceiver;->releaseWakeLock(Ljava/lang/Integer;)V

    return-void

    :cond_63
    :try_start_63
    invoke-virtual {p0, p1, p2, v0}, Lcom/fsck/k9/service/CoreReceiver;->receive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_68

    move-result-object v0

    goto :goto_5f

    :catchall_68
    move-exception v2

    invoke-static {v0}, Lcom/fsck/k9/service/CoreReceiver;->releaseWakeLock(Ljava/lang/Integer;)V

    throw v2
.end method

.method public receive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    return-object p3
.end method
