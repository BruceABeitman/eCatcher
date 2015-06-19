.class final Lcom/spotify/mobile/android/spotlets/artist/a/b$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/a/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/a/b;Landroid/os/Handler;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/artist/a/b;
invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method public final onChange(Z)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/a/b$1;->onChange(ZLandroid/net/Uri;)V
return-void
.end method
.method public final onChange(ZLandroid/net/Uri;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/artist/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->b(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Ljava/util/concurrent/Executor;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/artist/a/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->a(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Ljava/lang/Runnable;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method