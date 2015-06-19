.class final Lcom/spotify/mobile/android/provider/af;
.super Landroid/database/ContentObserver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/provider/ac;
.method public constructor <init>(Lcom/spotify/mobile/android/provider/ac;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/provider/af;->a:Lcom/spotify/mobile/android/provider/ac;
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method public final onChange(Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/provider/af;->a:Lcom/spotify/mobile/android/provider/ac;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->c(Lcom/spotify/mobile/android/provider/ac;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/spotify/mobile/android/provider/af;->a:Lcom/spotify/mobile/android/provider/ac;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->d(Lcom/spotify/mobile/android/provider/ac;)Z
monitor-exit v1
:try_end_d
.catchall {:try_start_7 .. :try_end_d} :catchall_e
return-void
:catchall_e
move-exception v0
monitor-exit v1
throw v0
.end method