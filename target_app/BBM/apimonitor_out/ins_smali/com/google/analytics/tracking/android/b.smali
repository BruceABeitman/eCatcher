.class final Lcom/google/analytics/tracking/android/b;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"
.implements Lcom/google/analytics/tracking/android/a;
.field  a:Landroid/content/ServiceConnection;
.field  b:Lcom/google/analytics/tracking/android/d;
.field  c:Lcom/google/analytics/tracking/android/e;
.field  d:Landroid/content/Context;
.field  e:Lcom/google/android/gms/analytics/internal/IAnalyticsService;
.method public constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/d;Lcom/google/analytics/tracking/android/e;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;
if-nez p2, :cond_f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "onConnectedListener cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iput-object p2, p0, Lcom/google/analytics/tracking/android/b;->b:Lcom/google/analytics/tracking/android/d;
if-nez p3, :cond_1b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "onConnectionFailedListener cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iput-object p3, p0, Lcom/google/analytics/tracking/android/b;->c:Lcom/google/analytics/tracking/android/e;
return-void
.end method
.method private d()Lcom/google/android/gms/analytics/internal/IAnalyticsService;
.registers 3
iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->e:Lcom/google/android/gms/analytics/internal/IAnalyticsService;
if-eqz v0, :cond_f
const/4 v0, 0x1
:goto_5
if-nez v0, :cond_11
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
const/4 v0, 0x0
goto :goto_5
:cond_11
iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->e:Lcom/google/android/gms/analytics/internal/IAnalyticsService;
return-object v0
.end method
.method public final a()V
.registers 4
:try_start_0
invoke-direct {p0}, Lcom/google/analytics/tracking/android/b;->d()Lcom/google/android/gms/analytics/internal/IAnalyticsService;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->clearHits()V
:goto_7
:try_end_7
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "clear hits failed: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
goto :goto_7
.end method
.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
.registers 12
:try_start_0
invoke-direct {p0}, Lcom/google/analytics/tracking/android/b;->d()Lcom/google/android/gms/analytics/internal/IAnalyticsService;
move-result-object v0
move-object v1, p1
move-wide v2, p2
move-object v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
:goto_b
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "sendHit failed: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
goto :goto_b
.end method
.method public final b()V
.registers 5
new-instance v0, Landroid/content/Intent;
const-string v1, "com.google.android.gms.analytics.service.START"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "app_package_name"
iget-object v2, p0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;
if-eqz v1, :cond_1c
const-string v0, "Calling connect() while still connected, missing disconnect()."
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
:cond_1b
:goto_1b
return-void
:cond_1c
new-instance v1, Lcom/google/analytics/tracking/android/c;
invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/c;-><init>(Lcom/google/analytics/tracking/android/b;)V
iput-object v1, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;
iget-object v1, p0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;
const/16 v3, 0x81
invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "connect: bindService returned "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V
if-nez v1, :cond_1b
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;
iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->c:Lcom/google/analytics/tracking/android/e;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/e;->a(I)V
goto :goto_1b
.end method
.method public final c()V
.registers 4
const/4 v2, 0x0
iput-object v2, p0, Lcom/google/analytics/tracking/android/b;->e:Lcom/google/android/gms/analytics/internal/IAnalyticsService;
iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;
if-eqz v0, :cond_15
:try_start_7
iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;
iget-object v1, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;
invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:goto_e
:try_end_e
.catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_e} :catch_18
.catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_e} :catch_16
iput-object v2, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;
iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->b:Lcom/google/analytics/tracking/android/d;
invoke-interface {v0}, Lcom/google/analytics/tracking/android/d;->b()V
:cond_15
return-void
:catch_16
move-exception v0
goto :goto_e
:catch_18
move-exception v0
goto :goto_e
.end method