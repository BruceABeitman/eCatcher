.class  Lcom/google/android/gms/internal/gf$8;
.super Lcom/google/android/gms/internal/gf$b;
.field final synthetic HI:Lcom/google/android/gms/internal/gf;
.field final synthetic HJ:Ljava/lang/String;
.field final synthetic HK:I
.method constructor <init>(Lcom/google/android/gms/internal/gf;Ljava/lang/String;Ljava/lang/String;I)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/gf$8;->HI:Lcom/google/android/gms/internal/gf;
iput-object p3, p0, Lcom/google/android/gms/internal/gf$8;->HJ:Ljava/lang/String;
iput p4, p0, Lcom/google/android/gms/internal/gf$8;->HK:I
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gf$b;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fx;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gf$8;->a(Lcom/google/android/gms/internal/fx;)V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/fx;)V
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/android/gms/internal/gf$8;->HJ:Ljava/lang/String;
iget v2, p0, Lcom/google/android/gms/internal/gf$8;->HK:I
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/fx;->b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;I)V
return-void
.end method