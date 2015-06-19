.class public final Lcom/squareup/okhttp/internal/http/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/al;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/p;

.field private final b:Lcom/squareup/okhttp/internal/http/h;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/p;Lcom/squareup/okhttp/internal/http/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    return-void
.end method


# virtual methods
.method public final a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/a/o;
    .registers 9

    const-wide/16 v5, -0x1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/u;)J

    move-result-wide v1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    iget-boolean v0, v0, Lcom/squareup/okhttp/internal/http/p;->c:Z

    if-eqz v0, :cond_2f

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-lez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    cmp-long v0, v1, v5

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/r;->b(Lcom/squareup/okhttp/internal/http/u;)V

    new-instance v0, Lcom/squareup/okhttp/internal/http/ag;

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/ag;-><init>(I)V

    :goto_28
    return-object v0

    :cond_29
    new-instance v0, Lcom/squareup/okhttp/internal/http/ag;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/ag;-><init>()V

    goto :goto_28

    :cond_2f
    const-string v0, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/r;->b(Lcom/squareup/okhttp/internal/http/u;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/h;->f()Lcom/squareup/okhttp/internal/a/o;

    move-result-object v0

    goto :goto_28

    :cond_47
    cmp-long v0, v1, v5

    if-eqz v0, :cond_55

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/r;->b(Lcom/squareup/okhttp/internal/http/u;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/h;->a(J)Lcom/squareup/okhttp/internal/a/o;

    move-result-object v0

    goto :goto_28

    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/net/CacheRequest;)Lcom/squareup/okhttp/internal/a/p;
    .registers 6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->o()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/http/h;->a(Ljava/net/CacheRequest;J)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;

    move-result-object v1

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/h;->a(Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/p;)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v0

    goto :goto_10

    :cond_2e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/z;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v2, p1, v0, v1}, Lcom/squareup/okhttp/internal/http/h;->a(Ljava/net/CacheRequest;J)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v0

    goto :goto_10

    :cond_45
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/h;->a(Ljava/net/CacheRequest;)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v0

    goto :goto_10
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/h;->d()V

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/ag;)V
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/ag;)V

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/p;)V
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/h;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/squareup/okhttp/internal/http/ab;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/h;->e()Lcom/squareup/okhttp/internal/http/ab;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/squareup/okhttp/internal/http/u;)V
    .registers 6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->b()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->j()Lcom/squareup/okhttp/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/g;->d()Lcom/squareup/okhttp/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/p;->a()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/p;->j()Lcom/squareup/okhttp/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/g;->m()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->l()Z

    move-result v3

    if-nez v3, :cond_60

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_60

    const/4 v0, 0x1

    :goto_3d
    if-eqz v0, :cond_62

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_46
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/y;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->h()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)V

    return-void

    :cond_60
    const/4 v0, 0x0

    goto :goto_3d

    :cond_62
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/y;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46
.end method

.method public final c()V
    .registers 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/r;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/h;->a()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/h;->b()V

    goto :goto_b
.end method

.method public final d()Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "close"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/p;->g()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const-string v1, "close"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/r;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/h;->c()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x1

    goto :goto_15
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/r;->b:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/h;->g()V

    return-void
.end method
