.class public Lcom/google/android/gms/internal/pg;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/internal/pp;
.field private final b:Landroid/content/Context;
.field private c:Landroid/content/ContentProviderClient;
.field private d:Z
.field private e:Ljava/util/HashMap;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/pp;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/pg;->c:Landroid/content/ContentProviderClient;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->d:Z
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
iput-object p1, p0, Lcom/google/android/gms/internal/pg;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
return-void
.end method
.method public a()Landroid/location/Location;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->a()V
:try_start_5
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->c()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
iget-object v1, p0, Lcom/google/android/gms/internal/pg;->b:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pd;->a(Ljava/lang/String;)Landroid/location/Location;
:try_end_16
.catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18
move-result-object v0
return-object v0
:catch_18
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Landroid/app/PendingIntent;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->a()V
:try_start_5
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->c()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/pd;->b(Landroid/app/PendingIntent;)V
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Landroid/location/Location;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->a()V
:try_start_5
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->c()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/pd;->a(Landroid/location/Location;)V
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->a()V
:try_start_5
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->c()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/pd;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/k;Landroid/os/Looper;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->a()V
if-nez p3, :cond_10
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_10
iget-object v2, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
monitor-enter v2
:try_start_13
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pi;
if-nez v0, :cond_45
new-instance v0, Lcom/google/android/gms/internal/pi;
invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/pi;-><init>(Lcom/google/android/gms/location/k;Landroid/os/Looper;)V
move-object v1, v0
:goto_23
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_28
:try_end_28
.catchall {:try_start_13 .. :try_end_28} :catchall_42
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->c()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
iget-object v3, p0, Lcom/google/android/gms/internal/pg;->b:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, p1, v1, v3}, Lcom/google/android/gms/internal/pd;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/n;Ljava/lang/String;)V
:try_start_39
:try_end_39
.catchall {:try_start_28 .. :try_end_39} :catchall_42
.catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_39} :catch_3b
monitor-exit v2
return-void
:catch_3b
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catchall_42
move-exception v0
monitor-exit v2
:try_end_44
.catchall {:try_start_39 .. :try_end_44} :catchall_42
throw v0
:cond_45
move-object v1, v0
goto :goto_23
.end method
.method public a(Lcom/google/android/gms/location/k;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->a()V
const-string v0, "Invalid null listener"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
monitor-enter v2
:try_start_d
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pi;
iget-object v1, p0, Lcom/google/android/gms/internal/pg;->c:Landroid/content/ContentProviderClient;
if-eqz v1, :cond_29
iget-object v1, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z
move-result v1
if-eqz v1, :cond_29
iget-object v1, p0, Lcom/google/android/gms/internal/pg;->c:Landroid/content/ContentProviderClient;
invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
const/4 v1, 0x0
iput-object v1, p0, Lcom/google/android/gms/internal/pg;->c:Landroid/content/ContentProviderClient;
:cond_29
if-eqz v0, :cond_39
invoke-virtual {v0}, Lcom/google/android/gms/internal/pi;->a()V
:try_end_2e
.catchall {:try_start_d .. :try_end_2e} :catchall_42
:try_start_2e
iget-object v1, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v1}, Lcom/google/android/gms/internal/pp;->c()Landroid/os/IInterface;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/pd;
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/pd;->a(Lcom/google/android/gms/location/n;)V
:cond_39
:try_start_39
:try_end_39
.catchall {:try_start_2e .. :try_end_39} :catchall_42
.catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_39} :catch_3b
monitor-exit v2
return-void
:catch_3b
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catchall_42
move-exception v0
monitor-exit v2
:try_end_44
.catchall {:try_start_39 .. :try_end_44} :catchall_42
throw v0
.end method
.method public a(Z)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->a()V
:try_start_5
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v0}, Lcom/google/android/gms/internal/pp;->c()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/pd;->a(Z)V
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_13
iput-boolean p1, p0, Lcom/google/android/gms/internal/pg;->d:Z
return-void
:catch_13
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public b()V
.registers 5
:try_start_0
iget-object v2, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
monitor-enter v2
:try_start_3
:try_end_3
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2a
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_d
:goto_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pi;
if-eqz v0, :cond_d
iget-object v1, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pp;
invoke-interface {v1}, Lcom/google/android/gms/internal/pp;->c()Landroid/os/IInterface;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/pd;
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/pd;->a(Lcom/google/android/gms/location/n;)V
goto :goto_d
:catchall_27
move-exception v0
monitor-exit v2
:try_start_29
:try_end_29
.catchall {:try_start_3 .. :try_end_29} :catchall_27
throw v0
:try_end_2a
.catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2a} :catch_2a
:catch_2a
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_31
:try_start_31
iget-object v0, p0, Lcom/google/android/gms/internal/pg;->e:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
monitor-exit v2
:try_end_37
.catchall {:try_start_31 .. :try_end_37} :catchall_27
return-void
.end method
.method public c()V
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->d:Z
if-eqz v0, :cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pg;->a(Z)V
:cond_8
return-void
.end method