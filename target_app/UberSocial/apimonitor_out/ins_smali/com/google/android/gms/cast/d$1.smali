.class  Lcom/google/android/gms/cast/d$1;
.super Lcom/google/android/gms/cast/j;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/google/android/gms/cast/d;
.method constructor <init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/cast/d$1;->c:Lcom/google/android/gms/cast/d;
iput-object p2, p0, Lcom/google/android/gms/cast/d$1;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/cast/d$1;->b:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/j;-><init>(Lcom/google/android/gms/cast/a$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fm;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/d$1;->a(Lcom/google/android/gms/internal/fm;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fm;)V
.registers 5
const/16 v2, 0x7d1
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/cast/d$1;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/cast/d$1;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/fm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/t;)V
:try_end_9
.catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_a
.catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_9} :catch_f
:goto_9
return-void
:catch_a
move-exception v0
invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/d$1;->a(I)V
goto :goto_9
:catch_f
move-exception v0
invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/d$1;->a(I)V
goto :goto_9
.end method