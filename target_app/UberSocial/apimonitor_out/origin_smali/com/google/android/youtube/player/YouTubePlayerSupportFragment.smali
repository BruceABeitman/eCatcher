.class public Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$Provider;


# instance fields
.field private final a:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;

.field private b:Landroid/os/Bundle;

.field private c:Lcom/google/android/youtube/player/YouTubePlayerView;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;-><init>(Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;B)V

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->a:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;)Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    return-object v0
.end method

.method private a()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    iget-object v5, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b:Landroid/os/Bundle;

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/app/Activity;Lcom/google/android/youtube/player/YouTubePlayer$Provider;Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b:Landroid/os/Bundle;

    iput-object v6, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    :cond_1d
    return-void
.end method

.method public static newInstance()Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
    .registers 1

    new-instance v0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    invoke-direct {v0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V
    .registers 4

    const-string v0, "Developer key cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_e

    const-string v0, "YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b:Landroid/os/Bundle;

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    new-instance v0, Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->a:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/player/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/android/youtube/player/YouTubePlayerView$b;)V

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->a()V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Z)V

    :cond_16
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onDestroyView()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->c()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->e()Landroid/os/Bundle;

    move-result-object v0

    :goto_d
    const-string v1, "YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b:Landroid/os/Bundle;

    goto :goto_d
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a()V

    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->d()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method
