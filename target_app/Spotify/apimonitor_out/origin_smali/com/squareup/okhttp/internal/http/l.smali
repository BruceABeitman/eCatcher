.class final Lcom/squareup/okhttp/internal/http/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/o;


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/http/h;

.field private b:Z

.field private c:J


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/h;J)V
    .registers 4

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/l;->a:Lcom/squareup/okhttp/internal/http/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/squareup/okhttp/internal/http/l;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/h;JB)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/http/l;-><init>(Lcom/squareup/okhttp/internal/http/h;J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/l;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/l;->a:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V

    goto :goto_4
.end method

.method public final a(Lcom/squareup/okhttp/internal/a/i;J)V
    .registers 8

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/l;->b:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/squareup/okhttp/internal/o;->a(JJ)V

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/l;->c:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3a

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/l;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/l;->a:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/b;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/l;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/l;->c:J

    return-void
.end method

.method public final close()V
    .registers 5

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/l;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/l;->b:Z

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/l;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/l;->a:Lcom/squareup/okhttp/internal/http/h;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;I)I

    goto :goto_4
.end method
