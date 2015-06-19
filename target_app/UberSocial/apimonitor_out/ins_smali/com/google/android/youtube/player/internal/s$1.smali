.class final Lcom/google/android/youtube/player/internal/s$1;
.super Lcom/google/android/youtube/player/internal/e$a;
.field final synthetic a:Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;
.field final synthetic b:Lcom/google/android/youtube/player/internal/s;
.method constructor <init>(Lcom/google/android/youtube/player/internal/s;Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/youtube/player/internal/s$1;->b:Lcom/google/android/youtube/player/internal/s;
iput-object p2, p0, Lcom/google/android/youtube/player/internal/s$1;->a:Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/e$a;-><init>()V
return-void
.end method
.method public final a(Z)V
.registers 3
iget-object v0, p0, Lcom/google/android/youtube/player/internal/s$1;->a:Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;
invoke-interface {v0, p1}, Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;->onFullscreen(Z)V
return-void
.end method