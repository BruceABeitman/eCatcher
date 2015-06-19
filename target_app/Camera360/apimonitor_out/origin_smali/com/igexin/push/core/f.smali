.class public Lcom/igexin/push/core/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/d/a/c;


# static fields
.field private static l:Lcom/igexin/push/core/f;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/igexin/push/core/h;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private e:Lcom/igexin/push/core/a/f;

.field private f:Landroid/net/ConnectivityManager;

.field private g:Lcom/igexin/a/a/b/d;

.field private h:Lcom/igexin/a/a/b/c;

.field private i:Lcom/igexin/push/d/j;

.field private j:Lcom/igexin/push/d/c;

.field private k:Lcom/igexin/push/b/b;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/igexin/push/core/h;

    invoke-direct {v0}, Lcom/igexin/push/core/h;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/f;->b:Lcom/igexin/push/core/h;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/f;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/f;->l:Lcom/igexin/push/core/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/f;

    invoke-direct {v0}, Lcom/igexin/push/core/f;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f;->l:Lcom/igexin/push/core/f;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/f;->l:Lcom/igexin/push/core/f;

    return-object v0
.end method

.method private n()V
    .registers 10

    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_17

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_17

    array-length v5, v4

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v5, :cond_17

    aget-object v6, v4, v1

    sget-object v7, Lcom/igexin/push/core/a;->o:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    sget-object v7, Lcom/igexin/push/core/a;->n:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    sget-object v7, Lcom/igexin/push/core/a;->p:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    sget-object v7, Lcom/igexin/push/core/a;->q:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    :cond_5d
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/c/f;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v4, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_76
    return-void
.end method

.method private o()Z
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.igexin.sdk.action.snlrefresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.igexin.sdk.action.snlretire"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/igexin/push/core/g;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.igexin.sdk.action.execute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.igexin.sdk.action.doaction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/n;->a()Lcom/igexin/push/core/n;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_4c

    const-string/jumbo v0, "CoreLogic|InternalPublicReceiver|Failed"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_4c
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/m;->a()Lcom/igexin/push/core/m;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_75

    const-string/jumbo v0, "CoreLogic|InternalPackageReceiver|Failed"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_75
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lcom/igexin/push/core/e;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/f;->c:Landroid/os/Handler;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/igexin/push/core/f;->b:Lcom/igexin/push/core/h;

    invoke-virtual {v0}, Lcom/igexin/push/core/h;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .registers 3

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Landroid/os/Message;)Z
    .registers 4

    const/4 v1, 0x1

    sget-object v0, Lcom/igexin/push/core/g;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/igexin/push/core/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_e
    return v1

    :cond_f
    iget-object v0, p0, Lcom/igexin/push/core/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public a(Lcom/igexin/a/a/d/a/f;Lcom/igexin/a/a/d/e;)Z
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/f;

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Lcom/igexin/a/a/d/d;Lcom/igexin/a/a/d/e;)Z
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/f;

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/a/a/d/d;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Lcom/igexin/push/e/b/h;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    :cond_c
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    if-eqz v0, :cond_34

    new-instance v0, Lcom/igexin/sdk/a/d;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/d;->b()V

    sput-boolean v2, Lcom/igexin/push/core/g;->l:Z

    sput-boolean v2, Lcom/igexin/push/core/g;->p:Z

    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->g:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    sget-object v0, Lcom/igexin/push/a/l;->d:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/igexin/push/core/f;->c()V

    :cond_34
    const/4 v0, 0x1

    return v0
.end method

.method public a(Z)Z
    .registers 5

    const/4 v2, 0x1

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    if-eqz v0, :cond_55

    new-instance v0, Lcom/igexin/sdk/a/d;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/d;->a()V

    sput-boolean v2, Lcom/igexin/push/core/g;->l:Z

    new-instance v0, Lcom/igexin/sdk/a/b;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Lcom/igexin/sdk/a/c;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->a()V

    sput-boolean v2, Lcom/igexin/push/core/g;->m:Z

    new-instance v0, Lcom/igexin/sdk/a/b;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/b;->a()V

    :cond_38
    if-ne p1, v2, :cond_46

    new-instance v0, Lcom/igexin/sdk/a/c;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->a()V

    sput-boolean v2, Lcom/igexin/push/core/g;->m:Z

    :cond_46
    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    :cond_55
    return v2
.end method

.method public b()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/igexin/push/core/f;->f:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/core/g;->a(Landroid/content/Context;)Z

    new-instance v0, Lcom/igexin/push/b/b;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/push/core/f;->k:Lcom/igexin/push/b/b;

    invoke-static {}, Lcom/igexin/push/a/h;->a()Lcom/igexin/push/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/h;->b()Z

    invoke-direct {p0}, Lcom/igexin/push/core/f;->o()Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    new-instance v0, Lcom/igexin/push/c/a;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/igexin/push/core/f;->h()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/c/a;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/a/b;)V

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-virtual {v0, p0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/a/c;)Z

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/igexin/push/b/a;

    invoke-direct {v0}, Lcom/igexin/push/b/a;-><init>()V

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/core/c/b;->a()Lcom/igexin/push/core/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/b/a;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a([B)V

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-static {}, Lcom/igexin/push/e/b/d;->g()Lcom/igexin/push/e/b/d;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ad:Z

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-static {}, Lcom/igexin/push/e/b/f;->g()Lcom/igexin/push/e/b/f;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ae:Z

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-static {}, Lcom/igexin/push/e/b/e;->g()Lcom/igexin/push/e/b/e;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->af:Z

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-static {}, Lcom/igexin/push/e/b/g;->g()Lcom/igexin/push/e/b/g;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ag:Z

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-static {}, Lcom/igexin/push/e/b/a;->g()Lcom/igexin/push/e/b/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ah:Z

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-static {}, Lcom/igexin/push/e/b/b;->g()Lcom/igexin/push/e/b/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ai:Z

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/f;

    new-instance v0, Lcom/igexin/push/d/j;

    invoke-direct {v0}, Lcom/igexin/push/d/j;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/f;->i:Lcom/igexin/push/d/j;

    iget-object v0, p0, Lcom/igexin/push/core/f;->i:Lcom/igexin/push/d/j;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    iget-object v3, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/d/j;->a(Landroid/content/Context;Lcom/igexin/a/a/b/d;Lcom/igexin/push/d/k;)V

    new-instance v0, Lcom/igexin/push/d/c;

    invoke-direct {v0}, Lcom/igexin/push/d/c;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    iget-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/c;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    invoke-static {}, Lcom/igexin/push/e/b/g;->g()Lcom/igexin/push/e/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/b/g;->h()V

    sget-object v0, Lcom/igexin/push/core/g;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/igexin/push/core/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_123
    :goto_123
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    iget-object v2, p0, Lcom/igexin/push/core/f;->c:Landroid/os/Handler;

    if-eqz v2, :cond_123

    iget-object v2, p0, Lcom/igexin/push/core/f;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_138} :catch_139

    goto :goto_123

    :catch_139
    move-exception v0

    const-string/jumbo v0, "CoreLogic|init|failed"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :goto_140
    return-void

    :cond_141
    :try_start_141
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->s()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/f;

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/f;->a(I)V

    invoke-direct {p0}, Lcom/igexin/push/core/f;->n()V

    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/a;->a(Landroid/content/Context;)Z
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_15d} :catch_139

    goto :goto_140
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    if-eqz v0, :cond_26

    new-instance v0, Lcom/igexin/sdk/a/c;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->b()V

    sput-boolean v2, Lcom/igexin/push/core/g;->m:Z

    sput-boolean v2, Lcom/igexin/push/core/g;->p:Z

    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->g:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    const-class v2, Lcom/igexin/sdk/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public d()Lcom/igexin/a/a/b/c;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/f;->h:Lcom/igexin/a/a/b/c;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/igexin/push/c/a/c;->a()Lcom/igexin/a/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/f;->h:Lcom/igexin/a/a/b/c;

    :cond_a
    iget-object v0, p0, Lcom/igexin/push/core/f;->h:Lcom/igexin/a/a/b/c;

    return-object v0
.end method

.method public e()Lcom/igexin/push/d/j;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/f;->i:Lcom/igexin/push/d/j;

    return-object v0
.end method

.method public f()Lcom/igexin/push/d/c;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    return-object v0
.end method

.method public g()Lcom/igexin/push/core/a/f;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/f;

    return-object v0
.end method

.method public h()Landroid/net/ConnectivityManager;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/f;->f:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public i()Lcom/igexin/push/b/b;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/f;->k:Lcom/igexin/push/b/b;

    return-object v0
.end method

.method public j()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/m;->a()Lcom/igexin/push/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/n;->a()Lcom/igexin/push/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_23

    :goto_1b
    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/a;->b()V

    return-void

    :catch_23
    move-exception v0

    goto :goto_1b
.end method

.method public k()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/igexin/push/core/f;->f:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/igexin/push/core/f;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    const-string/jumbo v0, "wifi"

    goto :goto_5

    :cond_19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v0, "mobile"

    goto :goto_5
.end method

.method public l()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public m()J
    .registers 3

    const-wide/32 v0, 0x17258

    return-wide v0
.end method
