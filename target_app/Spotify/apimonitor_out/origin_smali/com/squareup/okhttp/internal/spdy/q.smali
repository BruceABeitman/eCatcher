.class final Lcom/squareup/okhttp/internal/spdy/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->d:[I

    return-void
.end method


# virtual methods
.method final a(III)Lcom/squareup/okhttp/internal/spdy/q;
    .registers 7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    :goto_5
    return-object p0

    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->a:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->a:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->b:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->b:I

    :goto_16
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->c:I

    :goto_1f
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->d:[I

    aput p3, v0, p1

    goto :goto_5

    :cond_24
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->b:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->b:I

    goto :goto_16

    :cond_2c
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->c:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->c:I

    goto :goto_1f
.end method

.method final a()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->c:I

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->b:I

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/q;->a:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method final a(Lcom/squareup/okhttp/internal/spdy/q;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_19

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/q;->a(I)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/q;->c(I)I

    move-result v1

    iget-object v2, p1, Lcom/squareup/okhttp/internal/spdy/q;->d:[I

    aget v2, v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/q;->a(III)Lcom/squareup/okhttp/internal/spdy/q;

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method final a(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/q;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method final b()I
    .registers 2

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method final b(I)I
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method final c()I
    .registers 3

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->d:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method final c(I)I
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    shl-int v0, v2, p1

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/q;->c:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1a

    move v0, v2

    :goto_a
    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    :goto_d
    shl-int v3, v2, p1

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/q;->b:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_15

    move v1, v2

    :cond_15
    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x1

    :cond_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_a

    :cond_1c
    move v0, v1

    goto :goto_d
.end method

.method final d()I
    .registers 3

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/q;->d:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/high16 v0, 0x1

    goto :goto_b
.end method
