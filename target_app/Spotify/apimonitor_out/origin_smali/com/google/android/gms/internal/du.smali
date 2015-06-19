.class public final Lcom/google/android/gms/internal/du;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ao;

.field public final b:Lcom/google/android/gms/internal/ao;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/google/android/gms/internal/er;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/du;->c:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/du;->f:I

    new-instance v0, Lcom/google/android/gms/internal/du$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/du$1;-><init>(Lcom/google/android/gms/internal/du;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/internal/ao;

    new-instance v0, Lcom/google/android/gms/internal/du$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/du$2;-><init>(Lcom/google/android/gms/internal/du;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/du;->b:Lcom/google/android/gms/internal/ao;

    iput-object p1, p0, Lcom/google/android/gms/internal/du;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/du;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/du;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/du;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/du;)I
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/du;->f:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/du;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/du;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/du;->f:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/er;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/du;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/du;->d:Lcom/google/android/gms/internal/er;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/du;->c:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/du;->g:Ljava/lang/String;

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/du;->f:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1b

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/du;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_3

    :catch_12
    move-exception v0

    :try_start_13
    const-string v0, "Ad request service was interrupted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/du;->g:Ljava/lang/String;

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    goto :goto_1a

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
