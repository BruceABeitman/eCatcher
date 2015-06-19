.class public final Lcom/instagram/creation/video/g/b/i;
.super Ljava/lang/Object;
.source "MediaCodecWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final a:Lcom/instagram/creation/video/g/b/d;

.field private final b:Landroid/media/MediaCodec;

.field private final c:Landroid/view/Surface;

.field private final d:Z

.field private e:Landroid/media/MediaFormat;

.field private f:[Ljava/nio/ByteBuffer;

.field private g:[Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/g/b/d;Landroid/media/MediaCodec;Landroid/view/Surface;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_9

    sget-object v0, Lcom/instagram/creation/video/g/b/d;->b:Lcom/instagram/creation/video/g/b/d;

    if-ne p1, v0, :cond_16

    :cond_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Z)V

    iput-object p1, p0, Lcom/instagram/creation/video/g/b/i;->a:Lcom/instagram/creation/video/g/b/d;

    iput-object p2, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    iput-object p3, p0, Lcom/instagram/creation/video/g/b/i;->c:Landroid/view/Surface;

    iput-boolean p4, p0, Lcom/instagram/creation/video/g/b/i;->d:Z

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static a(Landroid/media/MediaCodec;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;
    .registers 5

    new-instance v0, Lcom/instagram/creation/video/g/b/i;

    sget-object v1, Lcom/instagram/creation/video/g/b/d;->b:Lcom/instagram/creation/video/g/b/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/instagram/creation/video/g/b/i;-><init>(Lcom/instagram/creation/video/g/b/d;Landroid/media/MediaCodec;Landroid/view/Surface;Z)V

    return-object v0
.end method

.method static a(Landroid/media/MediaCodec;Z)Lcom/instagram/creation/video/g/b/i;
    .registers 5

    new-instance v0, Lcom/instagram/creation/video/g/b/i;

    sget-object v1, Lcom/instagram/creation/video/g/b/d;->a:Lcom/instagram/creation/video/g/b/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/instagram/creation/video/g/b/i;-><init>(Lcom/instagram/creation/video/g/b/d;Landroid/media/MediaCodec;Landroid/view/Surface;Z)V

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/instagram/creation/video/g/b/f;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->c:Landroid/view/Surface;

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/instagram/common/i/a/f;->b(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    if-ltz v2, :cond_1f

    new-instance v0, Lcom/instagram/creation/video/g/b/f;

    iget-object v3, p0, Lcom/instagram/creation/video/g/b/i;->f:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v2

    invoke-direct {v0, v3, v2, v1}, Lcom/instagram/creation/video/g/b/f;-><init>(Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_6

    :cond_1f
    move-object v0, v1

    goto :goto_1c
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->c:Landroid/view/Surface;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/b/i;->f:[Ljava/nio/ByteBuffer;

    :cond_11
    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/b/i;->g:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/g/b/f;)V
    .registers 9

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Lcom/instagram/creation/video/g/b/f;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/instagram/creation/video/g/b/f;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1}, Lcom/instagram/creation/video/g/b/f;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1}, Lcom/instagram/creation/video/g/b/f;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1}, Lcom/instagram/creation/video/g/b/f;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v6

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/g/b/f;Z)V
    .registers 5

    invoke-virtual {p1}, Lcom/instagram/creation/video/g/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Lcom/instagram/creation/video/g/b/f;->c()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_f
    return-void
.end method

.method public final b(J)Lcom/instagram/creation/video/g/b/f;
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    if-ltz v2, :cond_1a

    new-instance v0, Lcom/instagram/creation/video/g/b/f;

    iget-object v3, p0, Lcom/instagram/creation/video/g/b/i;->g:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v2

    invoke-direct {v0, v3, v2, v1}, Lcom/instagram/creation/video/g/b/f;-><init>(Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    :goto_19
    :pswitch_19
    return-object v0

    :cond_1a
    packed-switch v2, :pswitch_data_3a

    goto :goto_19

    :pswitch_1e
    iget-object v1, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/creation/video/g/b/i;->g:[Ljava/nio/ByteBuffer;

    goto :goto_19

    :pswitch_27
    iget-object v1, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/creation/video/g/b/i;->e:Landroid/media/MediaFormat;

    new-instance v1, Lcom/instagram/creation/video/g/b/f;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v0}, Lcom/instagram/creation/video/g/b/f;-><init>(Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v1}, Lcom/instagram/creation/video/g/b/f;->f()V

    move-object v0, v1

    goto :goto_19

    :pswitch_data_3a
    .packed-switch -0x3
        :pswitch_1e
        :pswitch_27
        :pswitch_19
    .end packed-switch
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/instagram/creation/video/g/b/i;->f:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/instagram/creation/video/g/b/i;->g:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/instagram/creation/video/g/b/i;->e:Landroid/media/MediaFormat;

    :cond_15
    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->c:Landroid/view/Surface;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->c:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1e
    return-void
.end method

.method public final b(Lcom/instagram/creation/video/g/b/f;)V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/creation/video/g/b/i;->d:Z

    invoke-virtual {p0, p1, v0}, Lcom/instagram/creation/video/g/b/i;->a(Lcom/instagram/creation/video/g/b/f;Z)V

    return-void
.end method

.method public final c()Landroid/media/MediaFormat;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->e:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public final d()Landroid/view/Surface;
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->a:Lcom/instagram/creation/video/g/b/d;

    sget-object v1, Lcom/instagram/creation/video/g/b/d;->b:Lcom/instagram/creation/video/g/b/d;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->c:Landroid/view/Surface;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final e()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->a:Lcom/instagram/creation/video/g/b/d;

    sget-object v1, Lcom/instagram/creation/video/g/b/d;->b:Lcom/instagram/creation/video/g/b/d;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/i;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method
