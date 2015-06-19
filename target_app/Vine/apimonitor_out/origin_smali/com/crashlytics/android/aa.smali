.class final Lcom/crashlytics/android/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/io/FilenameFilter;

.field private static final c:[S


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Lcom/crashlytics/android/V;

.field private f:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/crashlytics/android/ab;

    invoke-direct {v0}, Lcom/crashlytics/android/ab;-><init>()V

    sput-object v0, Lcom/crashlytics/android/aa;->b:Ljava/io/FilenameFilter;

    const-string v0, "X-CRASHLYTICS-INVALID-SESSION"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/aa;->a:Ljava/util/Map;

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/crashlytics/android/aa;->c:[S

    return-void

    :array_1a
    .array-data 0x2
        0xat 0x0t
        0x14t 0x0t
        0x1et 0x0t
        0x3ct 0x0t
        0x78t 0x0t
        0x2ct 0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/crashlytics/android/V;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/aa;->d:Ljava/lang/Object;

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createReportCall must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lcom/crashlytics/android/aa;->e:Lcom/crashlytics/android/V;

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/aa;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/aa;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic b()[S
    .registers 1

    sget-object v0, Lcom/crashlytics/android/aa;->c:[S

    return-object v0
.end method


# virtual methods
.method final a()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/Z;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Checking for crash reports..."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/aa;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->h()Ljava/io/File;

    move-result-object v0

    sget-object v2, Lcom/crashlytics/android/aa;->b:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_57

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    array-length v3, v2

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v3, :cond_5a

    aget-object v4, v2, v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v5

    const-string v6, "Crashlytics"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found crash report "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/crashlytics/android/Z;

    invoke-direct {v5, v4}, Lcom/crashlytics/android/Z;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6f

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    const-string v3, "No reports found."

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    return-object v1
.end method

.method public final declared-synchronized a(F)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/aa;->f:Ljava/lang/Thread;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crashlytics/android/ac;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/ac;-><init>(Lcom/crashlytics/android/aa;F)V

    const-string v2, "Crashlytics Report Uploader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/aa;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/crashlytics/android/aa;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/crashlytics/android/Z;)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/crashlytics/android/aa;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crashlytics/android/internal/v;->f()Z

    move-result v3

    new-instance v4, Lcom/crashlytics/android/U;

    invoke-static {v1, v3}, Lcom/crashlytics/android/internal/r;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, p1}, Lcom/crashlytics/android/U;-><init>(Ljava/lang/String;Lcom/crashlytics/android/Z;)V

    iget-object v1, p0, Lcom/crashlytics/android/aa;->e:Lcom/crashlytics/android/V;

    invoke-interface {v1, v4}, Lcom/crashlytics/android/V;->a(Lcom/crashlytics/android/U;)Z

    move-result v3

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v4

    const-string v5, "Crashlytics"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics report upload "

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_53

    const-string v1, "complete: "

    :goto_38
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/crashlytics/android/Z;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lcom/crashlytics/android/internal/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_51

    invoke-virtual {p1}, Lcom/crashlytics/android/Z;->a()Z
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_50} :catch_56

    const/4 v0, 0x1

    :cond_51
    :goto_51
    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_74

    return v0

    :cond_53
    :try_start_53
    const-string v1, "FAILED: "
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_55} :catch_56

    goto :goto_38

    :catch_56
    move-exception v1

    :try_start_57
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v3

    const-string v4, "Crashlytics"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error occurred sending report "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_74

    goto :goto_51

    :catchall_74
    move-exception v0

    monitor-exit v2

    throw v0
.end method
