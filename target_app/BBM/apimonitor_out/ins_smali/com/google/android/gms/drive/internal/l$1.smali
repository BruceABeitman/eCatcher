.class  Lcom/google/android/gms/drive/internal/l$1;
.super Lcom/google/android/gms/drive/internal/l$i;
.field final synthetic Du:Lcom/google/android/gms/drive/query/Query;
.field final synthetic Dv:Lcom/google/android/gms/drive/internal/l;
.method constructor <init>(Lcom/google/android/gms/drive/internal/l;Lcom/google/android/gms/drive/query/Query;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$1;->Dv:Lcom/google/android/gms/drive/internal/l;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/l$1;->Du:Lcom/google/android/gms/drive/query/Query;
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/l$i;-><init>(Lcom/google/android/gms/drive/internal/l;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/n;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/l$1;->a(Lcom/google/android/gms/drive/internal/n;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/n;)V
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->eT()Lcom/google/android/gms/drive/internal/u;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/QueryRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/l$1;->Du:Lcom/google/android/gms/drive/query/Query;
invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/QueryRequest;-><init>(Lcom/google/android/gms/drive/query/Query;)V
new-instance v2, Lcom/google/android/gms/drive/internal/l$h;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/l$h;-><init>(Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/v;)V
return-void
.end method