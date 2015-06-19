.class final Lcom/spotify/mobile/android/service/SpotifyService$3$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/service/SpotifyService$3;
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService$3;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3$1;->a:Lcom/spotify/mobile/android/service/SpotifyService$3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3$1;->a:Lcom/spotify/mobile/android/service/SpotifyService$3;
iget-object v0, v0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->o(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/as;
invoke-static {}, Lcom/spotify/mobile/android/service/as;->a()V
return-void
.end method