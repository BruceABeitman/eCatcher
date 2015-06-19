.class final Lcom/google/android/gms/plus/internal/e$d;
.super Lcom/google/android/gms/internal/eh$b;
.field final synthetic Rf:Lcom/google/android/gms/plus/internal/e;
.field private final vl:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$d;->Rf:Lcom/google/android/gms/plus/internal/e;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/plus/internal/e$d;->vl:Lcom/google/android/gms/common/api/Status;
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/e$d;->c(Lcom/google/android/gms/common/api/a$c;)V
return-void
.end method
.method protected final c(Lcom/google/android/gms/common/api/a$c;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$d;->vl:Lcom/google/android/gms/common/api/Status;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
:cond_7
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method