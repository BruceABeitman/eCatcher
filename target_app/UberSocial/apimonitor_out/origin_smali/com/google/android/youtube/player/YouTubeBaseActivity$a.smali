.class final Lcom/google/android/youtube/player/YouTubeBaseActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayerView$b;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/YouTubeBaseActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/player/YouTubeBaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/player/YouTubeBaseActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;-><init>(Lcom/google/android/youtube/player/YouTubeBaseActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/player/YouTubePlayerView;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->c(Lcom/google/android/youtube/player/YouTubeBaseActivity;)Lcom/google/android/youtube/player/YouTubePlayerView;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->c(Lcom/google/android/youtube/player/YouTubeBaseActivity;)Lcom/google/android/youtube/player/YouTubePlayerView;

    move-result-object v0

    if-eq v0, p1, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->c(Lcom/google/android/youtube/player/YouTubeBaseActivity;)Lcom/google/android/youtube/player/YouTubePlayerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Z)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->a(Lcom/google/android/youtube/player/YouTubeBaseActivity;Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/YouTubePlayerView;

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->d(Lcom/google/android/youtube/player/YouTubeBaseActivity;)I

    move-result v0

    if-lez v0, :cond_2a

    invoke-virtual {p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a()V

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->d(Lcom/google/android/youtube/player/YouTubeBaseActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_36

    invoke-virtual {p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b()V

    :cond_36
    return-void
.end method

.method public final a(Lcom/google/android/youtube/player/YouTubePlayerView;Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->a(Lcom/google/android/youtube/player/YouTubeBaseActivity;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/app/Activity;Lcom/google/android/youtube/player/YouTubePlayer$Provider;Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b(Lcom/google/android/youtube/player/YouTubeBaseActivity;)Landroid/os/Bundle;

    return-void
.end method
