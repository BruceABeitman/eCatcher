.class Lcom/google/android/gms/analytics/bd;
.super Lcom/google/android/gms/analytics/ac;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static o:Lcom/google/android/gms/analytics/bd;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/analytics/ao;

.field private volatile d:Lcom/google/android/gms/analytics/aq;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lcom/google/android/gms/analytics/ap;

.field private l:Landroid/os/Handler;

.field private m:Lcom/google/android/gms/analytics/bc;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/bd;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ac;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/android/gms/analytics/bd;->e:I

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/bd;->f:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/bd;->i:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/bd;->j:Z

    new-instance v0, Lcom/google/android/gms/analytics/bd$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/bd$1;-><init>(Lcom/google/android/gms/analytics/bd;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bd;->k:Lcom/google/android/gms/analytics/ap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/bd;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/bd;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/bd;->e:I

    return v0
.end method

.method public static c()Lcom/google/android/gms/analytics/bd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/bd;->o:Lcom/google/android/gms/analytics/bd;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/analytics/bd;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/bd;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/bd;->o:Lcom/google/android/gms/analytics/bd;

    :cond_b
    sget-object v0, Lcom/google/android/gms/analytics/bd;->o:Lcom/google/android/gms/analytics/bd;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/bd;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/bd;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/bd;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private g()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/bc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/bc;-><init>(Lcom/google/android/gms/analytics/ac;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bd;->m:Lcom/google/android/gms/analytics/bc;

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->m:Lcom/google/android/gms/analytics/bc;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bd;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bc;->a(Landroid/content/Context;)V

    return-void
.end method

.method private h()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bd;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/bd$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/bd$2;-><init>(Lcom/google/android/gms/analytics/bd;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/analytics/bd;->e:I

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/bd;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/bd;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_29
    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->d:Lcom/google/android/gms/analytics/aq;

    if-nez v0, :cond_f

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->f:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->S:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->d:Lcom/google/android/gms/analytics/aq;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/aq;->a()V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    goto :goto_d

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    if-nez v0, :cond_e

    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/analytics/bd;->e:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_49

    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->T:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->n:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->i:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/google/android/gms/analytics/bd;->e:I

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/bd;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2b
    iput p1, p0, Lcom/google/android/gms/analytics/bd;->e:I

    if-lez p1, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->n:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->i:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/bd;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_48
    .catchall {:try_start_e .. :try_end_48} :catchall_49

    goto :goto_c

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/analytics/aq;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->b:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bd;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->d:Lcom/google/android/gms/analytics/aq;

    if-nez v0, :cond_5

    iput-object p2, p0, Lcom/google/android/gms/analytics/bd;->d:Lcom/google/android/gms/analytics/aq;

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->f:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/bd;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->f:Z

    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->g:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/bd;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->g:Z
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    goto :goto_5

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->n:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/bd;->a(ZZ)V
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
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->n:Z

    if-ne v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->i:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_57

    if-ne v0, p2, :cond_b

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    if-nez p1, :cond_f

    if-nez p2, :cond_1b

    :cond_f
    :try_start_f
    iget v0, p0, Lcom/google/android/gms/analytics/bd;->e:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/bd;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1b
    if-nez p1, :cond_36

    if-eqz p2, :cond_36

    iget v0, p0, Lcom/google/android/gms/analytics/bd;->e:I

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/bd;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/bd;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_45

    if-nez p2, :cond_5a

    :cond_45
    const-string v0, "initiated."

    :goto_47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/bd;->n:Z

    iput-boolean p2, p0, Lcom/google/android/gms/analytics/bd;->i:Z
    :try_end_56
    .catchall {:try_start_f .. :try_end_56} :catchall_57

    goto :goto_9

    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5a
    :try_start_5a
    const-string v0, "terminated."
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_57

    goto :goto_47
.end method

.method declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->n:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->i:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/google/android/gms/analytics/bd;->e:I

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/bd;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/bd;->a:Ljava/lang/Object;

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

.method declared-synchronized d()Lcom/google/android/gms/analytics/ao;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->c:Lcom/google/android/gms/analytics/ao;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->b:Landroid/content/Context;

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
    new-instance v0, Lcom/google/android/gms/analytics/y;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bd;->k:Lcom/google/android/gms/analytics/ap;

    iget-object v2, p0, Lcom/google/android/gms/analytics/bd;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/y;-><init>(Lcom/google/android/gms/analytics/ap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bd;->c:Lcom/google/android/gms/analytics/ao;

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->h:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->c:Lcom/google/android/gms/analytics/ao;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ao;->d()Lcom/google/android/gms/analytics/az;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/bd;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bd;->h:Ljava/lang/String;

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->l:Landroid/os/Handler;

    if-nez v0, :cond_38

    invoke-direct {p0}, Lcom/google/android/gms/analytics/bd;->h()V

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->m:Lcom/google/android/gms/analytics/bc;

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->j:Z

    if-eqz v0, :cond_43

    invoke-direct {p0}, Lcom/google/android/gms/analytics/bd;->g()V

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->c:Lcom/google/android/gms/analytics/ao;
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_11

    monitor-exit p0

    return-object v0
.end method

.method e()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->d:Lcom/google/android/gms/analytics/aq;

    if-nez v0, :cond_d

    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/bd;->g:Z

    :goto_c
    return-void

    :cond_d
    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->af:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->d:Lcom/google/android/gms/analytics/aq;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/aq;->c()V

    goto :goto_c
.end method
