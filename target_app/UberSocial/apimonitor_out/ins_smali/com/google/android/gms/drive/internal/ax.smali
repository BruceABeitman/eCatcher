.class  Lcom/google/android/gms/drive/internal/ax;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/l;
.field private final a:Lcom/google/android/gms/common/api/Status;
.field private final b:Lcom/google/android/gms/drive/i;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/i;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/ax;->a:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/ax;->b:Lcom/google/android/gms/drive/i;
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/ax;->a:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public b()Lcom/google/android/gms/drive/i;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/ax;->b:Lcom/google/android/gms/drive/i;
return-object v0
.end method