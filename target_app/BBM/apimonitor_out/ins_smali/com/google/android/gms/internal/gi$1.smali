.class  Lcom/google/android/gms/internal/gi$1;
.super Lcom/google/android/gms/internal/gi$a;
.field final synthetic HP:I
.field final synthetic HQ:Lcom/google/android/gms/internal/gi;
.method constructor <init>(Lcom/google/android/gms/internal/gi;I)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/gi$1;->HQ:Lcom/google/android/gms/internal/gi;
iput p2, p0, Lcom/google/android/gms/internal/gi$1;->HP:I
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gi$a;-><init>(Lcom/google/android/gms/internal/gi$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fx;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gi$1;->a(Lcom/google/android/gms/internal/fx;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fx;)V
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/gi$1;->HP:I
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fx;->c(Lcom/google/android/gms/common/api/a$c;I)V
return-void
.end method