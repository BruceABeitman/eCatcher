.class public final Lcom/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/b/a/a;

.field private final b:Lcom/b/a/d;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/b/a/a;Lcom/b/a/d;)V
    .registers 4

    iput-object p1, p0, Lcom/b/a/b;->a:Lcom/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/b/a/b;->b:Lcom/b/a/d;

    invoke-static {p2}, Lcom/b/a/d;->e(Lcom/b/a/d;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/b/a/b;->c:[Z

    return-void

    :cond_11
    invoke-static {p1}, Lcom/b/a/a;->f(Lcom/b/a/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/b/a/a;Lcom/b/a/d;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/b/a/b;-><init>(Lcom/b/a/a;Lcom/b/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/b;)Lcom/b/a/d;
    .registers 2

    iget-object v0, p0, Lcom/b/a/b;->b:Lcom/b/a/d;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/b;)[Z
    .registers 2

    iget-object v0, p0, Lcom/b/a/b;->c:[Z

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/b;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .registers 5

    iget-object v2, p0, Lcom/b/a/b;->a:Lcom/b/a/a;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/b/a/b;->b:Lcom/b/a/d;

    invoke-static {v0}, Lcom/b/a/d;->b(Lcom/b/a/d;)Lcom/b/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/b/a/b;->b:Lcom/b/a/d;

    invoke-static {v0}, Lcom/b/a/d;->e(Lcom/b/a/d;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/b/a/b;->c:[Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    :cond_22
    iget-object v0, p0, Lcom/b/a/b;->b:Lcom/b/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/d;->b(I)Ljava/io/File;
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_11

    move-result-object v1

    :try_start_29
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2e} :catch_37

    move-object v1, v0

    :goto_2f
    :try_start_2f
    new-instance v0, Lcom/b/a/c;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/b/a/c;-><init>(Lcom/b/a/b;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_36
    return-object v0

    :catch_37
    move-exception v0

    iget-object v0, p0, Lcom/b/a/b;->a:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->g(Lcom/b/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_11

    :try_start_41
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_46} :catch_48

    move-object v1, v0

    goto :goto_2f

    :catch_48
    move-exception v0

    :try_start_49
    invoke-static {}, Lcom/b/a/a;->b()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_11

    goto :goto_36
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/b/a/b;->d:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/b/a/b;->a:Lcom/b/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/b/a/a;->a(Lcom/b/a/a;Lcom/b/a/b;Z)V

    iget-object v0, p0, Lcom/b/a/b;->a:Lcom/b/a/a;

    iget-object v1, p0, Lcom/b/a/b;->b:Lcom/b/a/d;

    invoke-static {v1}, Lcom/b/a/d;->d(Lcom/b/a/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a;->c(Ljava/lang/String;)Z

    :goto_16
    iput-boolean v2, p0, Lcom/b/a/b;->e:Z

    return-void

    :cond_19
    iget-object v0, p0, Lcom/b/a/b;->a:Lcom/b/a/a;

    invoke-static {v0, p0, v2}, Lcom/b/a/a;->a(Lcom/b/a/a;Lcom/b/a/b;Z)V

    goto :goto_16
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/b;->a:Lcom/b/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/b/a/a;->a(Lcom/b/a/a;Lcom/b/a/b;Z)V

    return-void
.end method
