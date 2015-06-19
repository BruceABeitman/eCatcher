.class final Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$2;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 9

    const/4 v4, 0x1

    const-string v1, "Preview Player error! MediaPlayer: %s  What: %d  Extra: %d"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$2;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_29

    const-string v0, "CurrentPlayer"

    :goto_11
    aput-object v0, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$2;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->d(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V

    return v4

    :cond_29
    const-string v0, "NextPlayer"

    goto :goto_11
.end method
