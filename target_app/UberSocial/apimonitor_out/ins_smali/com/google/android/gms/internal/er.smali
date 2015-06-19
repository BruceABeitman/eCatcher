.class final Lcom/google/android/gms/internal/er;
.super Lcom/google/android/gms/internal/gn;
.implements Lcom/google/android/gms/a/e;
.field final synthetic a:Lcom/google/android/gms/internal/ep;
.field private final c:Lcom/google/android/gms/common/api/Status;
.field private final d:I
.method public constructor <init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;I)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/er;->a:Lcom/google/android/gms/internal/ep;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/er;->c:Lcom/google/android/gms/common/api/Status;
iput p4, p0, Lcom/google/android/gms/internal/er;->d:I
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/er;->c:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/t;)V
.registers 2
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method public synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/t;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/common/api/t;)V
return-void
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/er;->d:I
return v0
.end method
.method protected c()V
.registers 1
return-void
.end method