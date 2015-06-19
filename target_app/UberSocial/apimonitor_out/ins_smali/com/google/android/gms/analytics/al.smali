.class final Lcom/google/android/gms/analytics/al;
.super Ljava/lang/Object;
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/google/android/gms/analytics/ak;
.method constructor <init>(Lcom/google/android/gms/analytics/ak;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/al;->a:Lcom/google/android/gms/analytics/ak;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/analytics/al; onServiceConnected "
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
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
:try_start_17
invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
move-result-object v0
const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
const-string v0, "bound to service"
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/al;->a:Lcom/google/android/gms/analytics/ak;
invoke-static {p2}, Lcom/google/android/gms/internal/em;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/el;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/ak;Lcom/google/android/gms/internal/el;)Lcom/google/android/gms/internal/el;
iget-object v0, p0, Lcom/google/android/gms/analytics/al;->a:Lcom/google/android/gms/analytics/ak;
invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/ak;)V
:goto_36
:try_end_36
.catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_36} :catch_37
const-string v1, " - Lcom/google/android/gms/analytics/al; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_37
move-exception v0
:cond_38
iget-object v0, p0, Lcom/google/android/gms/analytics/al;->a:Lcom/google/android/gms/analytics/ak;
invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->b(Lcom/google/android/gms/analytics/ak;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/al;->a:Lcom/google/android/gms/analytics/ak;
invoke-static {v0, v2}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/ak;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
iget-object v0, p0, Lcom/google/android/gms/analytics/al;->a:Lcom/google/android/gms/analytics/ak;
invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->c(Lcom/google/android/gms/analytics/ak;)Lcom/google/android/gms/analytics/an;
move-result-object v0
const/4 v1, 0x2
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/analytics/an;->a(ILandroid/content/Intent;)V
goto :goto_36
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/analytics/al; onServiceDisconnected "
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
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/al;->a:Lcom/google/android/gms/analytics/ak;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/ak;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
iget-object v0, p0, Lcom/google/android/gms/analytics/al;->a:Lcom/google/android/gms/analytics/ak;
invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->d(Lcom/google/android/gms/analytics/ak;)Lcom/google/android/gms/analytics/am;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/analytics/am;->f()V
const-string v1, " - Lcom/google/android/gms/analytics/al; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method