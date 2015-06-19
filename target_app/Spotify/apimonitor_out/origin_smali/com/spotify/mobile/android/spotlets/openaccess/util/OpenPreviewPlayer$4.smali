.class final Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->k(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_2c

    const/4 v0, 0x1

    :goto_a
    const-string v2, "Prepare should only be called on mNextPlayer"

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->l(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->m(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->i(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V

    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    goto :goto_a
.end method
