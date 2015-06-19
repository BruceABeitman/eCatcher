.class Lcom/google/android/gms/analytics/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/d;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/r;

.field private b:Ljava/util/Timer;

.field private c:Ljava/util/TimerTask;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:J

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/gms/analytics/at;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/r;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/s;->d:Z

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/s;->e:Z

    iput v2, p0, Lcom/google/android/gms/analytics/s;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/s;->g:J

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/s;->h:Z

    new-instance v0, Lcom/google/android/gms/analytics/s$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/s$1;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/r;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->j:Lcom/google/android/gms/analytics/at;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/s;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/s;->d:Z

    return p1
.end method

.method private e()V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/analytics/c;->a()Lcom/google/android/gms/analytics/c;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "GoogleAnalytics isn\'t initialized for the Tracker!"

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->a(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-wide v1, p0, Lcom/google/android/gms/analytics/s;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_18

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/s;->e:Z

    if-eqz v1, :cond_22

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/r;

    invoke-static {v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/d;)V

    goto :goto_b

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/r;

    invoke-static {v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/c;->b(Lcom/google/android/gms/analytics/d;)V

    goto :goto_b
.end method

.method private declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->b:Ljava/util/Timer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->b:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/analytics/s;->g:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/analytics/s;->g:J

    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->e()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->ai:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->f()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->d:Z

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/google/android/gms/analytics/s;->f:I

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/s;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    iput-boolean v3, p0, Lcom/google/android/gms/analytics/s;->h:Z

    :cond_1d
    iput-boolean v3, p0, Lcom/google/android/gms/analytics/s;->d:Z

    iget v0, p0, Lcom/google/android/gms/analytics/s;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/s;->f:I

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->e:Z

    if-eqz v0, :cond_62

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "&t"

    const-string v2, "appview"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/bl;->a(Z)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/r;

    const-string v3, "&cd"

    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/r;

    invoke-static {v0}, Lcom/google/android/gms/analytics/r;->b(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/ah;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/r;

    invoke-static {v0}, Lcom/google/android/gms/analytics/r;->b(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ah;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    :goto_52
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/r;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Z)V

    :cond_62
    return-void

    :cond_63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_52
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/s;->e:Z

    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->e()V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->aj:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    iget v0, p0, Lcom/google/android/gms/analytics/s;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/analytics/s;->f:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/analytics/s;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/s;->f:I

    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->j:Lcom/google/android/gms/analytics/at;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/at;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/s;->i:J

    iget v0, p0, Lcom/google/android/gms/analytics/s;->f:I

    if-nez v0, :cond_41

    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->f()V

    new-instance v0, Lcom/google/android/gms/analytics/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/analytics/t;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/r$1;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->c:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "waitForActivityStart"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/android/gms/analytics/s;->c:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_41
    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->e:Z

    return v0
.end method

.method public c()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/s;->h:Z

    return v0
.end method

.method d()Z
    .registers 7

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/google/android/gms/analytics/s;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    iget-wide v0, p0, Lcom/google/android/gms/analytics/s;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->j:Lcom/google/android/gms/analytics/at;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/at;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/analytics/s;->i:J

    iget-wide v4, p0, Lcom/google/android/gms/analytics/s;->g:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method
