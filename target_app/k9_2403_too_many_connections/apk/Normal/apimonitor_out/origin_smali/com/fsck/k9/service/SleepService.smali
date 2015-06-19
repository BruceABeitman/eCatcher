.class public Lcom/fsck/k9/service/SleepService;
.super Lcom/fsck/k9/service/CoreService;
.source "SleepService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/service/SleepService$1;,
        Lcom/fsck/k9/service/SleepService$SleepDatum;
    }
.end annotation


# static fields
.field private static ALARM_FIRED:Ljava/lang/String;

.field private static LATCH_ID:Ljava/lang/String;

.field private static latchId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sleepData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/service/SleepService$SleepDatum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "com.fsck.k9.service.SleepService.ALARM_FIRED"

    sput-object v0, Lcom/fsck/k9/service/SleepService;->ALARM_FIRED:Ljava/lang/String;

    const-string v0, "com.fsck.k9.service.SleepService.LATCH_ID_EXTRA"

    sput-object v0, Lcom/fsck/k9/service/SleepService;->LATCH_ID:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/service/SleepService;->sleepData:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/fsck/k9/service/SleepService;->latchId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V

    return-void
.end method

.method private static endSleep(Ljava/lang/Integer;)V
    .registers 6

    const-string v4, "k9"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    sget-object v2, Lcom/fsck/k9/service/SleepService;->sleepData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/service/SleepService$SleepDatum;

    if-eqz v1, :cond_53

    iget-object v0, v1, Lcom/fsck/k9/service/SleepService$SleepDatum;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_33

    const-string v2, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SleepService No CountDownLatch available with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    invoke-static {v1}, Lcom/fsck/k9/service/SleepService;->reacquireWakeLock(Lcom/fsck/k9/service/SleepService$SleepDatum;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_4f

    const-string v2, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SleepService Counting down CountDownLatch with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2f

    :cond_53
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_32

    const-string v2, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SleepService Sleep for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private static reacquireWakeLock(Lcom/fsck/k9/service/SleepService$SleepDatum;)V
    .registers 7

    iget-object v2, p0, Lcom/fsck/k9/service/SleepService$SleepDatum;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2d

    monitor-enter v2

    :try_start_5
    iget-wide v0, p0, Lcom/fsck/k9/service/SleepService$SleepDatum;->timeout:J

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_29

    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SleepService Acquring wakeLock for id for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    monitor-exit v2

    :cond_2d
    return-void

    :catchall_2e
    move-exception v3

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public static sleep(Landroid/content/Context;JLandroid/os/PowerManager$WakeLock;J)V
    .registers 15

    sget-object v0, Lcom/fsck/k9/service/SleepService;->latchId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_38

    const-string v0, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SleepService Preparing CountDownLatch with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    new-instance v5, Lcom/fsck/k9/service/SleepService$SleepDatum;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/fsck/k9/service/SleepService$SleepDatum;-><init>(Lcom/fsck/k9/service/SleepService$1;)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v5, Lcom/fsck/k9/service/SleepService$SleepDatum;->latch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Lcom/fsck/k9/service/SleepService;->sleepData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.fsck.k9.service.SleepService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/fsck/k9/service/SleepService;->LATCH_ID:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fsck/k9/service/SleepService;->ALARM_FIRED:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v3, v6, p1

    invoke-static {p0, v3, v4, v0}, Lcom/fsck/k9/service/BootReceiver;->scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V

    if-eqz p3, :cond_8c

    iput-object p3, v5, Lcom/fsck/k9/service/SleepService$SleepDatum;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iput-wide p4, v5, Lcom/fsck/k9/service/SleepService$SleepDatum;->timeout:J

    invoke-virtual {p3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8c
    :try_start_8c
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_136

    sget-boolean p0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz p0, :cond_c2

    const-string p0, "k9"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SleepService latch timed out for id = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", thread "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    sget-object p0, Lcom/fsck/k9/service/SleepService;->sleepData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/service/SleepService$SleepDatum;
    :try_end_ca
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_ca} :catch_126

    if-eqz p0, :cond_d4

    :try_start_cc
    invoke-static {p0}, Lcom/fsck/k9/service/SleepService;->reacquireWakeLock(Lcom/fsck/k9/service/SleepService$SleepDatum;)V

    sget-object p3, Lcom/fsck/k9/service/SleepService;->sleepData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d4
    .catch Ljava/lang/InterruptedException; {:try_start_cc .. :try_end_d4} :catch_131

    :cond_d4
    :goto_d4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v6

    sget-boolean p0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz p0, :cond_ff

    const-string p0, "k9"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SleepService requested sleep time was "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, ", actual was "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p0, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ff
    cmp-long p0, p3, p1

    if-gez p0, :cond_125

    const-string p0, "k9"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SleepService sleep time too short: requested was "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", actual was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_125
    return-void

    :catch_126
    move-exception p0

    move-object p3, v5

    :goto_128
    const-string p4, "k9"

    const-string p5, "SleepService Interrupted"

    invoke-static {p4, p5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, p3

    goto :goto_d4

    :catch_131
    move-exception p3

    move-object v8, p3

    move-object p3, p0

    move-object p0, v8

    goto :goto_128

    :cond_136
    move-object p0, v5

    goto :goto_d4
.end method


# virtual methods
.method public startService(Landroid/content/Intent;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fsck/k9/service/SleepService;->ALARM_FIRED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/fsck/k9/service/SleepService;->LATCH_ID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/service/SleepService;->endSleep(Ljava/lang/Integer;)V

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/fsck/k9/service/SleepService;->stopSelf(I)V

    return-void
.end method
