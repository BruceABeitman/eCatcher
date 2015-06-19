.class final Lcom/instagram/creation/video/d/f;
.super Lcom/instagram/creation/video/d/d;
.source "MediaPlayerManager.java"


# instance fields
.field final synthetic b:Lcom/instagram/creation/video/d/e;

.field private c:Lcom/instagram/creation/video/j/j;

.field private d:Lcom/instagram/creation/video/k/a;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/d/e;Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/k/a;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/d/d;-><init>(Lcom/instagram/creation/video/d/a;Lcom/instagram/creation/video/gl/j;)V

    new-instance v0, Lcom/instagram/creation/video/j/j;

    invoke-direct {v0}, Lcom/instagram/creation/video/j/j;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    iput-object p3, p0, Lcom/instagram/creation/video/d/f;->d:Lcom/instagram/creation/video/k/a;

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    invoke-virtual {p2, v0}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/p;)V

    return-void
.end method

.method private h()V
    .registers 6

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v1, v0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    invoke-virtual {v3}, Lcom/instagram/creation/video/j/j;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/j;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_7f

    :try_start_3a
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_43} :catch_65

    :goto_43
    :try_start_43
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->b(Lcom/instagram/creation/video/d/e;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/instagram/creation/video/d/e;->b:Z

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->c(Lcom/instagram/creation/video/d/e;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->d(Lcom/instagram/creation/video/d/e;)I

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_7f

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v0, v0, Lcom/instagram/creation/video/d/e;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/d/h;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/d/h;-><init>(Lcom/instagram/creation/video/d/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_65
    move-exception v0

    :try_start_66
    const-string v2, "MediaPlayerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error during prepare: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_7f

    goto :goto_43

    :catchall_7f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v1, v0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-boolean v0, v0, Lcom/instagram/creation/video/d/e;->b:Z

    if-nez v0, :cond_d

    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/instagram/creation/video/d/e;->b:Z

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_23
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->e(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    goto :goto_c

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final C_()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->d:Lcom/instagram/creation/video/k/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/k/a;->i()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/f;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/e;->r()V

    invoke-direct {p0}, Lcom/instagram/creation/video/d/f;->h()V

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    iget-object v1, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v1, v1, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/j;->b(Lcom/instagram/creation/b/a/a;)V

    return-void
.end method

.method public final D_()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/d/f;->i()V

    return-void
.end method

.method public final a()Lcom/instagram/creation/video/j/j;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    return-object v0
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/e;->r()V

    invoke-direct {p0}, Lcom/instagram/creation/video/d/f;->h()V

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v0, v0, Lcom/instagram/creation/video/d/e;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/d/g;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/d/g;-><init>(Lcom/instagram/creation/video/d/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/j;->a(Z)V

    return-void
.end method

.method public final f()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/d/f;->i()V

    return-void
.end method
