.class  Lcom/google/android/gms/drive/internal/y$2;
.super Lcom/google/android/gms/drive/internal/af;
.field final synthetic a:Lcom/google/android/gms/drive/internal/y;
.method constructor <init>(Lcom/google/android/gms/drive/internal/y;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/internal/y$2;->a:Lcom/google/android/gms/drive/internal/y;
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/af;-><init>(Lcom/google/android/gms/drive/internal/y;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/am;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/y$2;->a(Lcom/google/android/gms/drive/internal/am;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/am;)V
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;
invoke-direct {v1}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>()V
new-instance v2, Lcom/google/android/gms/drive/internal/ae;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/ae;-><init>(Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/bm;)V
return-void
.end method