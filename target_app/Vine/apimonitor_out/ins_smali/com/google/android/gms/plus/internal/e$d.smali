.class final Lcom/google/android/gms/plus/internal/e$d;
.super Lcom/google/android/gms/internal/hc$b;
.field final synthetic abJ:Lcom/google/android/gms/plus/internal/e;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$d;->abJ:Lcom/google/android/gms/plus/internal/e;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/plus/internal/e$d;->yw:Lcom/google/android/gms/common/api/Status;
return-void
.end method
.method protected synthetic d(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/a$d;
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/e$d;->n(Lcom/google/android/gms/common/api/a$d;)V
return-void
.end method
.method protected fp()V
.registers 1
return-void
.end method
.method protected n(Lcom/google/android/gms/common/api/a$d;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$d;->yw:Lcom/google/android/gms/common/api/Status;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
:cond_7
return-void
.end method