.class  Lcom/google/android/gms/internal/go$3;
.super Lcom/google/android/gms/internal/go$a;
.field final synthetic HP:I
.field final synthetic Ik:Lcom/google/android/gms/internal/go;
.field final synthetic Il:I
.field final synthetic Im:I
.method constructor <init>(Lcom/google/android/gms/internal/go;III)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/go$3;->Ik:Lcom/google/android/gms/internal/go;
iput p2, p0, Lcom/google/android/gms/internal/go$3;->Il:I
iput p3, p0, Lcom/google/android/gms/internal/go$3;->Im:I
iput p4, p0, Lcom/google/android/gms/internal/go$3;->HP:I
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/go$a;-><init>(Lcom/google/android/gms/internal/go$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fx;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/go$3;->a(Lcom/google/android/gms/internal/fx;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fx;)V
.registers 5
iget v0, p0, Lcom/google/android/gms/internal/go$3;->Il:I
iget v1, p0, Lcom/google/android/gms/internal/go$3;->Im:I
iget v2, p0, Lcom/google/android/gms/internal/go$3;->HP:I
invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;III)V
return-void
.end method