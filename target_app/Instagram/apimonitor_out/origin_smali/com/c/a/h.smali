.class final Lcom/c/a/h;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/nio/charset/Charset;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/c/a/h;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_d
    sget-object v0, Lcom/c/a/j;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iput-object p1, p0, Lcom/c/a/h;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/c/a/h;->b:Ljava/nio/charset/Charset;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/c/a/h;->c:[B

    return-void
.end method

.method static synthetic a(Lcom/c/a/h;)Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lcom/c/a/h;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private b()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/c/a/h;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/c/a/h;->c:[B

    iget-object v2, p0, Lcom/c/a/h;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_15
    iput v3, p0, Lcom/c/a/h;->d:I

    iput v0, p0, Lcom/c/a/h;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    const/16 v6, 0xa

    iget-object v3, p0, Lcom/c/a/h;->a:Ljava/io/InputStream;

    monitor-enter v3

    :try_start_5
    iget-object v0, p0, Lcom/c/a/h;->c:[B

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_14
    :try_start_14
    iget v0, p0, Lcom/c/a/h;->d:I

    iget v1, p0, Lcom/c/a/h;->e:I

    if-lt v0, v1, :cond_1d

    invoke-direct {p0}, Lcom/c/a/h;->b()V

    :cond_1d
    iget v2, p0, Lcom/c/a/h;->d:I

    :goto_1f
    iget v0, p0, Lcom/c/a/h;->e:I

    if-eq v2, v0, :cond_57

    iget-object v0, p0, Lcom/c/a/h;->c:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_54

    iget v0, p0, Lcom/c/a/h;->d:I

    if-eq v2, v0, :cond_52

    iget-object v0, p0, Lcom/c/a/h;->c:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_52

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_3a
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/c/a/h;->c:[B

    iget v5, p0, Lcom/c/a/h;->d:I

    iget v6, p0, Lcom/c/a/h;->d:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/c/a/h;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/c/a/h;->d:I

    monitor-exit v3

    :goto_51
    return-object v0

    :cond_52
    move v1, v2

    goto :goto_3a

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_57
    new-instance v1, Lcom/c/a/i;

    iget v0, p0, Lcom/c/a/h;->e:I

    iget v2, p0, Lcom/c/a/h;->d:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/c/a/i;-><init>(Lcom/c/a/h;I)V

    :cond_63
    iget-object v0, p0, Lcom/c/a/h;->c:[B

    iget v2, p0, Lcom/c/a/h;->d:I

    iget v4, p0, Lcom/c/a/h;->e:I

    iget v5, p0, Lcom/c/a/h;->d:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/c/a/h;->e:I

    invoke-direct {p0}, Lcom/c/a/h;->b()V

    iget v0, p0, Lcom/c/a/h;->d:I

    :goto_77
    iget v2, p0, Lcom/c/a/h;->e:I

    if-eq v0, v2, :cond_63

    iget-object v2, p0, Lcom/c/a/h;->c:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_9a

    iget v2, p0, Lcom/c/a/h;->d:I

    if-eq v0, v2, :cond_90

    iget-object v2, p0, Lcom/c/a/h;->c:[B

    iget v4, p0, Lcom/c/a/h;->d:I

    iget v5, p0, Lcom/c/a/h;->d:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_90
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/a/h;->d:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3
    :try_end_99
    .catchall {:try_start_14 .. :try_end_99} :catchall_11

    goto :goto_51

    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_77
.end method

.method public final close()V
    .registers 3

    iget-object v1, p0, Lcom/c/a/h;->a:Ljava/io/InputStream;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/c/a/h;->c:[B

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/h;->c:[B

    iget-object v0, p0, Lcom/c/a/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
