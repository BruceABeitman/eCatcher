.class final Lcom/squareup/okhttp/internal/http/k;
.super Lcom/squareup/okhttp/internal/http/i;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/p;


# instance fields
.field final synthetic d:Lcom/squareup/okhttp/internal/http/h;

.field private e:I

.field private f:Z

.field private final g:Lcom/squareup/okhttp/internal/http/p;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/p;)V
    .registers 5

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/k;->d:Lcom/squareup/okhttp/internal/http/h;

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/k;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/k;->f:Z

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/k;->g:Lcom/squareup/okhttp/internal/http/p;

    return-void
.end method


# virtual methods
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
    .registers 10

    const/4 v5, 0x0

    const-wide/16 v0, -0x1

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/k;->b:Z

    if-eqz v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/k;->f:Z

    if-nez v2, :cond_30

    :cond_2f
    :goto_2f
    return-wide v0

    :cond_30
    iget v2, p0, Lcom/squareup/okhttp/internal/http/k;->e:I

    if-eqz v2, :cond_38

    iget v2, p0, Lcom/squareup/okhttp/internal/http/k;->e:I

    if-ne v2, v4, :cond_88

    :cond_38
    iget v2, p0, Lcom/squareup/okhttp/internal/http/k;->e:I

    if-eq v2, v4, :cond_45

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/k;->d:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/h;->g(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;

    :cond_45
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/k;->d:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/h;->g(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_5b

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_5b
    :try_start_5b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/squareup/okhttp/internal/http/k;->e:I
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_67} :catch_a8

    iget v2, p0, Lcom/squareup/okhttp/internal/http/k;->e:I

    if-nez v2, :cond_84

    iput-boolean v5, p0, Lcom/squareup/okhttp/internal/http/k;->f:Z

    new-instance v2, Lcom/squareup/okhttp/internal/http/f;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/http/f;-><init>()V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/k;->d:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/f;)V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/k;->g:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/internal/http/p;->a(Lcom/squareup/okhttp/internal/http/e;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/k;->a(Z)V

    :cond_84
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/k;->f:Z

    if-eqz v2, :cond_2f

    :cond_88
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/k;->d:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/h;->g(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/c;

    move-result-object v2

    iget v3, p0, Lcom/squareup/okhttp/internal/http/k;->e:I

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-interface {v2, p1, v3, v4}, Lcom/squareup/okhttp/internal/a/c;->b(Lcom/squareup/okhttp/internal/a/i;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_be

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/k;->a()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_a8
    move-exception v0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected a hex chunk size but was "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_be
    iget v0, p0, Lcom/squareup/okhttp/internal/http/k;->e:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/k;->e:I

    invoke-virtual {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/http/k;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    move-wide v0, v2

    goto/16 :goto_2f
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/k;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/k;->f:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/k;->d:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/a/p;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/k;->a()V

    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/k;->b:Z

    goto :goto_4
.end method
