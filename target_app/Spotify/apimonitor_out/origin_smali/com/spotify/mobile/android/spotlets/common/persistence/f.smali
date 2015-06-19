.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/common/persistence/a;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private final e:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

.field private f:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/e;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->e:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->b:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c()Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$1;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)V

    invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a(Lcom/spotify/mobile/android/ui/fragments/m;)V

    :cond_35
    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$2;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)V

    invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a(Lcom/spotify/mobile/android/ui/fragments/m;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x1

    :goto_8
    const-string v2, "empty feature name"

    invoke-static {v0, v2}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_61

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x61

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x7a

    if-le v0, v2, :cond_5e

    :cond_1f
    const/16 v2, 0x41

    if-lt v0, v2, :cond_27

    const/16 v2, 0x5a

    if-le v0, v2, :cond_5e

    :cond_27
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_5e

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_5e

    const/16 v2, 0x30

    if-lt v0, v2, :cond_37

    const/16 v2, 0x39

    if-le v0, v2, :cond_5e

    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' in feature name \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5c
    move v0, v1

    goto :goto_8

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_61
    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 5

    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$5;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$5;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->e:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/common/persistence/f$6;

    invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$6;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a(Lcom/spotify/mobile/android/ui/fragments/m;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1a
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Z
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c()Z

    move-result v0

    return v0
.end method

.method private b()Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "features storage is not a directory!"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Features storage is not a directory!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "could not create features storage folder"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_26

    :cond_44
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->f:Ljava/io/File;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized c()Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->d:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_42

    if-eqz v2, :cond_9

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->e:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->o()Z

    move-result v2

    if-nez v2, :cond_13

    move v0, v1

    goto :goto_7

    :cond_13
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->e:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "features/user-%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->e:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->f:Ljava/io/File;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->d:Z
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_42

    goto :goto_7

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()Landroid/os/Bundle;
    .registers 3

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c:Ljava/lang/String;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->b()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper;->a(Ljava/io/File;)Landroid/os/Bundle;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_1b

    :goto_17
    monitor-exit v1

    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_15

    :cond_1b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_21

    goto :goto_17

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Landroid/os/Bundle;)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c:Ljava/lang/String;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->b()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper;->a(Ljava/io/File;Landroid/os/Bundle;)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/os/Bundle;Lcom/spotify/mobile/android/spotlets/common/persistence/c;)V
    .registers 5

    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/persistence/c;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;Landroid/os/Bundle;Lcom/spotify/mobile/android/spotlets/common/persistence/c;)V

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ":",
            "Lcom/spotify/mobile/android/spotlets/common/persistence/b;",
            ">(TT;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/persistence/b;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    const-string v2, "listener must not be null"

    invoke-static {v0, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;Lcom/spotify/mobile/android/spotlets/common/persistence/b;Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v2}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->e:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->e:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public final hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->e:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_1c

    aget-char v4, v2, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    return v1
.end method
