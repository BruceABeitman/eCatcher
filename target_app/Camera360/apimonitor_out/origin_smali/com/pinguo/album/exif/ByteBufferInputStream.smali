.class Lcom/pinguo/album/exif/ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferInputStream.java"


# instance fields
.field private mBuf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/pinguo/album/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_9
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/pinguo/album/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/pinguo/album/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v0, p3

    goto :goto_9
.end method
