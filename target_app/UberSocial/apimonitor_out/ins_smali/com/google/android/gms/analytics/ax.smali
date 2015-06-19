.class  Lcom/google/android/gms/analytics/ax;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/o;
.field private a:I
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/analytics/ax;->a:I
return-void
.end method
.method private e(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/analytics/ax;->a:I
return v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/analytics/ax;->a:I
return-void
.end method
.method public a(Ljava/lang/Exception;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/analytics/ax;->a:I
const/4 v1, 0x3
if-gt v0, v1, :cond_b
const-string v0, "GAV3"
const/4 v1, 0x0
invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_b
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/analytics/ax;->a:I
if-gtz v0, :cond_d
const-string v0, "GAV3"
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/ax;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/analytics/ax;->a:I
const/4 v1, 0x1
if-gt v0, v1, :cond_e
const-string v0, "GAV3"
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/ax;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_e
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/analytics/ax;->a:I
const/4 v1, 0x2
if-gt v0, v1, :cond_e
const-string v0, "GAV3"
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/ax;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_e
return-void
.end method
.method public d(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/analytics/ax;->a:I
const/4 v1, 0x3
if-gt v0, v1, :cond_e
const-string v0, "GAV3"
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/ax;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_e
return-void
.end method