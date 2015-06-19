.class public Lcom/google/android/gms/internal/pj;
.super Lcom/google/android/gms/internal/gl;
.field private final a:Lcom/google/android/gms/internal/pp;
.field private final b:Lcom/google/android/gms/internal/pg;
.field private final f:Lcom/google/android/gms/internal/qd;
.field private final g:Ljava/lang/String;
.field private final h:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;Ljava/lang/String;)V
.registers 9
const/4 v2, 0x0
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;[Ljava/lang/String;)V
new-instance v0, Lcom/google/android/gms/internal/pm;
invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/pm;-><init>(Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/pj$1;)V
iput-object v0, p0, Lcom/google/android/gms/internal/pj;->a:Lcom/google/android/gms/internal/pp;
new-instance v0, Lcom/google/android/gms/internal/pg;
iget-object v1, p0, Lcom/google/android/gms/internal/pj;->a:Lcom/google/android/gms/internal/pp;
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/pg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/pp;)V
iput-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
iput-object p4, p0, Lcom/google/android/gms/internal/pj;->g:Ljava/lang/String;
iput-object v2, p0, Lcom/google/android/gms/internal/pj;->h:Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/internal/qd;
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->p()Landroid/content/Context;
move-result-object v1
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/pj;->a:Lcom/google/android/gms/internal/pp;
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/qd;-><init>(Landroid/content/Context;Ljava/util/Locale;Lcom/google/android/gms/internal/pp;)V
iput-object v0, p0, Lcom/google/android/gms/internal/pj;->f:Lcom/google/android/gms/internal/qd;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/pj;)V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->r()V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/internal/pj;)Landroid/os/IInterface;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->s()Landroid/os/IInterface;
move-result-object v0
return-object v0
.end method
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pd;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/pe;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pd;
move-result-object v0
return-object v0
.end method
.method public a(JLandroid/app/PendingIntent;)V
.registers 7
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->r()V
invoke-static {p3}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
const-wide/16 v1, 0x0
cmp-long v1, p1, v1
if-ltz v1, :cond_1d
:goto_d
const-string v1, "detectionIntervalMillis must be >= 0"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
:try_start_12
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
const/4 v1, 0x1
invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/pd;->a(JZLandroid/app/PendingIntent;)V
:try_end_1c
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1f
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_d
:catch_1f
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Landroid/app/PendingIntent;)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->r()V
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
:try_start_6
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/pd;->a(Landroid/app/PendingIntent;)V
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Landroid/app/PendingIntent;Lcom/google/android/gms/location/j;)V
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->r()V
const-string v0, "PendingIntent must be specified."
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnRemoveGeofencesResultListener not provided."
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-nez p2, :cond_23
const/4 v0, 0x0
move-object v1, v0
:try_start_11
:goto_11
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->p()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/pd;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/pa;Ljava/lang/String;)V
return-void
:cond_23
new-instance v0, Lcom/google/android/gms/internal/pl;
invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/location/j;Lcom/google/android/gms/internal/pj;)V
:try_end_28
.catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_28} :catch_2a
move-object v1, v0
goto :goto_11
:catch_2a
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Landroid/location/Location;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pg;->a(Landroid/location/Location;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "client_name"
iget-object v2, p0, Lcom/google/android/gms/internal/pj;->g:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const v1, 0x41f6b8
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->p()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hh;->e(Lcom/google/android/gms/internal/he;ILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/pg;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
return-void
.end method
.method public a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/k;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/k;Landroid/os/Looper;)V
return-void
.end method
.method public a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/k;Landroid/os/Looper;)V
.registers 6
iget-object v1, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/pg;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/k;Landroid/os/Looper;)V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public a(Lcom/google/android/gms/location/k;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pg;->a(Lcom/google/android/gms/location/k;)V
return-void
.end method
.method public a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/i;)V
.registers 7
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->r()V
if-eqz p1, :cond_31
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_31
const/4 v0, 0x1
:goto_c
const-string v1, "At least one geofence must be specified."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
const-string v0, "PendingIntent must be specified."
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnAddGeofencesResultListener not provided."
invoke-static {p3, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-nez p3, :cond_33
const/4 v0, 0x0
move-object v1, v0
:try_start_1f
:goto_1f
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->p()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/pd;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/pa;Ljava/lang/String;)V
return-void
:cond_31
const/4 v0, 0x0
goto :goto_c
:cond_33
new-instance v0, Lcom/google/android/gms/internal/pl;
invoke-direct {v0, p3, p0}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/location/i;Lcom/google/android/gms/internal/pj;)V
:try_end_38
.catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_38} :catch_3a
move-object v1, v0
goto :goto_1f
:catch_3a
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Ljava/util/List;Lcom/google/android/gms/location/j;)V
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->r()V
if-eqz p1, :cond_35
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_35
const/4 v0, 0x1
:goto_d
const-string v2, "geofenceRequestIds can\'t be null nor empty."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
const-string v0, "OnRemoveGeofencesResultListener not provided."
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-array v0, v1, [Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
if-nez p2, :cond_37
const/4 v1, 0x0
move-object v2, v1
:goto_23
:try_start_23
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->s()Landroid/os/IInterface;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/pd;
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->p()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/pd;->a([Ljava/lang/String;Lcom/google/android/gms/internal/pa;Ljava/lang/String;)V
return-void
:cond_35
move v0, v1
goto :goto_d
:cond_37
new-instance v1, Lcom/google/android/gms/internal/pl;
invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/location/j;Lcom/google/android/gms/internal/pj;)V
:try_end_3c
.catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3c} :catch_3e
move-object v2, v1
goto :goto_23
:catch_3e
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Z)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pg;->a(Z)V
return-void
.end method
.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pj;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pd;
move-result-object v0
return-object v0
.end method
.method public b(Landroid/app/PendingIntent;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pg;->a(Landroid/app/PendingIntent;)V
return-void
.end method
.method public c_()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/internal/pj;->c()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
invoke-virtual {v0}, Lcom/google/android/gms/internal/pg;->b()V
iget-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
invoke-virtual {v0}, Lcom/google/android/gms/internal/pg;->c()V
:cond_13
invoke-super {p0}, Lcom/google/android/gms/internal/gl;->c_()V
monitor-exit v1
return-void
:catchall_18
move-exception v0
monitor-exit v1
:try_end_1a
.catchall {:try_start_3 .. :try_end_1a} :catchall_18
throw v0
.end method
.method protected f()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
return-object v0
.end method
.method protected g()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"
return-object v0
.end method
.method public h()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/pj;->b:Lcom/google/android/gms/internal/pg;
invoke-virtual {v0}, Lcom/google/android/gms/internal/pg;->a()Landroid/location/Location;
move-result-object v0
return-object v0
.end method