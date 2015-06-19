.class public final Lcom/twidroid/net/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/net/b/a/a;

.field private final b:Lcom/twidroid/net/b/a/d;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/twidroid/net/b/a/a;Lcom/twidroid/net/b/a/d;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/net/b/a/b;->a:Lcom/twidroid/net/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/net/b/a/b;->b:Lcom/twidroid/net/b/a/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/net/b/a/a;Lcom/twidroid/net/b/a/d;Lcom/twidroid/net/b/a/a$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/twidroid/net/b/a/b;-><init>(Lcom/twidroid/net/b/a/a;Lcom/twidroid/net/b/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/net/b/a/b;)Lcom/twidroid/net/b/a/d;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/a/b;->b:Lcom/twidroid/net/b/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/net/b/a/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/net/b/a/b;->c:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .registers 5

    iget-object v1, p0, Lcom/twidroid/net/b/a/b;->a:Lcom/twidroid/net/b/a/a;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/twidroid/net/b/a/b;->b:Lcom/twidroid/net/b/a/d;

    invoke-static {v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/twidroid/net/b/a/b;->b:Lcom/twidroid/net/b/a/d;

    invoke-static {v0}, Lcom/twidroid/net/b/a/d;->d(Lcom/twidroid/net/b/a/d;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    monitor-exit v1

    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/twidroid/net/b/a/b;->b:Lcom/twidroid/net/b/a/d;

    invoke-virtual {v2, p1}, Lcom/twidroid/net/b/a/d;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_11

    goto :goto_1e
.end method

.method public a()V
    .registers 3

    iget-boolean v0, p0, Lcom/twidroid/net/b/a/b;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twidroid/net/b/a/b;->a:Lcom/twidroid/net/b/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/twidroid/net/b/a/a;->a(Lcom/twidroid/net/b/a/a;Lcom/twidroid/net/b/a/b;Z)V

    iget-object v0, p0, Lcom/twidroid/net/b/a/b;->a:Lcom/twidroid/net/b/a/a;

    iget-object v1, p0, Lcom/twidroid/net/b/a/b;->b:Lcom/twidroid/net/b/a/d;

    invoke-static {v1}, Lcom/twidroid/net/b/a/d;->c(Lcom/twidroid/net/b/a/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/b/a/a;->c(Ljava/lang/String;)Z

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/twidroid/net/b/a/b;->a:Lcom/twidroid/net/b/a/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/twidroid/net/b/a/a;->a(Lcom/twidroid/net/b/a/a;Lcom/twidroid/net/b/a/b;Z)V

    goto :goto_15
.end method

.method public a(ILjava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/b/a/b;->c(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {}, Lcom/twidroid/net/b/a/a;->g()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    :try_start_e
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1b

    invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_15
    move-exception v0

    move-object v1, v2

    :goto_17
    invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1b
    move-exception v0

    goto :goto_17
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/net/b/a/b;->a(I)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/twidroid/net/b/a/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/b/a/b;->a:Lcom/twidroid/net/b/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/twidroid/net/b/a/a;->a(Lcom/twidroid/net/b/a/a;Lcom/twidroid/net/b/a/b;Z)V

    return-void
.end method

.method public c(I)Ljava/io/OutputStream;
    .registers 6

    iget-object v1, p0, Lcom/twidroid/net/b/a/b;->a:Lcom/twidroid/net/b/a/a;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/twidroid/net/b/a/b;->b:Lcom/twidroid/net/b/a/d;

    invoke-static {v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    new-instance v0, Lcom/twidroid/net/b/a/c;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/twidroid/net/b/a/b;->b:Lcom/twidroid/net/b/a/d;

    invoke-virtual {v3, p1}, Lcom/twidroid/net/b/a/d;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/twidroid/net/b/a/c;-><init>(Lcom/twidroid/net/b/a/b;Ljava/io/OutputStream;Lcom/twidroid/net/b/a/a$1;)V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    return-object v0
.end method
