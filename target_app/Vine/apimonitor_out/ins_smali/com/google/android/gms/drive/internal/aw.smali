.class public Lcom/google/android/gms/drive/internal/aw;
.super Lcom/google/android/gms/drive/internal/c;
.field private final yO:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/aw;->yO:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public o(Lcom/google/android/gms/common/api/Status;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/internal/aw;->yO:Lcom/google/android/gms/common/api/a$d;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
.method public onSuccess()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/internal/aw;->yO:Lcom/google/android/gms/common/api/a$d;
sget-object v1, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method