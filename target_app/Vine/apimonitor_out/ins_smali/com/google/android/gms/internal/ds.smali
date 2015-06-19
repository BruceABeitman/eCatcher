.class public Lcom/google/android/gms/internal/ds;
.super Lcom/google/android/gms/internal/hc;
.field final pT:I
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V
.registers 6
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
iput p4, p0, Lcom/google/android/gms/internal/ds;->pT:I
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget v1, p0, Lcom/google/android/gms/internal/ds;->pT:I
invoke-virtual {p0}, Lcom/google/android/gms/internal/ds;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hj;->g(Lcom/google/android/gms/internal/hi;ILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method protected bp()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.ads.service.START"
return-object v0
.end method
.method protected bq()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"
return-object v0
.end method
.method public br()Lcom/google/android/gms/internal/dx;
.registers 2
invoke-super {p0}, Lcom/google/android/gms/internal/hc;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dx;
return-object v0
.end method
.method protected w(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dx;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/dx$a;->y(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dx;
move-result-object v0
return-object v0
.end method
.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ds;->w(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dx;
move-result-object v0
return-object v0
.end method