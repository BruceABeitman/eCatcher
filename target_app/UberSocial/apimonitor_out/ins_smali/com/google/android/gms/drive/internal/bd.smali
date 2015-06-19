.class  Lcom/google/android/gms/drive/internal/bd;
.super Lcom/google/android/gms/drive/internal/p;
.field private final a:Lcom/google/android/gms/common/api/t;
.method public constructor <init>(Lcom/google/android/gms/common/api/t;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/bd;->a:Lcom/google/android/gms/common/api/t;
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/internal/bd;->a:Lcom/google/android/gms/common/api/t;
new-instance v1, Lcom/google/android/gms/drive/internal/be;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/be;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/q;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/drive/internal/bd;->a:Lcom/google/android/gms/common/api/t;
new-instance v1, Lcom/google/android/gms/drive/internal/be;
sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
new-instance v3, Lcom/google/android/gms/drive/internal/w;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v4
invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/w;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/be;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/q;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method