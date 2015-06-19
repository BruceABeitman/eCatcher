.class public final Lcom/squareup/okhttp/internal/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/squareup/okhttp/internal/a/o;)Lcom/squareup/okhttp/internal/a/b;
    .registers 2

    new-instance v0, Lcom/squareup/okhttp/internal/a/k;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a/k;-><init>(Lcom/squareup/okhttp/internal/a/o;)V

    return-object v0
.end method

.method public static a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;
    .registers 2

    new-instance v0, Lcom/squareup/okhttp/internal/a/l;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a/l;-><init>(Lcom/squareup/okhttp/internal/a/p;)V

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/squareup/okhttp/internal/a/o;
    .registers 2

    new-instance v0, Lcom/squareup/okhttp/internal/a/j$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a/j$1;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/a/p;
    .registers 2

    new-instance v0, Lcom/squareup/okhttp/internal/a/j$2;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a/j$2;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a(Lcom/squareup/okhttp/internal/a/i;JJLjava/io/OutputStream;)V
    .registers 14

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/q;->a(JJJ)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    :goto_b
    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1f

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p1, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    goto :goto_b

    :cond_1f
    :goto_1f
    cmp-long v1, p3, v6

    if-lez v1, :cond_3a

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    invoke-virtual {p5, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v1, v2

    sub-long/2addr p3, v1

    move-wide p1, v6

    goto :goto_1f

    :cond_3a
    return-void
.end method
