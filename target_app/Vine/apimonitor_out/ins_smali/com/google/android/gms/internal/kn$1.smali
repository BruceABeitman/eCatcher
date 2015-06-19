.class  Lcom/google/android/gms/internal/kn$1;
.super Lcom/google/android/gms/internal/kn$a;
.field final synthetic acc:Ljava/lang/String;
.field final synthetic acj:I
.field final synthetic ack:Lcom/google/android/gms/internal/kn;
.method constructor <init>(Lcom/google/android/gms/internal/kn;ILjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/kn$1;->ack:Lcom/google/android/gms/internal/kn;
iput p2, p0, Lcom/google/android/gms/internal/kn$1;->acj:I
iput-object p3, p0, Lcom/google/android/gms/internal/kn$1;->acc:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kn$a;-><init>(Lcom/google/android/gms/internal/kn$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/plus/internal/e;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kn$1;->a(Lcom/google/android/gms/plus/internal/e;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/plus/internal/e;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/internal/kn$1;->acj:I
iget-object v1, p0, Lcom/google/android/gms/internal/kn$1;->acc:Ljava/lang/String;
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;)Lcom/google/android/gms/internal/hh;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kn$1;->a(Lcom/google/android/gms/internal/hh;)V
return-void
.end method