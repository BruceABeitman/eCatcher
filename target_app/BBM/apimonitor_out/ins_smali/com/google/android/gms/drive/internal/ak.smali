.class public Lcom/google/android/gms/drive/internal/ak;
.super Lcom/google/android/gms/drive/internal/c;
.field private final vj:Lcom/google/android/gms/common/api/a$c;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$c;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/ak;->vj:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method public l(Lcom/google/android/gms/common/api/Status;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/internal/ak;->vj:Lcom/google/android/gms/common/api/a$c;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method public onSuccess()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/internal/ak;->vj:Lcom/google/android/gms/common/api/a$c;
sget-object v1, Lcom/google/android/gms/common/api/Status;->zQ:Lcom/google/android/gms/common/api/Status;
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method