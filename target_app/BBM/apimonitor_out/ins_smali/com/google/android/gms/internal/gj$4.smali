.class  Lcom/google/android/gms/internal/gj$4;
.super Lcom/google/android/gms/internal/gj$c;
.field final synthetic HH:Z
.field final synthetic HS:Lcom/google/android/gms/internal/gj;
.field final synthetic HT:Ljava/lang/String;
.field final synthetic HU:I
.field final synthetic HV:I
.field final synthetic HW:I
.method constructor <init>(Lcom/google/android/gms/internal/gj;Ljava/lang/String;IIIZ)V
.registers 8
iput-object p1, p0, Lcom/google/android/gms/internal/gj$4;->HS:Lcom/google/android/gms/internal/gj;
iput-object p2, p0, Lcom/google/android/gms/internal/gj$4;->HT:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/internal/gj$4;->HU:I
iput p4, p0, Lcom/google/android/gms/internal/gj$4;->HV:I
iput p5, p0, Lcom/google/android/gms/internal/gj$4;->HW:I
iput-boolean p6, p0, Lcom/google/android/gms/internal/gj$4;->HH:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gj$c;-><init>(Lcom/google/android/gms/internal/gj$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fx;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gj$4;->a(Lcom/google/android/gms/internal/fx;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fx;)V
.registers 9
iget-object v2, p0, Lcom/google/android/gms/internal/gj$4;->HT:Ljava/lang/String;
iget v3, p0, Lcom/google/android/gms/internal/gj$4;->HU:I
iget v4, p0, Lcom/google/android/gms/internal/gj$4;->HV:I
iget v5, p0, Lcom/google/android/gms/internal/gj$4;->HW:I
iget-boolean v6, p0, Lcom/google/android/gms/internal/gj$4;->HH:Z
move-object v0, p1
move-object v1, p0
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IIIZ)V
return-void
.end method