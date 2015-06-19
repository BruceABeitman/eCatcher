.class  Lcom/google/android/gms/internal/gj$2;
.super Lcom/google/android/gms/internal/gj$a;
.field final synthetic HH:Z
.field final synthetic HS:Lcom/google/android/gms/internal/gj;
.field final synthetic HT:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/internal/gj;Ljava/lang/String;Z)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/gj$2;->HS:Lcom/google/android/gms/internal/gj;
iput-object p2, p0, Lcom/google/android/gms/internal/gj$2;->HT:Ljava/lang/String;
iput-boolean p3, p0, Lcom/google/android/gms/internal/gj$2;->HH:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gj$a;-><init>(Lcom/google/android/gms/internal/gj$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fx;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gj$2;->a(Lcom/google/android/gms/internal/fx;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fx;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/gj$2;->HT:Ljava/lang/String;
iget-boolean v1, p0, Lcom/google/android/gms/internal/gj$2;->HH:Z
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Z)V
return-void
.end method