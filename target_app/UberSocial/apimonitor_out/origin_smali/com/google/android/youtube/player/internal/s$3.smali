.class final Lcom/google/android/youtube/player/internal/s$3;
.super Lcom/google/android/youtube/player/internal/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/player/internal/s;->setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;

.field final synthetic b:Lcom/google/android/youtube/player/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/internal/s;Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/s$3;->b:Lcom/google/android/youtube/player/internal/s;

    iput-object p2, p0, Lcom/google/android/youtube/player/internal/s$3;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s$3;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;->onLoading()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s$3;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;->onLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s$3;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;->onAdStarted()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_e

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lcom/google/android/youtube/player/internal/s$3;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;->onError(Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;)V

    return-void

    :catch_a
    move-exception v0

    sget-object v0, Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;

    goto :goto_4

    :catch_e
    move-exception v0

    sget-object v0, Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;

    goto :goto_4
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s$3;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;->onVideoStarted()V

    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s$3;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;->onVideoEnded()V

    return-void
.end method
