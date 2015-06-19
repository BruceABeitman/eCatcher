.class final Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/view/SurfaceView;Landroid/view/Display;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(I)V

    :cond_13
    return-void
.end method
