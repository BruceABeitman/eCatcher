.class public final Lcom/instagram/cliffjumper/edit/photo/lux/a;
.super Ljava/lang/Object;
.source "CdfManager.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/lux/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:Z

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, -0x1

    const/high16 v2, -0x4080

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    iput v3, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I

    iput v3, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    iput v2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->f:F

    iput v2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->g:F

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/a;F)F
    .registers 2

    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->g:F

    return p1
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/a;I)I
    .registers 2

    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    return p1
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/a;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/lux/a;F)F
    .registers 2

    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->f:F

    return p1
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/lux/a;)I
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    return v0
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()F
    .registers 3

    const/high16 v0, -0x4080

    monitor-enter p0

    :try_start_3
    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->f:F
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    cmpl-float v1, v1, v0

    if-nez v1, :cond_e

    :try_start_9
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_15

    :cond_e
    :try_start_e
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->f:F
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_12

    :goto_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_15
    move-exception v1

    goto :goto_10
.end method

.method public final declared-synchronized a(Lcom/instagram/cliffjumper/edit/photo/lux/c;)V
    .registers 7

    const/4 v4, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_43

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    if-eq v0, v4, :cond_1a

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    :cond_1a
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c:Z

    :goto_25
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I

    if-eq v0, v4, :cond_41

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_47

    :cond_41
    monitor-exit p0

    return-void

    :cond_43
    const/4 v0, 0x1

    :try_start_44
    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_47

    goto :goto_25

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V
    .registers 4

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/b;

    invoke-direct {v0, p0, p2}, Lcom/instagram/cliffjumper/edit/photo/lux/b;-><init>(Lcom/instagram/cliffjumper/edit/photo/lux/a;Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized b()F
    .registers 3

    const/high16 v0, -0x4080

    monitor-enter p0

    :try_start_3
    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->g:F
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    cmpl-float v1, v1, v0

    if-nez v1, :cond_e

    :try_start_9
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_15

    :cond_e
    :try_start_e
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->g:F
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_12

    :goto_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_15
    move-exception v1

    goto :goto_10
.end method

.method public final declared-synchronized b(Lcom/instagram/cliffjumper/edit/photo/lux/c;)I
    .registers 4

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_24

    if-ne v1, v0, :cond_1b

    :try_start_6
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->loadCDF(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    const/4 v1, -0x1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_1b} :catch_27

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_24

    :goto_22
    monitor-exit p0

    return v0

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_27
    move-exception v1

    goto :goto_22
.end method
