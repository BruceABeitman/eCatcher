.class  Lcom/google/android/gms/drive/internal/at$1;
.super Lcom/google/android/gms/drive/internal/al;
.field final synthetic a:Lcom/google/android/gms/drive/Contents;
.field final synthetic b:Lcom/google/android/gms/drive/t;
.field final synthetic c:Lcom/google/android/gms/drive/internal/at;
.method constructor <init>(Lcom/google/android/gms/drive/internal/at;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/t;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/drive/internal/at$1;->c:Lcom/google/android/gms/drive/internal/at;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/at$1;->a:Lcom/google/android/gms/drive/Contents;
iput-object p3, p0, Lcom/google/android/gms/drive/internal/at$1;->b:Lcom/google/android/gms/drive/t;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/al;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/l;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/internal/ax;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/ax;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/i;)V
return-object v0
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/am;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/at$1;->a(Lcom/google/android/gms/drive/internal/am;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/am;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/drive/internal/at$1;->a:Lcom/google/android/gms/drive/Contents;
invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->g()V
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/CreateFileRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/at$1;->c:Lcom/google/android/gms/drive/internal/at;
invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/at;->a()Lcom/google/android/gms/drive/DriveId;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/drive/internal/at$1;->b:Lcom/google/android/gms/drive/t;
invoke-virtual {v3}, Lcom/google/android/gms/drive/t;->h()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/drive/internal/at$1;->a:Lcom/google/android/gms/drive/Contents;
invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/CreateFileRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;)V
new-instance v2, Lcom/google/android/gms/drive/internal/au;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/au;-><init>(Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/bm;)V
return-void
.end method
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/at$1;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/l;
move-result-object v0
return-object v0
.end method