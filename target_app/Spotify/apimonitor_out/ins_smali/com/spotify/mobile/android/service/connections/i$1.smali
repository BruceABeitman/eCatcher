.class final Lcom/spotify/mobile/android/service/connections/i$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/spotify/mobile/android/service/connections/i;
.method constructor <init>(Lcom/spotify/mobile/android/service/connections/i;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/connections/i$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
invoke-virtual {v1, p2}, Lcom/spotify/mobile/android/service/connections/i;->a(Landroid/os/IBinder;)Landroid/os/IInterface;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/connections/i;->a(Lcom/spotify/mobile/android/service/connections/i;Landroid/os/IInterface;)Landroid/os/IInterface;
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/i;->a(Lcom/spotify/mobile/android/service/connections/i;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/i;->b(Lcom/spotify/mobile/android/service/connections/i;)V
const-string v1, " - Lcom/spotify/mobile/android/service/connections/i$1; onServiceConnected"
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
const-string v0, " + Lcom/spotify/mobile/android/service/connections/i$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/connections/i;->a(Lcom/spotify/mobile/android/service/connections/i;Landroid/os/IInterface;)Landroid/os/IInterface;
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/i;->c(Lcom/spotify/mobile/android/service/connections/i;)Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/i;->a(Lcom/spotify/mobile/android/service/connections/i;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/i;->d(Lcom/spotify/mobile/android/service/connections/i;)V
:cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i$1;->a:Lcom/spotify/mobile/android/service/connections/i;
invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/i;->e(Lcom/spotify/mobile/android/service/connections/i;)V
const-string v1, " - Lcom/spotify/mobile/android/service/connections/i$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method