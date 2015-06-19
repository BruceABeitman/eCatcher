.class public final Lcom/squareup/okhttp/b;
.super Ljava/net/ResponseCache;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/n;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/d;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 5

    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;J)Lcom/squareup/okhttp/internal/d;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/b;->a:Lcom/squareup/okhttp/internal/d;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/b;)I
    .registers 3

    iget v0, p0, Lcom/squareup/okhttp/b;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/b;->b:I

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a/c;)I
    .registers 2

    invoke-static {p0}, Lcom/squareup/okhttp/b;->b(Lcom/squareup/okhttp/internal/a/c;)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/squareup/okhttp/internal/e;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/e;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static synthetic b(Lcom/squareup/okhttp/b;)I
    .registers 3

    iget v0, p0, Lcom/squareup/okhttp/b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/b;->c:I

    return v0
.end method

.method private static b(Lcom/squareup/okhttp/internal/a/c;)I
    .registers 5

    invoke-interface {p0}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    return v0

    :catch_9
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected an integer but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/z;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_9
    iget-object v2, p0, Lcom/squareup/okhttp/b;->a:Lcom/squareup/okhttp/internal/d;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/h;

    move-result-object v1

    if-nez v1, :cond_12

    :goto_11
    return-object v0

    :cond_12
    new-instance v2, Lcom/squareup/okhttp/e;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/internal/h;->a(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/okhttp/e;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_30

    invoke-virtual {v2, p1, v1}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/h;)Lcom/squareup/okhttp/internal/http/z;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/z;->h()Lcom/squareup/okhttp/internal/http/aa;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V

    goto :goto_11

    :cond_2e
    move-object v0, v1

    goto :goto_11

    :catch_30
    move-exception v1

    goto :goto_11
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/z;)Ljava/net/CacheRequest;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/b;->b(Lcom/squareup/okhttp/internal/http/u;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->k()Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Lcom/squareup/okhttp/e;

    invoke-direct {v1, p1}, Lcom/squareup/okhttp/e;-><init>(Lcom/squareup/okhttp/internal/http/z;)V

    :try_start_27
    iget-object v2, p0, Lcom/squareup/okhttp/b;->a:Lcom/squareup/okhttp/internal/d;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/u;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/d;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/e;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_38} :catch_45

    move-result-object v2

    if-eqz v2, :cond_13

    :try_start_3b
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/internal/e;)V

    new-instance v1, Lcom/squareup/okhttp/c;

    invoke-direct {v1, p0, v2}, Lcom/squareup/okhttp/c;-><init>(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/internal/e;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_43} :catch_4b

    move-object v0, v1

    goto :goto_13

    :catch_45
    move-exception v1

    move-object v1, v0

    :goto_47
    invoke-static {v1}, Lcom/squareup/okhttp/b;->a(Lcom/squareup/okhttp/internal/e;)V

    goto :goto_13

    :catch_4b
    move-exception v1

    move-object v1, v2

    goto :goto_47
.end method

.method public final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/okhttp/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/b;->e:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/squareup/okhttp/ResponseSource;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/okhttp/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/b;->f:I

    sget-object v0, Lcom/squareup/okhttp/b$1;->a:[I

    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1b

    packed-switch v0, :pswitch_data_26

    :goto_12
    monitor-exit p0

    return-void

    :pswitch_14
    :try_start_14
    iget v0, p0, Lcom/squareup/okhttp/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/b;->e:I
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1b

    goto :goto_12

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1e
    :try_start_1e
    iget v0, p0, Lcom/squareup/okhttp/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/b;->d:I
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_1b

    goto :goto_12

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/internal/http/z;)V
    .registers 6

    new-instance v1, Lcom/squareup/okhttp/e;

    invoke-direct {v1, p2}, Lcom/squareup/okhttp/e;-><init>(Lcom/squareup/okhttp/internal/http/z;)V

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->h()Lcom/squareup/okhttp/internal/http/aa;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/d;

    invoke-static {v0}, Lcom/squareup/okhttp/d;->a(Lcom/squareup/okhttp/d;)Lcom/squareup/okhttp/internal/h;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_10
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/e;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/internal/e;)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/e;->a()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v1

    invoke-static {v0}, Lcom/squareup/okhttp/b;->a(Lcom/squareup/okhttp/internal/e;)V

    goto :goto_1c
.end method

.method public final b(Lcom/squareup/okhttp/internal/http/u;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_a
    iget-object v0, p0, Lcom/squareup/okhttp/b;->a:Lcom/squareup/okhttp/internal/d;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/d;->c(Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_1b

    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18

    :catch_1b
    move-exception v0

    goto :goto_17
.end method

.method public final get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not a general purpose response cache."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not a general purpose response cache."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
