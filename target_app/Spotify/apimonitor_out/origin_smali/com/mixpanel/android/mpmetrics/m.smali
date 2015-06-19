.class final Lcom/mixpanel/android/mpmetrics/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private b:Z

.field private c:J

.field private final d:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/m;->a:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/m;->d:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/m;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_43

    :try_start_a
    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/m;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mixpanel/android/mpmetrics/m;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/mixpanel/android/mpmetrics/m;->d:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/m;->b()V

    :cond_22
    iget-boolean v2, p0, Lcom/mixpanel/android/mpmetrics/m;->b:Z

    if-nez v2, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mixpanel/android/mpmetrics/m;->c:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mixpanel/android/mpmetrics/m;->b:Z
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_3c

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/m;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_34
    return v0

    :cond_35
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/m;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_34

    :catchall_3c
    move-exception v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/m;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_43
    move v0, v1

    goto :goto_34
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/m;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/m;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/m;->c:J
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_15

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/m;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/m;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
