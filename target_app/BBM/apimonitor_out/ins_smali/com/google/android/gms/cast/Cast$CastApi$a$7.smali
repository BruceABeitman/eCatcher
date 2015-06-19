.class  Lcom/google/android/gms/cast/Cast$CastApi$a$7;
.super Lcom/google/android/gms/cast/Cast$b;
.field final synthetic wr:Lcom/google/android/gms/cast/Cast$CastApi$a;
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$7;->wr:Lcom/google/android/gms/cast/Cast$CastApi$a;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$b;-><init>(Lcom/google/android/gms/cast/Cast$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/dq;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$7;->a(Lcom/google/android/gms/internal/dq;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/dq;)V
.registers 3
:try_start_0
invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/dq;->e(Lcom/google/android/gms/common/api/a$c;)V
:goto_3
:try_end_3
.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const/16 v0, 0x7d1
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$7;->x(I)V
goto :goto_3
.end method