.class public Lcom/vandalsoftware/io/UnsafeByteSequence;
.super Ljava/lang/Object;
.source "UnsafeByteSequence.java"


# instance fields
.field private bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    return-void
.end method


# virtual methods
.method public rewind()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    const/4 v3, 0x0

    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_b

    iget-object v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    :goto_a
    return-object v0

    :cond_b
    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-direct {v1, v2, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_b} :catch_c

    :goto_b
    return-object v1

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v3, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-direct {v1, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_b
.end method

.method public write(I)V
    .registers 6

    const/4 v3, 0x0

    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_17

    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    :cond_17
    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    return-void
.end method

.method public write([BII)V
    .registers 8

    const/4 v3, 0x0

    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_19

    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    :cond_19
    iget-object v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/vandalsoftware/io/UnsafeByteSequence;->count:I

    return-void
.end method
