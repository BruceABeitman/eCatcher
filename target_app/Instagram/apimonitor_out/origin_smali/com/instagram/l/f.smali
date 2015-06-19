.class public final Lcom/instagram/l/f;
.super Ljava/lang/Object;
.source "QuickExperimentFileCache.java"

# interfaces
.implements Lcom/instagram/l/e;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/l/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/l/f;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/l/f;->c:J

    iput-object p1, p0, Lcom/instagram/l/f;->b:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/l/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/instagram/l/d;
    .registers 3

    iget-object v0, p0, Lcom/instagram/l/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/l/d;

    return-object v0
.end method

.method public final a()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/l/f;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    :try_start_a
    sget-object v1, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/l/g;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/l/h;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/instagram/l/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/instagram/l/h;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/instagram/l/h;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/l/f;->c:J
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_25} :catch_2f

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string v1, "QuickExperimentFileCache"

    const-string v2, "Unable to find file - not loading cache"

    invoke-static {v1, v2, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    :catch_2f
    move-exception v0

    const-string v1, "QuickExperimentFileCache"

    const-string v2, "Error while reading file - not loading cache"

    invoke-static {v1, v2, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/instagram/l/f;->c:J

    return-void
.end method

.method public final a(Lcom/instagram/l/d;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/l/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/l/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/l/f;->c:J

    return-wide v0
.end method

.method public final declared-synchronized c()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/instagram/l/f;->d()Ljava/io/File;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_27

    move-result-object v0

    :try_start_5
    sget-object v1, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    sget-object v2, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    new-instance v1, Lcom/instagram/l/h;

    iget-object v2, p0, Lcom/instagram/l/f;->a:Ljava/util/Map;

    iget-wide v3, p0, Lcom/instagram/l/f;->c:J

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/l/h;-><init>(Ljava/util/Map;J)V

    invoke-static {v0, v1}, Lcom/instagram/l/g;->a(Lcom/fasterxml/jackson/a/h;Lcom/instagram/l/h;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_27
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_1e

    :goto_1c
    monitor-exit p0

    return-void

    :catch_1e
    move-exception v0

    :try_start_1f
    const-string v1, "QuickExperimentFileCache"

    const-string v2, "Error while writing to cache file"

    invoke-static {v1, v2, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1c

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/l/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
