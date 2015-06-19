.class final Lcom/spotify/mobile/android/e/n$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/n;
.method constructor <init>(Lcom/spotify/mobile/android/e/n;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/n$5;->a:Lcom/spotify/mobile/android/e/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$5;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->e()V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$5;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->f()V
return-void
.end method