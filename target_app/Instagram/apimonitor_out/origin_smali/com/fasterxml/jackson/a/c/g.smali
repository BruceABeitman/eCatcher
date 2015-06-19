.class public final Lcom/fasterxml/jackson/a/c/g;
.super Ljava/io/InputStream;
.source "MergedStream.java"


# instance fields
.field protected final a:Lcom/fasterxml/jackson/a/c/d;

.field final b:Ljava/io/InputStream;

.field c:[B

.field d:I

.field final e:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;[BII)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/a/c/g;->a:Lcom/fasterxml/jackson/a/c/d;

    iput-object p2, p0, Lcom/fasterxml/jackson/a/c/g;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    iput p4, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    iput p5, p0, Lcom/fasterxml/jackson/a/c/g;->e:I

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/g;->a:Lcom/fasterxml/jackson/a/c/d;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/g;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->a([B)V

    :cond_10
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/fasterxml/jackson/a/c/g;->e:I

    iget v1, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    sub-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_9
.end method

.method public final close()V
    .registers 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/c/g;->a()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    :cond_9
    return-void
.end method

.method public final markSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final read()I
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    iget v2, p0, Lcom/fasterxml/jackson/a/c/g;->e:I

    if-lt v1, v2, :cond_19

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/c/g;->a()V

    :cond_19
    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_19
.end method

.method public final read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/a/c/g;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 7

    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/fasterxml/jackson/a/c/g;->e:I

    iget v2, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    sub-int v0, v1, v2

    if-le p3, v0, :cond_d

    move p3, v0

    :cond_d
    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    iget v1, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    iget v2, p0, Lcom/fasterxml/jackson/a/c/g;->e:I

    if-lt v1, v2, :cond_22

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/c/g;->a()V

    :cond_22
    move v1, p3

    :goto_23
    return v1

    :cond_24
    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/g;->b:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_23
.end method

.method public final reset()V
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_9
    return-void
.end method

.method public final skip(J)J
    .registers 9

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/g;->c:[B

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/fasterxml/jackson/a/c/g;->e:I

    iget v1, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    sub-int v4, v0, v1

    int-to-long v0, v4

    cmp-long v0, v0, p1

    if-lez v0, :cond_19

    iget v0, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/c/g;->d:I

    move-wide v0, p1

    :cond_18
    :goto_18
    return-wide v0

    :cond_19
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/c/g;->a()V

    int-to-long v0, v4

    add-long/2addr v0, v2

    int-to-long v4, v4

    sub-long/2addr p1, v4

    :goto_20
    cmp-long v2, p1, v2

    if-lez v2, :cond_18

    iget-object v2, p0, Lcom/fasterxml/jackson/a/c/g;->b:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_18

    :cond_2c
    move-wide v0, v2

    goto :goto_20
.end method
