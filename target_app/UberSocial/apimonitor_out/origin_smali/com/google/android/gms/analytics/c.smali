.class public Lcom/google/android/gms/analytics/c;
.super Lcom/google/android/gms/analytics/u;


# static fields
.field private static a:Z

.field private static l:Lcom/google/android/gms/analytics/c;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/gms/analytics/aq;

.field private d:Lcom/google/android/gms/analytics/ac;

.field private e:Landroid/content/Context;

.field private volatile f:Ljava/lang/Boolean;

.field private g:Lcom/google/android/gms/analytics/o;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Set;

.field private k:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/analytics/bk;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/bk;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/analytics/bd;->c()Lcom/google/android/gms/analytics/bd;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/aq;Lcom/google/android/gms/analytics/ac;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/aq;Lcom/google/android/gms/analytics/ac;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/u;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->f:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/c;->k:Z

    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/analytics/c;->c:Lcom/google/android/gms/analytics/aq;

    iput-object p3, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/analytics/ac;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ar;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ab;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/as;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/analytics/ax;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/ax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->g:Lcom/google/android/gms/analytics/o;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->j:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->f()V

    return-void
.end method

.method static a()Lcom/google/android/gms/analytics/c;
    .registers 2

    const-class v1, Lcom/google/android/gms/analytics/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/c;->l:Lcom/google/android/gms/analytics/c;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;
    .registers 3

    const-class v1, Lcom/google/android/gms/analytics/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/c;->l:Lcom/google/android/gms/analytics/c;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/analytics/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/c;->l:Lcom/google/android/gms/analytics/c;

    :cond_e
    sget-object v0, Lcom/google/android/gms/analytics/c;->l:Lcom/google/android/gms/analytics/c;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private a(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/r;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "&an"

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v0, "&av"

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/c;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const-string v1, "info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    goto :goto_d

    :cond_18
    const-string v1, "warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x2

    goto :goto_d

    :cond_22
    const-string v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x3

    goto :goto_d

    :cond_2c
    const/4 v0, -0x1

    goto :goto_d
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/c;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/c;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/d;->a(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/d;->b(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private f()V
    .registers 5

    sget-boolean v0, Lcom/google/android/gms/analytics/c;->a:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_17} :catch_20

    move-result-object v0

    :goto_18
    if-nez v0, :cond_39

    const-string v0, "Couldn\'t get ApplicationInfo to load gloabl config."

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V

    goto :goto_4

    :catch_20
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager doesn\'t know about package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_18

    :cond_39
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    new-instance v1, Lcom/google/android/gms/analytics/bn;

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/bn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/bn;->a(I)Lcom/google/android/gms/analytics/au;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/bp;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/bp;)V

    goto :goto_4
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/analytics/r;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->N:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    new-instance v1, Lcom/google/android/gms/analytics/r;

    const/4 v0, 0x0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/analytics/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/u;)V

    if-lez p1, :cond_26

    new-instance v0, Lcom/google/android/gms/analytics/af;

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/af;->a(I)Lcom/google/android/gms/analytics/au;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ah;

    if-eqz v0, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/analytics/r;->a(Landroid/content/Context;Lcom/google/android/gms/analytics/ah;)V

    :cond_26
    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/r;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/r;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->N:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    new-instance v0, Lcom/google/android/gms/analytics/r;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/analytics/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/u;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/r;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/c;->k:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/c;->c(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/c;->k:Z

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/analytics/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/e;-><init>(Lcom/google/android/gms/analytics/c;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/c;->k:Z

    :cond_15
    return-void
.end method

.method a(Lcom/google/android/gms/analytics/bp;)V
    .registers 5

    const-string v0, "Loading global config values."

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app name loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->c()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app version loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V

    :cond_4d
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->e()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/c;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log level loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->d()Lcom/google/android/gms/analytics/o;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/o;->a(I)V

    :cond_7a
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->g()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/analytics/ac;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ac;->a(I)V

    :cond_89
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->i()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bp;->j()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/c;->a(Z)V

    :cond_96
    return-void
.end method

.method a(Lcom/google/android/gms/analytics/d;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/o;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->ae:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->g:Lcom/google/android/gms/analytics/o;

    return-void
.end method

.method a(Ljava/util/Map;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0

    :cond_e
    :try_start_e
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/ai;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/ai;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&sr"

    invoke-static {}, Lcom/google/android/gms/analytics/ab;->a()Lcom/google/android/gms/analytics/ab;

    move-result-object v1

    const-string v2, "&sr"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/ai;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&_u"

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/bl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/bl;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->c:Lcom/google/android/gms/analytics/aq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/aq;->a(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_b

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->ac:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/c;->b:Z

    return-void
.end method

.method public b(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/analytics/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ac;->a(I)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/c;->k:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/c;->d(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method b(Lcom/google/android/gms/analytics/d;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->Q:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->f:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->c:Lcom/google/android/gms/analytics/aq;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/aq;->b()V

    :cond_1c
    return-void
.end method

.method public b()Z
    .registers 3

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->ad:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/c;->b:Z

    return v0
.end method

.method public c()Z
    .registers 3

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->R:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Lcom/google/android/gms/analytics/o;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->g:Lcom/google/android/gms/analytics/o;

    return-object v0
.end method

.method public e()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/analytics/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ac;->a()V

    return-void
.end method
