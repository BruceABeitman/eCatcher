.class public final Lcom/google/analytics/tracking/android/v;
.super Lcom/google/analytics/tracking/android/ba;
.source "GAServiceManager.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static o:Lcom/google/analytics/tracking/android/v;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/analytics/tracking/android/f;

.field private volatile d:Lcom/google/analytics/tracking/android/h;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lcom/google/analytics/tracking/android/g;

.field private l:Landroid/os/Handler;

.field private m:Lcom/google/analytics/tracking/android/u;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/v;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ba;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/v;->e:I

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/v;->f:Z

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/v;->i:Z

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/v;->j:Z

    new-instance v0, Lcom/google/analytics/tracking/android/w;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/w;-><init>(Lcom/google/analytics/tracking/android/v;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/v;->k:Lcom/google/analytics/tracking/android/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->n:Z

    return-void
.end method

.method public static a()Lcom/google/analytics/tracking/android/v;
    .registers 1

    sget-object v0, Lcom/google/analytics/tracking/android/v;->o:Lcom/google/analytics/tracking/android/v;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/analytics/tracking/android/v;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/v;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/v;->o:Lcom/google/analytics/tracking/android/v;

    :cond_b
    sget-object v0, Lcom/google/analytics/tracking/android/v;->o:Lcom/google/analytics/tracking/android/v;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/v;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/v;)I
    .registers 2

    iget v0, p0, Lcom/google/analytics/tracking/android/v;->e:I

    return v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/v;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/v;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/analytics/tracking/android/v;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    if-nez v0, :cond_e

    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/analytics/tracking/android/v;->e:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_49

    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->T:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->n:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->i:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/google/analytics/tracking/android/v;->e:I

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2b
    iput p1, p0, Lcom/google/analytics/tracking/android/v;->e:I

    if-lez p1, :cond_c

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->n:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->i:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/v;->a:Ljava/lang/Object;

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

.method final declared-synchronized a(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->b:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/v;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->d:Lcom/google/analytics/tracking/android/h;

    if-nez v0, :cond_5

    iput-object p2, p0, Lcom/google/analytics/tracking/android/v;->d:Lcom/google/analytics/tracking/android/h;

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->f:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/v;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->f:Z

    :cond_1d
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->d:Lcom/google/analytics/tracking/android/h;

    if-nez v0, :cond_34

    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->g:Z

    :goto_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->g:Z
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_31

    goto :goto_5

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_34
    :try_start_34
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->af:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->d:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/h;->b()V
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_31

    goto :goto_2d
.end method

.method final declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->n:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/v;->a(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(ZZ)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->n:Z

    if-ne v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->i:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_53

    if-ne v0, p2, :cond_b

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    if-nez p1, :cond_f

    if-nez p2, :cond_1b

    :cond_f
    :try_start_f
    iget v0, p0, Lcom/google/analytics/tracking/android/v;->e:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1b
    if-nez p1, :cond_36

    if-eqz p2, :cond_36

    iget v0, p0, Lcom/google/analytics/tracking/android/v;->e:I

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/v;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/v;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PowerSaveMode "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_41

    if-nez p2, :cond_56

    :cond_41
    const-string v0, "initiated."

    :goto_43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/v;->n:Z

    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/v;->i:Z
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_53

    goto :goto_9

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_56
    :try_start_56
    const-string v0, "terminated."
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_53

    goto :goto_43
.end method

.method final declared-synchronized b()Lcom/google/analytics/tracking/android/f;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->c:Lcom/google/analytics/tracking/android/f;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->b:Landroid/content/Context;

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
    new-instance v0, Lcom/google/analytics/tracking/android/aw;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/v;->k:Lcom/google/analytics/tracking/android/g;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/v;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/aw;-><init>(Lcom/google/analytics/tracking/android/g;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/v;->c:Lcom/google/analytics/tracking/android/f;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->h:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->c:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/f;->c()Lcom/google/analytics/tracking/android/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/v;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/v;->h:Ljava/lang/String;

    :cond_31
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    if-nez v0, :cond_5e

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/v;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/x;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/x;-><init>(Lcom/google/analytics/tracking/android/v;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    iget v0, p0, Lcom/google/analytics/tracking/android/v;->e:I

    if-lez v0, :cond_5e

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/v;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/v;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5e
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->m:Lcom/google/analytics/tracking/android/u;

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->j:Z

    if-eqz v0, :cond_92

    new-instance v0, Lcom/google/analytics/tracking/android/u;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/u;-><init>(Lcom/google/analytics/tracking/android/ba;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/v;->m:Lcom/google/analytics/tracking/android/u;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->m:Lcom/google/analytics/tracking/android/u;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/v;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_92
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->c:Lcom/google/analytics/tracking/android/f;
    :try_end_94
    .catchall {:try_start_14 .. :try_end_94} :catchall_11

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized c()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->d:Lcom/google/analytics/tracking/android/h;

    if-nez v0, :cond_f

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->f:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->S:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->d:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/h;->a()V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    goto :goto_d

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->n:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/v;->i:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/google/analytics/tracking/android/v;->e:I

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/v;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/v;->a:Ljava/lang/Object;

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
