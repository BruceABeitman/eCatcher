.class public Lcom/google/android/gms/internal/cv;
.super Lcom/google/android/gms/internal/gl;
.field private final a:I
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;I)V
.registers 6
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;[Ljava/lang/String;)V
iput p4, p0, Lcom/google/android/gms/internal/cv;->a:I
return-void
.end method
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cz;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/da;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cz;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget v1, p0, Lcom/google/android/gms/internal/cv;->a:I
invoke-virtual {p0}, Lcom/google/android/gms/internal/cv;->p()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hh;->g(Lcom/google/android/gms/internal/he;ILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cv;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cz;
move-result-object v0
return-object v0
.end method
.method protected f()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"
return-object v0
.end method
.method protected g()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.ads.service.START"
return-object v0
.end method
.method public h()Lcom/google/android/gms/internal/cz;
.registers 2
invoke-super {p0}, Lcom/google/android/gms/internal/gl;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/cz;
return-object v0
.end method