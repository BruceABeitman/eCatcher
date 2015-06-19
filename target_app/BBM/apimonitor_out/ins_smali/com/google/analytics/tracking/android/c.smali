.class final Lcom/google/analytics/tracking/android/c;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/google/analytics/tracking/android/b;
.method constructor <init>(Lcom/google/analytics/tracking/android/b;)V
.registers 2
iput-object p1, p0, Lcom/google/analytics/tracking/android/c;->a:Lcom/google/analytics/tracking/android/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/analytics/tracking/android/c; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "service connected, binder: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V
:try_start_12
invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
move-result-object v0
const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
const-string v0, "bound to service"
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/analytics/tracking/android/c;->a:Lcom/google/analytics/tracking/android/b;
invoke-static {p2}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;
move-result-object v1
iput-object v1, v0, Lcom/google/analytics/tracking/android/b;->e:Lcom/google/android/gms/analytics/internal/IAnalyticsService;
iget-object v0, p0, Lcom/google/analytics/tracking/android/c;->a:Lcom/google/analytics/tracking/android/b;
iget-object v0, v0, Lcom/google/analytics/tracking/android/b;->b:Lcom/google/analytics/tracking/android/d;
invoke-interface {v0}, Lcom/google/analytics/tracking/android/d;->a()V
:goto_32
:try_end_32
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_32} :catch_33
const-string v1, " - Lcom/google/analytics/tracking/android/c; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_33
move-exception v0
:cond_34
iget-object v0, p0, Lcom/google/analytics/tracking/android/c;->a:Lcom/google/analytics/tracking/android/b;
iget-object v0, v0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
iget-object v0, p0, Lcom/google/analytics/tracking/android/c;->a:Lcom/google/analytics/tracking/android/b;
const/4 v1, 0x0
iput-object v1, v0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;
iget-object v0, p0, Lcom/google/analytics/tracking/android/c;->a:Lcom/google/analytics/tracking/android/b;
iget-object v0, v0, Lcom/google/analytics/tracking/android/b;->c:Lcom/google/analytics/tracking/android/e;
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/e;->a(I)V
goto :goto_32
.end method
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/analytics/tracking/android/c; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "service disconnected: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/analytics/tracking/android/c;->a:Lcom/google/analytics/tracking/android/b;
const/4 v1, 0x0
iput-object v1, v0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;
iget-object v0, p0, Lcom/google/analytics/tracking/android/c;->a:Lcom/google/analytics/tracking/android/b;
iget-object v0, v0, Lcom/google/analytics/tracking/android/b;->b:Lcom/google/analytics/tracking/android/d;
invoke-interface {v0}, Lcom/google/analytics/tracking/android/d;->b()V
const-string v1, " - Lcom/google/analytics/tracking/android/c; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method