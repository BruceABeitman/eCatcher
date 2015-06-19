.class final Lcom/google/android/gms/internal/kr;
.super Lcom/google/android/gms/internal/jx;
.field final synthetic a:Lcom/google/android/gms/internal/jy;
.field private final b:Lcom/google/android/gms/common/api/t;
.method public constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/jy;
invoke-direct {p0}, Lcom/google/android/gms/internal/jx;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/t;
iput-object v0, p0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/common/api/t;
return-void
.end method
.method public b(ILandroid/os/Bundle;)V
.registers 8
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/jy;
new-instance v2, Lcom/google/android/gms/internal/ks;
iget-object v3, p0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/jy;
iget-object v4, p0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/common/api/t;
invoke-direct {v2, v3, v4, v0, p2}, Lcom/google/android/gms/internal/ks;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V
return-void
.end method