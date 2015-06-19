.class final Lcom/spotify/mobile/android/e/n$14;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/n;
.method constructor <init>(Lcom/spotify/mobile/android/e/n;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/n$14;->a:Lcom/spotify/mobile/android/e/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
const-string v0, "The application has been idle too long, shutting down service"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$14;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->c()V
return-void
.end method
.method public final b()V
.registers 2
const-string v0, "This point is not reachable"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
return-void
.end method