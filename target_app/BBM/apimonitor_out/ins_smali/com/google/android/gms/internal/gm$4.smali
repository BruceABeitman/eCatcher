.class  Lcom/google/android/gms/internal/gm$4;
.super Lcom/google/android/gms/internal/gm$a;
.field final synthetic HH:Z
.field final synthetic Ig:Lcom/google/android/gms/internal/gm;
.field final synthetic Ih:I
.method constructor <init>(Lcom/google/android/gms/internal/gm;IZ)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/gm$4;->Ig:Lcom/google/android/gms/internal/gm;
iput p2, p0, Lcom/google/android/gms/internal/gm$4;->Ih:I
iput-boolean p3, p0, Lcom/google/android/gms/internal/gm$4;->HH:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gm$a;-><init>(Lcom/google/android/gms/internal/gm$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fx;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gm$4;->a(Lcom/google/android/gms/internal/fx;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fx;)V
.registers 8
const-string v2, "playedWith"
iget v3, p0, Lcom/google/android/gms/internal/gm$4;->Ih:I
const/4 v4, 0x0
iget-boolean v5, p0, Lcom/google/android/gms/internal/gm$4;->HH:Z
move-object v0, p1
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IZZ)V
return-void
.end method