.class public Lcom/google/android/gms/internal/ih;
.super Lcom/google/android/gms/internal/eh;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/eh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 7
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/eh$c;
invoke-direct {v1, p2}, Lcom/google/android/gms/internal/eh$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
new-instance v2, Lcom/google/android/gms/internal/eh$g;
invoke-direct {v2, p3}, Lcom/google/android/gms/internal/eh$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ih;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/a$c;Landroid/net/Uri;Z)V
.registers 7
const/4 v1, 0x0
new-instance v2, Lcom/google/android/gms/internal/ih$b;
if-eqz p3, :cond_d
move-object v0, p2
:goto_6
invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ih$b;-><init>(Lcom/google/android/gms/internal/ih;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/a$c;Landroid/net/Uri;)V
invoke-virtual {p0, v2, p2, v1, p3}, Lcom/google/android/gms/internal/ih;->a(Lcom/google/android/gms/internal/ih$b;Landroid/net/Uri;Landroid/os/Bundle;Z)V
return-void
:cond_d
move-object v0, v1
goto :goto_6
.end method
.method protected a(Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/eh$e;)V
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const v1, 0x41f6b8
invoke-virtual {p0}, Lcom/google/android/gms/internal/ih;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/en;->a(Lcom/google/android/gms/internal/em;ILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/ih$b;Landroid/net/Uri;Landroid/os/Bundle;Z)V
.registers 9
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/internal/ih;->bm()V
if-eqz p4, :cond_10
invoke-virtual {p0}, Lcom/google/android/gms/internal/ih;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "com.google.android.gms"
const/4 v2, 0x1
invoke-virtual {v0, v1, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
:cond_10
:try_start_10
invoke-virtual {p0}, Lcom/google/android/gms/internal/ih;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ig;
invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ig;->a(Lcom/google/android/gms/internal/if;Landroid/net/Uri;Landroid/os/Bundle;Z)V
:try_end_19
.catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a
:goto_19
return-void
:catch_1a
move-exception v0
const/16 v0, 0x8
const/4 v1, 0x0
invoke-virtual {p1, v0, v3, v1, v3}, Lcom/google/android/gms/internal/ih$b;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
goto :goto_19
.end method
.method protected aF()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.panorama.service.START"
return-object v0
.end method
.method protected aG()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"
return-object v0
.end method
.method public ax(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ig;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/ig$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ig;
move-result-object v0
return-object v0
.end method
.method public synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ih;->ax(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ig;
move-result-object v0
return-object v0
.end method