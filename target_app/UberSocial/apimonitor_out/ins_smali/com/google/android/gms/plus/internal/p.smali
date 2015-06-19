.class final Lcom/google/android/gms/plus/internal/p;
.super Lcom/google/android/gms/internal/gn;
.field final synthetic a:Lcom/google/android/gms/plus/internal/l;
.field private final c:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/plus/internal/p;->a:Lcom/google/android/gms/plus/internal/l;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/plus/internal/p;->c:Lcom/google/android/gms/common/api/Status;
return-void
.end method
.method protected a(Lcom/google/android/gms/common/api/t;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/plus/internal/p;->c:Lcom/google/android/gms/common/api/Status;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
:cond_7
return-void
.end method
.method protected synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/t;
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/p;->a(Lcom/google/android/gms/common/api/t;)V
return-void
.end method
.method protected c()V
.registers 1
return-void
.end method