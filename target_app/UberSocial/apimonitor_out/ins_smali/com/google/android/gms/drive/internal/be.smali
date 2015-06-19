.class  Lcom/google/android/gms/drive/internal/be;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/o;
.field private final a:Lcom/google/android/gms/common/api/Status;
.field private final b:Lcom/google/android/gms/drive/q;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/q;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/be;->a:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/be;->b:Lcom/google/android/gms/drive/q;
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/be;->a:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public b()Lcom/google/android/gms/drive/q;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/be;->b:Lcom/google/android/gms/drive/q;
return-object v0
.end method