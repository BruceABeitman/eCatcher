.class public Lcom/instagram/j/a;
.super Ljava/lang/Object;
.source "AppDataUsageTracker.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/j/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/j/a;


# instance fields
.field private final c:I

.field private final d:Landroid/content/Context;

.field private final e:Lcom/instagram/common/u/b/a;

.field private final f:Landroid/net/ConnectivityManager;

.field private final g:Lcom/instagram/j/g;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/j/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Lcom/instagram/j/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/j/a;

    sput-object v0, Lcom/instagram/j/a;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/instagram/common/u/b/a;Landroid/net/ConnectivityManager;Lcom/instagram/j/g;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/instagram/j/a;->c:I

    iput-object p2, p0, Lcom/instagram/j/a;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/instagram/j/a;->e:Lcom/instagram/common/u/b/a;

    iput-object p4, p0, Lcom/instagram/j/a;->f:Landroid/net/ConnectivityManager;

    iput-object p5, p0, Lcom/instagram/j/a;->g:Lcom/instagram/j/g;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/j/a;->h:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/u/b/a;->a()Lcom/instagram/common/u/b/a;

    move-result-object v3

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    new-instance v5, Lcom/instagram/j/g;

    invoke-direct {v5}, Lcom/instagram/j/g;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/j/a;-><init>(ILandroid/content/Context;Lcom/instagram/common/u/b/a;Landroid/net/ConnectivityManager;Lcom/instagram/j/g;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/instagram/j/a;
    .registers 3

    const-class v1, Lcom/instagram/j/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/j/a;->b:Lcom/instagram/j/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/instagram/j/a;

    invoke-direct {v0, p0}, Lcom/instagram/j/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/j/a;->b:Lcom/instagram/j/a;

    :cond_e
    sget-object v0, Lcom/instagram/j/a;->b:Lcom/instagram/j/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/instagram/j/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/j/a;->c()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/instagram/j/a;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_7f

    move-result v1

    if-nez v1, :cond_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    new-instance v1, Lcom/instagram/j/c;

    iget-object v2, p0, Lcom/instagram/j/a;->g:Lcom/instagram/j/g;

    iget v2, p0, Lcom/instagram/j/a;->c:I

    invoke-static {v2}, Lcom/instagram/j/g;->a(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/j/a;->g:Lcom/instagram/j/g;

    iget v4, p0, Lcom/instagram/j/a;->c:I

    invoke-static {v4}, Lcom/instagram/j/g;->b(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/instagram/j/a;->e:Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v6

    invoke-static {v8}, Lcom/instagram/common/u/g/a;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/instagram/j/c;-><init>(JJJLjava/lang/String;B)V

    invoke-static {v1}, Lcom/instagram/j/c;->a(Lcom/instagram/j/c;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/j/a;->j:Lcom/instagram/j/c;

    invoke-static {v4}, Lcom/instagram/j/c;->a(Lcom/instagram/j/c;)J

    move-result-wide v4

    sub-long v3, v2, v4

    invoke-static {v1}, Lcom/instagram/j/c;->b(Lcom/instagram/j/c;)J

    move-result-wide v5

    iget-object v2, p0, Lcom/instagram/j/a;->j:Lcom/instagram/j/c;

    invoke-static {v2}, Lcom/instagram/j/c;->b(Lcom/instagram/j/c;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v1}, Lcom/instagram/j/c;->c(Lcom/instagram/j/c;)J

    move-result-wide v7

    iget-object v2, p0, Lcom/instagram/j/a;->j:Lcom/instagram/j/c;

    invoke-static {v2}, Lcom/instagram/j/c;->c(Lcom/instagram/j/c;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget-object v2, p0, Lcom/instagram/j/a;->h:Ljava/util/Map;

    iget-object v9, p0, Lcom/instagram/j/a;->j:Lcom/instagram/j/c;

    invoke-static {v9}, Lcom/instagram/j/c;->d(Lcom/instagram/j/c;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/instagram/j/c;

    move-object v9, v0

    if-nez v9, :cond_82

    new-instance v2, Lcom/instagram/j/c;

    iget-object v9, p0, Lcom/instagram/j/a;->j:Lcom/instagram/j/c;

    invoke-static {v9}, Lcom/instagram/j/c;->d(Lcom/instagram/j/c;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/instagram/j/c;-><init>(JJJLjava/lang/String;B)V

    :goto_71
    iget-object v3, p0, Lcom/instagram/j/a;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/instagram/j/a;->j:Lcom/instagram/j/c;

    invoke-static {v4}, Lcom/instagram/j/c;->d(Lcom/instagram/j/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/instagram/j/a;->j:Lcom/instagram/j/c;
    :try_end_7e
    .catchall {:try_start_11 .. :try_end_7e} :catchall_7f

    goto :goto_f

    :catchall_7f
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_82
    :try_start_82
    new-instance v2, Lcom/instagram/j/c;

    invoke-static {v9}, Lcom/instagram/j/c;->a(Lcom/instagram/j/c;)J

    move-result-wide v10

    add-long/2addr v3, v10

    invoke-static {v9}, Lcom/instagram/j/c;->b(Lcom/instagram/j/c;)J

    move-result-wide v10

    add-long/2addr v5, v10

    invoke-static {v9}, Lcom/instagram/j/c;->c(Lcom/instagram/j/c;)J

    move-result-wide v9

    add-long/2addr v7, v9

    iget-object v9, p0, Lcom/instagram/j/a;->j:Lcom/instagram/j/c;

    invoke-static {v9}, Lcom/instagram/j/c;->d(Lcom/instagram/j/c;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/instagram/j/c;-><init>(JJJLjava/lang/String;B)V
    :try_end_9d
    .catchall {:try_start_82 .. :try_end_9d} :catchall_7f

    goto :goto_71
.end method

.method private declared-synchronized d()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v1, ""
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3c

    :try_start_3
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    iget-object v0, p0, Lcom/instagram/j/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/c;

    invoke-virtual {v0, v3}, Lcom/instagram/j/c;->a(Lcom/fasterxml/jackson/a/h;)V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2a} :catch_2b

    goto :goto_1b

    :catch_2b
    move-exception v0

    :try_start_2c
    sget-object v0, Lcom/instagram/j/a;->a:Ljava/lang/Class;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_3c

    move-object v0, v1

    :goto_2f
    monitor-exit p0

    return-object v0

    :cond_31
    :try_start_31
    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->close()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_2b

    move-result-object v0

    goto :goto_2f

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 10

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/instagram/j/a;->a:Ljava/lang/Class;

    iget-object v0, p0, Lcom/instagram/j/a;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    new-instance v0, Lcom/instagram/j/c;

    iget-object v1, p0, Lcom/instagram/j/a;->g:Lcom/instagram/j/g;

    iget v1, p0, Lcom/instagram/j/a;->c:I

    invoke-static {v1}, Lcom/instagram/j/g;->a(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/j/a;->g:Lcom/instagram/j/g;

    iget v3, p0, Lcom/instagram/j/a;->c:I

    invoke-static {v3}, Lcom/instagram/j/g;->b(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/j/a;->e:Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v5

    invoke-static {v7}, Lcom/instagram/common/u/g/a;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/instagram/j/c;-><init>(JJJLjava/lang/String;B)V

    iput-object v0, p0, Lcom/instagram/j/a;->j:Lcom/instagram/j/c;

    new-instance v0, Lcom/instagram/j/b;

    invoke-direct {v0, p0}, Lcom/instagram/j/b;-><init>(Lcom/instagram/j/a;)V

    iput-object v0, p0, Lcom/instagram/j/a;->i:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/j/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/j/a;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/instagram/j/a;->c()V

    invoke-direct {p0}, Lcom/instagram/j/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/a;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
