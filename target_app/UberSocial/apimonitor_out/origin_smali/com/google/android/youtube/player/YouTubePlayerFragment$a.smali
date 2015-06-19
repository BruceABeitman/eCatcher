.class final Lcom/google/android/youtube/player/YouTubePlayerFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayerView$b;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/YouTubePlayerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment$a;->a:Lcom/google/android/youtube/player/YouTubePlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerFragment;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerFragment$a;-><init>(Lcom/google/android/youtube/player/YouTubePlayerFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/player/YouTubePlayerView;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/google/android/youtube/player/YouTubePlayerView;Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment$a;->a:Lcom/google/android/youtube/player/YouTubePlayerFragment;

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment$a;->a:Lcom/google/android/youtube/player/YouTubePlayerFragment;

    invoke-static {v1}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->a(Lcom/google/android/youtube/player/YouTubePlayerFragment;)Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    return-void
.end method
