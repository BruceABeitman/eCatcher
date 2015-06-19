.class  Lcom/google/android/gms/drive/internal/bb;
.super Lcom/google/android/gms/drive/internal/p;
.field private final a:Lcom/google/android/gms/common/api/t;
.method public constructor <init>(Lcom/google/android/gms/common/api/t;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/bb;->a:Lcom/google/android/gms/common/api/t;
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/internal/bb;->a:Lcom/google/android/gms/common/api/t;
new-instance v1, Lcom/google/android/gms/drive/internal/ad;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/ad;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/r;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnListParentsResponse;)V
.registers 6
new-instance v0, Lcom/google/android/gms/drive/r;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->a()Lcom/google/android/gms/common/data/DataHolder;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/r;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/drive/internal/bb;->a:Lcom/google/android/gms/common/api/t;
new-instance v2, Lcom/google/android/gms/drive/internal/ad;
sget-object v3, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-direct {v2, v3, v0}, Lcom/google/android/gms/drive/internal/ad;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/r;)V
invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method