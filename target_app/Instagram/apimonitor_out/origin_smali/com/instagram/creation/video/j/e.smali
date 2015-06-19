.class public final Lcom/instagram/creation/video/j/e;
.super Lcom/instagram/creation/video/j/a;
.source "FinalRenderControllerICS.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private A:I

.field private final B:Ljava/lang/Object;

.field private C:Z

.field private final b:Ljava/lang/String;

.field private final c:Lcom/instagram/creation/b/a/b;

.field private d:Landroid/media/MediaPlayer;

.field private e:I

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/instagram/creation/video/gl/i;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/instagram/creation/video/j/k;

.field private j:Lcom/instagram/creation/video/j/i;

.field private k:Lcom/instagram/creation/video/j/c;

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:I

.field private volatile o:I

.field private p:Lcom/instagram/creation/video/gl/i;

.field private final q:Ljava/lang/Object;

.field private r:Z

.field private s:Z

.field private t:I

.field private final u:Ljava/lang/Object;

.field private v:Z

.field private w:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private y:J

.field private z:Lcom/instagram/creation/b/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Lcom/instagram/creation/video/gl/j;

    const/4 v1, 0x0

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/video/gl/j;-><init>(Landroid/graphics/SurfaceTexture;I)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/j/a;-><init>(Lcom/instagram/creation/video/gl/j;)V

    iput v3, p0, Lcom/instagram/creation/video/j/e;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/j/e;->o:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->J()Lcom/instagram/creation/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    new-instance v0, Lcom/instagram/creation/video/j/i;

    invoke-direct {v0}, Lcom/instagram/creation/video/j/i;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    new-instance v0, Lcom/instagram/creation/video/j/c;

    invoke-direct {v0, p3}, Lcom/instagram/creation/video/j/c;-><init>(Lcom/instagram/creation/video/e/c;)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->k:Lcom/instagram/creation/video/j/c;

    new-instance v0, Lcom/instagram/creation/video/j/k;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/instagram/creation/video/gl/p;

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/creation/video/j/e;->k:Lcom/instagram/creation/video/j/c;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/j/k;-><init>([Lcom/instagram/creation/video/gl/p;)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/p;)V

    iput-object p2, p0, Lcom/instagram/creation/video/j/e;->c:Lcom/instagram/creation/b/a/b;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    const-string v0, "mkv"

    invoke-static {p1, p2, v0}, Lcom/instagram/creation/video/l/j;->a(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    return-void
.end method

.method private a(J)V
    .registers 9

    :goto_0
    iget-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2a

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->w:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-wide v2, p0, Lcom/instagram/creation/video/j/e;->y:J

    iget v4, p0, Lcom/instagram/creation/video/j/e;->A:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/creation/video/jni/VideoBridge;->writeAudioPacket(Ljava/nio/ByteBuffer;IJ)I

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->x:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    goto :goto_0

    :cond_2a
    return-void
.end method

.method private k()V
    .registers 15

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    :try_start_5
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/a/b/a/a;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_20
    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-wide v1, 0x412e848000000000L

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/a/f;->b()J

    move-result-wide v3

    long-to-double v3, v3

    div-double v7, v1, v3

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-wide/16 v2, 0x0

    :cond_52
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/k;

    const/4 v4, 0x0

    :goto_5f
    int-to-long v10, v4

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/k;->a()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_52

    long-to-double v10, v2

    mul-double/2addr v10, v7

    double-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/k;->b()J

    move-result-wide v10

    add-long/2addr v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    :cond_7a
    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->w:Ljava/util/Iterator;
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_84} :catch_85

    goto :goto_20

    :catch_85
    move-exception v0

    const-string v1, "FinalRenderControllerICS"

    const-string v2, "Could not extract audio"

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_93
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->x:Ljava/util/Iterator;

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->x:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/instagram/creation/video/j/e;->A:I

    :goto_bd
    iget-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    iget v2, p0, Lcom/instagram/creation/video/j/e;->A:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_da

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->x:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->w:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_bd

    :cond_da
    const/4 v0, 0x2

    const v1, 0xbb80

    invoke-static {v0, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->configureAACTrack(II)I

    return-void
.end method

.method private q()V
    .registers 5

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_59

    :try_start_d
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_59
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_50

    :try_start_18
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v3}, Lcom/instagram/creation/video/j/i;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_59

    :try_start_39
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_59
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_5c

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_59

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/i;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/i;->b(Lcom/instagram/creation/b/a/a;)V

    return-void

    :catch_50
    move-exception v0

    :try_start_51
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not create media player"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_5c
    move-exception v0

    :try_start_5d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not prepare player"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_59
.end method

.method private r()V
    .registers 5

    const/16 v1, 0x1e0

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->configureVideoCodec(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1e

    const-string v1, "FinalRenderControllerICS"

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


# virtual methods
.method public final C_()V
    .registers 6

    const/16 v4, 0x1e0

    const/4 v1, 0x0

    move v0, v1

    :goto_4
    const/4 v2, 0x2

    if-ge v0, v2, :cond_14

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    new-instance v3, Lcom/instagram/creation/video/gl/i;

    invoke-direct {v3, v4}, Lcom/instagram/creation/video/gl/i;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v2, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/gl/j;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/k;->c(I)V

    new-instance v0, Lcom/instagram/creation/video/gl/i;

    invoke-direct {v0, v4}, Lcom/instagram/creation/video/gl/i;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->p:Lcom/instagram/creation/video/gl/i;

    invoke-direct {p0}, Lcom/instagram/creation/video/j/e;->k()V

    invoke-direct {p0}, Lcom/instagram/creation/video/j/e;->q()V

    invoke-direct {p0}, Lcom/instagram/creation/video/j/e;->r()V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_49

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v1

    add-int/lit16 v1, v1, -0xbb8

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_49
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4d
    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->r:Z

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_56

    return-void

    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()V
    .registers 8

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/k;->a(Lcom/instagram/creation/video/gl/p;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->l:Z

    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->k:Lcom/instagram/creation/video/j/c;

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/j/c;->a(Lcom/instagram/creation/video/gl/i;)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    iget v1, p0, Lcom/instagram/creation/video/j/e;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/instagram/creation/video/j/e;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    iget v1, p0, Lcom/instagram/creation/video/j/e;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enqueueing frame at time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/instagram/creation/video/j/e;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/j/e;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v6, p0, Lcom/instagram/creation/video/j/e;->l:Z

    :cond_58
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->v:Z

    if-eqz v0, :cond_75

    iput-boolean v6, p0, Lcom/instagram/creation/video/j/e;->v:Z

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->p:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/i;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/j/k;->c(I)V

    :cond_75
    :goto_75
    return-void

    :cond_76
    iget v0, p0, Lcom/instagram/creation/video/j/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/j/e;->e:I

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->k:Lcom/instagram/creation/video/j/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/c;->b()Lcom/instagram/creation/video/gl/i;

    move-result-object v1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/instagram/creation/video/j/e;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/instagram/creation/video/gl/i;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    invoke-virtual {v1}, Lcom/instagram/creation/video/gl/i;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-double v2, v0

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->c:Lcom/instagram/creation/b/a/b;

    const-wide v4, 0x4046800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/b;->c(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/instagram/creation/video/j/e;->a(J)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget v2, p0, Lcom/instagram/creation/video/j/e;->A:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/instagram/creation/video/jni/VideoBridge;->encodeFrame(JJ)I

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->m:Z

    if-eqz v0, :cond_137

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->h()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->p()V

    :goto_129
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12c
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_132
    .catchall {:try_start_12c .. :try_end_132} :catchall_134

    goto/16 :goto_75

    :catchall_134
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_137
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v6}, Lcom/instagram/creation/video/j/k;->c(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/i;->d()V

    goto :goto_129
.end method

.method public final f()V
    .registers 3

    invoke-static {}, Lcom/instagram/creation/video/jni/VideoBridge;->finishEncoding()I

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_25

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->i()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_24
    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rendered to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->c:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->f(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public final g()Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/k;->a(Lcom/instagram/creation/video/gl/p;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/i;)V

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .registers 4

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->r:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3e

    if-nez v0, :cond_c

    :try_start_7
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_4d

    :cond_c
    :goto_c
    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_3e

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :goto_12
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_4b

    :goto_1a
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_41

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->m:Z

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->b()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->s:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/instagram/creation/video/j/e;->o:I

    add-int/lit16 v2, v2, -0x5dc

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_39
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3b

    goto :goto_12

    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_3b

    goto :goto_39

    :cond_4a
    return-void

    :catch_4b
    move-exception v0

    goto :goto_1a

    :catch_4d
    move-exception v0

    goto :goto_c
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 7

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->m:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v4, p0, Lcom/instagram/creation/video/j/e;->m:Z

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/instagram/creation/video/j/e;->n:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_52

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v4}, Lcom/instagram/creation/video/j/k;->c(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->p:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/i;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3c
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_43

    goto :goto_5

    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_52

    goto :goto_21

    :catchall_52
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Frame Available! "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/j/k;->a(Lcom/instagram/creation/video/gl/p;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "P"

    :goto_14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/k;->a(Lcom/instagram/creation/video/gl/p;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    :try_start_24
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    if-nez v0, :cond_2d

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_ac

    :goto_29
    return-void

    :cond_2a
    const-string v0, "C"

    goto :goto_14

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/instagram/creation/video/j/e;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/instagram/creation/video/j/e;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v2

    if-lt v0, v2, :cond_75

    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v2

    if-lt v0, v2, :cond_7a

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->v:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->m:Z

    :cond_75
    :goto_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_2d .. :try_end_76} :catchall_ac

    :goto_76
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->m()V

    goto :goto_29

    :cond_7a
    :try_start_7a
    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iget v2, p0, Lcom/instagram/creation/video/j/e;->o:I

    if-le v0, v2, :cond_75

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->s:Z

    if-nez v0, :cond_75

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->l:Z

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_af

    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iget v2, p0, Lcom/instagram/creation/video/j/e;->o:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/instagram/creation/video/j/e;->t:I

    :goto_97
    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iput v0, p0, Lcom/instagram/creation/video/j/e;->o:I

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ne v0, v3, :cond_75

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->v:Z
    :try_end_ab
    .catchall {:try_start_7a .. :try_end_ab} :catchall_ac

    goto :goto_75

    :catchall_ac
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_af
    const/4 v0, -0x1

    :try_start_b0
    iput v0, p0, Lcom/instagram/creation/video/j/e;->t:I
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_ac

    goto :goto_97

    :cond_b3
    iput-boolean v3, p0, Lcom/instagram/creation/video/j/e;->s:Z

    goto :goto_76
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seeked to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requested "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/j/e;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->s:Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
