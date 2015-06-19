.class public final Lcom/instagram/creation/video/j/d;
.super Lcom/instagram/creation/video/j/a;
.source "FinalRenderController.java"
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private final d:Lcom/instagram/creation/b/a/b;
.field private final e:Lcom/instagram/creation/b/a/a;
.field private f:Landroid/media/MediaFormat;
.field private g:Landroid/media/MediaExtractor;
.field private h:Ljava/nio/ByteBuffer;
.field private i:Landroid/media/MediaExtractor;
.field private j:Landroid/media/MediaCodec;
.field private k:Landroid/media/MediaFormat;
.field private l:[Ljava/nio/ByteBuffer;
.field private m:Landroid/media/MediaCodec$BufferInfo;
.field private n:I
.field private o:I
.field private p:Ljava/util/Queue;
.field private q:Lcom/instagram/creation/video/j/f;
.field private r:I
.field private s:I
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
.registers 8
const/4 v3, 0x0
new-instance v0, Lcom/instagram/creation/video/gl/j;
const/4 v1, 0x0
const/16 v2, 0x280
invoke-direct {v0, v1, v2}, Lcom/instagram/creation/video/gl/j;-><init>(Landroid/graphics/SurfaceTexture;I)V
invoke-direct {p0, v0}, Lcom/instagram/creation/video/j/a;-><init>(Lcom/instagram/creation/video/gl/j;)V
const/16 v0, 0x2000
invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;
new-instance v0, Landroid/media/MediaCodec$BufferInfo;
invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;
iput v3, p0, Lcom/instagram/creation/video/j/d;->n:I
iput v3, p0, Lcom/instagram/creation/video/j/d;->o:I
invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->J()Lcom/instagram/creation/b/a/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;
invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->d()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
new-instance v0, Lcom/instagram/creation/video/j/f;
invoke-direct {v0}, Lcom/instagram/creation/video/j/f;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;
invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->b()V
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;
invoke-virtual {v0, p3}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/video/e/c;)V
invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->l()Lcom/instagram/creation/video/gl/j;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/p;)V
iput-object p2, p0, Lcom/instagram/creation/video/j/d;->d:Lcom/instagram/creation/b/a/b;
new-instance v0, Landroid/media/MediaExtractor;
invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
new-instance v0, Landroid/media/MediaExtractor;
invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
:try_start_5b
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
:try_end_71
.catch Ljava/io/IOException; {:try_start_5b .. :try_end_71} :catch_92
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->p:Ljava/util/Queue;
const-string v0, "mkv"
invoke-static {p1, p2, v0}, Lcom/instagram/creation/video/l/j;->a(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;
new-instance v0, Ljava/io/File;
invoke-static {p1}, Lcom/instagram/creation/video/l/j;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
const-string v2, "audio.ogg"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->c:Ljava/lang/String;
return-void
:catch_92
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Error accessing disk for media extraction."
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method private a(J)V
.registers 8
:goto_0
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J
move-result-wide v0
cmp-long v2, v0, p1
if-gez v2, :cond_26
const-wide/16 v2, -0x1
cmp-long v2, v0, v2
if-eqz v2, :cond_26
iget-object v2, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
iget-object v3, p0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I
move-result v2
if-ltz v2, :cond_26
iget-object v3, p0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;
invoke-static {v3, v2, v0, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->writeAudioPacket(Ljava/nio/ByteBuffer;IJ)I
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z
goto :goto_0
:cond_26
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 18
invoke-direct/range {p0 .. p0}, Lcom/instagram/creation/video/j/d;->k()Landroid/media/MediaCodec;
move-result-object v1
invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v10
invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v3
new-instance v11, Landroid/media/MediaCodec$BufferInfo;
invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
invoke-direct/range {p0 .. p1}, Lcom/instagram/creation/video/j/d;->b(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->f()I
move-result v2
mul-int/lit16 v12, v2, 0x3e8
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->g()I
move-result v2
mul-int/lit16 v13, v2, 0x3e8
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
int-to-long v4, v12
const/4 v6, 0x0
invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
const/4 v2, 0x0
move-object v8, v3
move v3, v2
:goto_37
const-wide/16 v4, 0x2710
invoke-virtual {v1, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
move-result v2
if-ltz v2, :cond_82
const/4 v9, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
aget-object v4, v10, v2
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I
move-result v4
if-gez v4, :cond_6c
const/4 v3, 0x0
const/4 v4, 0x0
const-wide/16 v5, 0x0
const/4 v7, 0x4
invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
move v2, v9
:goto_56
:cond_56
const-wide/16 v3, 0x2710
invoke-virtual {v1, v11, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
move-result v3
iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I
and-int/lit8 v4, v4, 0x4
if-nez v4, :cond_c8
const/4 v4, -0x3
if-ne v3, v4, :cond_90
invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v3
move-object v8, v3
move v3, v2
goto :goto_37
:cond_6c
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v5, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J
move-result-wide v5
const/4 v7, 0x0
invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z
move v2, v9
goto :goto_56
:cond_82
add-int/lit8 v2, v3, 0x1
const/16 v4, 0xc8
if-lt v3, v4, :cond_56
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Could not decode audio because of unavailale codec buffers."
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_90
if-ltz v3, :cond_c5
aget-object v4, v8, v3
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
iget v5, v11, Landroid/media/MediaCodec$BufferInfo;->size:I
invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
iget-wide v5, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
int-to-long v14, v12
cmp-long v5, v5, v14
if-ltz v5, :cond_c1
iget-wide v5, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
int-to-long v14, v13
cmp-long v5, v5, v14
if-gtz v5, :cond_c1
move-object/from16 v0, p0
iget-object v5, v0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;
invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;
iget v5, v11, Landroid/media/MediaCodec$BufferInfo;->size:I
invoke-static {v4, v5}, Lcom/instagram/creation/video/jni/VideoBridge;->encodeAudioBuffer(Ljava/nio/ByteBuffer;I)I
:cond_c1
const/4 v4, 0x0
invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
:cond_c5
move v3, v2
goto/16 :goto_37
:cond_c8
invoke-static {}, Lcom/instagram/creation/video/jni/VideoBridge;->finishEncodingAudio()I
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V
invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
new-instance v1, Landroid/media/MediaExtractor;
invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V
move-object/from16 v0, p0
iput-object v1, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
:try_start_e1
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
move-object/from16 v0, p1
invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
:try_end_ea
.catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ea} :catch_122
const/4 v1, 0x0
:goto_eb
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I
move-result v2
if-ge v1, v2, :cond_121
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
const-string v3, "mime"
invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "audio/"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_12b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
invoke-virtual {v2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V
:cond_121
return-void
:catch_122
move-exception v1
new-instance v2, Ljava/lang/RuntimeException;
const-string v3, "Error accessing disk for media extraction."
invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_12b
const/4 v2, 0x0
move-object/from16 v0, p0
iput-object v2, v0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
add-int/lit8 v1, v1, 0x1
goto :goto_eb
.end method
.method private b(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
const-string v1, "channel-count"
invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
const-string v2, "sample-rate"
invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
move-result v1
const-wide/16 v2, 0x0
invoke-static {p1, v0, v1, v2, v3}, Lcom/instagram/creation/video/jni/VideoBridge;->configureVorbisEncoder(Ljava/lang/String;IID)I
move-result v0
if-eqz v0, :cond_2c
const-string v1, "FinalRenderController"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Could not configure audio codec: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_2c
return-void
.end method
.method private j()V
.registers 7
const/4 v5, 0x0
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->l()Lcom/instagram/creation/video/gl/j;
move-result-object v0
sget v2, Lcom/instagram/creation/video/gl/o;->a:I
invoke-virtual {v0, v2}, Lcom/instagram/creation/video/gl/j;->a(I)V
move v0, v1
:goto_c
iget-object v2, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I
move-result v2
if-ge v0, v2, :cond_49
iget-object v2, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;
move-result-object v2
iput-object v2, p0, Lcom/instagram/creation/video/j/d;->k:Landroid/media/MediaFormat;
iget-object v2, p0, Lcom/instagram/creation/video/j/d;->k:Landroid/media/MediaFormat;
const-string v3, "mime"
invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "video/"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_93
iget-object v3, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V
invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
iget-object v2, p0, Lcom/instagram/creation/video/j/d;->k:Landroid/media/MediaFormat;
new-instance v3, Landroid/view/Surface;
iget-object v4, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;
invoke-virtual {v4}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;
move-result-object v4
invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
invoke-virtual {v0, v2, v3, v5, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
:cond_49
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I
move-result v0
mul-int/lit16 v0, v0, 0x3e8
iput v0, p0, Lcom/instagram/creation/video/j/d;->r:I
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->g()I
move-result v0
mul-int/lit16 v0, v0, 0x3e8
iput v0, p0, Lcom/instagram/creation/video/j/d;->s:I
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
iget v2, p0, Lcom/instagram/creation/video/j/d;->r:I
int-to-long v2, v2
invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
iput v1, p0, Lcom/instagram/creation/video/j/d;->o:I
:goto_67
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J
move-result-wide v2
iget v0, p0, Lcom/instagram/creation/video/j/d;->s:I
int-to-long v4, v0
cmp-long v0, v2, v4
if-gtz v0, :cond_99
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_99
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J
move-result-wide v2
iget v0, p0, Lcom/instagram/creation/video/j/d;->r:I
int-to-long v4, v0
cmp-long v0, v2, v4
if-ltz v0, :cond_8d
iget v0, p0, Lcom/instagram/creation/video/j/d;->o:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/instagram/creation/video/j/d;->o:I
:cond_8d
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z
goto :goto_67
:cond_93
iput-object v5, p0, Lcom/instagram/creation/video/j/d;->k:Landroid/media/MediaFormat;
add-int/lit8 v0, v0, 0x1
goto/16 :goto_c
:cond_99
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
iget v2, p0, Lcom/instagram/creation/video/j/d;->r:I
int-to-long v2, v2
invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/d;->l:[Ljava/nio/ByteBuffer;
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->b(Lcom/instagram/creation/b/a/a;)V
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/b/a/a;)V
return-void
.end method
.method private k()Landroid/media/MediaCodec;
.registers 6
const/4 v1, 0x0
const/4 v2, 0x0
move v0, v1
:goto_3
iget-object v3, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I
move-result v3
if-ge v0, v3, :cond_3c
iget-object v3, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;
move-result-object v3
iput-object v3, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
iget-object v3, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
const-string v4, "mime"
invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "audio/"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_37
iget-object v4, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
invoke-virtual {v4}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;
iget-object v4, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;
invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V
invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
move-result-object v0
iget-object v3, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
invoke-virtual {v0, v3, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
:goto_36
return-object v0
:cond_37
iput-object v2, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_3c
move-object v0, v2
goto :goto_36
.end method
.method private q()V
.registers 5
const/16 v1, 0x280
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;
invoke-static {v0, v1, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->configureVideoCodec(Ljava/lang/String;II)I
move-result v0
if-eqz v0, :cond_1e
const-string v1, "FinalRenderController"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Could not configure codec: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_1e
return-void
.end method
.method public final C_()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->l()Lcom/instagram/creation/video/gl/j;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->d()V
invoke-direct {p0}, Lcom/instagram/creation/video/j/d;->j()V
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->c:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/instagram/creation/video/j/d;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/instagram/creation/video/j/d;->q()V
return-void
.end method
.method public final e()V
.registers 7
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->p:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iget-object v2, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;
iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
iget v4, p0, Lcom/instagram/creation/video/j/d;->r:I
int-to-long v4, v4
sub-long/2addr v2, v4
invoke-static {v2, v3, v0, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->encodeFrame(JJ)I
iget v2, p0, Lcom/instagram/creation/video/j/d;->n:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/instagram/creation/video/j/d;->n:I
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Rendered frame number "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/instagram/creation/video/j/d;->n:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " at time "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;
iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "us"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v0, p0, Lcom/instagram/creation/video/j/d;->o:I
if-eqz v0, :cond_5e
iget v0, p0, Lcom/instagram/creation/video/j/d;->n:I
int-to-double v0, v0
iget v2, p0, Lcom/instagram/creation/video/j/d;->o:I
int-to-double v2, v2
div-double/2addr v0, v2
iget-object v2, p0, Lcom/instagram/creation/video/j/d;->d:Lcom/instagram/creation/b/a/b;
const-wide v3, 0x4046800000000000L
mul-double/2addr v0, v3
double-to-int v0, v0
invoke-virtual {v2, v0}, Lcom/instagram/creation/b/a/b;->c(I)V
:cond_5e
return-void
.end method
.method public final f()V
.registers 3
invoke-static {}, Lcom/instagram/creation/video/jni/VideoBridge;->finishEncoding()I
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->i()Z
move-result v0
if-nez v0, :cond_2d
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->c:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:goto_2c
return-void
:cond_2d
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Rendered to "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->d:Lcom/instagram/creation/b/a/b;
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->f(Ljava/lang/String;)V
goto :goto_2c
.end method
.method public final g()Z
.registers 13
const-wide/16 v10, 0x2710
const/4 v7, 0x1
const/4 v2, 0x0
:cond_4
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
move-result v1
if-ltz v1, :cond_21
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->l:[Ljava/nio/ByteBuffer;
aget-object v0, v0, v1
iget-object v3, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v3, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I
move-result v3
if-gez v3, :cond_41
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
const-wide/16 v4, 0x0
const/4 v6, 0x4
move v3, v2
invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
:goto_21
:cond_21
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;
invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;
iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
and-int/lit8 v1, v1, 0x4
if-nez v1, :cond_3c
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;
iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
iget v1, p0, Lcom/instagram/creation/video/j/d;->s:I
int-to-long v5, v1
cmp-long v1, v3, v5
if-ltz v1, :cond_69
:cond_3c
invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->h()V
move v2, v7
:goto_40
return v2
:cond_41
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J
move-result-wide v8
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
iget-object v4, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J
move-result-wide v4
move v6, v2
invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->p:Ljava/util/Queue;
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;
invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J
move-result-wide v3
sub-long/2addr v3, v8
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
goto :goto_21
:cond_69
if-ltz v0, :cond_8a
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;
iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
iget v1, p0, Lcom/instagram/creation/video/j/d;->r:I
int-to-long v5, v1
cmp-long v1, v3, v5
if-gtz v1, :cond_8a
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
const/4 v0, -0x1
:pswitch_7c
:goto_7c
if-ltz v0, :cond_4
iget-object v0, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;
iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
iget v3, p0, Lcom/instagram/creation/video/j/d;->r:I
int-to-long v3, v3
sub-long/2addr v0, v3
invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/j/d;->a(J)V
goto :goto_40
:cond_8a
packed-switch v0, :pswitch_data_9c
iget-object v1, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;
invoke-virtual {v1, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
const-wide/16 v3, 0xc
const/4 v1, 0x0
:try_start_95
invoke-static {v3, v4, v1}, Ljava/lang/Thread;->sleep(JI)V
:try_end_98
.catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_98} :catch_99
goto :goto_7c
:catch_99
move-exception v1
goto :goto_7c
nop
:pswitch_data_9c
.packed-switch -0x3
:pswitch_7c
:pswitch_7c
:pswitch_7c
.end packed-switch
.end method