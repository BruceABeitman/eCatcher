.class public Lcom/google/android/gms/drive/internal/am;
.super Lcom/google/android/gms/internal/gl;
.field final a:Lcom/google/android/gms/common/api/h;
.field  b:Ljava/util/Map;
.field private final f:Ljava/lang/String;
.field private g:Lcom/google/android/gms/drive/DriveId;
.field private h:Lcom/google/android/gms/drive/DriveId;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V
.registers 13
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p4
move-object v4, p5
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/drive/internal/am;->b:Ljava/util/Map;
invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->b()Ljava/lang/String;
move-result-object v0
const-string v1, "Must call Api.ClientBuilder.setAccountName()"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/drive/internal/am;->f:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/drive/internal/am;->a:Lcom/google/android/gms/common/api/h;
return-void
.end method
.method  a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/a;)Lcom/google/android/gms/common/api/j;
.registers 9
invoke-static {p3, p2}, Lcom/google/android/gms/drive/events/d;->a(ILcom/google/android/gms/drive/DriveId;)Z
move-result v0
const-string v1, "id"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
const-string v0, "listener"
invoke-static {p4, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/am;->c()Z
move-result v0
const-string v1, "Client must be connected"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/drive/internal/am;->b:Ljava/util/Map;
monitor-enter v1
:try_start_1a
iget-object v0, p0, Lcom/google/android/gms/drive/internal/am;->b:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-nez v0, :cond_2e
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/drive/internal/am;->b:Ljava/util/Map;
invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2e
invoke-interface {v0, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
new-instance v0, Lcom/google/android/gms/drive/internal/aj;
sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, v2}, Lcom/google/android/gms/drive/internal/aj;-><init>(Lcom/google/android/gms/common/api/Status;)V
monitor-exit v1
:goto_3c
return-object v0
:cond_3d
new-instance v2, Lcom/google/android/gms/drive/internal/bg;
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/am;->e()Landroid/os/Looper;
move-result-object v3
invoke-direct {v2, v3, p3, p4}, Lcom/google/android/gms/drive/internal/bg;-><init>(Landroid/os/Looper;ILcom/google/android/gms/drive/events/a;)V
invoke-interface {v0, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/google/android/gms/drive/internal/am$1;
invoke-direct {v0, p0, p2, p3, v2}, Lcom/google/android/gms/drive/internal/am$1;-><init>(Lcom/google/android/gms/drive/internal/am;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/bg;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
monitor-exit v1
goto :goto_3c
:catchall_54
move-exception v0
monitor-exit v1
:try_end_56
.catchall {:try_start_1a .. :try_end_56} :catchall_54
throw v0
.end method
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/bj;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/drive/internal/bk;->a(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/bj;
move-result-object v0
return-object v0
.end method
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 5
if-eqz p3, :cond_21
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
const-string v0, "com.google.android.gms.drive.root_id"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
iput-object v0, p0, Lcom/google/android/gms/drive/internal/am;->g:Lcom/google/android/gms/drive/DriveId;
const-string v0, "com.google.android.gms.drive.appdata_id"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
iput-object v0, p0, Lcom/google/android/gms/drive/internal/am;->h:Lcom/google/android/gms/drive/DriveId;
:cond_21
invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gl;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
.registers 10
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/am;->p()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-static {p2}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v3}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/am;->q()[Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
const v2, 0x41f6b8
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/am;->q()[Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/google/android/gms/drive/internal/am;->f:Ljava/lang/String;
new-instance v6, Landroid/os/Bundle;
invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/he;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/am;->a(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/bj;
move-result-object v0
return-object v0
.end method
.method  b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/a;)Lcom/google/android/gms/common/api/j;
.registers 8
invoke-static {p3, p2}, Lcom/google/android/gms/drive/events/d;->a(ILcom/google/android/gms/drive/DriveId;)Z
move-result v0
const-string v1, "id"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
const-string v0, "listener"
invoke-static {p4, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/am;->c()Z
move-result v0
const-string v1, "Client must be connected"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
iget-object v2, p0, Lcom/google/android/gms/drive/internal/am;->b:Ljava/util/Map;
monitor-enter v2
:try_start_1a
iget-object v0, p0, Lcom/google/android/gms/drive/internal/am;->b:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-nez v0, :cond_2d
new-instance v0, Lcom/google/android/gms/drive/internal/aj;
sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/aj;-><init>(Lcom/google/android/gms/common/api/Status;)V
monitor-exit v2
:goto_2c
return-object v0
:cond_2d
invoke-interface {v0, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/drive/internal/bg;
if-nez v1, :cond_41
new-instance v0, Lcom/google/android/gms/drive/internal/aj;
sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/aj;-><init>(Lcom/google/android/gms/common/api/Status;)V
monitor-exit v2
goto :goto_2c
:catchall_3e
move-exception v0
monitor-exit v2
:try_end_40
.catchall {:try_start_1a .. :try_end_40} :catchall_3e
throw v0
:try_start_41
:cond_41
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/google/android/gms/drive/internal/am;->b:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_4c
new-instance v0, Lcom/google/android/gms/drive/internal/am$2;
invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/android/gms/drive/internal/am$2;-><init>(Lcom/google/android/gms/drive/internal/am;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/bg;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
monitor-exit v2
:try_end_56
.catchall {:try_start_41 .. :try_end_56} :catchall_3e
goto :goto_2c
.end method
.method public c_()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/am;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/bj;
if-eqz v0, :cond_10
:try_start_8
new-instance v1, Lcom/google/android/gms/drive/internal/DisconnectRequest;
invoke-direct {v1}, Lcom/google/android/gms/drive/internal/DisconnectRequest;-><init>()V
invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/DisconnectRequest;)V
:goto_10
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_19
:cond_10
invoke-super {p0}, Lcom/google/android/gms/internal/gl;->c_()V
iget-object v0, p0, Lcom/google/android/gms/drive/internal/am;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
:catch_19
move-exception v0
goto :goto_10
.end method
.method protected f()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.drive.internal.IDriveService"
return-object v0
.end method
.method protected g()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.drive.ApiService.START"
return-object v0
.end method
.method public h()Lcom/google/android/gms/drive/internal/bj;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/am;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/bj;
return-object v0
.end method
.method public i()Lcom/google/android/gms/drive/DriveId;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/am;->g:Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method
.method public j()Lcom/google/android/gms/drive/DriveId;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/am;->h:Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method