.class public final Lcom/squareup/okhttp/internal/http/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/squareup/okhttp/internal/http/e;

.field private final d:Lcom/squareup/okhttp/internal/http/v;

.field private final e:Ljava/lang/Object;

.field private volatile f:Lcom/squareup/okhttp/internal/http/x;

.field private volatile g:Ljava/net/URI;

.field private volatile h:Lcom/squareup/okhttp/f;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/w;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/w;->a(Lcom/squareup/okhttp/internal/http/w;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->a:Ljava/net/URL;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/w;->b(Lcom/squareup/okhttp/internal/http/w;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/w;->c(Lcom/squareup/okhttp/internal/http/w;)Lcom/squareup/okhttp/internal/http/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->c:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/w;->d(Lcom/squareup/okhttp/internal/http/w;)Lcom/squareup/okhttp/internal/http/v;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->d:Lcom/squareup/okhttp/internal/http/v;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/w;->e(Lcom/squareup/okhttp/internal/http/w;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/w;->e(Lcom/squareup/okhttp/internal/http/w;)Ljava/lang/Object;

    move-result-object v0

    :goto_29
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->e:Ljava/lang/Object;

    return-void

    :cond_2c
    move-object v0, p0

    goto :goto_29
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/w;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/u;-><init>(Lcom/squareup/okhttp/internal/http/w;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/u;)Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->a:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/u;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/v;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->d:Lcom/squareup/okhttp/internal/http/v;

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/http/u;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/e;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->c:Lcom/squareup/okhttp/internal/http/e;

    return-object v0
.end method

.method private m()Lcom/squareup/okhttp/internal/http/x;
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->f:Lcom/squareup/okhttp/internal/http/x;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/squareup/okhttp/internal/http/x;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/u;->c:Lcom/squareup/okhttp/internal/http/e;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/x;-><init>(Lcom/squareup/okhttp/internal/http/e;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->f:Lcom/squareup/okhttp/internal/http/x;

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->c:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->a:Ljava/net/URL;

    return-object v0
.end method

.method public final b()Ljava/net/URI;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->g:Ljava/net/URI;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->a:Ljava/net/URL;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/k;->a(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->g:Ljava/net/URI;
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_4

    :catch_11
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->c:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/squareup/okhttp/internal/http/e;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->c:Lcom/squareup/okhttp/internal/http/e;

    return-object v0
.end method

.method public final f()Lcom/squareup/okhttp/internal/http/v;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->d:Lcom/squareup/okhttp/internal/http/v;

    return-object v0
.end method

.method public final g()Lcom/squareup/okhttp/internal/http/w;
    .registers 3

    new-instance v0, Lcom/squareup/okhttp/internal/http/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/w;-><init>(Lcom/squareup/okhttp/internal/http/u;B)V

    return-object v0
.end method

.method public final h()Lcom/squareup/okhttp/internal/http/e;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->c:Lcom/squareup/okhttp/internal/http/e;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/u;->m()Lcom/squareup/okhttp/internal/http/x;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/x;->a(Lcom/squareup/okhttp/internal/http/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/u;->m()Lcom/squareup/okhttp/internal/http/x;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/x;->b(Lcom/squareup/okhttp/internal/http/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/squareup/okhttp/f;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->h:Lcom/squareup/okhttp/f;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->c:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {v0}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/f;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->h:Lcom/squareup/okhttp/f;

    goto :goto_4
.end method

.method public final l()Z
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/u;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
