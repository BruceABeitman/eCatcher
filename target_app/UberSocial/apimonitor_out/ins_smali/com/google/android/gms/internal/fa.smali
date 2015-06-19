.class final Lcom/google/android/gms/internal/fa;
.super Lcom/google/android/gms/internal/gn;
.field final synthetic a:Lcom/google/android/gms/internal/ep;
.field private final c:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/fa;->a:Lcom/google/android/gms/internal/ep;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/fa;->c:Lcom/google/android/gms/common/api/Status;
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/t;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fa;->c:Lcom/google/android/gms/common/api/Status;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method public synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/t;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fa;->a(Lcom/google/android/gms/common/api/t;)V
return-void
.end method
.method protected c()V
.registers 1
return-void
.end method