.class final Lcom/spotify/mobile/android/service/SpotifyService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/SpotifyService;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/SpotifyService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$2;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/util/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$2;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService$2;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/SpotifyService;->q(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->getOrbitSession()Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/g;->a()V

    return-void
.end method
