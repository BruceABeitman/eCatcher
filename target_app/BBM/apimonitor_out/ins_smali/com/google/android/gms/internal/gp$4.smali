.class  Lcom/google/android/gms/internal/gp$4;
.super Lcom/google/android/gms/internal/gp$b;
.field final synthetic Iq:Lcom/google/android/gms/internal/gp;
.field final synthetic Is:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/gp$4;->Iq:Lcom/google/android/gms/internal/gp;
iput-object p2, p0, Lcom/google/android/gms/internal/gp$4;->Is:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gp$b;-><init>(Lcom/google/android/gms/internal/gp$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fx;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gp$4;->a(Lcom/google/android/gms/internal/fx;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fx;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gp$4;->Is:Ljava/lang/String;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fx;->e(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
return-void
.end method