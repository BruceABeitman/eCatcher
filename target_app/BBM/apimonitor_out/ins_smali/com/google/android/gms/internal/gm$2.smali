.class  Lcom/google/android/gms/internal/gm$2;
.super Lcom/google/android/gms/internal/gm$a;
.field final synthetic HH:Z
.field final synthetic Ig:Lcom/google/android/gms/internal/gm;
.field final synthetic Ih:I
.method constructor <init>(Lcom/google/android/gms/internal/gm;IZ)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/gm$2;->Ig:Lcom/google/android/gms/internal/gm;
iput p2, p0, Lcom/google/android/gms/internal/gm$2;->Ih:I
iput-boolean p3, p0, Lcom/google/android/gms/internal/gm$2;->HH:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gm$a;-><init>(Lcom/google/android/gms/internal/gm$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fx;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gm$2;->a(Lcom/google/android/gms/internal/fx;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fx;)V
.registers 5
iget v0, p0, Lcom/google/android/gms/internal/gm$2;->Ih:I
const/4 v1, 0x0
iget-boolean v2, p0, Lcom/google/android/gms/internal/gm$2;->HH:Z
invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;IZZ)V
return-void
.end method