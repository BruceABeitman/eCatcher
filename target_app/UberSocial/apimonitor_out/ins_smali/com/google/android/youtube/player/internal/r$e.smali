.class final Lcom/google/android/youtube/player/internal/r$e;
.super Ljava/lang/Object;
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/google/android/youtube/player/internal/r;
.method constructor <init>(Lcom/google/android/youtube/player/internal/r;)V
.registers 2
iput-object p1, p0, Lcom/google/android/youtube/player/internal/r$e;->a:Lcom/google/android/youtube/player/internal/r;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/youtube/player/internal/r$e; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$e;->a:Lcom/google/android/youtube/player/internal/r;
invoke-virtual {v0, p2}, Lcom/google/android/youtube/player/internal/r;->b(Landroid/os/IBinder;)V
const-string v1, " - Lcom/google/android/youtube/player/internal/r$e; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/youtube/player/internal/r$e; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$e;->a:Lcom/google/android/youtube/player/internal/r;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/internal/r;Landroid/os/IInterface;)Landroid/os/IInterface;
iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$e;->a:Lcom/google/android/youtube/player/internal/r;
invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/r;->h()V
const-string v1, " - Lcom/google/android/youtube/player/internal/r$e; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method