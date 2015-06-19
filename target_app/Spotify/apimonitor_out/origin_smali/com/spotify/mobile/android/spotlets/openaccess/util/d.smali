.class final Lcom/spotify/mobile/android/spotlets/openaccess/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:F

.field private c:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/media/MediaPlayer;F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->a:Landroid/os/Handler;

    iput p3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->b:F

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->c:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->c:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->b:F

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->b:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->b:F

    const v1, 0x3d4ccccd

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->a:Landroid/os/Handler;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;->c:Landroid/media/MediaPlayer;

    invoke-direct {v2, v3, v4, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;-><init>(Landroid/os/Handler;Landroid/media/MediaPlayer;F)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    return-void
.end method
