.class public final Lcom/squareup/okhttp/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/d;

.field private final b:Lcom/squareup/okhttp/internal/g;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/g;)V
    .registers 4

    iput-object p1, p0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/e;->b:Lcom/squareup/okhttp/internal/g;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/g;->e(Lcom/squareup/okhttp/internal/g;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/squareup/okhttp/internal/e;->c:[Z

    return-void

    :cond_11
    invoke-static {p1}, Lcom/squareup/okhttp/internal/d;->f(Lcom/squareup/okhttp/internal/d;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/g;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/e;-><init>(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/g;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/e;)Lcom/squareup/okhttp/internal/g;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->b:Lcom/squareup/okhttp/internal/g;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/e;)[Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->c:[Z

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/e;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/e;->d:Z

    return v0
.end method


# virtual methods
.method public final a(I)Ljava/io/OutputStream;
    .registers 6

    iget-object v2, p0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/d;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->b:Lcom/squareup/okhttp/internal/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->b(Lcom/squareup/okhttp/internal/g;)Lcom/squareup/okhttp/internal/e;

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
    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->b:Lcom/squareup/okhttp/internal/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->e(Lcom/squareup/okhttp/internal/g;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_21
    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->b:Lcom/squareup/okhttp/internal/g;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/g;->b(I)Ljava/io/File;
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    move-result-object v1

    :try_start_27
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2c} :catch_35

    move-object v1, v0

    :goto_2d
    :try_start_2d
    new-instance v0, Lcom/squareup/okhttp/internal/f;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/squareup/okhttp/internal/f;-><init>(Lcom/squareup/okhttp/internal/e;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_34
    return-object v0

    :catch_35
    move-exception v0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/d;->g(Lcom/squareup/okhttp/internal/d;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_11

    :try_start_3f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_44} :catch_46

    move-object v1, v0

    goto :goto_2d

    :catch_46
    move-exception v0

    :try_start_47
    invoke-static {}, Lcom/squareup/okhttp/internal/d;->a()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_11

    goto :goto_34
.end method

.method public final a()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/e;->d:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/d;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/e;Z)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/d;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/e;->b:Lcom/squareup/okhttp/internal/g;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/g;->d(Lcom/squareup/okhttp/internal/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/d;->c(Ljava/lang/String;)Z

    :goto_16
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/e;->e:Z

    return-void

    :cond_19
    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/d;

    invoke-static {v0, p0, v2}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/e;Z)V

    goto :goto_16
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/d;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/e;Z)V

    return-void
.end method
