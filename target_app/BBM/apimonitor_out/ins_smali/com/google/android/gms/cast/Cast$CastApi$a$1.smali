.class  Lcom/google/android/gms/cast/Cast$CastApi$a$1;
.super Lcom/google/android/gms/cast/Cast$b;
.field final synthetic wp:Ljava/lang/String;
.field final synthetic wq:Ljava/lang/String;
.field final synthetic wr:Lcom/google/android/gms/cast/Cast$CastApi$a;
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->wr:Lcom/google/android/gms/cast/Cast$CastApi$a;
iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->wp:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->wq:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$b;-><init>(Lcom/google/android/gms/cast/Cast$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/dq;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->a(Lcom/google/android/gms/internal/dq;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/dq;)V
.registers 5
const/16 v2, 0x7d1
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->wp:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->wq:Ljava/lang/String;
invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/dq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
:try_end_9
.catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_a
.catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_9} :catch_f
:goto_9
return-void
:catch_a
move-exception v0
invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->x(I)V
goto :goto_9
:catch_f
move-exception v0
invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->x(I)V
goto :goto_9
.end method