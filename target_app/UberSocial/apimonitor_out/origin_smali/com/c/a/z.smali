.class public Lcom/c/a/z;
.super Ljava/io/InputStream;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/nio/ByteBuffer;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/c/a/z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/c/a/z;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;II)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    sget-boolean v0, Lcom/c/a/z;->a:Z

    if-nez v0, :cond_13

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    iput p2, p0, Lcom/c/a/z;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/c/a/z;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    add-int v1, p2, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/c/a/z;->a:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3b
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/c/a/z;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public available()I
    .registers 2

    iget-object v0, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_5} :catch_9

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, -0x1

    goto :goto_8
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/c/a/z;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public skip(J)J
    .registers 8

    invoke-virtual {p0}, Lcom/c/a/z;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/c/a/z;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v0

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide v0
.end method
