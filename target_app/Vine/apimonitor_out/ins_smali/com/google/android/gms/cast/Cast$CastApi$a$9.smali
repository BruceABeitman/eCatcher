.class  Lcom/google/android/gms/cast/Cast$CastApi$a$9;
.super Lcom/google/android/gms/cast/Cast$b;
.field final synthetic zT:Lcom/google/android/gms/cast/Cast$CastApi$a;
.field final synthetic zW:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->zT:Lcom/google/android/gms/cast/Cast$CastApi$a;
iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->zW:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$b;-><init>(Lcom/google/android/gms/cast/Cast$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/gi;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->a(Lcom/google/android/gms/internal/gi;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/gi;)V
.registers 4
const/16 v1, 0x7d1
iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->zW:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_10
const-string v0, "IllegalArgument: sessionId cannot be null or empty"
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->c(ILjava/lang/String;)V
:goto_f
return-void
:cond_10
:try_start_10
iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->zW:Ljava/lang/String;
invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
:try_end_15
.catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_16
goto :goto_f
:catch_16
move-exception v0
invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->N(I)V
goto :goto_f
.end method