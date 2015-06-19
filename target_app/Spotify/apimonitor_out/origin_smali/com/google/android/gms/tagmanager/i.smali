.class public Lcom/google/android/gms/tagmanager/i;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/google/android/gms/tagmanager/i;


# instance fields
.field private final a:Lcom/google/android/gms/tagmanager/j;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/tagmanager/d;

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/android/gms/tagmanager/as;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/tagmanager/av;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/j;Lcom/google/android/gms/tagmanager/d;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/i;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/i;->a:Lcom/google/android/gms/tagmanager/j;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/i;->d:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/i;->c:Lcom/google/android/gms/tagmanager/d;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i;->c:Lcom/google/android/gms/tagmanager/d;

    new-instance v1, Lcom/google/android/gms/tagmanager/i$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/i$1;-><init>(Lcom/google/android/gms/tagmanager/i;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/d;->a(Lcom/google/android/gms/tagmanager/f;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i;->c:Lcom/google/android/gms/tagmanager/d;

    new-instance v1, Lcom/google/android/gms/tagmanager/an;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/i;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/an;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/d;->a(Lcom/google/android/gms/tagmanager/f;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/av;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/av;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/i;->e:Lcom/google/android/gms/tagmanager/av;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/i;
    .registers 6

    const-class v1, Lcom/google/android/gms/tagmanager/i;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/tagmanager/i;->f:Lcom/google/android/gms/tagmanager/i;

    if-nez v0, :cond_2d

    if-nez p0, :cond_17

    const-string v0, "TagManager.getInstance requires non-null context."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_17
    :try_start_17
    new-instance v0, Lcom/google/android/gms/tagmanager/i$2;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/i$2;-><init>()V

    new-instance v2, Lcom/google/android/gms/tagmanager/ax;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/ax;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/tagmanager/i;

    new-instance v4, Lcom/google/android/gms/tagmanager/d;

    invoke-direct {v4, v2}, Lcom/google/android/gms/tagmanager/d;-><init>(Lcom/google/android/gms/tagmanager/g;)V

    invoke-direct {v3, p0, v0, v4}, Lcom/google/android/gms/tagmanager/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/j;Lcom/google/android/gms/tagmanager/d;)V

    sput-object v3, Lcom/google/android/gms/tagmanager/i;->f:Lcom/google/android/gms/tagmanager/i;

    :cond_2d
    sget-object v0, Lcom/google/android/gms/tagmanager/i;->f:Lcom/google/android/gms/tagmanager/i;

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_14

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/i;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/as;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/as;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Landroid/net/Uri;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->a()Lcom/google/android/gms/tagmanager/cd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tagmanager/cd;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/tagmanager/i$3;->a:[I

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->b()Lcom/google/android/gms/tagmanager/cd$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cd$a;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_48

    packed-switch v0, :pswitch_data_84

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    monitor-exit p0

    return v0

    :pswitch_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/as;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/as;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/as;->e()V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/as;->c()V
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_48

    goto :goto_2b

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_4b
    :try_start_4b
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_55
    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/as;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/as;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->c()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/as;->e()V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/as;->c()V

    goto :goto_55

    :cond_75
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/as;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_55

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/as;->e()V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/as;->c()V
    :try_end_81
    .catchall {:try_start_4b .. :try_end_81} :catchall_48

    goto :goto_55

    :cond_82
    const/4 v0, 0x0

    goto :goto_1f

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_21
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method

.method final a(Lcom/google/android/gms/tagmanager/as;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
