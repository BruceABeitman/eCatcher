.class final Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/youtube/player/YouTubePlayerView$b;
.field final synthetic a:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
.method private constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;)V
.registers 2
iput-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;->a:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;-><init>(Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;)V
return-void
.end method
.method public final a(Lcom/google/android/youtube/player/YouTubePlayerView;)V
.registers 2
return-void
.end method
.method public final a(Lcom/google/android/youtube/player/YouTubePlayerView;Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V
.registers 6
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;->a:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;->a:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
invoke-static {v1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->a(Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;)Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V
return-void
.end method