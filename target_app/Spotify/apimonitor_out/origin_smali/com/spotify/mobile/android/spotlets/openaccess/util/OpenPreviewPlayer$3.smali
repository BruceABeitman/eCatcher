.class final Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_4f

    move v0, v1

    :goto_a
    const-string v2, "Play should only be called on mCurrentPlayer"

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->e(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->g(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Lcom/spotify/mobile/android/util/by;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->f(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->h(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->i(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V

    :goto_4e
    return-void

    :cond_4f
    const/4 v0, 0x0

    goto :goto_a

    :cond_51
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->k(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->d:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;Z)Z

    goto :goto_4e
.end method
