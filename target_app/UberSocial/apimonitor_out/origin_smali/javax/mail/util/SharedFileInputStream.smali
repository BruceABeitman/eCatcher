.class public Ljavax/mail/util/SharedFileInputStream;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# static fields
.field private static defaultBufferSize:I


# instance fields
.field protected bufpos:J

.field protected bufsize:I

.field protected datalen:J

.field protected in:Ljava/io/RandomAccessFile;

.field private master:Z

.field private sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x800

    sput v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-gtz p2, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-gtz p2, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    return-void
.end method

.method private constructor <init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iput-wide p4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    iput p6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    new-array v0, p6, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    return-void
.end method

.method private ensureOpen()V
    .registers 3

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private fill()V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-gez v0, :cond_54

    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    :cond_f
    :goto_f
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v3, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v1, v3

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-wide v3, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_42

    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v4, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v2, v4

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_42
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-lez v0, :cond_53

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    :cond_53
    return-void

    :cond_54
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_f

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-lez v0, :cond_7a

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iget-object v3, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    goto :goto_f

    :cond_7a
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-lt v0, v1, :cond_8f

    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    goto :goto_f

    :cond_8f
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-le v0, v1, :cond_99

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    :cond_99
    new-array v0, v0, [B

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    goto/16 :goto_f
.end method

.method private in_available()I
    .registers 7

    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V
    .registers 5

    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    iput p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    new-array v0, p2, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    return-void
.end method

.method private read1([BII)I
    .registers 6

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_13

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_13

    const/4 p3, -0x1

    :goto_12
    return p3

    :cond_13
    if-ge v0, p3, :cond_16

    move p3, v0

    :cond_16
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    goto :goto_12
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->in_available()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    :try_start_6
    iget-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v0}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->forceClose()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1c

    :goto_f
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    goto :goto_5

    :cond_16
    :try_start_16
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v0}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->close()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_f

    :catchall_1c
    move-exception v0

    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    throw v0
.end method

.method protected finalize()V
    .registers 1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    return-void
.end method

.method public getPosition()J
    .registers 5

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .registers 12

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_22

    iget-wide p3, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    :cond_22
    new-instance v0, Ljavax/mail/util/SharedFileInputStream;

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    long-to-int v4, p1

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long v4, p3, p1

    long-to-int v4, v4

    int-to-long v4, v4

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    invoke-direct/range {v0 .. v6}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V

    return-object v0
.end method

.method public declared-synchronized read()I
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_23

    if-lt v0, v1, :cond_16

    const/4 v0, -0x1

    :goto_14
    monitor-exit p0

    return v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_23

    and-int/lit16 v0, v0, 0xff

    goto :goto_14

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-gez v0, :cond_19

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_19
    if-nez p3, :cond_1e

    const/4 v0, 0x0

    :cond_1c
    monitor-exit p0

    return v0

    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v0

    if-lez v0, :cond_1c

    :goto_24
    if-ge v0, p3, :cond_1c

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-direct {p0, p1, v1, v2}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_16

    move-result v1

    if-lez v1, :cond_1c

    add-int/2addr v0, v1

    goto :goto_24
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-gez v0, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_10

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .registers 8

    const-wide/16 v0, 0x0

    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_30

    cmp-long v2, p1, v0

    if-gtz v2, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return-wide v0

    :cond_c
    :try_start_c
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_23

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_a

    :cond_23
    move-wide v0, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_33

    :goto_28
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_30

    goto :goto_a

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    move-wide v0, p1

    goto :goto_28
.end method
