.class public final Lcom/google/android/gms/internal/gs;
.super Ljava/lang/Object;


# static fields
.field private static final BD:Lcom/google/android/gms/internal/go;

.field public static final CK:Ljava/lang/Object;


# instance fields
.field private CG:J

.field private CH:J

.field private CI:J

.field private CJ:Lcom/google/android/gms/internal/gr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/go;

    const-string v1, "RequestTracker"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/go;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gs;->BD:Lcom/google/android/gms/internal/go;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gs;->CK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/gs;->CG:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/gs;->CH:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gs;->CI:J

    return-void
.end method

.method private ep()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/gs;->CH:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gs;->CJ:Lcom/google/android/gms/internal/gr;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gs;->CI:J

    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/gms/internal/gr;)V
    .registers 10

    sget-object v1, Lcom/google/android/gms/internal/gs;->CK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->CJ:Lcom/google/android/gms/internal/gr;

    iget-wide v2, p0, Lcom/google/android/gms/internal/gs;->CH:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/gs;->CH:J

    iput-object p3, p0, Lcom/google/android/gms/internal/gs;->CJ:Lcom/google/android/gms/internal/gr;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/gs;->CI:J

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    if-eqz v0, :cond_17

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/gr;->n(J)V

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public b(JILorg/json/JSONObject;)Z
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v3, Lcom/google/android/gms/internal/gs;->CK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-wide v4, p0, Lcom/google/android/gms/internal/gs;->CH:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_36

    iget-wide v4, p0, Lcom/google/android/gms/internal/gs;->CH:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_36

    sget-object v0, Lcom/google/android/gms/internal/gs;->BD:Lcom/google/android/gms/internal/go;

    const-string v2, "request %d completed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/internal/gs;->CH:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->CJ:Lcom/google/android/gms/internal/gr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gs;->ep()V

    :goto_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_33

    if-eqz v0, :cond_32

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/gr;->a(JILorg/json/JSONObject;)V

    :cond_32
    return v1

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    move v1, v2

    goto :goto_2c
.end method

.method public c(JI)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/gs;->b(JILorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 7

    sget-object v1, Lcom/google/android/gms/internal/gs;->CK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/gs;->CH:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/gs;->ep()V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public d(JI)Z
    .registers 14

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sget-object v5, Lcom/google/android/gms/internal/gs;->CK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_8
    iget-wide v6, p0, Lcom/google/android/gms/internal/gs;->CH:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3e

    iget-wide v6, p0, Lcom/google/android/gms/internal/gs;->CI:J

    sub-long v6, p1, v6

    iget-wide v8, p0, Lcom/google/android/gms/internal/gs;->CG:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3e

    sget-object v0, Lcom/google/android/gms/internal/gs;->BD:Lcom/google/android/gms/internal/go;

    const-string v1, "request %d timed out"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/google/android/gms/internal/gs;->CH:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/gs;->CH:J

    iget-object v2, p0, Lcom/google/android/gms/internal/gs;->CJ:Lcom/google/android/gms/internal/gr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gs;->ep()V

    :goto_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3b

    if-eqz v2, :cond_3a

    invoke-interface {v2, v0, v1, p3, v3}, Lcom/google/android/gms/internal/gr;->a(JILorg/json/JSONObject;)V

    :cond_3a
    return v4

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    move v4, v2

    move-object v2, v3

    goto :goto_34
.end method

.method public eq()Z
    .registers 7

    sget-object v1, Lcom/google/android/gms/internal/gs;->CK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/gs;->CH:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public p(J)Z
    .registers 9

    sget-object v1, Lcom/google/android/gms/internal/gs;->CK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/gs;->CH:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    iget-wide v2, p0, Lcom/google/android/gms/internal/gs;->CH:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit v1

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method
