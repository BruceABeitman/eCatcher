.class final Lcom/squareup/okhttp/internal/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/b;


# instance fields
.field public final a:Lcom/squareup/okhttp/internal/a/i;

.field public final b:Lcom/squareup/okhttp/internal/a/o;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/a/o;)V
    .registers 3

    new-instance v0, Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/a/k;-><init>(Lcom/squareup/okhttp/internal/a/o;Lcom/squareup/okhttp/internal/a/i;)V

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/a/o;Lcom/squareup/okhttp/internal/a/i;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/k;->b:Lcom/squareup/okhttp/internal/a/o;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/k;->c:Z

    return v0
.end method

.method private f()V
    .registers 3

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/squareup/okhttp/internal/a/b;
    .registers 3

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k;->f()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/a/i;->c(I)Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/k;->d()Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/internal/a/b;
    .registers 3

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k;->f()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/a/i;->b(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/k;->d()Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
    .registers 3

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k;->f()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/a/i;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/k;->d()Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a([B)Lcom/squareup/okhttp/internal/a/b;
    .registers 3

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k;->f()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/a/i;->b([B)Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/k;->d()Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a([BII)Lcom/squareup/okhttp/internal/a/b;
    .registers 5

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k;->f()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/i;->c([BII)Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/k;->d()Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 5

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k;->f()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->b:Lcom/squareup/okhttp/internal/a/o;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    iget-wide v2, v2, Lcom/squareup/okhttp/internal/a/i;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/a/o;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    :cond_18
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->b:Lcom/squareup/okhttp/internal/a/o;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/o;->a()V

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/a/i;J)V
    .registers 5

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k;->f()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/i;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/k;->d()Lcom/squareup/okhttp/internal/a/b;

    return-void
.end method

.method public final b()Lcom/squareup/okhttp/internal/a/i;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    return-object v0
.end method

.method public final c()Lcom/squareup/okhttp/internal/a/b;
    .registers 2

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k;->f()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->q()Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/k;->d()Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 6

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/k;->c:Z

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    iget-wide v1, v1, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/k;->b:Lcom/squareup/okhttp/internal/a/o;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    iget-wide v3, v3, Lcom/squareup/okhttp/internal/a/i;->b:J

    invoke-interface {v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/a/o;->a(Lcom/squareup/okhttp/internal/a/i;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_2b

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/k;->b:Lcom/squareup/okhttp/internal/a/o;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/o;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_26

    :cond_20
    :goto_20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/a/k;->c:Z

    if-eqz v0, :cond_4

    throw v0

    :catch_26
    move-exception v1

    if-nez v0, :cond_20

    move-object v0, v1

    goto :goto_20

    :catch_2b
    move-exception v0

    goto :goto_1b
.end method

.method public final d()Lcom/squareup/okhttp/internal/a/b;
    .registers 8

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k;->f()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    iget-wide v0, v4, Lcom/squareup/okhttp/internal/a/i;->b:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_1a

    move-wide v0, v2

    :cond_e
    :goto_e
    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/k;->b:Lcom/squareup/okhttp/internal/a/o;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-interface {v2, v3, v0, v1}, Lcom/squareup/okhttp/internal/a/o;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    :cond_19
    return-object p0

    :cond_1a
    iget-object v4, v4, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    iget v5, v4, Lcom/squareup/okhttp/internal/a/m;->c:I

    const/16 v6, 0x800

    if-ge v5, v6, :cond_e

    iget v5, v4, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v4, v4, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int v4, v5, v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_e
.end method

.method public final e()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Lcom/squareup/okhttp/internal/a/k$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a/k$1;-><init>(Lcom/squareup/okhttp/internal/a/k;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/k;->b:Lcom/squareup/okhttp/internal/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
