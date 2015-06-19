.class public Lcom/google/android/gms/internal/kh;
.super Lcom/google/android/gms/internal/hc;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.registers 11
const/4 v5, 0x0
check-cast v5, [Ljava/lang/String;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const v1, 0x4d7808
invoke-virtual {p0}, Lcom/google/android/gms/internal/kh;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hj;->a(Lcom/google/android/gms/internal/hi;ILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public bj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kf;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/kf$a;->bi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kf;
move-result-object v0
return-object v0
.end method
.method protected bp()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.panorama.service.START"
return-object v0
.end method
.method protected bq()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"
return-object v0
.end method
.method public synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kh;->bj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kf;
move-result-object v0
return-object v0
.end method