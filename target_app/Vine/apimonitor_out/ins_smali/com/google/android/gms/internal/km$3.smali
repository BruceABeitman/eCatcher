.class  Lcom/google/android/gms/internal/km$3;
.super Lcom/google/android/gms/internal/km$c;
.field final synthetic acb:Lcom/google/android/gms/internal/km;
.field final synthetic acg:Lcom/google/android/gms/plus/model/moments/Moment;
.method constructor <init>(Lcom/google/android/gms/internal/km;Lcom/google/android/gms/plus/model/moments/Moment;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/km$3;->acb:Lcom/google/android/gms/internal/km;
iput-object p2, p0, Lcom/google/android/gms/internal/km$3;->acg:Lcom/google/android/gms/plus/model/moments/Moment;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/km$c;-><init>(Lcom/google/android/gms/internal/km$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/plus/internal/e;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/km$3;->a(Lcom/google/android/gms/plus/internal/e;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/plus/internal/e;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/km$3;->acg:Lcom/google/android/gms/plus/model/moments/Moment;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/plus/model/moments/Moment;)V
return-void
.end method