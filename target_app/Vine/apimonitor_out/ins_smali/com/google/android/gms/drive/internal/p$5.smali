.class  Lcom/google/android/gms/drive/internal/p$5;
.super Lcom/google/android/gms/drive/internal/p$l;
.field final synthetic II:Lcom/google/android/gms/drive/internal/p;
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$5;->II:Lcom/google/android/gms/drive/internal/p;
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/p$l;-><init>(Lcom/google/android/gms/drive/internal/p;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/r;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$5;->a(Lcom/google/android/gms/drive/internal/r;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/r;)V
.registers 4
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/aw;
invoke-direct {v1, p0}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/common/api/a$d;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/ab;)V
return-void
.end method