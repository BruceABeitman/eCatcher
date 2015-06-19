.class  Lcom/google/android/gms/drive/internal/aq;
.super Lcom/google/android/gms/drive/internal/p;
.field private final a:Lcom/google/android/gms/common/api/t;
.field private final b:Lcom/google/android/gms/drive/j;
.method public constructor <init>(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/drive/j;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/aq;->a:Lcom/google/android/gms/common/api/t;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/aq;->b:Lcom/google/android/gms/drive/j;
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/internal/aq;->a:Lcom/google/android/gms/common/api/t;
new-instance v1, Lcom/google/android/gms/drive/internal/z;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/z;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnContentsResponse;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/drive/internal/aq;->a:Lcom/google/android/gms/common/api/t;
new-instance v1, Lcom/google/android/gms/drive/internal/z;
sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnContentsResponse;->a()Lcom/google/android/gms/drive/Contents;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/z;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/drive/internal/aq;->b:Lcom/google/android/gms/drive/j;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/google/android/gms/drive/internal/aq;->b:Lcom/google/android/gms/drive/j;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->a()J
move-result-wide v1
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->b()J
move-result-wide v3
invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/j;->a(JJ)V
:cond_11
return-void
.end method