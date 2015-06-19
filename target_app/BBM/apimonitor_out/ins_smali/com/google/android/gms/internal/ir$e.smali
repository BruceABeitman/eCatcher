.class public Lcom/google/android/gms/internal/ir$e;
.super Ljava/lang/Object;
.method public static aT(Ljava/lang/String;)I
.registers 4
const-string v0, "person"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const-string v0, "page"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
goto :goto_9
:cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown objectType string: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method