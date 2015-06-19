.class Lcom/millennialmedia/android/de;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static final f:Ljava/lang/String; = "PreCacheWorker"


# instance fields
.field private b:[Lcom/millennialmedia/android/ao;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private volatile e:Z


# direct methods
.method private constructor <init>([Lcom/millennialmedia/android/ao;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/de;->e:Z

    iput-object p1, p0, Lcom/millennialmedia/android/de;->b:[Lcom/millennialmedia/android/ao;

    iput-object p3, p0, Lcom/millennialmedia/android/de;->d:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/de;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/de;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/de;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/millennialmedia/android/ao;Lorg/apache/http/HttpEntity;)V
    .registers 5

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/de;->b(Lcom/millennialmedia/android/ao;Lorg/apache/http/HttpEntity;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    if-eqz v0, :cond_17

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/de;->c(Lcom/millennialmedia/android/ao;Lorg/apache/http/HttpEntity;)V

    goto :goto_17
.end method

.method static declared-synchronized a([Lcom/millennialmedia/android/ao;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/millennialmedia/android/de;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/millennialmedia/android/de;->a:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/de;->a:Z

    new-instance v0, Lcom/millennialmedia/android/de;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/android/de;-><init>([Lcom/millennialmedia/android/ao;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/de;->start()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/de;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/millennialmedia/android/de;->e:Z

    return p1
.end method

.method private b(Lcom/millennialmedia/android/ao;Lorg/apache/http/HttpEntity;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/aw;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v0, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_14} :catch_31
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_3d

    :cond_14
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->b()Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    :try_start_1d
    iput v1, v0, Lcom/millennialmedia/android/VideoAd;->i:I

    iget-object v1, p0, Lcom/millennialmedia/android/de;->c:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/millennialmedia/android/de$1;

    invoke-direct {v3, p0, p1}, Lcom/millennialmedia/android/de$1;-><init>(Lcom/millennialmedia/android/de;Lcom/millennialmedia/android/ao;)V

    invoke-static {v1, v2, v0, v3}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/ai;Lcom/millennialmedia/android/b;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_30} :catch_54

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v0, "PreCacheWorker"

    const-string v1, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "PreCacheWorker"

    const-string v1, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_49
    :try_start_49
    iget-object v0, p1, Lcom/millennialmedia/android/ao;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/millennialmedia/android/ao;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_53} :catch_54

    goto :goto_30

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v1, "PreCacheWorker"

    const-string v2, "Pre cache worker interrupted: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method private c(Lcom/millennialmedia/android/ao;Lorg/apache/http/HttpEntity;)V
    .registers 6

    iget-object v0, p1, Lcom/millennialmedia/android/ao;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p1, Lcom/millennialmedia/android/ao;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/millennialmedia/android/ao;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/millennialmedia/android/ao;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/de;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/millennialmedia/android/ao;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-object v0, p1, Lcom/millennialmedia/android/ao;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V

    goto :goto_31
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/millennialmedia/android/de;->b:[Lcom/millennialmedia/android/ao;

    if-eqz v1, :cond_7e

    iget-object v2, p0, Lcom/millennialmedia/android/de;->b:[Lcom/millennialmedia/android/ao;

    array-length v3, v2

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_7e

    aget-object v0, v2, v1
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_34

    :try_start_e
    new-instance v4, Lcom/millennialmedia/android/aw;

    invoke-direct {v4}, Lcom/millennialmedia/android/aw;-><init>()V

    iget-object v5, v0, Lcom/millennialmedia/android/ao;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    if-nez v4, :cond_26

    const-string v0, "PreCacheWorker"

    const-string v4, "Pre cache worker: HTTP response is null"

    invoke-static {v0, v4}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_26
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_55

    move-result-object v4

    if-nez v4, :cond_68

    :try_start_2c
    const-string v0, "PreCacheWorker"

    const-string v4, "Pre cache worker: Null HTTP entity"

    invoke-static {v0, v4}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_22

    :catchall_34
    move-exception v0

    :try_start_35
    const-class v1, Lcom/millennialmedia/android/de;

    monitor-enter v1
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_52

    const/4 v2, 0x0

    :try_start_39
    sput-boolean v2, Lcom/millennialmedia/android/de;->a:Z

    iget-boolean v2, p0, Lcom/millennialmedia/android/de;->e:Z

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/millennialmedia/android/de;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/millennialmedia/android/de;->b:[Lcom/millennialmedia/android/ao;

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/millennialmedia/android/de;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V

    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_9c

    :try_start_51
    throw v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_55
    move-exception v0

    :try_start_56
    const-string v4, "PreCacheWorker"

    const-string v5, "Pre cache worker HTTP error: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_68
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_7a

    const-string v0, "PreCacheWorker"

    const-string v4, "Pre cache worker: Millennial ad return failed. Zero content length returned."

    invoke-static {v0, v4}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_7a
    invoke-direct {p0, v0, v4}, Lcom/millennialmedia/android/de;->a(Lcom/millennialmedia/android/ao;Lorg/apache/http/HttpEntity;)V
    :try_end_7d
    .catchall {:try_start_56 .. :try_end_7d} :catchall_34

    goto :goto_22

    :cond_7e
    :try_start_7e
    const-class v1, Lcom/millennialmedia/android/de;

    monitor-enter v1
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_52

    const/4 v0, 0x0

    :try_start_82
    sput-boolean v0, Lcom/millennialmedia/android/de;->a:Z

    iget-boolean v0, p0, Lcom/millennialmedia/android/de;->e:Z

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/millennialmedia/android/de;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/millennialmedia/android/de;->b:[Lcom/millennialmedia/android/ao;

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/millennialmedia/android/de;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V

    :cond_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_9f

    monitor-exit p0

    return-void

    :catchall_9c
    move-exception v0

    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_52

    :catchall_9f
    move-exception v0

    :try_start_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    :try_start_a1
    throw v0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_52
.end method
