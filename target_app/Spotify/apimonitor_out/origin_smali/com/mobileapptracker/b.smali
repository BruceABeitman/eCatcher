.class public final Lcom/mobileapptracker/b;
.super Ljava/lang/Object;


# static fields
.field private static d:J


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Ljava/util/concurrent/Semaphore;

.field private c:Lcom/mobileapptracker/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mobileapptracker/b;->d:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mobileapptracker/g;)V
    .registers 6

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mat_queue"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/b;->a:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/mobileapptracker/b;->b:Ljava/util/concurrent/Semaphore;

    iput-object p2, p0, Lcom/mobileapptracker/b;->c:Lcom/mobileapptracker/g;

    return-void
.end method

.method static synthetic a(J)J
    .registers 2

    sput-wide p0, Lcom/mobileapptracker/b;->d:J

    return-wide p0
.end method

.method static synthetic a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;
    .registers 2

    iget-object v0, p0, Lcom/mobileapptracker/b;->b:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic b()J
    .registers 2

    sget-wide v0, Lcom/mobileapptracker/b;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/mobileapptracker/b;)Lcom/mobileapptracker/g;
    .registers 2

    iget-object v0, p0, Lcom/mobileapptracker/b;->c:Lcom/mobileapptracker/g;

    return-object v0
.end method


# virtual methods
.method protected final declared-synchronized a()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mobileapptracker/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "queuesize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mobileapptracker/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-gez p1, :cond_a

    const/4 p1, 0x0

    :cond_a
    const-string v1, "queuesize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mobileapptracker/b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mobileapptracker/b;->a(I)V

    iget-object v0, p0, Lcom/mobileapptracker/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mobileapptracker/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mobileapptracker/b;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
