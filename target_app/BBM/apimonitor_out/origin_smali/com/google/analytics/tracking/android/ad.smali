.class final Lcom/google/analytics/tracking/android/ad;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/y;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/y;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ad;-><init>(Lcom/google/analytics/tracking/android/y;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    iget-object v0, v0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->b:Lcom/google/analytics/tracking/android/ac;

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    iget-object v0, v0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    iget-wide v0, v0, Lcom/google/analytics/tracking/android/y;->a:J

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    iget-wide v2, v2, Lcom/google/analytics/tracking/android/y;->f:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    iget-object v2, v2, Lcom/google/analytics/tracking/android/y;->e:Lcom/google/analytics/tracking/android/l;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/l;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_32

    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/y;->i()V

    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    iget-object v0, v0, Lcom/google/analytics/tracking/android/y;->d:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/ad;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    invoke-direct {v1, v2}, Lcom/google/analytics/tracking/android/ad;-><init>(Lcom/google/analytics/tracking/android/y;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/y;

    iget-wide v2, v2, Lcom/google/analytics/tracking/android/y;->f:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_31
.end method
