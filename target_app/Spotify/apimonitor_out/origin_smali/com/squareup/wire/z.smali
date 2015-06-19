.class public final Lcom/squareup/wire/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/z;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/z;->c:I

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/squareup/wire/z;->b:I

    return-void
.end method

.method static a(I)I
    .registers 2

    sget-object v0, Lcom/squareup/wire/WireType;->a:Lcom/squareup/wire/WireType;

    invoke-static {p0, v0}, Lcom/squareup/wire/z;->a(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/z;->b(I)I

    move-result v0

    return v0
.end method

.method public static a(ILcom/squareup/wire/WireType;)I
    .registers 4

    shl-int/lit8 v0, p0, 0x3

    invoke-virtual {p1}, Lcom/squareup/wire/WireType;->a()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method static a(J)I
    .registers 6

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    goto :goto_a

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_a

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    goto :goto_a

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    goto :goto_a

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    goto :goto_a

    :cond_40
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    goto :goto_a

    :cond_49
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    goto :goto_a

    :cond_53
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    goto :goto_a

    :cond_5d
    const/16 v0, 0xa

    goto :goto_a
.end method

.method static a([BI)Lcom/squareup/wire/z;
    .registers 3

    new-instance v0, Lcom/squareup/wire/z;

    invoke-direct {v0, p0, p1}, Lcom/squareup/wire/z;-><init>([BI)V

    return-object v0
.end method

.method static b(I)I
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

.method static d(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static f(I)I
    .registers 3

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method final a([B)V
    .registers 6

    array-length v0, p1

    iget v1, p0, Lcom/squareup/wire/z;->b:I

    iget v2, p0, Lcom/squareup/wire/z;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_16

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/wire/z;->a:[B

    iget v3, p0, Lcom/squareup/wire/z;->c:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/squareup/wire/z;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/wire/z;->c:I

    return-void

    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out of space: position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/z;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/z;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b(ILcom/squareup/wire/WireType;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/squareup/wire/z;->a(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->d(I)V

    return-void
.end method

.method final b(J)V
    .registers 7

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method final c(I)V
    .registers 6

    int-to-byte v0, p1

    iget v1, p0, Lcom/squareup/wire/z;->c:I

    iget v2, p0, Lcom/squareup/wire/z;->b:I

    if-ne v1, v2, :cond_2a

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out of space: position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/z;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/z;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v1, p0, Lcom/squareup/wire/z;->a:[B

    iget v2, p0, Lcom/squareup/wire/z;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/squareup/wire/z;->c:I

    aput-byte v0, v1, v2

    return-void
.end method

.method final c(J)V
    .registers 5

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    return-void
.end method

.method final d(I)V
    .registers 3

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/squareup/wire/z;->c(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method final e(I)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/z;->c(I)V

    return-void
.end method
