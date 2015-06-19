.class final Lcom/google/android/gms/internal/qp;
.super Lcom/google/android/gms/internal/gn;
.implements Lcom/google/android/gms/e/b;
.field final synthetic a:Lcom/google/android/gms/internal/qm;
.field private final c:Lcom/google/android/gms/common/api/Status;
.field private final d:Landroid/content/Intent;
.method public constructor <init>(Lcom/google/android/gms/internal/qm;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/qp;->a:Lcom/google/android/gms/internal/qm;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/qp;->c:Lcom/google/android/gms/common/api/Status;
iput-object p4, p0, Lcom/google/android/gms/internal/qp;->d:Landroid/content/Intent;
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/qp;->c:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method protected a(Lcom/google/android/gms/common/api/t;)V
.registers 2
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method protected synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/t;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qp;->a(Lcom/google/android/gms/common/api/t;)V
return-void
.end method
.method public b()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/qp;->d:Landroid/content/Intent;
return-object v0
.end method
.method protected c()V
.registers 1
return-void
.end method