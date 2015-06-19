.class  Lcom/google/android/gms/cast/Cast$CastApi$a$6;
.super Lcom/google/android/gms/cast/Cast$c;
.field final synthetic wr:Lcom/google/android/gms/cast/Cast$CastApi$a;
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$6;->wr:Lcom/google/android/gms/cast/Cast$CastApi$a;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$c;-><init>(Lcom/google/android/gms/cast/Cast$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/dq;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$6;->a(Lcom/google/android/gms/internal/dq;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/dq;)V
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/dq;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
:try_end_5
.catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_5} :catch_6
:goto_5
return-void
:catch_6
move-exception v0
const/16 v0, 0x7d1
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$6;->x(I)V
goto :goto_5
.end method