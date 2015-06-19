.class public final Lcom/google/android/gms/internal/ge;
.super Lcom/google/android/gms/internal/gu;
.field private a:Lcom/google/android/gms/internal/fy;
.method public constructor <init>(Lcom/google/android/gms/internal/fy;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/gu;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ge;->a:Lcom/google/android/gms/internal/fy;
return-void
.end method
.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 6
const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"
iget-object v1, p0, Lcom/google/android/gms/internal/ge;->a:Lcom/google/android/gms/internal/fy;
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/ge;->a:Lcom/google/android/gms/internal/fy;
invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/fy;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/ge;->a:Lcom/google/android/gms/internal/fy;
return-void
.end method