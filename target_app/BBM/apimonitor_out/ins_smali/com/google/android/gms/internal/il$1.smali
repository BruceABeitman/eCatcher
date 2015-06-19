.class  Lcom/google/android/gms/internal/il$1;
.super Lcom/google/android/gms/internal/il$a;
.field final synthetic RG:I
.field final synthetic RH:Lcom/google/android/gms/internal/il;
.field final synthetic Rz:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/internal/il;Lcom/google/android/gms/common/api/Api$b;ILjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/il$1;->RH:Lcom/google/android/gms/internal/il;
iput p3, p0, Lcom/google/android/gms/internal/il$1;->RG:I
iput-object p4, p0, Lcom/google/android/gms/internal/il$1;->Rz:Ljava/lang/String;
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/il$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/plus/internal/e;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/il$1;->a(Lcom/google/android/gms/plus/internal/e;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/plus/internal/e;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/internal/il$1;->RG:I
iget-object v1, p0, Lcom/google/android/gms/internal/il$1;->Rz:Ljava/lang/String;
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;)V
return-void
.end method