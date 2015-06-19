.class public final Lcom/instagram/creation/video/d/e;
.super Lcom/instagram/creation/video/d/a;
.source "MediaPlayerManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private f:Landroid/media/MediaPlayer;

.field private g:Lcom/instagram/creation/video/d/d;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/d/b;Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/k/a;)V
    .registers 6

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/d/a;-><init>(Lcom/instagram/creation/video/d/b;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->k:Z

    iput v1, p0, Lcom/instagram/creation/video/d/e;->m:I

    iput v1, p0, Lcom/instagram/creation/video/d/e;->n:I

    sget v0, Lcom/instagram/creation/video/d/i;->b:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    new-instance v0, Lcom/instagram/creation/video/d/f;

    invoke-direct {v0, p0, p2, p3}, Lcom/instagram/creation/video/d/f;-><init>(Lcom/instagram/creation/video/d/e;Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/k/a;)V

    iput-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private a(IZ)V
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    if-eq p1, v0, :cond_1e

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->o()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->p()V

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->i:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/video/d/e;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput p1, p0, Lcom/instagram/creation/video/d/e;->m:I

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iput p1, p0, Lcom/instagram/creation/video/d/e;->n:I

    goto :goto_1e
.end method

.method private b(IZ)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-boolean v3, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-nez v3, :cond_b

    monitor-exit v2

    :goto_a
    return v0

    :cond_b
    if-eqz p2, :cond_3c

    iget-boolean v3, p0, Lcom/instagram/creation/video/d/e;->k:Z

    if-eqz v3, :cond_16

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    goto :goto_a

    :catchall_13
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_16
    const/4 v0, 0x1

    :try_start_17
    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->k:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/instagram/creation/video/d/e;->l:I

    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Seeking to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/instagram/creation/video/d/e;->l:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/instagram/creation/video/d/e;->l:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    monitor-exit v2

    move v0, v1

    goto :goto_a

    :cond_3c
    iget v0, p0, Lcom/instagram/creation/video/d/e;->l:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/instagram/creation/video/d/e;->l:I
    :try_end_42
    .catchall {:try_start_17 .. :try_end_42} :catchall_13

    goto :goto_1d
.end method

.method static synthetic b(Lcom/instagram/creation/video/d/e;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/creation/video/d/e;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/instagram/creation/video/d/e;)I
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    return v0
.end method

.method static synthetic e(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private s()V
    .registers 3

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget v0, Lcom/instagram/creation/video/d/i;->a:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/c;->A_()V

    :cond_1c
    return-void
.end method

.method private t()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->v()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/c;->c()V

    :cond_15
    return-void
.end method

.method private u()V
    .registers 3

    sget v0, Lcom/instagram/creation/video/d/i;->c:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    return-void
.end method

.method private v()V
    .registers 3

    sget v0, Lcom/instagram/creation/video/d/i;->b:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->g()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->i:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :goto_1c
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/c;->c()V

    :cond_25
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->m()V

    :cond_28
    monitor-exit v1

    return-void

    :cond_2a
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->u()V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2e

    goto :goto_1c

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->t()V

    goto :goto_c
.end method

.method public final c()V
    .registers 3

    sget v0, Lcom/instagram/creation/video/d/i;->b:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    return-void
.end method

.method public final d()V
    .registers 3

    sget v0, Lcom/instagram/creation/video/d/i;->b:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    return-void
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/j;->e()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/j;->f()V

    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/j/j;->a(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->m()V

    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()Z
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/instagram/creation/video/d/e;->h:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/instagram/creation/video/d/e;->i:Z

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->s()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->l()V

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->p()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->o()V

    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->u()V

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->j:Z

    goto :goto_f

    :cond_1c
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final k()Lcom/instagram/creation/video/d/d;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    return-object v0
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->t()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->m()V

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-nez v0, :cond_11

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_4

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v2, p0, Lcom/instagram/creation/video/d/e;->o:I

    sget v3, Lcom/instagram/creation/video/d/i;->b:I

    if-eq v2, v3, :cond_23

    iget v2, p0, Lcom/instagram/creation/video/d/e;->o:I

    sget v3, Lcom/instagram/creation/video/d/i;->c:I

    if-ne v2, v3, :cond_35

    :cond_23
    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    add-int/lit8 v2, v2, -0x64

    if-le v0, v2, :cond_35

    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    add-int/lit8 v2, v2, 0x64

    if-le v0, v2, :cond_5d

    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/instagram/creation/video/d/e;->b(IZ)Z

    :cond_35
    :goto_35
    iget v2, p0, Lcom/instagram/creation/video/d/e;->o:I

    sget v3, Lcom/instagram/creation/video/d/i;->a:I

    if-ne v2, v3, :cond_56

    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v2

    if-gt v0, v2, :cond_9b

    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v2}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/instagram/creation/video/j/j;->a(Z)V

    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    invoke-interface {v2, v0}, Lcom/instagram/creation/video/d/c;->a(I)V

    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->m()V

    monitor-exit v1

    goto :goto_4

    :cond_5d
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/instagram/creation/video/d/e;->k:Z

    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    iget v2, p0, Lcom/instagram/creation/video/d/e;->o:I

    sget v3, Lcom/instagram/creation/video/d/i;->b:I

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v2}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/instagram/creation/video/j/j;->a(Z)V

    :cond_75
    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    iget-object v3, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v3

    if-eq v2, v3, :cond_83

    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->u()V

    goto :goto_35

    :cond_83
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/instagram/creation/video/d/e;->i:Z

    iget-boolean v2, p0, Lcom/instagram/creation/video/d/e;->j:Z

    if-eqz v2, :cond_94

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->o()V

    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->s()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/instagram/creation/video/d/e;->j:Z

    goto :goto_35

    :cond_94
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->q()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->n()V

    goto :goto_35

    :cond_9b
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->t()V
    :try_end_9e
    .catchall {:try_start_11 .. :try_end_9e} :catchall_e

    goto :goto_56
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 6

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-nez v0, :cond_a

    monitor-exit v1

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->k:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Seek Complete at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/instagram/creation/video/d/e;->n:I

    if-eq v0, v3, :cond_2d

    iget v0, p0, Lcom/instagram/creation/video/d/e;->n:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/instagram/creation/video/d/e;->n:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    :cond_28
    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2a

    goto :goto_9

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2d
    :try_start_2d
    iget v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    iget v2, p0, Lcom/instagram/creation/video/d/e;->l:I

    sub-int/2addr v0, v2

    const/16 v2, -0xbb8

    if-ge v0, v2, :cond_3d

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    goto :goto_28

    :cond_3d
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    add-int/lit8 v2, v2, 0x64

    if-le v0, v2, :cond_28

    iget v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/video/d/e;->b(IZ)Z
    :try_end_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_2a

    goto :goto_28
.end method

.method public final r()V
    .registers 3

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    :try_start_7
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method
