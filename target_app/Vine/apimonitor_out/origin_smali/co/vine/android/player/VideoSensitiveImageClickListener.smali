.class public Lco/vine/android/player/VideoSensitiveImageClickListener;
.super Lco/vine/android/player/SensitiveImageClickListener;
.source "VideoSensitiveImageClickListener.java"


# instance fields
.field private mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;


# direct methods
.method public constructor <init>(Lco/vine/android/player/HasVideoPlayerAdapter;Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/player/HasVideoPlayerAdapter;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lco/vine/android/player/SensitiveImageClickListener;-><init>(Ljava/util/HashSet;)V

    iput-object p1, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    iget v2, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mPosition:I

    invoke-interface {v1, v2, v3}, Lco/vine/android/player/HasVideoPlayerAdapter;->getPlayer(IZ)Lco/vine/android/player/SdkVideoView;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    invoke-interface {v1}, Lco/vine/android/player/HasVideoPlayerAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;

    move-result-object v1

    if-eq v1, v0, :cond_16

    iget-object v1, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    invoke-interface {v1}, Lco/vine/android/player/HasVideoPlayerAdapter;->pauseCurrentPlayer()V

    :cond_16
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_47

    iget v1, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mPosition:I

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getPlayingPosition()I

    move-result v2

    if-ne v1, v2, :cond_34

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->resume()V

    :goto_2f
    return-void

    :cond_30
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V

    goto :goto_2f

    :cond_34
    iget-object v1, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mExplicitDismissed:Ljava/util/HashSet;

    iget v2, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    iget v2, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mPosition:I

    invoke-interface {v1, v2, v3}, Lco/vine/android/player/HasVideoPlayerAdapter;->playFile(IZ)V

    goto :goto_2f

    :cond_47
    iget-object v1, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mExplicitDismissed:Ljava/util/HashSet;

    iget v2, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    iget v2, p0, Lco/vine/android/player/VideoSensitiveImageClickListener;->mPosition:I

    invoke-interface {v1, v2}, Lco/vine/android/player/HasVideoPlayerAdapter;->play(I)V

    goto :goto_2f
.end method
