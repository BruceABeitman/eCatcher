.class  Lcom/google/android/gms/drive/internal/l$h;
.super Lcom/google/android/gms/drive/internal/c;
.field private final vj:Lcom/google/android/gms/common/api/a$c;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$c;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$h;->vj:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnListEntriesResponse;)V
.registers 6
new-instance v0, Lcom/google/android/gms/drive/MetadataBuffer;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->fc()Lcom/google/android/gms/common/data/DataHolder;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/MetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/drive/internal/l$h;->vj:Lcom/google/android/gms/common/api/a$c;
new-instance v2, Lcom/google/android/gms/drive/internal/l$e;
sget-object v3, Lcom/google/android/gms/common/api/Status;->zQ:Lcom/google/android/gms/common/api/Status;
invoke-direct {v2, v3, v0}, Lcom/google/android/gms/drive/internal/l$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;)V
invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method public l(Lcom/google/android/gms/common/api/Status;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$h;->vj:Lcom/google/android/gms/common/api/a$c;
new-instance v1, Lcom/google/android/gms/drive/internal/l$e;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/l$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method