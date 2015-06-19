.class public final Lokio/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokio/b;
.implements Lokio/c;


# instance fields
.field a:Lokio/d;

.field b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(J)[B
    .registers 9

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/h;->a(JJJ)V

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

    iget-object v4, p0, Lokio/a;->a:Lokio/d;

    iget v4, v4, Lokio/d;->c:I

    iget-object v5, p0, Lokio/a;->a:Lokio/d;

    iget v5, v5, Lokio/d;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lokio/a;->a:Lokio/d;

    iget-object v3, v3, Lokio/d;->a:[B

    iget-object v4, p0, Lokio/a;->a:Lokio/d;

    iget v4, v4, Lokio/d;->b:I

    invoke-static {v3, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    iget-object v3, p0, Lokio/a;->a:Lokio/d;

    iget v4, v3, Lokio/d;->b:I

    add-int/2addr v2, v4

    iput v2, v3, Lokio/d;->b:I

    iget-object v2, p0, Lokio/a;->a:Lokio/d;

    iget v2, v2, Lokio/d;->b:I

    iget-object v3, p0, Lokio/a;->a:Lokio/d;

    iget v3, v3, Lokio/d;->c:I

    if-ne v2, v3, :cond_28

    iget-object v2, p0, Lokio/a;->a:Lokio/d;

    invoke-virtual {v2}, Lokio/d;->a()Lokio/d;

    move-result-object v3

    iput-object v3, p0, Lokio/a;->a:Lokio/d;

    sget-object v3, Lokio/e;->a:Lokio/e;

    invoke-virtual {v3, v2}, Lokio/e;->a(Lokio/d;)V

    goto :goto_28

    :cond_6a
    iget-wide v2, p0, Lokio/a;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/a;->b:J

    return-object v1
.end method

.method private e()I
    .registers 9

    const-wide/16 v6, 0x4

    iget-wide v0, p0, Lokio/a;->b:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lokio/a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v1, p0, Lokio/a;->a:Lokio/d;

    iget v0, v1, Lokio/d;->b:I

    iget v2, v1, Lokio/d;->c:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_4c

    invoke-virtual {p0}, Lokio/a;->b()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lokio/a;->b()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/a;->b()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/a;->b()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_4b
    return v0

    :cond_4c
    iget-object v3, v1, Lokio/d;->a:[B

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

    iget-wide v3, p0, Lokio/a;->b:J

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lokio/a;->b:J

    if-ne v5, v2, :cond_82

    invoke-virtual {v1}, Lokio/d;->a()Lokio/d;

    move-result-object v2

    iput-object v2, p0, Lokio/a;->a:Lokio/d;

    sget-object v2, Lokio/e;->a:Lokio/e;

    invoke-virtual {v2, v1}, Lokio/e;->a(Lokio/d;)V

    goto :goto_4b

    :cond_82
    iput v5, v1, Lokio/d;->b:I

    goto :goto_4b
.end method

.method private f()Lokio/a;
    .registers 7

    new-instance v1, Lokio/a;

    invoke-direct {v1}, Lokio/a;-><init>()V

    iget-wide v2, p0, Lokio/a;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    iget-object v0, v0, Lokio/d;->a:[B

    iget-object v2, p0, Lokio/a;->a:Lokio/d;

    iget v2, v2, Lokio/d;->b:I

    iget-object v3, p0, Lokio/a;->a:Lokio/d;

    iget v3, v3, Lokio/d;->c:I

    iget-object v4, p0, Lokio/a;->a:Lokio/d;

    iget v4, v4, Lokio/d;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lokio/a;->a([BII)Lokio/a;

    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    iget-object v0, v0, Lokio/d;->d:Lokio/d;

    :goto_27
    iget-object v2, p0, Lokio/a;->a:Lokio/d;

    if-eq v0, v2, :cond_3a

    iget-object v2, v0, Lokio/d;->a:[B

    iget v3, v0, Lokio/d;->b:I

    iget v4, v0, Lokio/d;->c:I

    iget v5, v0, Lokio/d;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lokio/a;->a([BII)Lokio/a;

    iget-object v0, v0, Lokio/d;->d:Lokio/d;

    goto :goto_27

    :cond_3a
    move-object v0, v1

    goto :goto_e
.end method


# virtual methods
.method public final a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lokio/a;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/h;->a(JJJ)V

    if-nez p3, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_2e

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

    :cond_2e
    cmp-long v0, p1, v2

    if-nez v0, :cond_35

    const-string v0, ""

    :cond_34
    :goto_34
    return-object v0

    :cond_35
    iget-object v1, p0, Lokio/a;->a:Lokio/d;

    iget v0, v1, Lokio/d;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lokio/d;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4c

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lokio/a;->c(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_34

    :cond_4c
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lokio/d;->a:[B

    iget v3, v1, Lokio/d;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, Lokio/d;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lokio/d;->b:I

    iget-wide v2, p0, Lokio/a;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/a;->b:J

    iget v2, v1, Lokio/d;->b:I

    iget v3, v1, Lokio/d;->c:I

    if-ne v2, v3, :cond_34

    invoke-virtual {v1}, Lokio/d;->a()Lokio/d;

    move-result-object v2

    iput-object v2, p0, Lokio/a;->a:Lokio/d;

    sget-object v2, Lokio/e;->a:Lokio/e;

    invoke-virtual {v2, v1}, Lokio/e;->a(Lokio/d;)V

    goto :goto_34
.end method

.method public final a(J)Lokio/ByteString;
    .registers 5

    new-instance v0, Lokio/ByteString;

    invoke-direct {p0, p1, p2}, Lokio/a;->c(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public final a([BII)Lokio/a;
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/h;->a(JJJ)V

    add-int v2, p2, p3

    :goto_13
    if-ge p2, v2, :cond_62

    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    if-nez v0, :cond_43

    sget-object v0, Lokio/e;->a:Lokio/e;

    invoke-virtual {v0}, Lokio/e;->a()Lokio/d;

    move-result-object v0

    iput-object v0, p0, Lokio/a;->a:Lokio/d;

    iget-object v1, p0, Lokio/a;->a:Lokio/d;

    iget-object v3, p0, Lokio/a;->a:Lokio/d;

    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    iput-object v0, v3, Lokio/d;->e:Lokio/d;

    iput-object v0, v1, Lokio/d;->d:Lokio/d;

    :goto_2b
    sub-int v1, v2, p2

    iget v3, v0, Lokio/d;->c:I

    rsub-int v3, v3, 0x800

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, v0, Lokio/d;->a:[B

    iget v4, v0, Lokio/d;->c:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v3, v0, Lokio/d;->c:I

    add-int/2addr v1, v3

    iput v1, v0, Lokio/d;->c:I

    goto :goto_13

    :cond_43
    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    iget-object v1, v0, Lokio/d;->e:Lokio/d;

    iget v0, v1, Lokio/d;->c:I

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x800

    if-le v0, v3, :cond_69

    sget-object v0, Lokio/e;->a:Lokio/e;

    invoke-virtual {v0}, Lokio/e;->a()Lokio/d;

    move-result-object v0

    iput-object v1, v0, Lokio/d;->e:Lokio/d;

    iget-object v3, v1, Lokio/d;->d:Lokio/d;

    iput-object v3, v0, Lokio/d;->d:Lokio/d;

    iget-object v3, v1, Lokio/d;->d:Lokio/d;

    iput-object v0, v3, Lokio/d;->e:Lokio/d;

    iput-object v0, v1, Lokio/d;->d:Lokio/d;

    goto :goto_2b

    :cond_62
    iget-wide v0, p0, Lokio/a;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/a;->b:J

    return-object p0

    :cond_69
    move-object v0, v1

    goto :goto_2b
.end method

.method public final a()Z
    .registers 5

    iget-wide v0, p0, Lokio/a;->b:J

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

.method public final b()B
    .registers 10

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    iget v1, v0, Lokio/d;->b:I

    iget v2, v0, Lokio/d;->c:I

    iget-object v3, v0, Lokio/d;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v5, p0, Lokio/a;->b:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lokio/a;->b:J

    if-ne v4, v2, :cond_31

    invoke-virtual {v0}, Lokio/d;->a()Lokio/d;

    move-result-object v2

    iput-object v2, p0, Lokio/a;->a:Lokio/d;

    sget-object v2, Lokio/e;->a:Lokio/e;

    invoke-virtual {v2, v0}, Lokio/e;->a(Lokio/d;)V

    :goto_30
    return v1

    :cond_31
    iput v4, v0, Lokio/d;->b:I

    goto :goto_30
.end method

.method public final b(J)V
    .registers 9

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lokio/a;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/h;->a(JJJ)V

    iget-wide v0, p0, Lokio/a;->b:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lokio/a;->b:J

    :cond_d
    :goto_d
    cmp-long v0, p1, v2

    if-lez v0, :cond_41

    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    iget v0, v0, Lokio/d;->c:I

    iget-object v1, p0, Lokio/a;->a:Lokio/d;

    iget v1, v1, Lokio/d;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v4, v0

    sub-long/2addr p1, v4

    iget-object v1, p0, Lokio/a;->a:Lokio/d;

    iget v4, v1, Lokio/d;->b:I

    add-int/2addr v0, v4

    iput v0, v1, Lokio/d;->b:I

    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    iget v0, v0, Lokio/d;->b:I

    iget-object v1, p0, Lokio/a;->a:Lokio/d;

    iget v1, v1, Lokio/d;->c:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    invoke-virtual {v0}, Lokio/d;->a()Lokio/d;

    move-result-object v1

    iput-object v1, p0, Lokio/a;->a:Lokio/d;

    sget-object v1, Lokio/e;->a:Lokio/e;

    invoke-virtual {v1, v0}, Lokio/e;->a(Lokio/d;)V

    goto :goto_d

    :cond_41
    return-void
.end method

.method public final c()I
    .registers 2

    invoke-direct {p0}, Lokio/a;->e()I

    move-result v0

    invoke-static {v0}, Lokio/h;->a(I)I

    move-result v0

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lokio/a;->f()Lokio/a;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final d()J
    .registers 16

    const-wide v4, 0xffffffffL

    const-wide/16 v13, 0x8

    const/16 v12, 0x20

    const/16 v11, 0x8

    const-wide/16 v9, 0xff

    iget-wide v0, p0, Lokio/a;->b:J

    cmp-long v0, v0, v13

    if-gez v0, :cond_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 8: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lokio/a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v2, p0, Lokio/a;->a:Lokio/d;

    iget v0, v2, Lokio/d;->b:I

    iget v3, v2, Lokio/d;->c:I

    sub-int v1, v3, v0

    if-ge v1, v11, :cond_47

    invoke-direct {p0}, Lokio/a;->e()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    shl-long/2addr v0, v12

    invoke-direct {p0}, Lokio/a;->e()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    :goto_42
    invoke-static {v0, v1}, Lokio/h;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_47
    iget-object v1, v2, Lokio/d;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v5, v0

    and-long/2addr v5, v9

    const/16 v0, 0x38

    shl-long/2addr v5, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v9

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long v4, v5, v7

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    and-long/2addr v7, v9

    const/16 v0, 0x28

    shl-long/2addr v7, v0

    or-long/2addr v4, v7

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    shl-long/2addr v6, v12

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    and-long/2addr v7, v9

    const/16 v0, 0x18

    shl-long/2addr v7, v0

    or-long/2addr v4, v7

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    and-long/2addr v7, v9

    shl-long/2addr v7, v11

    or-long/2addr v4, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v0, v1, v6

    int-to-long v0, v0

    and-long/2addr v0, v9

    or-long/2addr v0, v4

    iget-wide v4, p0, Lokio/a;->b:J

    sub-long/2addr v4, v13

    iput-wide v4, p0, Lokio/a;->b:J

    if-ne v7, v3, :cond_a5

    invoke-virtual {v2}, Lokio/d;->a()Lokio/d;

    move-result-object v3

    iput-object v3, p0, Lokio/a;->a:Lokio/d;

    sget-object v3, Lokio/e;->a:Lokio/e;

    invoke-virtual {v3, v2}, Lokio/e;->a(Lokio/d;)V

    goto :goto_42

    :cond_a5
    iput v7, v2, Lokio/d;->b:I

    goto :goto_42
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p0, p1, :cond_8

    move v0, v6

    :goto_7
    return v0

    :cond_8
    instance-of v2, p1, Lokio/a;

    if-nez v2, :cond_e

    move v0, v7

    goto :goto_7

    :cond_e
    check-cast p1, Lokio/a;

    iget-wide v2, p0, Lokio/a;->b:J

    iget-wide v4, p1, Lokio/a;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    move v0, v7

    goto :goto_7

    :cond_1a
    iget-wide v2, p0, Lokio/a;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_22

    move v0, v6

    goto :goto_7

    :cond_22
    iget-object v5, p0, Lokio/a;->a:Lokio/d;

    iget-object v4, p1, Lokio/a;->a:Lokio/d;

    iget v3, v5, Lokio/d;->b:I

    iget v2, v4, Lokio/d;->b:I

    :goto_2a
    iget-wide v8, p0, Lokio/a;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_69

    iget v8, v5, Lokio/d;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, Lokio/d;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    :goto_3c
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_57

    iget-object v12, v5, Lokio/d;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lokio/d;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_51

    move v0, v7

    goto :goto_7

    :cond_51
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_3c

    :cond_57
    iget v8, v5, Lokio/d;->c:I

    if-ne v3, v8, :cond_5f

    iget-object v5, v5, Lokio/d;->d:Lokio/d;

    iget v3, v5, Lokio/d;->b:I

    :cond_5f
    iget v8, v4, Lokio/d;->c:I

    if-ne v2, v8, :cond_67

    iget-object v4, v4, Lokio/d;->d:Lokio/d;

    iget v2, v4, Lokio/d;->b:I

    :cond_67
    add-long/2addr v0, v10

    goto :goto_2a

    :cond_69
    move v0, v6

    goto :goto_7
.end method

.method public final hashCode()I
    .registers 6

    iget-object v1, p0, Lokio/a;->a:Lokio/d;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iget v2, v1, Lokio/d;->b:I

    iget v4, v1, Lokio/d;->c:I

    :goto_b
    if-ge v2, v4, :cond_19

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lokio/d;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_b

    :cond_19
    iget-object v1, v1, Lokio/d;->d:Lokio/d;

    iget-object v2, p0, Lokio/a;->a:Lokio/d;

    if-ne v1, v2, :cond_7

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const-string v0, "Buffer[size=0]"

    :goto_d
    return-object v0

    :cond_e
    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_37

    invoke-direct {p0}, Lokio/a;->f()Lokio/a;

    move-result-object v0

    iget-wide v1, p0, Lokio/a;->b:J

    invoke-virtual {v0, v1, v2}, Lokio/a;->a(J)Lokio/ByteString;

    move-result-object v0

    const-string v1, "Buffer[size=%s data=%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p0, Lokio/a;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lokio/ByteString;->a()Ljava/lang/String;

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

    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    iget-object v0, v0, Lokio/d;->a:[B

    iget-object v2, p0, Lokio/a;->a:Lokio/d;

    iget v2, v2, Lokio/d;->b:I

    iget-object v3, p0, Lokio/a;->a:Lokio/d;

    iget v3, v3, Lokio/d;->c:I

    iget-object v4, p0, Lokio/a;->a:Lokio/d;

    iget v4, v4, Lokio/d;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lokio/a;->a:Lokio/d;

    iget-object v0, v0, Lokio/d;->d:Lokio/d;

    :goto_55
    iget-object v2, p0, Lokio/a;->a:Lokio/d;

    if-eq v0, v2, :cond_68

    iget-object v2, v0, Lokio/d;->a:[B

    iget v3, v0, Lokio/d;->b:I

    iget v4, v0, Lokio/d;->c:I

    iget v5, v0, Lokio/d;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, v0, Lokio/d;->d:Lokio/d;

    goto :goto_55

    :cond_68
    const-string v0, "Buffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lokio/a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->a()Ljava/lang/String;

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
