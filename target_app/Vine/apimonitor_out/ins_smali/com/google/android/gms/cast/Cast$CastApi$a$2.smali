.class  Lcom/google/android/gms/cast/Cast$CastApi$a$2;
.super Lcom/google/android/gms/cast/Cast$c;
.field final synthetic zT:Lcom/google/android/gms/cast/Cast$CastApi$a;
.field final synthetic zU:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->zT:Lcom/google/android/gms/cast/Cast$CastApi$a;
iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->zU:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$c;-><init>(Lcom/google/android/gms/cast/Cast$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/gi;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->a(Lcom/google/android/gms/internal/gi;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/gi;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->zU:Ljava/lang/String;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/String;ZLcom/google/android/gms/common/api/a$d;)V
:goto_6
:try_end_6
.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7
return-void
:catch_7
move-exception v0
const/16 v0, 0x7d1
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->N(I)V
goto :goto_6
.end method