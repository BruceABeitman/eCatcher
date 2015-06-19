.class final Lcom/squareup/okhttp/internal/spdy/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/p;


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field private final e:Lcom/squareup/okhttp/internal/a/c;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/i;->e:Lcom/squareup/okhttp/internal/a/c;

    return-void
.end method


# virtual methods
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
    .registers 11

    const/4 v6, 0x0

    const-wide/16 v0, -0x1

    :cond_3
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/i;->d:I

    if-nez v2, :cond_59

    iget-byte v2, p0, Lcom/squareup/okhttp/internal/spdy/i;->b:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e

    :cond_d
    :goto_d
    return-wide v0

    :cond_e
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/i;->c:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/i;->e:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/i;->e:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v4}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v4

    const/high16 v5, 0x3fff

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x10

    int-to-short v5, v5

    iput v5, p0, Lcom/squareup/okhttp/internal/spdy/i;->d:I

    iput v5, p0, Lcom/squareup/okhttp/internal/spdy/i;->a:I

    const v5, 0xff00

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/squareup/okhttp/internal/spdy/i;->b:B

    const v3, 0x7fffffff

    and-int/2addr v3, v4

    iput v3, p0, Lcom/squareup/okhttp/internal/spdy/i;->c:I

    const/16 v3, 0xa

    if-eq v5, v3, :cond_4c

    const-string v0, "%s != TYPE_CONTINUATION"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4c
    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/i;->c:I

    if-eq v3, v2, :cond_3

    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_59
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/i;->e:Lcom/squareup/okhttp/internal/a/c;

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/i;->d:I

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-interface {v2, p1, v3, v4}, Lcom/squareup/okhttp/internal/a/c;->b(Lcom/squareup/okhttp/internal/a/i;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_d

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/i;->d:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/i;->d:I

    move-wide v0, v2

    goto :goto_d
.end method

.method public final close()V
    .registers 1

    return-void
.end method
