.class final Lcom/spotify/mobile/android/util/j$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/util/j;
.method constructor <init>(Lcom/spotify/mobile/android/util/j;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/j$1;->a:Lcom/spotify/mobile/android/util/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/util/j$1;->a:Lcom/spotify/mobile/android/util/j;
invoke-static {v0}, Lcom/spotify/mobile/android/util/j;->a(Lcom/spotify/mobile/android/util/j;)Ljava/lang/Runnable;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/spotify/mobile/android/util/j$1;->a:Lcom/spotify/mobile/android/util/j;
invoke-static {v0}, Lcom/spotify/mobile/android/util/j;->b(Lcom/spotify/mobile/android/util/j;)Ljava/util/EnumSet;
move-result-object v0
invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/util/j$1;->a:Lcom/spotify/mobile/android/util/j;
invoke-static {v2}, Lcom/spotify/mobile/android/util/j;->c(Lcom/spotify/mobile/android/util/j;)Ljava/util/EnumSet;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/util/j$1;->a:Lcom/spotify/mobile/android/util/j;
iget-object v4, p0, Lcom/spotify/mobile/android/util/j$1;->a:Lcom/spotify/mobile/android/util/j;
invoke-static {v4}, Lcom/spotify/mobile/android/util/j;->c(Lcom/spotify/mobile/android/util/j;)Ljava/util/EnumSet;
move-result-object v4
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/j;->a(Lcom/spotify/mobile/android/util/j;Ljava/util/EnumSet;)Ljava/util/EnumSet;
iget-object v3, p0, Lcom/spotify/mobile/android/util/j$1;->a:Lcom/spotify/mobile/android/util/j;
invoke-static {v3}, Lcom/spotify/mobile/android/util/j;->d(Lcom/spotify/mobile/android/util/j;)Ljava/util/EnumSet;
monitor-exit v1
:try_end_28
.catchall {:try_start_7 .. :try_end_28} :catchall_45
invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z
invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z
invoke-virtual {v0, v1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z
invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z
move-result v1
if-nez v1, :cond_44
iget-object v1, p0, Lcom/spotify/mobile/android/util/j$1;->a:Lcom/spotify/mobile/android/util/j;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/util/j;->a(Lcom/spotify/mobile/android/util/j;Ljava/util/EnumSet;Ljava/util/EnumSet;)V
:cond_44
return-void
:catchall_45
move-exception v0
monitor-exit v1
throw v0
.end method