.class Lorg/apache/commons/io/ThreadMonitor;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final thread:Ljava/lang/Thread;

.field private final timeout:J


# direct methods
.method private constructor <init>(Ljava/lang/Thread;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    iput-wide p2, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:J

    return-void
.end method

.method public static start(J)Ljava/lang/Thread;
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/apache/commons/io/ThreadMonitor;->start(Ljava/lang/Thread;J)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static start(Ljava/lang/Thread;J)Ljava/lang/Thread;
    .registers 7

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1e

    new-instance v1, Lorg/apache/commons/io/ThreadMonitor;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/io/ThreadMonitor;-><init>(Ljava/lang/Thread;J)V

    new-instance v0, Ljava/lang/Thread;

    const-class v2, Lorg/apache/commons/io/ThreadMonitor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1e
    return-object v0
.end method

.method public static stop(Ljava/lang/Thread;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method
