.class public Lcom/flurry/sdk/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Z

.field private final c:Lcom/flurry/sdk/cw;

.field private final d:Ljava/io/File;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/cv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cv;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/cv;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/cw;

    invoke-direct {v0}, Lcom/flurry/sdk/cw;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cv;->c:Lcom/flurry/sdk/cw;

    const-string v0, ".flurryinstallreceiver."

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cv;->d:Ljava/io/File;

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/cv;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Referrer file name if it exists:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/cv;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .registers 5

    iget-boolean v0, p0, Lcom/flurry/sdk/cv;->a:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/cv;->a:Z

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/cv;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading referrer info from file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/cv;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/cv;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/fa;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/cv;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Referrer file contents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/cv;->b(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/flurry/sdk/cv;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/flurry/sdk/cv;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/flurry/sdk/cv;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Z)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/cv;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/cv;->c:Lcom/flurry/sdk/cw;

    iget-object v1, p0, Lcom/flurry/sdk/cv;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cw;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/flurry/sdk/cv;->a()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/cv;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/cv;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/cv;->a:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/flurry/sdk/cv;->a:Z

    invoke-direct {p0, p1}, Lcom/flurry/sdk/cv;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/cv;->c()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
