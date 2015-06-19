.class final Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_4b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->c(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->c(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->f:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->c(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->g:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;

    :cond_45
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->stopSelf()V

    return-void

    :catchall_4b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
