.class public Lcom/sun/mail/util/BASE64EncoderStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field private static newline:[B

.field private static final pem_array:[C


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private bytesPerLine:I

.field private count:I

.field private lineLimit:I

.field private noCRLF:Z

.field private outbuf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    return-void

    :array_12
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_18
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_17

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1c

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    const/16 p2, 0x4c

    :cond_1c
    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    div-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    iget-boolean v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-eqz v1, :cond_31

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    :goto_30
    return-void

    :cond_31
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    const/16 v2, 0xd

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v1, v0

    goto :goto_30
.end method

.method private encode()V
    .registers 7

    const/4 v5, 0x0

    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {v2, v5, v3, v4}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    if-lt v0, v1, :cond_2e

    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_2c
    iput v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    :cond_2e
    return-void
.end method

.method public static encode([B)[B
    .registers 4

    array-length v0, p0

    if-nez v0, :cond_4

    :goto_3
    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object p0

    goto :goto_3
.end method

.method private static encode([BII[B)[B
    .registers 10

    const/16 v5, 0x3d

    if-nez p3, :cond_a

    invoke-static {p2}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v0

    new-array p3, v0, [B

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x3

    if-ge p2, v1, :cond_3a

    const/4 v1, 0x1

    if-ne p2, v1, :cond_89

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v0, 0x3

    aput-byte v5, p3, v2

    add-int/lit8 v2, v0, 0x2

    aput-byte v5, p3, v2

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x0

    sget-object v2, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v2, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    :cond_39
    :goto_39
    return-object p3

    :cond_3a
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, v3, 0x1

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x0

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    add-int/lit8 p2, p2, -0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_b

    :cond_89
    const/4 v1, 0x2

    if-ne p2, v1, :cond_39

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v0, 0x3

    aput-byte v5, p3, v2

    add-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x0

    sget-object v2, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v2, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    goto/16 :goto_39
.end method

.method private static encodedSize(I)I
    .registers 2

    add-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->flush()V

    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    if-lez v0, :cond_18

    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_18
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-lez v0, :cond_b

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    :cond_b
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/BASE64EncoderStream;->write([BII)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .registers 11

    monitor-enter p0

    add-int v2, p2, p3

    move v0, p2

    :goto_4
    :try_start_4
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-eqz v1, :cond_a

    if-lt v0, v2, :cond_68

    :cond_a
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v3, v1, 0x3

    add-int v1, v0, v3

    if-ge v1, v2, :cond_3f

    invoke-static {v3}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v1

    iget-boolean v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v4, :cond_2f

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0xd

    aput-byte v6, v4, v1

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v1, v5, 0x1

    const/16 v6, 0xa

    aput-byte v6, v4, v5

    :cond_2f
    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, v0, v3, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v3

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    :cond_3f
    :goto_3f
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    add-int/2addr v1, v0

    if-lt v1, v2, :cond_71

    add-int/lit8 v1, v0, 0x3

    if-ge v1, v2, :cond_64

    sub-int v1, v2, v0

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, v0, v1, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I
    :try_end_64
    .catchall {:try_start_4 .. :try_end_64} :catchall_8a

    :cond_64
    :goto_64
    if-lt v0, v2, :cond_82

    monitor-exit p0

    return-void

    :cond_68
    add-int/lit8 p2, v0, 0x1

    :try_start_6a
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V

    move v0, p2

    goto :goto_4

    :cond_71
    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, v0, v3, v4}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    add-int/2addr v0, v1

    goto :goto_3f

    :cond_82
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V
    :try_end_87
    .catchall {:try_start_6a .. :try_end_87} :catchall_8a

    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
