.class final Lcom/a/a/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Flushable;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/ar;->d:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/a/a/ar;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/ar;->c:I

    array-length v0, p2

    iput v0, p0, Lcom/a/a/ar;->b:I

    return-void
.end method

.method public static a(I)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/a/a/ak;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/a/a/ar;->c(I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/a/a/ar;
    .registers 3

    new-instance v0, Lcom/a/a/ar;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-direct {v0, p0, v1}, Lcom/a/a/ar;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/ar;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_b

    new-instance v0, Lcom/a/a/as;

    invoke-direct {v0}, Lcom/a/a/as;-><init>()V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/a/a/ar;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/a/a/ar;->a:[B

    iget v2, p0, Lcom/a/a/ar;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/a/a/ar;->c:I

    return-void
.end method

.method private a(J)V
    .registers 7

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/a/a/ar;->d(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/a/a/ar;->d(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static b(IF)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/a/a/ar;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static b(IJ)I
    .registers 9

    const-wide/16 v4, 0x0

    invoke-static {p0}, Lcom/a/a/ar;->a(I)I

    move-result v1

    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    const/4 v0, 0x2

    goto :goto_e

    :cond_19
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_23

    const/4 v0, 0x3

    goto :goto_e

    :cond_23
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2d

    const/4 v0, 0x4

    goto :goto_e

    :cond_2d
    const-wide v2, -0x800000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_39

    const/4 v0, 0x5

    goto :goto_e

    :cond_39
    const-wide v2, -0x40000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_45

    const/4 v0, 0x6

    goto :goto_e

    :cond_45
    const-wide/high16 v2, -0x2

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4e

    const/4 v0, 0x7

    goto :goto_e

    :cond_4e
    const-wide/high16 v2, -0x100

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_58

    const/16 v0, 0x8

    goto :goto_e

    :cond_58
    const-wide/high16 v2, -0x8000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_62

    const/16 v0, 0x9

    goto :goto_e

    :cond_62
    const/16 v0, 0xa

    goto :goto_e
.end method

.method public static b(ILcom/a/a/an;)I
    .registers 5

    invoke-static {p0}, Lcom/a/a/ar;->a(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/a/a/an;->a()I

    move-result v1

    invoke-static {v1}, Lcom/a/a/ar;->c(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/a/a/an;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .registers 3

    invoke-static {p0}, Lcom/a/a/ar;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static c(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    :cond_c
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    goto :goto_5

    :cond_13
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_5

    :cond_1a
    const/4 v0, 0x5

    goto :goto_5
.end method

.method public static d(II)I
    .registers 4

    invoke-static {p0}, Lcom/a/a/ar;->a(I)I

    move-result v0

    invoke-static {p1}, Lcom/a/a/ar;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private d(I)V
    .registers 6

    int-to-byte v0, p1

    iget v1, p0, Lcom/a/a/ar;->c:I

    iget v2, p0, Lcom/a/a/ar;->b:I

    if-ne v1, v2, :cond_a

    invoke-direct {p0}, Lcom/a/a/ar;->a()V

    :cond_a
    iget-object v1, p0, Lcom/a/a/ar;->a:[B

    iget v2, p0, Lcom/a/a/ar;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/ar;->c:I

    aput-byte v0, v1, v2

    return-void
.end method

.method private static e(I)I
    .registers 3

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static e(II)I
    .registers 4

    invoke-static {p0}, Lcom/a/a/ar;->a(I)I

    move-result v1

    if-ltz p1, :cond_c

    invoke-static {p1}, Lcom/a/a/ar;->c(I)I

    move-result v0

    :goto_a
    add-int/2addr v0, v1

    return v0

    :cond_c
    const/16 v0, 0xa

    goto :goto_a
.end method

.method public static f(II)I
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/a/a/ar;->a(I)I

    move-result v0

    invoke-static {p1}, Lcom/a/a/ar;->e(I)I

    move-result v1

    invoke-static {v1}, Lcom/a/a/ar;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(IF)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/a/a/ar;->g(II)V

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/a/a/ar;->d(I)V

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Lcom/a/a/ar;->d(I)V

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Lcom/a/a/ar;->d(I)V

    ushr-int/lit8 v0, v0, 0x18

    invoke-direct {p0, v0}, Lcom/a/a/ar;->d(I)V

    return-void
.end method

.method public final a(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/ar;->g(II)V

    invoke-virtual {p0, p2}, Lcom/a/a/ar;->b(I)V

    return-void
.end method

.method public final a(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/ar;->g(II)V

    invoke-direct {p0, p2, p3}, Lcom/a/a/ar;->a(J)V

    return-void
.end method

.method public final a(ILcom/a/a/an;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/a/a/ar;->g(II)V

    invoke-virtual {p2}, Lcom/a/a/an;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/ar;->b(I)V

    invoke-virtual {p2}, Lcom/a/a/an;->a()I

    move-result v0

    iget v1, p0, Lcom/a/a/ar;->b:I

    iget v2, p0, Lcom/a/a/ar;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_24

    iget-object v1, p0, Lcom/a/a/ar;->a:[B

    iget v2, p0, Lcom/a/a/ar;->c:I

    invoke-virtual {p2, v1, v7, v2, v0}, Lcom/a/a/an;->a([BIII)V

    iget v1, p0, Lcom/a/a/ar;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/ar;->c:I

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget v1, p0, Lcom/a/a/ar;->b:I

    iget v2, p0, Lcom/a/a/ar;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/a/a/ar;->a:[B

    iget v3, p0, Lcom/a/a/ar;->c:I

    invoke-virtual {p2, v2, v7, v3, v1}, Lcom/a/a/an;->a([BIII)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/ar;->b:I

    iput v1, p0, Lcom/a/a/ar;->c:I

    invoke-direct {p0}, Lcom/a/a/ar;->a()V

    iget v1, p0, Lcom/a/a/ar;->b:I

    if-gt v0, v1, :cond_46

    iget-object v1, p0, Lcom/a/a/ar;->a:[B

    invoke-virtual {p2, v1, v2, v7, v0}, Lcom/a/a/an;->a([BIII)V

    iput v0, p0, Lcom/a/a/ar;->c:I

    goto :goto_23

    :cond_46
    invoke-virtual {p2}, Lcom/a/a/an;->b()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v3, v2

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_64

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    iget-object v2, p0, Lcom/a/a/ar;->d:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/a/a/ar;->a:[B

    invoke-virtual {v2, v4, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v3

    :cond_64
    if-lez v0, :cond_23

    iget v2, p0, Lcom/a/a/ar;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/a/a/ar;->a:[B

    invoke-virtual {v1, v3, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_5c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/ar;->g(II)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/a/a/ar;->b(I)V

    invoke-virtual {p0, v0}, Lcom/a/a/ar;->a([B)V

    return-void
.end method

.method public final a(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/ar;->g(II)V

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-direct {p0, v0}, Lcom/a/a/ar;->d(I)V

    return-void
.end method

.method public final a([B)V
    .registers 7

    const/4 v4, 0x0

    array-length v0, p1

    iget v1, p0, Lcom/a/a/ar;->b:I

    iget v2, p0, Lcom/a/a/ar;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_16

    iget-object v1, p0, Lcom/a/a/ar;->a:[B

    iget v2, p0, Lcom/a/a/ar;->c:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/a/a/ar;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/ar;->c:I

    :goto_15
    return-void

    :cond_16
    iget v1, p0, Lcom/a/a/ar;->b:I

    iget v2, p0, Lcom/a/a/ar;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/a/a/ar;->a:[B

    iget v3, p0, Lcom/a/a/ar;->c:I

    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/ar;->b:I

    iput v1, p0, Lcom/a/a/ar;->c:I

    invoke-direct {p0}, Lcom/a/a/ar;->a()V

    iget v1, p0, Lcom/a/a/ar;->b:I

    if-gt v0, v1, :cond_38

    iget-object v1, p0, Lcom/a/a/ar;->a:[B

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/a/a/ar;->c:I

    goto :goto_15

    :cond_38
    iget-object v1, p0, Lcom/a/a/ar;->d:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_15
.end method

.method public final b(I)V
    .registers 3

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/a/a/ar;->d(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/a/a/ar;->d(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final b(II)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/ar;->g(II)V

    if-ltz p2, :cond_a

    invoke-virtual {p0, p2}, Lcom/a/a/ar;->b(I)V

    :goto_9
    return-void

    :cond_a
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/a/a/ar;->a(J)V

    goto :goto_9
.end method

.method public final c(II)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/ar;->g(II)V

    invoke-static {p2}, Lcom/a/a/ar;->e(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/ar;->b(I)V

    return-void
.end method

.method public final flush()V
    .registers 2

    iget-object v0, p0, Lcom/a/a/ar;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/a/a/ar;->a()V

    :cond_7
    return-void
.end method

.method public final g(II)V
    .registers 4

    invoke-static {p1, p2}, Lcom/a/a/ak;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/ar;->b(I)V

    return-void
.end method
