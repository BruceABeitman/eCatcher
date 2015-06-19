.class public final Lorg/apache/b/a/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[C

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    return-void
.end method

.method private e(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    iget v2, p0, Lorg/apache/b/a/g/b;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    return-void
.end method


# virtual methods
.method public a(I)C
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public a(III)I
    .registers 7

    const/4 v0, -0x1

    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    iget v1, p0, Lorg/apache/b/a/g/b;->b:I

    if-le p3, v1, :cond_a

    iget p3, p0, Lorg/apache/b/a/g/b;->b:I

    :cond_a
    if-le p2, p3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v1, p2

    :goto_e
    if-ge v1, p3, :cond_c

    iget-object v2, p0, Lorg/apache/b/a/g/b;->a:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_18

    move v0, v1

    goto :goto_c

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public a(II)Ljava/lang/String;
    .registers 6

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    if-le p2, v0, :cond_12

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_12
    if-le p1, p2, :cond_1a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/b/a/g/b;->b:I

    return-void
.end method

.method public a(C)V
    .registers 5

    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    invoke-direct {p0, v0}, Lorg/apache/b/a/g/b;->e(I)V

    :cond_c
    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    iget v2, p0, Lorg/apache/b/a/g/b;->b:I

    aput-char p1, v1, v2

    iput v0, p0, Lorg/apache/b/a/g/b;->b:I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_4

    const-string p1, "null"

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/b/a/g/b;->b:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/apache/b/a/g/b;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_13

    invoke-direct {p0, v1}, Lorg/apache/b/a/g/b;->e(I)V

    :cond_13
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/b/a/g/b;->a:[C

    iget v4, p0, Lorg/apache/b/a/g/b;->b:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lorg/apache/b/a/g/b;->b:I

    return-void
.end method

.method public a(Lorg/apache/b/a/g/a;II)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lorg/apache/b/a/g/a;->e()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/b/a/g/b;->a([BII)V

    goto :goto_2
.end method

.method public a(Lorg/apache/b/a/g/b;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p1, Lorg/apache/b/a/g/b;->a:[C

    const/4 v1, 0x0

    iget v2, p1, Lorg/apache/b/a/g/b;->b:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/b/a/g/b;->a([CII)V

    goto :goto_2
.end method

.method public a(Lorg/apache/b/a/g/b;II)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p1, Lorg/apache/b/a/g/b;->a:[C

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/b/a/g/b;->a([CII)V

    goto :goto_2
.end method

.method public a([BII)V
    .registers 8

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-ltz p2, :cond_13

    array-length v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p3, :cond_13

    add-int v0, p2, p3

    if-ltz v0, :cond_13

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_19

    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_19
    if-eqz p3, :cond_2

    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    add-int v2, v0, p3

    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    array-length v1, v1

    if-le v2, v1, :cond_27

    invoke-direct {p0, v2}, Lorg/apache/b/a/g/b;->e(I)V

    :cond_27
    move v1, v0

    :goto_28
    if-ge v1, v2, :cond_3b

    aget-byte v0, p1, p2

    if-gez v0, :cond_30

    add-int/lit16 v0, v0, 0x100

    :cond_30
    iget-object v3, p0, Lorg/apache/b/a/g/b;->a:[C

    int-to-char v0, v0

    aput-char v0, v3, v1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_3b
    iput v2, p0, Lorg/apache/b/a/g/b;->b:I

    goto :goto_2
.end method

.method public a([CII)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-ltz p2, :cond_13

    array-length v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p3, :cond_13

    add-int v0, p2, p3

    if-ltz v0, :cond_13

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_19

    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_19
    if-eqz p3, :cond_2

    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_26

    invoke-direct {p0, v0}, Lorg/apache/b/a/g/b;->e(I)V

    :cond_26
    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    iget v2, p0, Lorg/apache/b/a/g/b;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/apache/b/a/g/b;->b:I

    goto :goto_2
.end method

.method public b(II)Ljava/lang/String;
    .registers 6

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    if-le p2, v0, :cond_12

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_12
    if-le p1, p2, :cond_1a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1a
    :goto_1a
    if-ge p1, p2, :cond_29

    iget-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lorg/apache/b/a/g/f;->b(C)Z

    move-result v0

    if-eqz v0, :cond_29

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_29
    :goto_29
    if-le p2, p1, :cond_3a

    iget-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/b/a/g/f;->b(C)Z

    move-result v0

    if-eqz v0, :cond_3a

    add-int/lit8 p2, p2, -0x1

    goto :goto_29

    :cond_3a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    array-length v0, v0

    iget v1, p0, Lorg/apache/b/a/g/b;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_e

    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/apache/b/a/g/b;->e(I)V

    :cond_e
    return-void
.end method

.method public b()[C
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    new-array v0, v0, [C

    iget v1, p0, Lorg/apache/b/a/g/b;->b:I

    if-lez v1, :cond_10

    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    iget v2, p0, Lorg/apache/b/a/g/b;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    return-object v0
.end method

.method public c(I)V
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    array-length v0, v0

    if-le p1, v0, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_d
    iput p1, p0, Lorg/apache/b/a/g/b;->b:I

    return-void
.end method

.method public c()[C
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    return-object v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/g/b;->a:[C

    array-length v0, v0

    return v0
.end method

.method public d(I)I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/b/a/g/b;->b:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/b/a/g/b;->a(III)I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    return v0
.end method

.method public f()Z
    .registers 2

    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()Z
    .registers 3

    iget v0, p0, Lorg/apache/b/a/g/b;->b:I

    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/b/a/g/b;->a:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/b/a/g/b;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
