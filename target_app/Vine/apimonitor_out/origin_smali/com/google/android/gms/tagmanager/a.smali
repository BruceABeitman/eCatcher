.class Lcom/google/android/gms/tagmanager/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/a$a;
    }
.end annotation


# static fields
.field private static aee:Lcom/google/android/gms/tagmanager/a;

.field private static tn:Ljava/lang/Object;


# instance fields
.field private volatile adZ:J

.field private volatile aea:J

.field private volatile aeb:J

.field private final aec:Lcom/google/android/gms/internal/ik;

.field private aed:Lcom/google/android/gms/tagmanager/a$a;

.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final sc:Ljava/lang/Thread;

.field private volatile tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/a;->tn:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/im;->fW()Lcom/google/android/gms/internal/ik;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/a$a;Lcom/google/android/gms/internal/ik;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/a$a;Lcom/google/android/gms/internal/ik;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->adZ:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->aea:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/a;->mClosed:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/a$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/a$1;-><init>(Lcom/google/android/gms/tagmanager/a;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->aed:Lcom/google/android/gms/tagmanager/a$a;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/a;->aec:Lcom/google/android/gms/internal/ik;

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->mContext:Landroid/content/Context;

    :goto_20
    if-eqz p2, :cond_24

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/a;->aed:Lcom/google/android/gms/tagmanager/a$a;

    :cond_24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/tagmanager/a$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/a$2;-><init>(Lcom/google/android/gms/tagmanager/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->sc:Ljava/lang/Thread;

    return-void

    :cond_31
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a;->mContext:Landroid/content/Context;

    goto :goto_20
.end method

.method static J(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/a;
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/a;->aee:Lcom/google/android/gms/tagmanager/a;

    if-nez v0, :cond_18

    sget-object v1, Lcom/google/android/gms/tagmanager/a;->tn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/tagmanager/a;->aee:Lcom/google/android/gms/tagmanager/a;

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/android/gms/tagmanager/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/a;->aee:Lcom/google/android/gms/tagmanager/a;

    sget-object v0, Lcom/google/android/gms/tagmanager/a;->aee:Lcom/google/android/gms/tagmanager/a;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/a;->start()V

    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    :cond_18
    sget-object v0, Lcom/google/android/gms/tagmanager/a;->aee:Lcom/google/android/gms/tagmanager/a;

    return-object v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->kZ()V

    return-void
.end method

.method private kZ()V
    .registers 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/a;->mClosed:Z

    if-nez v0, :cond_1e

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->aed:Lcom/google/android/gms/tagmanager/a$a;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/a$a;->lb()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->adZ:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_5

    :catch_17
    move-exception v0

    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->B(Ljava/lang/String;)V

    goto :goto_5

    :cond_1e
    return-void
.end method

.method private la()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->aec:Lcom/google/android/gms/internal/ik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ik;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/a;->aeb:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/a;->aea:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/a;->interrupt()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->aec:Lcom/google/android/gms/internal/ik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ik;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->aeb:J

    goto :goto_f
.end method


# virtual methods
.method interrupt()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->sc:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public isLimitAdTrackingEnabled()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->la()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    goto :goto_8
.end method

.method public kY()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->la()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method start()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->sc:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
