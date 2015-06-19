.class final Lcom/squareup/okhttp/internal/http/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/o;


# instance fields
.field private a:Z

.field private final b:I

.field private final c:Lcom/squareup/okhttp/internal/a/i;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/ag;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/i;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ag;->c:Lcom/squareup/okhttp/internal/a/i;

    iput p1, p0, Lcom/squareup/okhttp/internal/http/ag;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/a/b;)V
    .registers 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ag;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->r()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ag;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/a/i;J)V
    .registers 8

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ag;->a:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/squareup/okhttp/internal/o;->a(JJ)V

    iget v0, p0, Lcom/squareup/okhttp/internal/http/ag;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ag;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    iget v2, p0, Lcom/squareup/okhttp/internal/http/ag;->b:I

    int-to-long v2, v2

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_43

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exceeded content-length limit of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/ag;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ag;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/i;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    return-void
.end method

.method public final b()J
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ag;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final close()V
    .registers 5

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ag;->a:Z

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ag;->a:Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ag;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    iget v2, p0, Lcom/squareup/okhttp/internal/http/ag;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content-length promised "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/ag;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ag;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
