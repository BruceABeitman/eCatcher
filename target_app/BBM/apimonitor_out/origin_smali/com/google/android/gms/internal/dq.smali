.class public final Lcom/google/android/gms/internal/dq;
.super Lcom/google/android/gms/internal/eh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/eh",
        "<",
        "Lcom/google/android/gms/internal/ds;",
        ">;"
    }
.end annotation


# static fields
.field private static final xE:Lcom/google/android/gms/internal/du;

.field private static final xU:Ljava/lang/Object;

.field private static final xV:Ljava/lang/Object;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final wz:Lcom/google/android/gms/cast/Cast$Listener;

.field private xF:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final xG:Lcom/google/android/gms/cast/CastDevice;

.field private final xH:Lcom/google/android/gms/internal/dt;

.field private final xI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final xJ:J

.field private xK:Ljava/lang/String;

.field private xL:Z

.field private xM:Z

.field private final xN:Ljava/util/concurrent/atomic/AtomicLong;

.field private xO:Ljava/lang/String;

.field private xP:Ljava/lang/String;

.field private xQ:Landroid/os/Bundle;

.field private xR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field private xS:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private xT:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private xe:D

.field private xf:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/du;

    const-string v1, "CastClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dq;->xE:Lcom/google/android/gms/internal/du;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dq;->xU:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dq;->xV:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 16

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p7

    move-object v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/eh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/dq;->xG:Lcom/google/android/gms/cast/CastDevice;

    iput-object p6, p0, Lcom/google/android/gms/internal/dq;->wz:Lcom/google/android/gms/cast/Cast$Listener;

    iput-wide p4, p0, Lcom/google/android/gms/internal/dq;->xJ:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->xI:Ljava/util/Map;

    iput-boolean v6, p0, Lcom/google/android/gms/internal/dq;->xM:Z

    iput-object v5, p0, Lcom/google/android/gms/internal/dq;->xF:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput-object v5, p0, Lcom/google/android/gms/internal/dq;->xK:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dq;->xe:D

    iput-boolean v6, p0, Lcom/google/android/gms/internal/dq;->xf:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->xN:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->xR:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/dq$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dq$1;-><init>(Lcom/google/android/gms/internal/dq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->xH:Lcom/google/android/gms/internal/dt;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->xF:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$c;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->xS:Lcom/google/android/gms/common/api/a$c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dq;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->xO:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dq;Ljava/lang/String;DZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/dq;->a(Ljava/lang/String;DZ)V

    return-void
.end method

.method private a(Ljava/lang/String;DZ)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xK:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->xK:Ljava/lang/String;

    move v0, v1

    :goto_d
    iget-object v3, p0, Lcom/google/android/gms/internal/dq;->wz:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v3, :cond_1c

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->xL:Z

    if-eqz v0, :cond_1c

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->wz:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    :cond_1c
    iget-wide v3, p0, Lcom/google/android/gms/internal/dq;->xe:D

    cmpl-double v0, p2, v3

    if-eqz v0, :cond_56

    iput-wide p2, p0, Lcom/google/android/gms/internal/dq;->xe:D

    move v0, v1

    :goto_25
    iget-boolean v3, p0, Lcom/google/android/gms/internal/dq;->xf:Z

    if-eq p4, v3, :cond_2c

    iput-boolean p4, p0, Lcom/google/android/gms/internal/dq;->xf:Z

    move v0, v1

    :cond_2c
    sget-object v3, Lcom/google/android/gms/internal/dq;->xE:Lcom/google/android/gms/internal/du;

    const-string v4, "hasChange=%b, mFirstStatusUpdate=%b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/google/android/gms/internal/dq;->xL:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->wz:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_53

    if-nez v0, :cond_4e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->xL:Z

    if-eqz v0, :cond_53

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->wz:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    :cond_53
    iput-boolean v2, p0, Lcom/google/android/gms/internal/dq;->xL:Z

    return-void

    :cond_56
    move v0, v2

    goto :goto_25

    :cond_58
    move v0, v2

    goto :goto_d
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dq;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/dq;->xM:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/common/api/a$c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xS:Lcom/google/android/gms/common/api/a$c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$c;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->xT:Lcom/google/android/gms/common/api/a$c;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dq;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->xP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/cast/Cast$Listener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->wz:Lcom/google/android/gms/cast/Cast$Listener;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/dq;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Lcom/google/android/gms/common/api/a$c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/dq;->xU:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xS:Lcom/google/android/gms/common/api/a$c;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xS:Lcom/google/android/gms/common/api/a$c;

    new-instance v2, Lcom/google/android/gms/internal/dq$a;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x7d2

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/dq$a;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    :cond_18
    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->xS:Lcom/google/android/gms/common/api/a$c;

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private db()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->xM:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected to a device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method static synthetic dc()Lcom/google/android/gms/internal/du;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/dq;->xE:Lcom/google/android/gms/internal/du;

    return-object v0
.end method

.method static synthetic dd()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/dq;->xU:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic de()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/dq;->xV:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/dq;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xI:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/cast/CastDevice;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xG:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method private f(Lcom/google/android/gms/common/api/a$c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/dq;->xV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xT:Lcom/google/android/gms/common/api/a$c;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x7d1

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    monitor-exit v1

    :goto_12
    return-void

    :cond_13
    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->xT:Lcom/google/android/gms/common/api/a$c;

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/dq;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xR:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/common/api/a$c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xT:Lcom/google/android/gms/common/api/a$c;

    return-object v0
.end method


# virtual methods
.method public final Q(Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel namespace cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->xI:Ljava/util/Map;

    monitor-enter v1

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xI:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_26

    if-eqz v0, :cond_25

    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ds;->T(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_25} :catch_29

    :cond_25
    :goto_25
    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_29
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/dq;->xE:Lcom/google/android/gms/internal/du;

    const-string v2, "Error unregistering namespace (%s): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/du;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public final a(D)V
    .registers 9

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Volume cannot be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    iget-wide v3, p0, Lcom/google/android/gms/internal/dq;->xe:D

    iget-boolean v5, p0, Lcom/google/android/gms/internal/dq;->xf:Z

    move-wide v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ds;->a(DDZ)V

    return-void
.end method

.method protected final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8

    const/16 v1, 0x3e9

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    if-ne p1, v1, :cond_21

    :cond_8
    iput-boolean v3, p0, Lcom/google/android/gms/internal/dq;->xM:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/dq;->xL:Z

    :goto_c
    if-ne p1, v1, :cond_1d

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/dq;->xQ:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->xQ:Landroid/os/Bundle;

    const-string v2, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move p1, v0

    :cond_1d
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/eh;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->xM:Z

    goto :goto_c
.end method

.method protected final a(Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/eh$e;)V
    .registers 9

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/dq;->xE:Lcom/google/android/gms/internal/du;

    const-string v1, "getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/dq;->xO:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/dq;->xP:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xG:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->putInBundle(Landroid/os/Bundle;)V

    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    iget-wide v1, p0, Lcom/google/android/gms/internal/dq;->xJ:J

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xO:Ljava/lang/String;

    if-eqz v0, :cond_3b

    const-string v0, "last_application_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->xO:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xP:Ljava/lang/String;

    if-eqz v0, :cond_3b

    const-string v0, "last_session_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->xP:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    const v2, 0x41f6b8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xH:Lcom/google/android/gms/internal/dt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dt;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/en;->a(Lcom/google/android/gms/internal/em;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel namespace cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dq;->Q(Ljava/lang/String;)V

    if-eqz p2, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->xI:Ljava/util/Map;

    monitor-enter v1

    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xI:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_26

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ds;->S(Ljava/lang/String;)V

    :cond_25
    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/dq;->f(Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ds;->R(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The message payload cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_20

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid namespace length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x1

    if-le v0, v1, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message exceeds maximum size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->db()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ds;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xR:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/google/android/gms/common/api/a$c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/dq;->d(Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ds;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final aF()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method protected final aG()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/dq;->d(Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ds;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final cY()Landroid/os/Bundle;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xQ:Landroid/os/Bundle;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xQ:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/dq;->xQ:Landroid/os/Bundle;

    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0}, Lcom/google/android/gms/internal/eh;->cY()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_9
.end method

.method public final cZ()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ds;->cZ()V

    return-void
.end method

.method public final da()D
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->db()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/dq;->xe:D

    return-wide v0
.end method

.method public final disconnect()V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->xI:Ljava/util/Map;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_1f

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1c

    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ds;->disconnect()V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1f

    :cond_18
    :goto_18
    invoke-super {p0}, Lcom/google/android/gms/internal/eh;->disconnect()V

    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1

    throw v0
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v0

    :try_start_20
    sget-object v1, Lcom/google/android/gms/internal/dq;->xE:Lcom/google/android/gms/internal/du;

    const-string v2, "Error while disconnecting the controller interface: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_32

    goto :goto_18

    :catchall_32
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/internal/eh;->disconnect()V

    throw v0
.end method

.method public final e(Lcom/google/android/gms/common/api/a$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dq;->f(Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ds;->df()V

    return-void
.end method

.method public final getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->db()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xF:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public final getApplicationStatus()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->db()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->xK:Ljava/lang/String;

    return-object v0
.end method

.method public final isMute()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->db()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->xf:Z

    return v0
.end method

.method protected final synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dq;->v(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ds;

    move-result-object v0

    return-object v0
.end method

.method public final t(Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ds;

    iget-wide v1, p0, Lcom/google/android/gms/internal/dq;->xe:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/dq;->xf:Z

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ds;->a(ZDZ)V

    return-void
.end method

.method protected final v(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ds;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ds$a;->w(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ds;

    move-result-object v0

    return-object v0
.end method
