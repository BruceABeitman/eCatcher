.class final Lcom/google/android/gms/internal/ds$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ev;
.field final synthetic a:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ds$2;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/er;)V
.registers 6
const-string v0, "javascript:%s(%s);"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "AFMA_buildAdURL"
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/google/android/gms/internal/ds$2;->a:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "About to execute: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/er;->loadUrl(Ljava/lang/String;)V
return-void
.end method