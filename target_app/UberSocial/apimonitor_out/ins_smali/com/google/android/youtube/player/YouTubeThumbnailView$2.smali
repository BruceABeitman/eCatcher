.class final Lcom/google/android/youtube/player/YouTubeThumbnailView$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/youtube/player/internal/t$b;
.field final synthetic a:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;
.field final synthetic b:Lcom/google/android/youtube/player/YouTubeThumbnailView;
.method constructor <init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;
iput-object p2, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
.registers 4
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;
invoke-interface {v0, v1, p1}, Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;->onInitializationFailure(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;
invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->b(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;
return-void
.end method