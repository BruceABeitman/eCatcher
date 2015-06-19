.class public final Lcom/google/android/gms/internal/ck;
.super Ljava/lang/Object;


# instance fields
.field private final mg:Ljava/lang/Object;

.field private nX:I

.field private ng:Lcom/google/android/gms/internal/dd;

.field public final oA:Lcom/google/android/gms/internal/ar;

.field private ox:Ljava/lang/String;

.field private oy:Ljava/lang/String;

.field public final oz:Lcom/google/android/gms/internal/ar;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ck;->nX:I

    new-instance v0, Lcom/google/android/gms/internal/ck$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ck$1;-><init>(Lcom/google/android/gms/internal/ck;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ck;->oz:Lcom/google/android/gms/internal/ar;

    new-instance v0, Lcom/google/android/gms/internal/ck$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ck$2;-><init>(Lcom/google/android/gms/internal/ck;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ck;->oA:Lcom/google/android/gms/internal/ar;

    iput-object p1, p0, Lcom/google/android/gms/internal/ck;->ox:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ck;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ck;->nX:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ck;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ck;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ck;->oy:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ck;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->ox:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final aI()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->oy:Ljava/lang/String;

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/ck;->nX:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1b

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_3

    :catch_12
    move-exception v0

    :try_start_13
    const-string v0, "Ad request service was interrupted."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->oy:Ljava/lang/String;

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    goto :goto_1a

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/dd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ck;->ng:Lcom/google/android/gms/internal/dd;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getErrorCode()I
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/ck;->nX:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method
