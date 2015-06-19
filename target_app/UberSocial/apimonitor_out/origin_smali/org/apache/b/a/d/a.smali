.class public Lorg/apache/b/a/d/a;
.super Lorg/apache/b/a/d/e;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/b/a/d/a;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/b/a/d/e;-><init>(Ljava/io/InputStream;)V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-gtz p2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size may not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/b/a/d/a;->a:[B

    iput v1, p0, Lorg/apache/b/a/d/a;->b:I

    iput v1, p0, Lorg/apache/b/a/d/a;->c:I

    iput p3, p0, Lorg/apache/b/a/d/a;->d:I

    return-void
.end method

.method private d(I)V
    .registers 7

    new-array v0, p1, [B

    iget v1, p0, Lorg/apache/b/a/d/a;->c:I

    iget v2, p0, Lorg/apache/b/a/d/a;->b:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_12

    iget-object v2, p0, Lorg/apache/b/a/d/a;->a:[B

    iget v3, p0, Lorg/apache/b/a/d/a;->b:I

    iget v4, p0, Lorg/apache/b/a/d/a;->b:I

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    iput-object v0, p0, Lorg/apache/b/a/d/a;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .registers 7

    const/4 v5, 0x0

    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/b/a/d/a;->b:I

    if-lez v1, :cond_1a

    iget v1, p0, Lorg/apache/b/a/d/a;->c:I

    iget v2, p0, Lorg/apache/b/a/d/a;->b:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_16

    iget-object v2, p0, Lorg/apache/b/a/d/a;->a:[B

    iget v3, p0, Lorg/apache/b/a/d/a;->b:I

    iget-object v4, p0, Lorg/apache/b/a/d/a;->a:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    iput v5, p0, Lorg/apache/b/a/d/a;->b:I

    iput v1, p0, Lorg/apache/b/a/d/a;->c:I

    :cond_1a
    iget v2, p0, Lorg/apache/b/a/d/a;->c:I

    iget-object v1, p0, Lorg/apache/b/a/d/a;->a:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    iget-object v3, p0, Lorg/apache/b/a/d/a;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/b/a/d/a;->a:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_2b

    :goto_2a
    return v0

    :cond_2b
    add-int v0, v2, v1

    iput v0, p0, Lorg/apache/b/a/d/a;->c:I

    move v0, v1

    goto :goto_2a
.end method

.method public a(B)I
    .registers 5

    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    iget v1, p0, Lorg/apache/b/a/d/a;->c:I

    iget v2, p0, Lorg/apache/b/a/d/a;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/b/a/d/a;->a(BII)I

    move-result v0

    return v0
.end method

.method public a(BII)I
    .registers 6

    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    if-lt p2, v0, :cond_c

    if-ltz p3, :cond_c

    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/b/a/d/a;->c:I

    if-le v0, v1, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_12
    move v0, p2

    :goto_13
    add-int v1, p2, p3

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lorg/apache/b/a/d/a;->a:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method public a(Lorg/apache/b/a/g/a;)I
    .registers 9

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move v4, v0

    move v1, v0

    :cond_e
    if-nez v4, :cond_1c

    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->b()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->a()I

    move-result v0

    if-ne v0, v2, :cond_22

    :cond_1c
    if-nez v1, :cond_21

    if-ne v0, v2, :cond_21

    move v1, v2

    :cond_21
    return v1

    :cond_22
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/apache/b/a/d/a;->a(B)I

    move-result v3

    if-eq v3, v2, :cond_57

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->d()I

    move-result v5

    sub-int/2addr v3, v5

    :goto_32
    if-lez v3, :cond_43

    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->c()[B

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->d()I

    move-result v6

    invoke-virtual {p1, v5, v6, v3}, Lorg/apache/b/a/g/a;->a([BII)V

    invoke-virtual {p0, v3}, Lorg/apache/b/a/d/a;->c(I)I

    add-int/2addr v1, v3

    :cond_43
    iget v3, p0, Lorg/apache/b/a/d/a;->d:I

    if-lez v3, :cond_e

    invoke-virtual {p1}, Lorg/apache/b/a/g/a;->d()I

    move-result v3

    iget v5, p0, Lorg/apache/b/a/d/a;->d:I

    if-lt v3, v5, :cond_e

    new-instance v0, Lorg/apache/b/a/d/h;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/b/a/d/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->f()I

    move-result v3

    goto :goto_32
.end method

.method public a([B)I
    .registers 5

    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    iget v1, p0, Lorg/apache/b/a/d/a;->c:I

    iget v2, p0, Lorg/apache/b/a/d/a;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/b/a/d/a;->a([BII)I

    move-result v0

    return v0
.end method

.method public a([BII)I
    .registers 13

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    if-lt p2, v0, :cond_18

    if-ltz p3, :cond_18

    add-int v0, p2, p3

    iget v2, p0, Lorg/apache/b/a/d/a;->c:I

    if-le v0, v2, :cond_1e

    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1e
    array-length v0, p1

    if-ge p3, v0, :cond_23

    move v0, v3

    :goto_22
    return v0

    :cond_23
    const/16 v0, 0x100

    new-array v6, v0, [I

    move v0, v1

    :goto_28
    array-length v2, v6

    if-ge v0, v2, :cond_33

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_33
    move v0, v1

    :goto_34
    array-length v2, p1

    if-ge v0, v2, :cond_42

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    array-length v4, p1

    sub-int/2addr v4, v0

    aput v4, v6, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_42
    move v0, v1

    :goto_43
    array-length v2, p1

    sub-int v2, p3, v2

    if-gt v0, v2, :cond_68

    add-int v4, p2, v0

    const/4 v5, 0x1

    move v2, v1

    :goto_4c
    array-length v7, p1

    if-ge v2, v7, :cond_74

    iget-object v7, p0, Lorg/apache/b/a/d/a;->a:[B

    add-int v8, v4, v2

    aget-byte v7, v7, v8

    aget-byte v8, p1, v2

    if-eq v7, v8, :cond_5e

    move v2, v1

    :goto_5a
    if-eqz v2, :cond_61

    move v0, v4

    goto :goto_22

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_61
    array-length v2, p1

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/apache/b/a/d/a;->a:[B

    array-length v4, v4

    if-lt v2, v4, :cond_6a

    :cond_68
    move v0, v3

    goto :goto_22

    :cond_6a
    iget-object v4, p0, Lorg/apache/b/a/d/a;->a:[B

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    add-int/2addr v0, v2

    goto :goto_43

    :cond_74
    move v2, v5

    goto :goto_5a
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/d/a;->a:[B

    array-length v0, v0

    if-le p1, v0, :cond_8

    invoke-direct {p0, p1}, Lorg/apache/b/a/d/a;->d(I)V

    :cond_8
    return-void
.end method

.method public b(I)B
    .registers 3

    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    if-lt p1, v0, :cond_8

    iget v0, p0, Lorg/apache/b/a/d/a;->c:I

    if-le p1, v0, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lorg/apache/b/a/d/a;->a:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public b()Z
    .registers 3

    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    iget v1, p0, Lorg/apache/b/a/d/a;->c:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(I)I
    .registers 4

    iget v0, p0, Lorg/apache/b/a/d/a;->c:I

    iget v1, p0, Lorg/apache/b/a/d/a;->b:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/apache/b/a/d/a;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/b/a/d/a;->b:I

    return v0
.end method

.method public c()[B
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/d/a;->a:[B

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/apache/b/a/d/a;->c:I

    return v0
.end method

.method public f()I
    .registers 3

    iget v0, p0, Lorg/apache/b/a/d/a;->c:I

    iget v1, p0, Lorg/apache/b/a/d/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/d/a;->a:[B

    array-length v0, v0

    return v0
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/b/a/d/a;->b:I

    iput v0, p0, Lorg/apache/b/a/d/a;->c:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4

    const/4 v0, -0x1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->b()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->a()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lorg/apache/b/a/d/a;->a:[B

    iget v1, p0, Lorg/apache/b/a/d/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/b/a/d/a;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_d
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/b/a/d/a;->read([BII)I

    move-result v0

    goto :goto_3
.end method

.method public read([BII)I
    .registers 6

    const/4 v0, -0x1

    if-nez p1, :cond_5

    const/4 p3, 0x0

    :goto_4
    return p3

    :cond_5
    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->b()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lorg/apache/b/a/d/a;->a()I

    move-result v1

    if-ne v1, v0, :cond_5

    move p3, v0

    goto :goto_4

    :cond_13
    iget v0, p0, Lorg/apache/b/a/d/a;->c:I

    iget v1, p0, Lorg/apache/b/a/d/a;->b:I

    sub-int/2addr v0, v1

    if-le v0, p3, :cond_27

    :goto_1a
    iget-object v0, p0, Lorg/apache/b/a/d/a;->a:[B

    iget v1, p0, Lorg/apache/b/a/d/a;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/b/a/d/a;->b:I

    goto :goto_4

    :cond_27
    move p3, v0

    goto :goto_1a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "[pos: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "[limit: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/b/a/d/a;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/b/a/d/a;->b:I

    :goto_2a
    iget v2, p0, Lorg/apache/b/a/d/a;->c:I

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lorg/apache/b/a/d/a;->a:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_39
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
