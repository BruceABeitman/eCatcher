.class public final Lcom/squareup/okhttp/internal/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/b;
.implements Lcom/squareup/okhttp/internal/a/c;
.implements Ljava/lang/Cloneable;


# instance fields
.field a:Lcom/squareup/okhttp/internal/a/m;

.field b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f(J)[B
    .registers 9

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/q;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const/4 v0, 0x0

    long-to-int v1, p1

    new-array v1, v1, [B

    :cond_28
    :goto_28
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gez v2, :cond_6a

    int-to-long v2, v0

    sub-long v2, p1, v2

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v4, v4, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v5, v5, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v4, v4, Lcom/squareup/okhttp/internal/a/m;->b:I

    invoke-static {v3, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v4, v3, Lcom/squareup/okhttp/internal/a/m;->b:I

    add-int/2addr v2, v4

    iput v2, v3, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v2, v2, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v3, v3, Lcom/squareup/okhttp/internal/a/m;->c:I

    if-ne v2, v3, :cond_28

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    sget-object v3, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V

    goto :goto_28

    :cond_6a
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    return-object v1
.end method


# virtual methods
.method public final a(BJ)J
    .registers 15

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-nez v2, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    :cond_9
    iget v3, v2, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v4, v2, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int v5, v3, v4

    int-to-long v3, v5

    cmp-long v3, p2, v3

    if-lez v3, :cond_21

    int-to-long v3, v5

    sub-long/2addr p2, v3

    :goto_16
    int-to-long v3, v5

    add-long/2addr v0, v3

    iget-object v2, v2, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-ne v2, v3, :cond_9

    const-wide/16 v0, -0x1

    goto :goto_6

    :cond_21
    iget-object v6, v2, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v3, v2, Lcom/squareup/okhttp/internal/a/m;->b:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    iget v7, v2, Lcom/squareup/okhttp/internal/a/m;->c:I

    int-to-long v7, v7

    :goto_2a
    cmp-long v9, v3, v7

    if-gez v9, :cond_3d

    long-to-int v9, v3

    aget-byte v9, v6, v9

    if-ne v9, p1, :cond_39

    add-long/2addr v0, v3

    iget v2, v2, Lcom/squareup/okhttp/internal/a/m;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_6

    :cond_39
    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    goto :goto_2a

    :cond_3d
    const-wide/16 p2, 0x0

    goto :goto_16
.end method

.method public final synthetic a(I)Lcom/squareup/okhttp/internal/a/b;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/a/i;->c(I)Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/internal/a/b;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/a/i;->b(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/a/i;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([B)Lcom/squareup/okhttp/internal/a/b;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/a/i;->b([B)Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([BII)Lcom/squareup/okhttp/internal/a/b;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/i;->c([BII)Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(J)V
    .registers 5

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/a/i;J)V
    .registers 13

    const-wide/16 v2, 0x0

    if-ne p1, p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/q;->a(JJJ)V

    :goto_12
    cmp-long v0, p2, v2

    if-lez v0, :cond_d0

    iget-object v0, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v0, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-object v1, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v1, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_74

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    :goto_2c
    if-eqz v0, :cond_3b

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v4, p2

    const-wide/16 v6, 0x800

    cmp-long v1, v4, v6

    if-lez v1, :cond_c0

    :cond_3b
    iget-object v1, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    long-to-int v4, p2

    iget v0, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v5, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v0, v5

    sub-int/2addr v0, v4

    if-lez v4, :cond_48

    if-gtz v0, :cond_50

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_2c

    :cond_50
    if-ge v4, v0, :cond_9f

    sget-object v0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/n;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v0

    iget-object v5, v1, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v6, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget-object v7, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v8, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    add-int/2addr v5, v4

    iput v5, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v5, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-object v1, v1, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/a/m;->a(Lcom/squareup/okhttp/internal/a/m;)Lcom/squareup/okhttp/internal/a/m;

    :goto_72
    iput-object v0, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    :cond_74
    iget-object v0, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v1

    iput-object v1, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-nez v1, :cond_d1

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iput-object v6, v1, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    iput-object v6, v0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    :cond_92
    :goto_92
    iget-wide v0, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    sub-long/2addr p2, v4

    goto/16 :goto_12

    :cond_9f
    sget-object v5, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/a/n;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v5

    iget-object v6, v1, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v7, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    add-int/2addr v4, v7

    iget-object v7, v5, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v8, v5, Lcom/squareup/okhttp/internal/a/m;->b:I

    invoke-static {v6, v4, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    sub-int/2addr v4, v0

    iput v4, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v4, v5, Lcom/squareup/okhttp/internal/a/m;->c:I

    add-int/2addr v0, v4

    iput v0, v5, Lcom/squareup/okhttp/internal/a/m;->c:I

    invoke-virtual {v1, v5}, Lcom/squareup/okhttp/internal/a/m;->a(Lcom/squareup/okhttp/internal/a/m;)Lcom/squareup/okhttp/internal/a/m;

    move-object v0, v1

    goto :goto_72

    :cond_c0
    iget-object v1, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/squareup/okhttp/internal/a/m;->a(Lcom/squareup/okhttp/internal/a/m;I)V

    iget-wide v0, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    :cond_d0
    return-void

    :cond_d1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/a/m;->a(Lcom/squareup/okhttp/internal/a/m;)Lcom/squareup/okhttp/internal/a/m;

    move-result-object v0

    iget-object v1, v0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    if-ne v1, v0, :cond_e3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_e3
    iget-object v1, v0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    iget v1, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-object v6, v0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    iget v6, v6, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v1, v6

    iget v6, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v7, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    const/16 v6, 0x800

    if-gt v1, v6, :cond_92

    iget-object v1, v0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    iget v6, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v7, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Lcom/squareup/okhttp/internal/a/m;->a(Lcom/squareup/okhttp/internal/a/m;I)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    sget-object v1, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V

    goto :goto_92
.end method

.method final b([BII)I
    .registers 10

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-nez v1, :cond_6

    const/4 v0, -0x1

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v0, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v2, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v3, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    iget v2, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v3, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    sget-object v2, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V

    goto :goto_5
.end method

.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
    .registers 8

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 p2, -0x1

    :goto_a
    return-wide p2

    :cond_b
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_13

    iget-wide p2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    :cond_13
    invoke-virtual {p1, p0, p2, p3}, Lcom/squareup/okhttp/internal/a/i;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    goto :goto_a
.end method

.method public final b()Lcom/squareup/okhttp/internal/a/i;
    .registers 1

    return-object p0
.end method

.method public final b(I)Lcom/squareup/okhttp/internal/a/i;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/a/i;->d(I)Lcom/squareup/okhttp/internal/a/m;

    move-result-object v0

    iget-object v1, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    return-object p0
.end method

.method public final b(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/internal/a/i;
    .registers 5

    iget-object v0, p1, Lcom/squareup/okhttp/internal/a/d;->b:[B

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/squareup/okhttp/internal/a/d;->b:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/a/i;->c([BII)Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/i;
    .registers 5

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/a/i;->c([BII)Lcom/squareup/okhttp/internal/a/i;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final b([B)Lcom/squareup/okhttp/internal/a/i;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/okhttp/internal/a/i;->c([BII)Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)V
    .registers 9

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/q;->a(JJJ)V

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    :cond_d
    :goto_d
    cmp-long v0, p1, v2

    if-lez v0, :cond_41

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v0, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v1, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v4, v0

    sub-long/2addr p1, v4

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v4, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v0, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v1, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    sget-object v1, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V

    goto :goto_d

    :cond_41
    return-void
.end method

.method public final synthetic c()Lcom/squareup/okhttp/internal/a/b;
    .registers 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->q()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Lcom/squareup/okhttp/internal/a/d;
    .registers 5

    new-instance v0, Lcom/squareup/okhttp/internal/a/d;

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/a/i;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/a/d;-><init>([B)V

    return-object v0
.end method

.method public final c(I)Lcom/squareup/okhttp/internal/a/i;
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/a/i;->d(I)Lcom/squareup/okhttp/internal/a/m;

    move-result-object v0

    iget-object v1, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    return-object p0
.end method

.method public final c([BII)Lcom/squareup/okhttp/internal/a/i;
    .registers 9

    add-int v0, p2, p3

    :goto_2
    if-ge p2, v0, :cond_21

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/a/i;->d(I)Lcom/squareup/okhttp/internal/a/m;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    rsub-int v3, v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v4, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    goto :goto_2

    :cond_21
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->r()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final d(J)B
    .registers 9

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/q;->a(JJJ)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    :goto_a
    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1d

    iget-object v1, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v0, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_1d
    int-to-long v1, v1

    sub-long/2addr p1, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    goto :goto_a
.end method

.method public final bridge synthetic d()Lcom/squareup/okhttp/internal/a/b;
    .registers 1

    return-object p0
.end method

.method final d(I)Lcom/squareup/okhttp/internal/a/m;
    .registers 5

    const/16 v2, 0x800

    if-lez p1, :cond_6

    if-le p1, v2, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-nez v0, :cond_23

    sget-object v0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/n;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iput-object v0, v2, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    iput-object v0, v1, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    :cond_22
    :goto_22
    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    add-int/2addr v1, p1

    if-le v1, v2, :cond_22

    sget-object v1, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/n;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/a/m;->a(Lcom/squareup/okhttp/internal/a/m;)Lcom/squareup/okhttp/internal/a/m;

    move-result-object v0

    goto :goto_22
.end method

.method public final e()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Lcom/squareup/okhttp/internal/a/i$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a/i$1;-><init>(Lcom/squareup/okhttp/internal/a/i;)V

    return-object v0
.end method

.method public final e(J)Ljava/lang/String;
    .registers 9

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/q;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    cmp-long v0, p1, v2

    if-nez v0, :cond_2b

    const-string v0, ""

    :cond_2a
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v0, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4b

    :try_start_38
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/a/i;->f(J)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_43} :catch_44

    goto :goto_2a

    :catch_44
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v3, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    long-to-int v4, p1

    const-string v5, "UTF-8"

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    iget v2, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v3, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    if-ne v2, v3, :cond_2a

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    sget-object v2, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V
    :try_end_74
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4b .. :try_end_74} :catch_75

    goto :goto_2a

    :catch_75
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    instance-of v2, p1, Lcom/squareup/okhttp/internal/a/i;

    if-nez v2, :cond_a

    move v0, v6

    :goto_9
    return v0

    :cond_a
    check-cast p1, Lcom/squareup/okhttp/internal/a/i;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    iget-wide v4, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    move v0, v6

    goto :goto_9

    :cond_16
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1e

    move v0, v7

    goto :goto_9

    :cond_1e
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v4, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v3, v5, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v2, v4, Lcom/squareup/okhttp/internal/a/m;->b:I

    :goto_26
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_65

    iget v8, v5, Lcom/squareup/okhttp/internal/a/m;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, Lcom/squareup/okhttp/internal/a/m;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v6

    :goto_38
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_53

    iget-object v12, v5, Lcom/squareup/okhttp/internal/a/m;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lcom/squareup/okhttp/internal/a/m;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_4d

    move v0, v6

    goto :goto_9

    :cond_4d
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_38

    :cond_53
    iget v8, v5, Lcom/squareup/okhttp/internal/a/m;->c:I

    if-ne v3, v8, :cond_5b

    iget-object v5, v5, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    iget v3, v5, Lcom/squareup/okhttp/internal/a/m;->b:I

    :cond_5b
    iget v8, v4, Lcom/squareup/okhttp/internal/a/m;->c:I

    if-ne v2, v8, :cond_63

    iget-object v4, v4, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    iget v2, v4, Lcom/squareup/okhttp/internal/a/m;->b:I

    :cond_63
    add-long/2addr v0, v10

    goto :goto_26

    :cond_65
    move v0, v7

    goto :goto_9
.end method

.method public final f()Z
    .registers 5

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final g()B
    .registers 10

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-object v3, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v5, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    if-ne v4, v2, :cond_31

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    sget-object v2, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V

    :goto_30
    return v1

    :cond_31
    iput v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    goto :goto_30
.end method

.method public final h()S
    .registers 9

    const-wide/16 v6, 0x2

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3b

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_3a
    return v0

    :cond_3b
    iget-object v3, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v3, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    if-ne v5, v2, :cond_60

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    sget-object v2, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V

    :goto_5e
    int-to-short v0, v1

    goto :goto_3a

    :cond_60
    iput v5, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    goto :goto_5e
.end method

.method public final hashCode()I
    .registers 6

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iget v2, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v4, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    :goto_b
    if-ge v2, v4, :cond_19

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lcom/squareup/okhttp/internal/a/m;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_b

    :cond_19
    iget-object v1, v1, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-ne v1, v2, :cond_7

    goto :goto_5
.end method

.method public final i()I
    .registers 3

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->h()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final j()I
    .registers 9

    const-wide/16 v6, 0x4

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v0, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v2, v1, Lcom/squareup/okhttp/internal/a/m;->c:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_4c

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_4b
    return v0

    :cond_4c
    iget-object v3, v1, Lcom/squareup/okhttp/internal/a/m;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iget-wide v3, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    if-ne v5, v2, :cond_82

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    sget-object v2, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V

    goto :goto_4b

    :cond_82
    iput v5, v1, Lcom/squareup/okhttp/internal/a/m;->b:I

    goto :goto_4b
.end method

.method public final k()I
    .registers 4

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->j()I

    move-result v0

    const/high16 v1, -0x100

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final l()Ljava/lang/String;
    .registers 9

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x1

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v6, v7}, Lcom/squareup/okhttp/internal/a/i;->a(BJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_16
    cmp-long v2, v0, v6

    if-lez v2, :cond_2f

    sub-long v2, v0, v4

    invoke-virtual {p0, v2, v3}, Lcom/squareup/okhttp/internal/a/i;->d(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2f

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/i;->e(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/squareup/okhttp/internal/a/i;->b(J)V

    :goto_2e
    return-object v0

    :cond_2f
    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/i;->e(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v5}, Lcom/squareup/okhttp/internal/a/i;->b(J)V

    goto :goto_2e
.end method

.method public final m()J
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/a/i;->a(BJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_13
    return-wide v0
.end method

.method public final n()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lcom/squareup/okhttp/internal/a/i$2;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a/i$2;-><init>(Lcom/squareup/okhttp/internal/a/i;)V

    return-object v0
.end method

.method public final o()J
    .registers 3

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    return-wide v0
.end method

.method public final p()V
    .registers 3

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/i;->b(J)V

    return-void
.end method

.method public final q()Lcom/squareup/okhttp/internal/a/i;
    .registers 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/a/i;->d(I)Lcom/squareup/okhttp/internal/a/m;

    move-result-object v0

    iget-object v1, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, -0x20

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x0

    aput-byte v4, v1, v3

    iput v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    return-object p0
.end method

.method public final r()Lcom/squareup/okhttp/internal/a/i;
    .registers 7

    new-instance v1, Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/a/i;-><init>()V

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v2, v2, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v3, v3, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v4, v4, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/squareup/okhttp/internal/a/i;->c([BII)Lcom/squareup/okhttp/internal/a/i;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    :goto_27
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-eq v0, v2, :cond_3a

    iget-object v2, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v3, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v5, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/a/i;->c([BII)Lcom/squareup/okhttp/internal/a/i;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    goto :goto_27

    :cond_3a
    move-object v0, v1

    goto :goto_e
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const-string v0, "OkBuffer[size=0]"

    :goto_d
    return-object v0

    :cond_e
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_37

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/i;->r()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    iget-wide v1, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/i;->c(J)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    const-string v1, "OkBuffer[size=%s data=%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_37
    :try_start_37
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v2, v2, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v3, v3, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v4, v4, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    :goto_55
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    if-eq v0, v2, :cond_68

    iget-object v2, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v3, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v5, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    goto :goto_55

    :cond_68
    const-string v0, "OkBuffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/i;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/d;->a([B)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/d;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_88
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_88} :catch_8a

    move-result-object v0

    goto :goto_d

    :catch_8a
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
