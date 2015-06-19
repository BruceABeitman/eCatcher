.class final Lcom/spotify/mobile/android/service/player/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/service/player/a/a;
.method constructor <init>(Lcom/spotify/mobile/android/service/player/a/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/player/a/a$2;->a:Lcom/spotify/mobile/android/service/player/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$2;->a:Lcom/spotify/mobile/android/service/player/a/a;
iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a$2;->a:Lcom/spotify/mobile/android/service/player/a/a;
invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/a;->f(Lcom/spotify/mobile/android/service/player/a/a;)I
move-result v1
int-to-long v1, v1
iget-object v3, p0, Lcom/spotify/mobile/android/service/player/a/a$2;->a:Lcom/spotify/mobile/android/service/player/a/a;
invoke-static {v3}, Lcom/spotify/mobile/android/service/player/a/a;->c(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/util/u;
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v3
add-long/2addr v1, v3
iget-object v3, p0, Lcom/spotify/mobile/android/service/player/a/a$2;->a:Lcom/spotify/mobile/android/service/player/a/a;
invoke-static {v3}, Lcom/spotify/mobile/android/service/player/a/a;->g(Lcom/spotify/mobile/android/service/player/a/a;)J
move-result-wide v3
sub-long/2addr v1, v3
long-to-int v1, v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/player/a/a;->a(Lcom/spotify/mobile/android/service/player/a/a;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$2;->a:Lcom/spotify/mobile/android/service/player/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/a;->a(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/service/player/a/g;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a$2;->a:Lcom/spotify/mobile/android/service/player/a/a;
invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/a;->b(Lcom/spotify/mobile/android/service/player/a/a;)I
move-result v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/g;->a(I)V
return-void
.end method