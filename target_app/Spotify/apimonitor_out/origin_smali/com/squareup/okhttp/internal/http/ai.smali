.class public final Lcom/squareup/okhttp/internal/http/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/al;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/p;

.field private final b:Lcom/squareup/okhttp/internal/spdy/u;

.field private c:Lcom/squareup/okhttp/internal/spdy/x;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/p;Lcom/squareup/okhttp/internal/spdy/u;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ai;->a:Lcom/squareup/okhttp/internal/http/p;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/ai;->b:Lcom/squareup/okhttp/internal/spdy/u;

    return-void
.end method

.method private static a(Lcom/squareup/okhttp/Protocol;Lcom/squareup/okhttp/internal/a/d;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v2, :cond_30

    const-string v2, "connection"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "host"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "keep-alive"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "proxy-connection"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "transfer-encoding"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2e
    move v0, v1

    :cond_2f
    :goto_2f
    return v0

    :cond_30
    sget-object v2, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v2, :cond_76

    const-string v2, "connection"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "host"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "keep-alive"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "proxy-connection"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "te"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "transfer-encoding"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "encoding"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "upgrade"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/a/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_74
    move v0, v1

    goto :goto_2f

    :cond_76
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/a/o;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/ai;->b(Lcom/squareup/okhttp/internal/http/u;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->c:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/x;->f()Lcom/squareup/okhttp/internal/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/CacheRequest;)Lcom/squareup/okhttp/internal/a/p;
    .registers 4

    new-instance v0, Lcom/squareup/okhttp/internal/http/aj;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ai;->c:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-direct {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/aj;-><init>(Lcom/squareup/okhttp/internal/spdy/x;Ljava/net/CacheRequest;)V

    return-object v0
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->c:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/x;->f()Lcom/squareup/okhttp/internal/a/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/o;->close()V

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/ag;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/p;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->c:Lcom/squareup/okhttp/internal/spdy/x;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public final b()Lcom/squareup/okhttp/internal/http/ab;
    .registers 14

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->c:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/x;->c()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->b:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/u;->a()Lcom/squareup/okhttp/Protocol;

    move-result-object v7

    const/4 v2, 0x0

    const-string v1, "HTTP/1.1"

    new-instance v8, Lcom/squareup/okhttp/internal/http/f;

    invoke-direct {v8}, Lcom/squareup/okhttp/internal/http/f;-><init>()V

    sget-object v0, Lcom/squareup/okhttp/internal/http/t;->e:Ljava/lang/String;

    iget-object v4, v7, Lcom/squareup/okhttp/Protocol;->name:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;

    move v5, v3

    :goto_21
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_7f

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v9, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;

    move-result-object v10

    move-object v0, v1

    move v1, v3

    :goto_3d
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_7a

    invoke-virtual {v10, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v11, -0x1

    if-ne v4, v11, :cond_4e

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    :cond_4e
    invoke-virtual {v10, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/squareup/okhttp/internal/spdy/d;->a:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v9, v11}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_60

    :goto_5a
    add-int/lit8 v2, v4, 0x1

    move v12, v2

    move-object v2, v1

    move v1, v12

    goto :goto_3d

    :cond_60
    sget-object v11, Lcom/squareup/okhttp/internal/spdy/d;->g:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v9, v11}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6b

    move-object v0, v1

    move-object v1, v2

    goto :goto_5a

    :cond_6b
    invoke-static {v7, v9}, Lcom/squareup/okhttp/internal/http/ai;->a(Lcom/squareup/okhttp/Protocol;Lcom/squareup/okhttp/internal/a/d;)Z

    move-result v11

    if-nez v11, :cond_78

    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v1}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;

    :cond_78
    move-object v1, v2

    goto :goto_5a

    :cond_7a
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_21

    :cond_7f
    if-nez v2, :cond_89

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    if-nez v1, :cond_93

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':version\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    new-instance v0, Lcom/squareup/okhttp/internal/http/ab;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/ab;-><init>()V

    new-instance v3, Lcom/squareup/okhttp/internal/http/ak;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/squareup/okhttp/internal/http/ak;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/ak;)Lcom/squareup/okhttp/internal/http/ab;

    move-result-object v0

    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/internal/http/ab;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/squareup/okhttp/internal/http/u;)V
    .registers 15

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->c:Lcom/squareup/okhttp/internal/spdy/x;

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->b()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->c()Z

    move-result v4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->a:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->j()Lcom/squareup/okhttp/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/g;->m()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/y;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/ai;->b:Lcom/squareup/okhttp/internal/spdy/u;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ai;->b:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/u;->a()Lcom/squareup/okhttp/Protocol;

    move-result-object v6

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->e()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/e;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/d;->b:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/d;->c:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Lcom/squareup/okhttp/internal/http/y;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/p;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v6, :cond_ee

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v9, Lcom/squareup/okhttp/internal/spdy/d;->g:Lcom/squareup/okhttp/internal/a/d;

    invoke-direct {v3, v9, v0}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/d;->f:Lcom/squareup/okhttp/internal/a/d;

    invoke-direct {v0, v3, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_76
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/d;->d:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    move v1, v2

    :goto_8e
    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/e;->a()I

    move-result v0

    if-ge v1, v0, :cond_143

    invoke-virtual {v7, v1}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v10

    invoke-virtual {v7, v1}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v10}, Lcom/squareup/okhttp/internal/http/ai;->a(Lcom/squareup/okhttp/Protocol;Lcom/squareup/okhttp/internal/a/d;)Z

    move-result v0

    if-nez v0, :cond_ea

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->b:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v10, v0}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->c:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v10, v0}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->d:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v10, v0}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->e:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v10, v0}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->f:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v10, v0}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->g:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v10, v0}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v0, v10, v11}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ea
    :goto_ea
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8e

    :cond_ee
    sget-object v0, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v6, :cond_fe

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/d;->e:Lcom/squareup/okhttp/internal/a/d;

    invoke-direct {v0, v3, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_76

    :cond_fe
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_104
    move v3, v2

    :goto_105
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_ea

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v0, v10}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v11, v10, v0}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Ljava/lang/String;)V

    invoke-interface {v8, v3, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_ea

    :cond_13f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_105

    :cond_143
    invoke-virtual {v5, v8, v4}, Lcom/squareup/okhttp/internal/spdy/u;->a(Ljava/util/List;Z)Lcom/squareup/okhttp/internal/spdy/x;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->c:Lcom/squareup/okhttp/internal/spdy/x;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ai;->c:Lcom/squareup/okhttp/internal/spdy/x;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ai;->a:Lcom/squareup/okhttp/internal/http/p;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/m;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/x;->a(J)V

    goto/16 :goto_5
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final e()V
    .registers 1

    return-void
.end method
