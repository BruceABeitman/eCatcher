.class public final Lcom/instagram/creation/video/f/ap;
.super Lcom/instagram/creation/video/f/ah;
.source "VideoCoverFragmentJellybean.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:Z

.field final synthetic h:Lcom/instagram/creation/video/f/ao;

.field private volatile i:Landroid/media/MediaExtractor;

.field private volatile j:Landroid/media/MediaCodec;

.field private k:J

.field private volatile l:J

.field private volatile m:Z

.field private volatile n:Z


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/f/ao;Lcom/instagram/creation/video/gl/j;)V
    .registers 8

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    iput-object p1, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/f/ah;-><init>(Lcom/instagram/creation/video/f/ad;Lcom/instagram/creation/video/gl/j;)V

    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    iput-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->m:Z

    iput-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->n:Z

    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/creation/video/f/ap;->c:J

    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->d:J

    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->e:J

    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->f:J

    iput-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    return-void
.end method

.method private a(J)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_32

    monitor-enter p0

    :try_start_9
    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_33

    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_33

    move v2, v0

    :goto_18
    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ap;->n:Z

    iput-wide p1, p0, Lcom/instagram/creation/video/f/ap;->l:J

    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->l:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    iget-boolean v2, p0, Lcom/instagram/creation/video/f/ap;->m:Z

    if-eqz v2, :cond_35

    monitor-exit p0

    :cond_32
    :goto_32
    return-void

    :cond_33
    move v2, v1

    goto :goto_18

    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ap;->m:Z

    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->b:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-lez v2, :cond_5f

    :goto_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_61

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ao;->c()V

    :cond_50
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ao;->b(Lcom/instagram/creation/video/f/ao;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/aq;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/aq;-><init>(Lcom/instagram/creation/video/f/ap;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_32

    :cond_5f
    move v0, v1

    goto :goto_48

    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ap;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ap;->q()V

    return-void
.end method

.method private static b(I)V
    .registers 3

    int-to-long v0, p0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private b(J)Z
    .registers 21

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    new-instance v16, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-wide v8, v13

    move v15, v3

    :goto_f
    if-nez v11, :cond_21b

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/instagram/creation/video/f/ap;->l:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_21b

    if-eqz v12, :cond_1d

    if-nez v10, :cond_21b

    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-object v0, v1, Lcom/instagram/creation/video/f/ao;->e:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-boolean v1, v1, Lcom/instagram/creation/video/f/ao;->d:Z

    if-nez v1, :cond_31

    const/4 v1, 0x0

    monitor-exit v17

    :goto_30
    return v1

    :cond_31
    const/4 v2, -0x1

    if-nez v12, :cond_23c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    if-ltz v2, :cond_23c

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ap;->g:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_55

    const/4 v1, 0x0

    monitor-exit v17
    :try_end_51
    .catchall {:try_start_26 .. :try_end_51} :catchall_52

    goto :goto_30

    :catchall_52
    move-exception v1

    monitor-exit v17

    throw v1

    :cond_55
    :try_start_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    aget-object v1, v1, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-gez v4, :cond_f7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    const/4 v7, 0x4

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    move v6, v2

    move v7, v1

    :goto_7e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12

    const/4 v1, -0x1

    if-eq v12, v1, :cond_238

    const/4 v1, -0x3

    if-eq v12, v1, :cond_238

    const/4 v1, -0x2

    if-eq v12, v1, :cond_238

    if-gez v12, :cond_139

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    move v4, v10

    move v5, v11

    :goto_a1
    const/4 v1, -0x1

    if-ne v6, v1, :cond_215

    const/4 v1, -0x1

    if-ne v12, v1, :cond_215

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v2, v1, v8

    add-int/lit8 v1, v15, 0x1

    const/4 v6, 0x5

    if-le v1, v6, :cond_20b

    const-wide/16 v10, 0x12c

    cmp-long v6, v2, v10

    if-lez v6, :cond_20b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual/range {p0 .. p0}, Lcom/instagram/creation/video/f/ap;->j()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/ao;->c()V

    const/16 v1, 0x32

    invoke-static {v1}, Lcom/instagram/creation/video/f/ap;->b(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-virtual/range {p0 .. p0}, Lcom/instagram/creation/video/f/ap;->h()Z

    move-result v2

    iput-boolean v2, v1, Lcom/instagram/creation/video/f/ao;->d:Z

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/instagram/creation/video/f/ap;->b(I)V

    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/instagram/creation/video/f/ap;->f:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/instagram/creation/video/f/ap;->e:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/instagram/creation/video/f/ap;->d:J

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ap;->g:Z

    const/4 v1, 0x0

    monitor-exit v17

    goto/16 :goto_30

    :cond_f7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    move v6, v2

    move v7, v12

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    goto/16 :goto_7e

    :cond_139
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ap;->g:Z

    move-object/from16 v0, v16

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1f2

    const/4 v2, 0x1

    :goto_147
    if-eqz v2, :cond_150

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    :cond_150
    if-eqz v2, :cond_15c

    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, 0x0

    cmp-long v1, v3, v10

    if-lez v1, :cond_164

    :cond_15c
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/instagram/creation/video/f/ap;->d:J

    :cond_164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/instagram/creation/video/f/ap;->d:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/instagram/creation/video/f/ap;->d:J

    cmp-long v1, v3, p1

    if-gez v1, :cond_183

    if-eqz v2, :cond_1f5

    :cond_183
    const/4 v3, 0x1

    :goto_184
    if-nez v3, :cond_188

    if-eqz v7, :cond_1f7

    :cond_188
    const/4 v1, 0x1

    :goto_189
    if-nez v1, :cond_1b9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/instagram/creation/video/f/ap;->c:J

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x96

    cmp-long v4, v4, v10

    if-lez v4, :cond_1b9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/instagram/creation/video/f/ap;->n:Z

    if-eqz v1, :cond_1fb

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/instagram/creation/video/f/ap;->d:J

    sub-long v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/instagram/creation/video/f/ap;->b:J

    sub-long v10, v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v1, v4, v10

    if-gez v1, :cond_1f9

    const/4 v1, 0x1

    :cond_1b9
    :goto_1b9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v4, v12, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v1, :cond_234

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/instagram/creation/video/f/ap;->d:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/instagram/creation/video/f/ap;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/instagram/creation/video/f/ap;->c:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/instagram/creation/video/f/ap;->b:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v2

    move v5, v3

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    goto/16 :goto_a1

    :cond_1f2
    const/4 v2, 0x0

    goto/16 :goto_147

    :cond_1f5
    const/4 v3, 0x0

    goto :goto_184

    :cond_1f7
    const/4 v1, 0x0

    goto :goto_189

    :cond_1f9
    const/4 v1, 0x0

    goto :goto_1b9

    :cond_1fb
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/instagram/creation/video/f/ap;->d:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/instagram/creation/video/f/ap;->b:J

    cmp-long v1, v4, v10

    if-gez v1, :cond_209

    const/4 v1, 0x1

    goto :goto_1b9

    :cond_209
    const/4 v1, 0x0

    goto :goto_1b9

    :cond_20b
    move v3, v1

    move-wide v1, v8

    :goto_20d
    monitor-exit v17

    move-wide v8, v1

    move v15, v3

    move v10, v4

    move v12, v7

    move v11, v5

    goto/16 :goto_f

    :cond_215
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_219
    .catchall {:try_start_55 .. :try_end_219} :catchall_52

    move-result-wide v1

    goto :goto_20d

    :cond_21b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sub-long/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    const/4 v1, 0x1

    goto/16 :goto_30

    :cond_234
    move v4, v2

    move v5, v3

    goto/16 :goto_a1

    :cond_238
    move v4, v10

    move v5, v11

    goto/16 :goto_a1

    :cond_23c
    move v6, v2

    move v7, v12

    goto/16 :goto_7e
.end method

.method private q()V
    .registers 13

    const-wide/16 v0, -0x1

    :cond_2
    :goto_2
    monitor-enter p0

    :try_start_3
    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-boolean v4, v4, Lcom/instagram/creation/video/f/ao;->d:Z

    if-nez v4, :cond_19

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ap;->m:Z

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_5b

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ao;->d()V

    return-void

    :cond_19
    monitor-exit p0

    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->e:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4b

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->f:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4b

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->e:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4b

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->f:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_4b

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->d:J

    cmp-long v4, v4, v2

    if-ltz v4, :cond_f5

    :cond_4b
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-object v7, v4, Lcom/instagram/creation/video/f/ao;->e:Ljava/lang/Object;

    monitor-enter v7

    :try_start_50
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-boolean v4, v4, Lcom/instagram/creation/video/f/ao;->d:Z

    if-nez v4, :cond_5e

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_58

    goto :goto_2

    :catchall_58
    move-exception v0

    monitor-exit v7

    throw v0

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5e
    :try_start_5e
    iget-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    :cond_6a
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/instagram/creation/video/f/ap;->d:J

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->k:J

    const-wide/32 v8, 0x30d40

    sub-long/2addr v4, v8

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    const/4 v8, 0x1

    invoke-virtual {v6, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/instagram/creation/video/f/ap;->f:J

    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/instagram/creation/video/f/ap;->f:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    iget-wide v8, p0, Lcom/instagram/creation/video/f/ap;->f:J

    cmp-long v6, v8, v2

    if-gez v6, :cond_a9

    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    iput-wide v8, p0, Lcom/instagram/creation/video/f/ap;->f:J

    :cond_a9
    move-wide v5, v4

    iget-object v8, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    const-wide/16 v9, 0x0

    cmp-long v4, v5, v9

    if-nez v4, :cond_f3

    const/4 v4, 0x2

    :goto_b3
    invoke-virtual {v8, v5, v6, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/instagram/creation/video/f/ap;->e:J

    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/instagram/creation/video/f/ap;->e:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    const-wide/32 v8, 0x30d40

    sub-long v4, v5, v8

    iget-wide v8, p0, Lcom/instagram/creation/video/f/ap;->e:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-gez v6, :cond_e9

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gez v6, :cond_a9

    :cond_e9
    monitor-exit v7
    :try_end_ea
    .catchall {:try_start_5e .. :try_end_ea} :catchall_58

    :goto_ea
    invoke-direct {p0, v2, v3}, Lcom/instagram/creation/video/f/ap;->b(J)Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide v0, v2

    goto/16 :goto_2

    :cond_f3
    const/4 v4, 0x0

    goto :goto_b3

    :cond_f5
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    goto :goto_ea
.end method

.method private static r()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic C_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/creation/video/f/ah;->C_()V

    return-void
.end method

.method protected final a(I)V
    .registers 6

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/f/ap;->a(J)V

    return-void
.end method

.method public final bridge synthetic e()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/creation/video/f/ah;->e()V

    return-void
.end method

.method protected final h()Z
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    :try_start_a
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-object v2, v2, Lcom/instagram/creation/video/f/ao;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_5b

    move v0, v1

    :goto_18
    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_8c

    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v5, "mime"

    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->V()V

    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const-string v0, "durationUs"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/instagram/creation/video/f/ap;->k:J

    iput-boolean v1, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    move-object v0, v2

    :goto_4f
    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    if-nez v2, :cond_68

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v3, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    :goto_5a
    return v1

    :catch_5b
    move-exception v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_5a

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_68
    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    new-instance v5, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v2, v0, v5, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    move v1, v4

    goto :goto_5a

    :cond_8c
    move-object v0, v3

    goto :goto_4f
.end method

.method protected final i()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-object v1, v1, Lcom/instagram/creation/video/f/ao;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/b/a/a;)V

    return-void
.end method

.method protected final j()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    :cond_14
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    :cond_1f
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ao;->a(Lcom/instagram/creation/video/f/ao;)Lcom/instagram/creation/video/f/ap;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ao;->b:Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/ao;->c:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->k()V

    :cond_16
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->m()V

    :cond_19
    return-void
.end method
