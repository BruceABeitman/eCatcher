.class public Lcom/google/android/gms/internal/qm;
.super Lcom/google/android/gms/internal/gl;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)V
.registers 11
const/4 v5, 0x0
check-cast v5, [Ljava/lang/String;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;)V
.registers 7
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/go;
invoke-direct {v1, p2}, Lcom/google/android/gms/internal/go;-><init>(Lcom/google/android/gms/common/e;)V
new-instance v2, Lcom/google/android/gms/internal/gs;
invoke-direct {v2, p3}, Lcom/google/android/gms/internal/gs;-><init>(Lcom/google/android/gms/common/f;)V
invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/qm;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)V
return-void
.end method
.method public a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/qj;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/qk;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/qj;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/t;Landroid/net/Uri;Z)V
.registers 7
const/4 v1, 0x0
new-instance v2, Lcom/google/android/gms/internal/qo;
if-eqz p3, :cond_d
move-object v0, p2
:goto_6
invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/qo;-><init>(Lcom/google/android/gms/internal/qm;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/t;Landroid/net/Uri;)V
invoke-virtual {p0, v2, p2, v1, p3}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/internal/qo;Landroid/net/Uri;Landroid/os/Bundle;Z)V
return-void
:cond_d
move-object v0, v1
goto :goto_6
.end method
.method protected a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const v1, 0x41f6b8
invoke-virtual {p0}, Lcom/google/android/gms/internal/qm;->p()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/he;ILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/qo;Landroid/net/Uri;Landroid/os/Bundle;Z)V
.registers 9
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/internal/qm;->r()V
if-eqz p4, :cond_10
invoke-virtual {p0}, Lcom/google/android/gms/internal/qm;->p()Landroid/content/Context;
move-result-object v0
const-string v1, "com.google.android.gms"
const/4 v2, 0x1
invoke-virtual {v0, v1, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
:cond_10
:try_start_10
invoke-virtual {p0}, Lcom/google/android/gms/internal/qm;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/qj;
invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/qj;->a(Lcom/google/android/gms/internal/qg;Landroid/net/Uri;Landroid/os/Bundle;Z)V
:try_end_19
.catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a
:goto_19
return-void
:catch_1a
move-exception v0
const/16 v0, 0x8
const/4 v1, 0x0
invoke-virtual {p1, v0, v3, v1, v3}, Lcom/google/android/gms/internal/qo;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
goto :goto_19
.end method
.method public synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qm;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/qj;
move-result-object v0
return-object v0
.end method
.method protected f()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"
return-object v0
.end method
.method protected g()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.panorama.service.START"
return-object v0
.end method