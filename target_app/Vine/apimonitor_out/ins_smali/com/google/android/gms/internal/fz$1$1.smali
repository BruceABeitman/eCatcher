.class  Lcom/google/android/gms/internal/fz$1$1;
.super Lcom/google/android/gms/internal/fx;
.field final synthetic ys:Lcom/google/android/gms/internal/fz$1;
.method constructor <init>(Lcom/google/android/gms/internal/fz$1;Lcom/google/android/gms/common/api/a$d;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/fz$1$1;->ys:Lcom/google/android/gms/internal/fz$1;
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fx;-><init>(Lcom/google/android/gms/common/api/a$d;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/fz$1$1;->yr:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/internal/fz$b;
invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/fz$b;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method