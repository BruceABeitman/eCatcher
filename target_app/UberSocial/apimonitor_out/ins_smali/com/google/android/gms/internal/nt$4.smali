.class  Lcom/google/android/gms/internal/nt$4;
.super Lcom/google/android/gms/internal/nu;
.field final synthetic a:I
.field final synthetic b:Z
.field final synthetic c:Lcom/google/android/gms/internal/nt;
.method constructor <init>(Lcom/google/android/gms/internal/nt;IZ)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/nt$4;->c:Lcom/google/android/gms/internal/nt;
iput p2, p0, Lcom/google/android/gms/internal/nt$4;->a:I
iput-boolean p3, p0, Lcom/google/android/gms/internal/nt$4;->b:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nu;-><init>(Lcom/google/android/gms/internal/nt$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/jy;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nt$4;->a(Lcom/google/android/gms/internal/jy;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/jy;)V
.registers 8
const-string v2, "playedWith"
iget v3, p0, Lcom/google/android/gms/internal/nt$4;->a:I
const/4 v4, 0x0
iget-boolean v5, p0, Lcom/google/android/gms/internal/nt$4;->b:Z
move-object v0, p1
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;IZZ)V
return-void
.end method