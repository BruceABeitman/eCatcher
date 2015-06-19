.class final Lcom/spotify/mobile/android/service/at;
.super Lcom/spotify/mobile/android/service/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/VideoPlayerManagerProxy;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/VideoPlayerManagerProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/at;->a:Lcom/spotify/mobile/android/service/VideoPlayerManagerProxy;

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/at;->a:Lcom/spotify/mobile/android/service/VideoPlayerManagerProxy;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/VideoPlayerManagerProxy;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/at;->a:Lcom/spotify/mobile/android/service/VideoPlayerManagerProxy;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/VideoPlayerManagerProxy;->b:Landroid/os/Binder;

    check-cast v0, Lcom/spotify/mobile/android/service/managers/f;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/service/managers/f;->a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V

    return-void
.end method
