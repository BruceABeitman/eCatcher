.class final Lcom/squareup/picasso/s;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:J

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/picasso/s;-><init>(Ljava/io/InputStream;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;B)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/picasso/s;->e:J

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    :cond_15
    iput-object p1, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    return-void
.end method

.method private a(JJ)V
    .registers 9

    :goto_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1d

    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    invoke-virtual {p0}, Lcom/squareup/picasso/s;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    const-wide/16 v0, 0x1

    :cond_1b
    add-long/2addr p1, v0

    goto :goto_0

    :cond_1d
    return-void
.end method


# virtual methods
.method public final a(I)J
    .registers 8

    iget-wide v0, p0, Lcom/squareup/picasso/s;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/squareup/picasso/s;->d:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_32

    :try_start_a
    iget-wide v2, p0, Lcom/squareup/picasso/s;->c:J

    iget-wide v4, p0, Lcom/squareup/picasso/s;->b:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_35

    iget-wide v2, p0, Lcom/squareup/picasso/s;->b:J

    iget-wide v4, p0, Lcom/squareup/picasso/s;->d:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_35

    iget-object v2, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    iget-object v2, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    iget-wide v3, p0, Lcom/squareup/picasso/s;->c:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    iget-wide v2, p0, Lcom/squareup/picasso/s;->c:J

    iget-wide v4, p0, Lcom/squareup/picasso/s;->b:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/squareup/picasso/s;->a(JJ)V

    :goto_30
    iput-wide v0, p0, Lcom/squareup/picasso/s;->d:J
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_32} :catch_44

    :cond_32
    iget-wide v0, p0, Lcom/squareup/picasso/s;->b:J

    return-wide v0

    :cond_35
    :try_start_35
    iget-wide v2, p0, Lcom/squareup/picasso/s;->b:J

    iput-wide v2, p0, Lcom/squareup/picasso/s;->c:J

    iget-object v2, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    iget-wide v3, p0, Lcom/squareup/picasso/s;->b:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_43} :catch_44

    goto :goto_30

    :catch_44
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to mark: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(J)V
    .registers 7

    iget-wide v0, p0, Lcom/squareup/picasso/s;->b:J

    iget-wide v2, p0, Lcom/squareup/picasso/s;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    iget-wide v0, p0, Lcom/squareup/picasso/s;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_16

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-wide v0, p0, Lcom/squareup/picasso/s;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/squareup/picasso/s;->a(JJ)V

    iput-wide p1, p0, Lcom/squareup/picasso/s;->b:J

    return-void
.end method

.method public final available()I
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/s;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/picasso/s;->e:J

    return-void
.end method

.method public final markSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .registers 6

    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-wide v1, p0, Lcom/squareup/picasso/s;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/squareup/picasso/s;->b:J

    :cond_10
    return v0
.end method

.method public final read([B)I
    .registers 7

    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-wide v1, p0, Lcom/squareup/picasso/s;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/squareup/picasso/s;->b:J

    :cond_f
    return v0
.end method

.method public final read([BII)I
    .registers 9

    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-wide v1, p0, Lcom/squareup/picasso/s;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/squareup/picasso/s;->b:J

    :cond_f
    return v0
.end method

.method public final reset()V
    .registers 3

    iget-wide v0, p0, Lcom/squareup/picasso/s;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/squareup/picasso/s;->a(J)V

    return-void
.end method

.method public final skip(J)J
    .registers 7

    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/squareup/picasso/s;->b:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/squareup/picasso/s;->b:J

    return-wide v0
.end method
