.class public Lcom/instagram/creation/b/d/c;
.super Ljava/lang/Object;
.source "PendingMediaStoreSerializer.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/creation/b/d/c;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/instagram/common/u/c/d;

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/creation/b/d/c;

    sput-object v0, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->d:Landroid/os/Handler;

    invoke-static {}, Lcom/instagram/common/u/c/e;->a()Lcom/instagram/common/u/c/e;

    move-result-object v0

    const-string v1, "PendingMediaStoreSerializer"

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->c()Lcom/instagram/common/u/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->e:Lcom/instagram/common/u/c/d;

    new-instance v0, Lcom/instagram/creation/b/d/d;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/d/d;-><init>(Lcom/instagram/creation/b/d/c;)V

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->f:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->h:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->i:Ljava/lang/Boolean;

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->e:Lcom/instagram/common/u/c/d;

    new-instance v1, Lcom/instagram/creation/b/d/e;

    invoke-direct {v1, p0}, Lcom/instagram/creation/b/d/e;-><init>(Lcom/instagram/creation/b/d/c;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/d;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lcom/instagram/creation/b/d/c;
    .registers 1

    sget-object v0, Lcom/instagram/creation/b/d/c;->b:Lcom/instagram/creation/b/d/c;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/instagram/creation/b/d/c;->d()V

    :cond_7
    sget-object v0, Lcom/instagram/creation/b/d/c;->b:Lcom/instagram/creation/b/d/c;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/b/d/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/b/d/c;->i:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/b/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/b/d/c;->f()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/b/d/c;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/creation/b/d/c;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->h:Ljava/util/List;

    return-object v0
.end method

.method private static declared-synchronized d()V
    .registers 2

    const-class v1, Lcom/instagram/creation/b/d/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/creation/b/d/c;->b:Lcom/instagram/creation/b/d/c;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    new-instance v0, Lcom/instagram/creation/b/d/c;

    invoke-direct {v0}, Lcom/instagram/creation/b/d/c;-><init>()V

    sput-object v0, Lcom/instagram/creation/b/d/c;->b:Lcom/instagram/creation/b/d/c;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()V
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pending_media.json.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "pending_media.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4c

    sget-object v0, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    const-string v1, "Unable to rename %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "pending_media.json.tmp"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "pending_media.json"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    return-void
.end method

.method private declared-synchronized f()V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_7d

    :try_start_7
    iget-object v1, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v3, "pending_media.json"

    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_a9
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_e} :catch_b7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_80
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_e} :catch_98

    move-result-object v1

    :try_start_f
    new-instance v0, Lcom/instagram/creation/b/d/f;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/d/f;-><init>(Lcom/instagram/creation/b/d/c;)V

    invoke-direct {p0}, Lcom/instagram/creation/b/d/c;->g()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_79

    sget-object v3, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading serialized pending media list, size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v4

    sget-object v5, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v4, v5}, Lcom/instagram/creation/b/a/d;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_5b
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_f .. :try_end_5e} :catchall_a4
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_5e} :catch_5f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_5e} :catch_b5
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_5e} :catch_b3

    goto :goto_34

    :catch_5f
    move-exception v0

    move-object v0, v1

    :goto_61
    :try_start_61
    sget-object v1, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_ae

    :try_start_63
    invoke-static {v0}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    :goto_66
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/d/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/b/d/g;

    invoke-direct {v1, p0}, Lcom/instagram/creation/b/d/g;-><init>(Lcom/instagram/creation/b/d/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_77
    .catchall {:try_start_63 .. :try_end_77} :catchall_7d

    monitor-exit p0

    return-void

    :cond_79
    :try_start_79
    invoke-static {v1}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_66

    :catchall_7d
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_80
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_84
    :try_start_84
    const-string v3, "PendingMediaStoreSerializer"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v3, "pending_media.json"

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_94
    .catchall {:try_start_84 .. :try_end_94} :catchall_a4

    :try_start_94
    invoke-static {v1}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_7d

    goto :goto_66

    :catch_98
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_9c
    :try_start_9c
    iget-object v2, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v3, "pending_media.json"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    throw v0
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception v0

    :goto_a5
    :try_start_a5
    invoke-static {v1}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_7d

    :catchall_a9
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_a5

    :catchall_ae
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_a5

    :catch_b3
    move-exception v0

    goto :goto_9c

    :catch_b5
    move-exception v0

    goto :goto_84

    :catch_b7
    move-exception v1

    goto :goto_61
.end method

.method private g()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->j:Lcom/fasterxml/jackson/databind/ObjectMapper;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/instagram/creation/b/b/i;->a()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->j:Lcom/fasterxml/jackson/databind/ObjectMapper;

    :cond_a
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->j:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v1, p0, Lcom/instagram/creation/b/d/c;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_e
    monitor-exit v1

    return-void

    :cond_10
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    goto :goto_e

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->e:Lcom/instagram/common/u/c/d;

    iget-object v1, p0, Lcom/instagram/creation/b/d/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/d;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized c()V
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v3

    sget-object v4, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-eq v3, v4, :cond_14

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    goto :goto_14

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v1, "pending_media.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_2c

    :goto_3c
    monitor-exit p0

    return-void

    :cond_3e
    const/4 v1, 0x0

    :try_start_3f
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v3, "pending_media.json.tmp"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_47} :catch_53

    move-result-object v0

    move-object v1, v0

    :goto_49
    if-nez v1, :cond_5c

    :try_start_4b
    sget-object v0, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    const-string v1, "Failed to acquire output stream for pending_media.json.tmp"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_3c

    :catch_53
    move-exception v0

    sget-object v3, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    const-string v4, "File not found while getting output stream for pending_media.json.tmp"

    invoke-static {v3, v4, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_2c

    goto :goto_49

    :cond_5c
    :try_start_5c
    sget-object v0, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Serializing "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " entries: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/instagram/common/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    sget-object v4, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->toString()Ljava/lang/String;
    :try_end_8d
    .catchall {:try_start_5c .. :try_end_8d} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_8d} :catch_8e

    goto :goto_7c

    :catch_8e
    move-exception v0

    :try_start_8f
    sget-object v2, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    const-string v3, "Exception while writing out pending_media.json.tmp"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_aa

    :try_start_96
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_2c
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_af

    :goto_99
    :try_start_99
    invoke-direct {p0}, Lcom/instagram/creation/b/d/c;->e()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_2c

    goto :goto_3c

    :cond_9d
    :try_start_9d
    invoke-direct {p0}, Lcom/instagram/creation/b/d/c;->g()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a4} :catch_8e

    :try_start_a4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_2c
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_99

    :catch_a8
    move-exception v0

    goto :goto_99

    :catchall_aa
    move-exception v0

    :try_start_ab
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_2c
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_b1

    :goto_ae
    :try_start_ae
    throw v0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_2c

    :catch_af
    move-exception v0

    goto :goto_99

    :catch_b1
    move-exception v1

    goto :goto_ae
.end method
