.class  Lcom/google/android/gms/cast/Cast$CastApi$a$4;
.super Lcom/google/android/gms/cast/Cast$c;
.field final synthetic wr:Lcom/google/android/gms/cast/Cast$CastApi$a;
.field final synthetic ws:Ljava/lang/String;
.field final synthetic wu:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$4;->wr:Lcom/google/android/gms/cast/Cast$CastApi$a;
iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$4;->ws:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$4;->wu:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$c;-><init>(Lcom/google/android/gms/cast/Cast$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/dq;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$4;->a(Lcom/google/android/gms/internal/dq;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/dq;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$4;->ws:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$4;->wu:Ljava/lang/String;
invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/dq;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
:goto_7
:try_end_7
.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const/16 v0, 0x7d1
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$4;->x(I)V
goto :goto_7
.end method