.class public final Lcom/instagram/creation/video/f/an;
.super Lcom/instagram/creation/video/f/ah;
.source "VideoCoverFragmentICS.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic b:Lcom/instagram/creation/video/f/am;

.field private c:Landroid/media/MediaPlayer;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/f/am;Lcom/instagram/creation/video/gl/j;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/f/ah;-><init>(Lcom/instagram/creation/video/f/ad;Lcom/instagram/creation/video/gl/j;)V

    iput-boolean v1, p0, Lcom/instagram/creation/video/f/an;->d:Z

    const/16 v0, -0x2a

    iput v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/f/an;->g:I

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->a(Z)V

    return-void
.end method

.method private a(IZ)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v2, v2, Lcom/instagram/creation/video/f/am;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-boolean v3, v3, Lcom/instagram/creation/video/f/am;->d:Z

    if-nez v3, :cond_f

    monitor-exit v2

    :goto_e
    return v0

    :cond_f
    iget-boolean v3, p0, Lcom/instagram/creation/video/f/an;->d:Z

    if-eqz v3, :cond_18

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_e

    :catchall_15
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_18
    const/4 v0, 0x1

    :try_start_19
    iput-boolean v0, p0, Lcom/instagram/creation/video/f/an;->d:Z

    if-eqz p2, :cond_45

    const/16 v0, 0xc8

    iput v0, p0, Lcom/instagram/creation/video/f/an;->e:I

    :goto_21
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/instagram/creation/video/f/an;->e:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {}, Lcom/instagram/creation/video/f/am;->V()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/instagram/creation/video/f/an;->e:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    monitor-exit v2

    move v0, v1

    goto :goto_e

    :cond_45
    iget v0, p0, Lcom/instagram/creation/video/f/an;->e:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/instagram/creation/video/f/an;->e:I
    :try_end_4b
    .catchall {:try_start_19 .. :try_end_4b} :catchall_15

    goto :goto_21
.end method

.method private b(I)V
    .registers 6

    const/4 v3, 0x1

    iget v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/instagram/creation/video/f/am;->V()V

    invoke-direct {p0, p1, v3}, Lcom/instagram/creation/video/f/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_21

    iput p1, p0, Lcom/instagram/creation/video/f/an;->f:I

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/am;->c()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iput p1, p0, Lcom/instagram/creation/video/f/an;->g:I

    goto :goto_20
.end method


# virtual methods
.method public final bridge synthetic C_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/creation/video/f/ah;->C_()V

    return-void
.end method

.method protected final a(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/an;->b(I)V

    return-void
.end method

.method public final e()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/creation/video/f/ah;->e()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->a(Z)V

    return-void
.end method

.method protected final h()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    :try_start_9
    iget-object v1, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v2, v2, Lcom/instagram/creation/video/f/am;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_4b

    :try_start_16
    iget-object v1, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_49

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x1

    :goto_48
    return v0

    :catch_49
    move-exception v1

    goto :goto_48

    :catch_4b
    move-exception v1

    goto :goto_48
.end method

.method protected final i()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/am;->X()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v1

    sget v2, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v1, v2}, Lcom/instagram/creation/video/gl/j;->a(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-virtual {v2}, Lcom/instagram/creation/video/f/am;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v0

    invoke-static {v2, v0}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/video/e/c;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v1, v1, Lcom/instagram/creation/video/f/am;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->b(Lcom/instagram/creation/b/a/a;)V

    return-void
.end method

.method protected final j()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iput-object v1, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    :cond_1b
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    iget v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/f/an;->a(IZ)Z

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v1, v0, Lcom/instagram/creation/video/f/am;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/am;->d:Z

    if-nez v0, :cond_d

    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/instagram/creation/video/f/an;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Lcom/instagram/creation/video/f/am;->V()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v2, p0, Lcom/instagram/creation/video/f/an;->f:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_89

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/instagram/creation/video/f/am;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/an;->d:Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/am;->d()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/j/f;->a(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/am;->c:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/an;->k()V

    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/an;->m()V

    :cond_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_5 .. :try_end_85} :catchall_86

    goto :goto_c

    :catchall_86
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_89
    :try_start_89
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v2, p0, Lcom/instagram/creation/video/f/an;->f:I

    add-int/lit8 v2, v2, 0x64

    if-le v0, v2, :cond_73

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {}, Lcom/instagram/creation/video/f/am;->V()V

    iget v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/video/f/an;->a(IZ)Z
    :try_end_a0
    .catchall {:try_start_89 .. :try_end_a0} :catchall_86

    goto :goto_73
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 7

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v1, v0, Lcom/instagram/creation/video/f/am;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/am;->d:Z

    if-nez v0, :cond_e

    monitor-exit v1

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/an;->d:Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/instagram/creation/video/f/an;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Lcom/instagram/creation/video/f/am;->V()V

    iget v0, p0, Lcom/instagram/creation/video/f/an;->g:I

    if-eq v0, v4, :cond_3e

    iget v0, p0, Lcom/instagram/creation/video/f/an;->g:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/instagram/creation/video/f/an;->g:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/an;->b(I)V

    :cond_39
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    goto :goto_d

    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3e
    :try_start_3e
    iget v0, p0, Lcom/instagram/creation/video/f/an;->e:I

    const/16 v2, -0xbb8

    if-ge v0, v2, :cond_4b

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    goto :goto_39

    :cond_4b
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v2, p0, Lcom/instagram/creation/video/f/an;->f:I

    add-int/lit8 v2, v2, 0x64

    if-le v0, v2, :cond_39

    iget v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/video/f/an;->a(IZ)Z
    :try_end_5b
    .catchall {:try_start_3e .. :try_end_5b} :catchall_3b

    goto :goto_39
.end method
