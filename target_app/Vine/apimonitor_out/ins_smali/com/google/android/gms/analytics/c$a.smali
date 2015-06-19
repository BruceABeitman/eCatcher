.class final Lcom/google/android/gms/analytics/c$a;
.super Ljava/lang/Object;
.implements Landroid/content/ServiceConnection;
.field final synthetic ty:Lcom/google/android/gms/analytics/c;
.method constructor <init>(Lcom/google/android/gms/analytics/c;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/c$a;->ty:Lcom/google/android/gms/analytics/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/analytics/c$a; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "service connected, binder: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:try_start_17
invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
move-result-object v0
const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
const-string v0, "bound to service"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->ty:Lcom/google/android/gms/analytics/c;
invoke-static {p2}, Lcom/google/android/gms/internal/ff$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ff;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Lcom/google/android/gms/internal/ff;)Lcom/google/android/gms/internal/ff;
iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->ty:Lcom/google/android/gms/analytics/c;
invoke-static {v0}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;)V
:goto_36
:try_end_36
.catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_36} :catch_37
const-string v1, " - Lcom/google/android/gms/analytics/c$a; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_37
move-exception v0
:cond_38
iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->ty:Lcom/google/android/gms/analytics/c;
invoke-static {v0}, Lcom/google/android/gms/analytics/c;->b(Lcom/google/android/gms/analytics/c;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->ty:Lcom/google/android/gms/analytics/c;
invoke-static {v0, v2}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->ty:Lcom/google/android/gms/analytics/c;
invoke-static {v0}, Lcom/google/android/gms/analytics/c;->c(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$c;
move-result-object v0
const/4 v1, 0x2
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/analytics/c$c;->a(ILandroid/content/Intent;)V
goto :goto_36
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/analytics/c$a; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "service disconnected: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->ty:Lcom/google/android/gms/analytics/c;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->ty:Lcom/google/android/gms/analytics/c;
invoke-static {v0}, Lcom/google/android/gms/analytics/c;->d(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$b;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/analytics/c$b;->onDisconnected()V
const-string v1, " - Lcom/google/android/gms/analytics/c$a; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method