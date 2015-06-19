.class final Lcom/squareup/okhttp/internal/http/m;
.super Lcom/squareup/okhttp/internal/http/i;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/p;


# instance fields
.field final synthetic d:Lcom/squareup/okhttp/internal/http/h;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;J)V
    .registers 9

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/m;->d:Lcom/squareup/okhttp/internal/http/h;

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;)V

    iput-wide p3, p0, Lcom/squareup/okhttp/internal/http/m;->e:J

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/m;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/m;->a(Z)V

    :cond_13
    return-void
.end method


# virtual methods
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
    .registers 11

    const-wide/16 v0, -0x1

    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-gez v2, :cond_1d

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

    :cond_1d
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/m;->b:Z

    if-eqz v2, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/m;->e:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_30

    :goto_2f
    return-wide v0

    :cond_30
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->d:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/h;->g(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/c;

    move-result-object v2

    iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/m;->e:J

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-interface {v2, p1, v3, v4}, Lcom/squareup/okhttp/internal/a/c;->b(Lcom/squareup/okhttp/internal/a/i;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_4f

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/m;->a()V

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/m;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/m;->e:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/http/m;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/m;->e:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_61

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/m;->a(Z)V

    :cond_61
    move-wide v0, v2

    goto :goto_2f
.end method

.method public final close()V
    .registers 5

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/m;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/m;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->d:Lcom/squareup/okhttp/internal/http/h;

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/a/p;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/m;->a()V

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/m;->b:Z

    goto :goto_4
.end method
