.class final Lcom/google/android/youtube/player/YouTubePlayerView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView$a;-><init>(Lcom/google/android/youtube/player/YouTubePlayerView;)V

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->d(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/s;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->i(Lcom/google/android/youtube/player/YouTubePlayerView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->i(Lcom/google/android/youtube/player/YouTubePlayerView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->d(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->g()V

    :cond_29
    return-void
.end method
