.class final Lcom/google/android/gms/internal/eu;
.super Lcom/google/android/gms/internal/gp;
.implements Lcom/google/android/gms/a/f;
.field final synthetic a:Lcom/google/android/gms/internal/ep;
.field private final d:Lcom/google/android/gms/common/api/Status;
.field private final e:Lcom/google/android/gms/a/b;
.method public constructor <init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/ep;
invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
iput-object p3, p0, Lcom/google/android/gms/internal/eu;->d:Lcom/google/android/gms/common/api/Status;
new-instance v0, Lcom/google/android/gms/a/b;
invoke-direct {v0, p4}, Lcom/google/android/gms/a/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->e:Lcom/google/android/gms/a/b;
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->d:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/t;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public b()Lcom/google/android/gms/a/b;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->e:Lcom/google/android/gms/a/b;
return-object v0
.end method