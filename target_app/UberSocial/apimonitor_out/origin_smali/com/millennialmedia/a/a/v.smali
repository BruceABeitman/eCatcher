.class public final Lcom/millennialmedia/a/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Lcom/millennialmedia/a/a/d/a;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/millennialmedia/a/a/d/a;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/d/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/v;->a:Lcom/millennialmedia/a/a/d/a;

    iget-object v0, p0, Lcom/millennialmedia/a/a/v;->a:Lcom/millennialmedia/a/a/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/d/a;->a(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/a/a/v;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/v;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/millennialmedia/a/a/m;
    .registers 4

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/v;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/millennialmedia/a/a/v;->a:Lcom/millennialmedia/a/a/d/a;

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/s;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;
    :try_end_11
    .catch Ljava/lang/StackOverflowError; {:try_start_c .. :try_end_11} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_11} :catch_1c
    .catch Lcom/millennialmedia/a/a/q; {:try_start_c .. :try_end_11} :catch_25

    move-result-object v0

    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Lcom/millennialmedia/a/a/q;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1c
    move-exception v0

    new-instance v1, Lcom/millennialmedia/a/a/q;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/q;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_33

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_33
    throw v0
.end method

.method public hasNext()Z
    .registers 4

    iget-object v1, p0, Lcom/millennialmedia/a/a/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/millennialmedia/a/a/v;->a:Lcom/millennialmedia/a/a/d/a;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v2, Lcom/millennialmedia/a/a/d/c;->j:Lcom/millennialmedia/a/a/d/c;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_19
    .catch Lcom/millennialmedia/a/a/d/e; {:try_start_3 .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_1c

    if-eq v0, v2, :cond_10

    const/4 v0, 0x1

    :goto_e
    :try_start_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catch_12
    move-exception v0

    new-instance v2, Lcom/millennialmedia/a/a/w;

    invoke-direct {v2, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v0

    :catch_1c
    move-exception v0

    :try_start_1d
    new-instance v2, Lcom/millennialmedia/a/a/n;

    invoke-direct {v2, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_19
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/v;->a()Lcom/millennialmedia/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
