.class public Lcom/instagram/creation/video/g/f/c;
.super Ljava/lang/Object;
.source "VideoResizeOperation.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/instagram/creation/video/g/a/d;

.field private final d:Lcom/instagram/creation/video/g/c/d;

.field private final e:Lcom/instagram/creation/video/g/f/g;

.field private final f:Lcom/instagram/creation/video/g/d/b;

.field private final g:Lcom/instagram/common/t/a;

.field private final h:Lcom/facebook/d/b/c;

.field private i:Landroid/media/MediaExtractor;

.field private j:Lcom/instagram/creation/video/g/f/h;

.field private k:Lcom/instagram/creation/video/g/c/e;

.field private l:Lcom/instagram/creation/video/g/c/e;

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/creation/video/g/f/c;

    sput-object v0, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/video/g/a/d;Lcom/instagram/creation/video/g/c/d;Lcom/instagram/creation/video/g/d/b;Lcom/instagram/creation/video/g/f/g;Lcom/instagram/common/t/a;Lcom/facebook/d/b/c;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/video/g/f/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/creation/video/g/f/c;->c:Lcom/instagram/creation/video/g/a/d;

    iput-object p3, p0, Lcom/instagram/creation/video/g/f/c;->d:Lcom/instagram/creation/video/g/c/d;

    iput-object p4, p0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    iput-object p5, p0, Lcom/instagram/creation/video/g/f/c;->e:Lcom/instagram/creation/video/g/f/g;

    iput-object p6, p0, Lcom/instagram/creation/video/g/f/c;->g:Lcom/instagram/common/t/a;

    iput-object p7, p0, Lcom/instagram/creation/video/g/f/c;->h:Lcom/facebook/d/b/c;

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .registers 5

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->d:Lcom/instagram/creation/video/g/c/d;

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/g/c/d;->a(Landroid/media/MediaExtractor;)Lcom/instagram/creation/video/g/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/c;->k:Lcom/instagram/creation/video/g/c/e;

    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->d:Lcom/instagram/creation/video/g/c/d;

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/g/c/d;->b(Landroid/media/MediaExtractor;)Lcom/instagram/creation/video/g/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    return-void
.end method

.method private a(Lcom/instagram/creation/video/g/a/c;JJLcom/instagram/creation/video/g/a/e;)V
    .registers 23

    const/4 v3, 0x0

    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v2, v4, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->f()Landroid/media/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v4, v2}, Lcom/instagram/creation/video/g/d/b;->b(Landroid/media/MediaFormat;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget-object v4, v4, Lcom/instagram/creation/video/g/c/e;->b:Landroid/media/MediaFormat;

    invoke-interface {v2, v4}, Lcom/instagram/creation/video/g/d/b;->a(Landroid/media/MediaFormat;)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/d/b;->a()V

    const/4 v3, 0x1

    :cond_31
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-gez v6, :cond_3c

    const-wide/16 p2, 0x0

    :cond_3c
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-gez v6, :cond_4a

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/instagram/creation/video/g/a/c;->a:J

    const-wide/16 v8, 0x3e8

    mul-long p4, v6, v8

    :cond_4a
    sget-object v6, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->k:Lcom/instagram/creation/video/g/c/e;

    iget v7, v7, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v6, :cond_72

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget v7, v7, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :cond_72
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    const-wide/16 v8, 0x0

    cmp-long v6, p2, v8

    if-nez v6, :cond_159

    const/4 v6, 0x2

    :goto_7d
    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v6, :cond_95

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget v7, v7, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_95
    const/4 v6, 0x1

    sub-long v8, p4, p2

    move v7, v2

    move v2, v6

    :goto_9a
    if-eqz v5, :cond_a0

    if-eqz v4, :cond_a0

    if-nez v7, :cond_1a8

    :cond_a0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/instagram/creation/video/g/f/c;->m:Z

    if-nez v6, :cond_1a8

    if-nez v5, :cond_269

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v6}, Lcom/instagram/creation/video/g/f/h;->a()Lcom/instagram/creation/video/g/b/f;

    move-result-object v6

    if-eqz v6, :cond_269

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Lcom/instagram/creation/video/g/b/f;->a()Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    if-lez v10, :cond_15c

    cmp-long v13, v11, p4

    if-gtz v13, :cond_15c

    sub-long v13, v11, p2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v15

    invoke-virtual {v6, v10, v13, v14, v15}, Lcom/instagram/creation/video/g/b/f;->a(IJI)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v10, v6}, Lcom/instagram/creation/video/g/f/h;->a(Lcom/instagram/creation/video/g/b/f;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    cmp-long v6, v11, p2

    if-ltz v6, :cond_f4

    if-eqz v2, :cond_f4

    sget-object v2, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    const/4 v2, 0x0

    :cond_f4
    move v6, v2

    :goto_f5
    if-nez v4, :cond_107

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->b()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->d()Z

    move-result v2

    move v4, v2

    :cond_107
    if-nez v7, :cond_266

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->c()Lcom/instagram/creation/video/g/b/f;

    move-result-object v2

    :goto_111
    if-eqz v2, :cond_1a5

    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->d()Z

    move-result v10

    if-nez v10, :cond_16d

    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->e()Z

    move-result v10

    if-eqz v10, :cond_16d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v11}, Lcom/instagram/creation/video/g/f/h;->f()Landroid/media/MediaFormat;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/instagram/creation/video/g/d/b;->b(Landroid/media/MediaFormat;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v10, :cond_141

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget-object v11, v11, Lcom/instagram/creation/video/g/c/e;->b:Landroid/media/MediaFormat;

    invoke-interface {v10, v11}, Lcom/instagram/creation/video/g/d/b;->a(Landroid/media/MediaFormat;)V

    :cond_141
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v10}, Lcom/instagram/creation/video/g/d/b;->a()V

    const/4 v3, 0x1

    :cond_149
    :goto_149
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v10, v2}, Lcom/instagram/creation/video/g/f/h;->b(Lcom/instagram/creation/video/g/b/f;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->c()Lcom/instagram/creation/video/g/b/f;

    move-result-object v2

    goto :goto_111

    :cond_159
    const/4 v6, 0x0

    goto/16 :goto_7d

    :cond_15c
    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x4

    invoke-virtual {v6, v5, v10, v11, v12}, Lcom/instagram/creation/video/g/b/f;->a(IJI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v5, v6}, Lcom/instagram/creation/video/g/f/h;->a(Lcom/instagram/creation/video/g/b/f;)V

    const/4 v5, 0x1

    move v6, v2

    goto :goto_f5

    :cond_16d
    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->d()Z

    move-result v10

    if-eqz v10, :cond_149

    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v10

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_182

    const/4 v2, 0x1

    move v7, v2

    move v2, v6

    goto/16 :goto_9a

    :cond_182
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v10, v2}, Lcom/instagram/creation/video/g/d/b;->b(Lcom/instagram/creation/video/g/b/a;)V

    if-eqz p6, :cond_149

    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v10

    iget-wide v10, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-double v10, v10

    long-to-double v12, v8

    div-double/2addr v10, v12

    move-object/from16 v0, p6

    invoke-interface {v0, v10, v11}, Lcom/instagram/creation/video/g/a/e;->a(D)V
    :try_end_199
    .catchall {:try_start_1 .. :try_end_199} :catchall_19a

    goto :goto_149

    :catchall_19a
    move-exception v2

    if-eqz v3, :cond_1a4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v3}, Lcom/instagram/creation/video/g/d/b;->b()V

    :cond_1a4
    throw v2

    :cond_1a5
    move v2, v6

    goto/16 :goto_9a

    :cond_1a8
    :try_start_1a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->e()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v2, :cond_25c

    sget-object v2, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget v4, v4, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-nez v2, :cond_257

    const/4 v2, 0x2

    :goto_1d5
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->k:Lcom/instagram/creation/video/g/c/e;

    iget v4, v4, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    new-instance v5, Lcom/instagram/creation/video/g/f/d;

    invoke-direct {v5}, Lcom/instagram/creation/video/g/f/d;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget-object v2, v2, Lcom/instagram/creation/video/g/c/e;->b:Landroid/media/MediaFormat;

    const-string v4, "csd-0"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    invoke-interface {v5, v4, v6, v7, v8}, Lcom/instagram/creation/video/g/b/a;->a(IJI)V

    invoke-interface {v5}, Lcom/instagram/creation/video/g/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/instagram/creation/video/g/f/c;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v2, v5}, Lcom/instagram/creation/video/g/d/b;->a(Lcom/instagram/creation/video/g/b/a;)V

    const/4 v4, 0x0

    const/4 v2, 0x1

    :goto_212
    if-nez v4, :cond_25c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-interface {v5}, Lcom/instagram/creation/video/g/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    if-lez v6, :cond_25a

    cmp-long v9, v7, p4

    if-gtz v9, :cond_25a

    cmp-long v9, v7, p2

    if-ltz v9, :cond_24f

    sub-long v9, v7, p2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    invoke-interface {v5, v6, v9, v10, v11}, Lcom/instagram/creation/video/g/b/a;->a(IJI)V

    if-eqz v2, :cond_248

    sget-object v2, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    const/4 v2, 0x0

    :cond_248
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v6, v5}, Lcom/instagram/creation/video/g/d/b;->a(Lcom/instagram/creation/video/g/b/a;)V

    :cond_24f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_256
    .catchall {:try_start_1a8 .. :try_end_256} :catchall_19a

    goto :goto_212

    :cond_257
    const/4 v2, 0x0

    goto/16 :goto_1d5

    :cond_25a
    const/4 v4, 0x1

    goto :goto_212

    :cond_25c
    if-eqz v3, :cond_265

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/d/b;->b()V

    :cond_265
    return-void

    :cond_266
    move v2, v6

    goto/16 :goto_9a

    :cond_269
    move v6, v2

    goto/16 :goto_f5
.end method

.method private a(Ljava/io/File;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/g/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static c()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/g/f/c;->m:Z

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/g/f/e;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->g:Lcom/instagram/common/t/a;

    invoke-static {}, Lcom/instagram/common/t/a;->c()Z

    move-result v0

    if-nez v0, :cond_bc

    move v0, v2

    :goto_c
    invoke-static {v0}, Lcom/instagram/common/i/a/f;->b(Z)V

    invoke-static {}, Lcom/instagram/creation/video/g/f/c;->c()Z

    move-result v0

    const-string v1, "Video Resizing is not supported for this OS version"

    invoke-static {v0, v1}, Lcom/instagram/common/i/a/f;->b(ZLjava/lang/Object;)V

    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Input file does not exist: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/instagram/creation/video/g/f/e;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/i/a/f;->a(ZLjava/lang/Object;)V

    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->a:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->c:Lcom/instagram/creation/video/g/a/d;

    invoke-interface {v1, v0}, Lcom/instagram/creation/video/g/a/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/video/g/a/c;
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_e1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_41} :catch_84

    move-result-object v1

    :try_start_42
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/g/f/c;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->e:Lcom/instagram/creation/video/g/f/g;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/f/g;->a()Lcom/instagram/creation/video/g/f/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    iget-object v3, p1, Lcom/instagram/creation/video/g/f/e;->f:Lcom/instagram/creation/b/a/b;

    iget-object v4, p1, Lcom/instagram/creation/video/g/f/e;->g:Lcom/instagram/creation/video/e/c;

    invoke-interface {v0, v3, v4}, Lcom/instagram/creation/video/g/f/h;->a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    iget-object v3, p0, Lcom/instagram/creation/video/g/f/c;->k:Lcom/instagram/creation/video/g/c/e;

    iget-object v3, v3, Lcom/instagram/creation/video/g/c/e;->b:Landroid/media/MediaFormat;

    invoke-interface {v0, v3}, Lcom/instagram/creation/video/g/f/h;->a(Landroid/media/MediaFormat;)V

    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/g/f/c;->a(Ljava/io/File;)V
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_e1
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_64} :catch_bf

    :try_start_64
    iget v0, p1, Lcom/instagram/creation/video/g/f/e;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    iget v0, p1, Lcom/instagram/creation/video/g/f/e;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    iget-object v6, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/creation/video/g/f/c;->a(Lcom/instagram/creation/video/g/a/c;JJLcom/instagram/creation/video/g/a/e;)V

    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c4

    new-instance v0, Lcom/instagram/creation/video/g/f/b;

    const-string v1, "No output file created"

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/g/f/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_84
    .catchall {:try_start_64 .. :try_end_84} :catchall_e1
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_84} :catch_84

    :catch_84
    move-exception v0

    move v1, v7

    :goto_86
    :try_start_86
    sget-object v2, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/instagram/creation/video/g/f/c;->h:Lcom/facebook/d/b/c;

    const-string v3, "VideoResizeOperation_Exception"

    invoke-interface {v2, v3, v0}, Lcom/facebook/d/b/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p1, Lcom/instagram/creation/video/g/f/e;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-class v2, Lcom/instagram/creation/video/g/f/b;

    invoke-static {v0, v2}, Lcom/instagram/common/i/a/i;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    if-eqz v1, :cond_d9

    new-instance v2, Lcom/instagram/creation/video/g/f/a;

    const-string v3, "Failed to init codecs to resize video"

    invoke-direct {v2, v3, v0}, Lcom/instagram/creation/video/g/f/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a3
    .catchall {:try_start_86 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception v0

    move v7, v1

    :goto_a5
    if-nez v7, :cond_b0

    iget-object v1, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    if-eqz v1, :cond_b0

    iget-object v1, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    invoke-interface {v1}, Lcom/instagram/creation/video/g/a/e;->a()V

    :cond_b0
    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    iput-object v8, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    :cond_bb
    throw v0

    :cond_bc
    move v0, v7

    goto/16 :goto_c

    :catch_bf
    move-exception v0

    :try_start_c0
    throw v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_e3
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c1} :catch_c1

    :catch_c1
    move-exception v0

    move v1, v2

    goto :goto_86

    :cond_c4
    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    if-eqz v0, :cond_cd

    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    invoke-interface {v0}, Lcom/instagram/creation/video/g/a/e;->a()V

    :cond_cd
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v8, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    :cond_d8
    return-void

    :cond_d9
    :try_start_d9
    new-instance v2, Lcom/instagram/creation/video/g/f/b;

    const-string v3, "Failed to resize video"

    invoke-direct {v2, v3, v0}, Lcom/instagram/creation/video/g/f/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_e1
    .catchall {:try_start_d9 .. :try_end_e1} :catchall_a3

    :catchall_e1
    move-exception v0

    goto :goto_a5

    :catchall_e3
    move-exception v0

    move v7, v2

    goto :goto_a5
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/g/f/c;->m:Z

    return v0
.end method
