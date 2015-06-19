.class final Lcom/spotify/mobile/android/service/SpotifyService$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/cb;
.field final synthetic a:Lcom/spotify/mobile/android/service/SpotifyService;
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$4;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/PlaybackListener;Ljava/util/EnumSet;)V
.registers 5
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->p()Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->q()Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
if-ne v0, v1, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$4;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/e/p;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->n()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->b()V
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$4;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/e/p;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->n()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->c()V
goto :goto_1b
.end method