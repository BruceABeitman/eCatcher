.class final Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x46ea6000

    div-float v1, v0, v1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

    move-result-object v2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    invoke-interface {v2, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/e;->a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;F)V

    return-void
.end method
