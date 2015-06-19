.class final Lcom/spotify/mobile/android/service/SpotifyService$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/activity/upsell/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/SpotifyService$10;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/SpotifyService$10;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService$10;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$10$1;->a:Lcom/spotify/mobile/android/service/SpotifyService$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$10$1;->a:Lcom/spotify/mobile/android/service/SpotifyService$10;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/SpotifyService$10;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->p(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/ui/activity/upsell/r;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$10$1;->a:Lcom/spotify/mobile/android/service/SpotifyService$10;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/SpotifyService$10;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->p(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/ui/activity/upsell/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$10$1;->a:Lcom/spotify/mobile/android/service/SpotifyService$10;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/SpotifyService$10;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Lcom/spotify/mobile/android/service/SpotifyService;Lcom/spotify/mobile/android/ui/activity/upsell/r;)Lcom/spotify/mobile/android/ui/activity/upsell/r;

    :cond_1d
    if-eqz p1, :cond_37

    new-instance v0, Lcom/spotify/mobile/android/util/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$10$1;->a:Lcom/spotify/mobile/android/service/SpotifyService$10;

    iget-object v1, v1, Lcom/spotify/mobile/android/service/SpotifyService$10;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService$10$1;->a:Lcom/spotify/mobile/android/service/SpotifyService$10;

    iget-object v2, v2, Lcom/spotify/mobile/android/service/SpotifyService$10;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/SpotifyService;->q(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->getOrbitSession()Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/g;->a()V

    :cond_37
    return-void
.end method
