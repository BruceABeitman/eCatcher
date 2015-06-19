.class Lcom/google/android/gms/tagmanager/o;
.super Ljava/lang/Object;


# static fields
.field private static j:Ljava/lang/Object;

.field private static k:Lcom/google/android/gms/tagmanager/o;


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:Z

.field private volatile d:Lcom/google/android/gms/ads/a/b;

.field private volatile e:J

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/internal/je;

.field private final h:Ljava/lang/Thread;

.field private i:Lcom/google/android/gms/tagmanager/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/o;->j:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/jg;->b()Lcom/google/android/gms/internal/je;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/p;Lcom/google/android/gms/internal/je;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/p;Lcom/google/android/gms/internal/je;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/o;->a:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/o;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/o;->c:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/o$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/o$1;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->i:Lcom/google/android/gms/tagmanager/p;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/o;->g:Lcom/google/android/gms/internal/je;

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->f:Landroid/content/Context;

    :goto_20
    if-eqz p2, :cond_24

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/o;->i:Lcom/google/android/gms/tagmanager/p;

    :cond_24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/tagmanager/o$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/o$2;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->h:Ljava/lang/Thread;

    return-void

    :cond_31
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->f:Landroid/content/Context;

    goto :goto_20
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->f:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/o;
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/o;->k:Lcom/google/android/gms/tagmanager/o;

    if-nez v0, :cond_18

    sget-object v1, Lcom/google/android/gms/tagmanager/o;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/tagmanager/o;->k:Lcom/google/android/gms/tagmanager/o;

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/android/gms/tagmanager/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/o;->k:Lcom/google/android/gms/tagmanager/o;

    sget-object v0, Lcom/google/android/gms/tagmanager/o;->k:Lcom/google/android/gms/tagmanager/o;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->d()V

    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    :cond_18
    sget-object v0, Lcom/google/android/gms/tagmanager/o;->k:Lcom/google/android/gms/tagmanager/o;

    return-object v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->e()V

    return-void
.end method

.method private e()V
    .registers 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/o;->c:Z

    if-nez v0, :cond_1e

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->i:Lcom/google/android/gms/tagmanager/p;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/p;->a()Lcom/google/android/gms/ads/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->d:Lcom/google/android/gms/ads/a/b;

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/o;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_5

    :catch_17
    move-exception v0

    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_1e
    return-void
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->g:Lcom/google/android/gms/internal/je;

    invoke-interface {v0}, Lcom/google/android/gms/internal/je;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/o;->e:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/o;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/o;->c()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->g:Lcom/google/android/gms/internal/je;

    invoke-interface {v0}, Lcom/google/android/gms/internal/je;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/o;->e:J

    goto :goto_f
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->f()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->d:Lcom/google/android/gms/ads/a/b;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->d:Lcom/google/android/gms/ads/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public b()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->f()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->d:Lcom/google/android/gms/ads/a/b;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->d:Lcom/google/android/gms/ads/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/b;->b()Z

    move-result v0

    goto :goto_8
.end method

.method c()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method d()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
