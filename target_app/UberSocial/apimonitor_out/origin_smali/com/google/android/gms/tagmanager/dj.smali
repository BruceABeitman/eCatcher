.class Lcom/google/android/gms/tagmanager/dj;
.super Lcom/google/android/gms/tagmanager/di;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static n:Lcom/google/android/gms/tagmanager/dj;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/tagmanager/aj;

.field private volatile d:Lcom/google/android/gms/tagmanager/ah;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/gms/tagmanager/ak;

.field private k:Landroid/os/Handler;

.field private l:Lcom/google/android/gms/tagmanager/bg;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/dj;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/di;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/dj;->e:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/dj;->f:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/dj;->g:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/dj;->h:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/dj;->i:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/dj$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/dj$1;-><init>(Lcom/google/android/gms/tagmanager/dj;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->j:Lcom/google/android/gms/tagmanager/ak;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/dj;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/dj;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/dj;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/dj;->e:I

    return v0
.end method

.method public static b()Lcom/google/android/gms/tagmanager/dj;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/dj;->n:Lcom/google/android/gms/tagmanager/dj;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/tagmanager/dj;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/dj;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/dj;->n:Lcom/google/android/gms/tagmanager/dj;

    :cond_b
    sget-object v0, Lcom/google/android/gms/tagmanager/dj;->n:Lcom/google/android/gms/tagmanager/dj;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/dj;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/dj;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/dj;)Lcom/google/android/gms/tagmanager/aj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->c:Lcom/google/android/gms/tagmanager/aj;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/dj;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private f()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/bg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/bg;-><init>(Lcom/google/android/gms/tagmanager/di;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->l:Lcom/google/android/gms/tagmanager/bg;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->l:Lcom/google/android/gms/tagmanager/bg;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/dj;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Landroid/content/Context;)V

    return-void
.end method

.method private g()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/dj;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/tagmanager/dj$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/dj$2;-><init>(Lcom/google/android/gms/tagmanager/dj;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/tagmanager/dj;->e:I

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/dj;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/dj;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_27
    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->m:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->h:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/google/android/gms/tagmanager/dj;->e:I

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/dj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/dj;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ah;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->b:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->d:Lcom/google/android/gms/tagmanager/ah;

    if-nez v0, :cond_5

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/dj;->d:Lcom/google/android/gms/tagmanager/ah;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    goto :goto_5

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->m:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/dj;->a(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZZ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->m:Z

    if-ne v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->h:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_55

    if-ne v0, p2, :cond_b

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    if-nez p1, :cond_f

    if-nez p2, :cond_1b

    :cond_f
    :try_start_f
    iget v0, p0, Lcom/google/android/gms/tagmanager/dj;->e:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/dj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1b
    if-nez p1, :cond_34

    if-eqz p2, :cond_34

    iget v0, p0, Lcom/google/android/gms/tagmanager/dj;->e:I

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/dj;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/dj;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_43

    if-nez p2, :cond_58

    :cond_43
    const-string v0, "initiated."

    :goto_45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/dj;->m:Z

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/dj;->h:Z
    :try_end_54
    .catchall {:try_start_f .. :try_end_54} :catchall_55

    goto :goto_9

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_58
    :try_start_58
    const-string v0, "terminated."
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_55

    goto :goto_45
.end method

.method declared-synchronized c()Lcom/google/android/gms/tagmanager/aj;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->c:Lcom/google/android/gms/tagmanager/aj;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->b:Landroid/content/Context;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_14
    :try_start_14
    new-instance v0, Lcom/google/android/gms/tagmanager/bx;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/dj;->j:Lcom/google/android/gms/tagmanager/ak;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/dj;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bx;-><init>(Lcom/google/android/gms/tagmanager/ak;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->c:Lcom/google/android/gms/tagmanager/aj;

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->k:Landroid/os/Handler;

    if-nez v0, :cond_26

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/dj;->g()V

    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->g:Z

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->f:Z

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dj;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->f:Z

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->l:Lcom/google/android/gms/tagmanager/bg;

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->i:Z

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/dj;->f()V

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->c:Lcom/google/android/gms/tagmanager/aj;
    :try_end_40
    .catchall {:try_start_14 .. :try_end_40} :catchall_11

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->g:Z

    if-nez v0, :cond_f

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dj;->f:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1a

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->d:Lcom/google/android/gms/tagmanager/ah;

    new-instance v1, Lcom/google/android/gms/tagmanager/dj$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/dj$3;-><init>(Lcom/google/android/gms/tagmanager/dj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ah;->a(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1a

    goto :goto_d

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
