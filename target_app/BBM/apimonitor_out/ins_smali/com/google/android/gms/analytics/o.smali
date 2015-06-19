.class final Lcom/google/android/gms/analytics/o;
.super Ljava/lang/Object;
.method private static b(Ljava/lang/String;I)Ljava/lang/String;
.registers 4
if-gtz p1, :cond_27
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "index out of range for "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->t(Ljava/lang/String;)V
const-string v0, ""
:goto_26
return-object v0
:cond_27
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_26
.end method
.method static q(I)Ljava/lang/String;
.registers 2
const-string v0, "&cd"
invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static r(I)Ljava/lang/String;
.registers 2
const-string v0, "&cm"
invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method