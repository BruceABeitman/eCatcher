.class final Lcom/spotify/mobile/android/spotlets/collection/b/c$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/b/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/b/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$1;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$1;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/av;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$1;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->b(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/cx;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$1;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/cz;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/av;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$1;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->d(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/spotlets/collection/b/d;
move-result-object v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$1;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->d(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/spotlets/collection/b/d;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/d;->a()V
:cond_2b
return-void
.end method