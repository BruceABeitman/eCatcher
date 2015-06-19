.class public final Lcom/spotify/mobile/android/service/connections/n;
.super Lcom/spotify/mobile/android/service/connections/a;
.source "SourceFile"
.field private b:Lcom/spotify/mobile/android/service/connections/o;
.field private c:Lcom/spotify/mobile/android/service/p;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/connections/o;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/connections/a;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/spotify/mobile/android/service/connections/n;->b:Lcom/spotify/mobile/android/service/connections/o;
return-void
.end method
.method public final c()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->c:Lcom/spotify/mobile/android/service/p;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->a:Landroid/content/Context;
invoke-static {v0, p0}, Lcom/spotify/mobile/android/service/SessionManagerProxy;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
return-void
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->a:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->c:Lcom/spotify/mobile/android/service/p;
return-void
.end method
.method public final f()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->b:Lcom/spotify/mobile/android/service/connections/o;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->b:Lcom/spotify/mobile/android/service/connections/o;
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/n;->c:Lcom/spotify/mobile/android/service/p;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/connections/o;->a(Lcom/spotify/mobile/android/service/p;)V
:cond_b
return-void
.end method
.method public final g()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->b:Lcom/spotify/mobile/android/service/connections/o;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->b:Lcom/spotify/mobile/android/service/connections/o;
invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/o;->a()V
:cond_9
return-void
.end method
.method public final h()Lcom/spotify/mobile/android/service/p;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->c:Lcom/spotify/mobile/android/service/p;
return-object v0
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/connections/n; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p2}, Lcom/spotify/mobile/android/service/q;->a(Landroid/os/IBinder;)Lcom/spotify/mobile/android/service/p;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/n;->c:Lcom/spotify/mobile/android/service/p;
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/service/connections/a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
const-string v1, " - Lcom/spotify/mobile/android/service/connections/n; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method