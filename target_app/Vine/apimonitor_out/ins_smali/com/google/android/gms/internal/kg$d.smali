.class abstract Lcom/google/android/gms/internal/kg$d;
.super Lcom/google/android/gms/common/api/a$b;
.method protected constructor <init>()V
.registers 2
sget-object v0, Lcom/google/android/gms/panorama/Panorama;->yE:Lcom/google/android/gms/common/api/Api$c;
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;-><init>(Lcom/google/android/gms/common/api/Api$c;)V
return-void
.end method
.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/kf;)V
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/kh;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kg$d;->a(Lcom/google/android/gms/internal/kh;)V
return-void
.end method
.method protected final a(Lcom/google/android/gms/internal/kh;)V
.registers 4
invoke-virtual {p1}, Lcom/google/android/gms/internal/kh;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {p1}, Lcom/google/android/gms/internal/kh;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/kf;
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/kg$d;->a(Landroid/content/Context;Lcom/google/android/gms/internal/kf;)V
return-void
.end method