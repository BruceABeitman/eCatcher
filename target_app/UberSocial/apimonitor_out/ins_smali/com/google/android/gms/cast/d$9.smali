.class  Lcom/google/android/gms/cast/d$9;
.super Lcom/google/android/gms/cast/j;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/google/android/gms/cast/d;
.method constructor <init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/cast/d$9;->b:Lcom/google/android/gms/cast/d;
iput-object p2, p0, Lcom/google/android/gms/cast/d$9;->a:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/j;-><init>(Lcom/google/android/gms/cast/a$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fm;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/d$9;->a(Lcom/google/android/gms/internal/fm;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fm;)V
.registers 4
const/16 v1, 0x7d1
iget-object v0, p0, Lcom/google/android/gms/cast/d$9;->a:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_10
const-string v0, "IllegalArgument: sessionId cannot be null or empty"
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/d$9;->a(ILjava/lang/String;)V
:goto_f
return-void
:cond_10
:try_start_10
iget-object v0, p0, Lcom/google/android/gms/cast/d$9;->a:Ljava/lang/String;
invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/fm;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/t;)V
:try_end_15
.catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_16
goto :goto_f
:catch_16
move-exception v0
invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/d$9;->a(I)V
goto :goto_f
.end method