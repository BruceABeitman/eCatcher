.class final Lcom/google/android/gms/a/c$8;
.super Lcom/google/android/gms/a/m;
.field final synthetic a:I
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:[B
.method constructor <init>(ILjava/lang/String;[B)V
.registers 5
iput p1, p0, Lcom/google/android/gms/a/c$8;->a:I
iput-object p2, p0, Lcom/google/android/gms/a/c$8;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/a/c$8;->c:[B
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/a/m;-><init>(Lcom/google/android/gms/a/c$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/ep;
invoke-virtual {p0, p1}, Lcom/google/android/gms/a/c$8;->a(Lcom/google/android/gms/internal/ep;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/ep;)V
.registers 5
iget v0, p0, Lcom/google/android/gms/a/c$8;->a:I
iget-object v1, p0, Lcom/google/android/gms/a/c$8;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/a/c$8;->c:[B
invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/ep;->a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;[B)V
return-void
.end method