.class public Lcom/google/android/gms/drive/internal/l;
.super Lcom/google/android/gms/drive/internal/p;
.field private final a:Lcom/google/android/gms/common/api/t;
.method public constructor <init>(Lcom/google/android/gms/common/api/t;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/l;->a:Lcom/google/android/gms/common/api/t;
return-void
.end method
.method public a()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/internal/l;->a:Lcom/google/android/gms/common/api/t;
sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/internal/l;->a:Lcom/google/android/gms/common/api/t;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method