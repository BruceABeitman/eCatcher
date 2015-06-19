.class final Lcom/spotify/mobile/android/service/SpotifyService$10;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/service/SpotifyService;
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$10;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$10;->a:Lcom/spotify/mobile/android/service/SpotifyService;
new-instance v1, Lcom/spotify/mobile/android/ui/activity/upsell/r;
iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService$10;->a:Lcom/spotify/mobile/android/service/SpotifyService;
new-instance v3, Lcom/spotify/mobile/android/service/SpotifyService$10$1;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/service/SpotifyService$10$1;-><init>(Lcom/spotify/mobile/android/service/SpotifyService$10;)V
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/r;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/upsell/s;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Lcom/spotify/mobile/android/service/SpotifyService;Lcom/spotify/mobile/android/ui/activity/upsell/r;)Lcom/spotify/mobile/android/ui/activity/upsell/r;
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$10;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->p(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/ui/activity/upsell/r;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->a()V
return-void
.end method