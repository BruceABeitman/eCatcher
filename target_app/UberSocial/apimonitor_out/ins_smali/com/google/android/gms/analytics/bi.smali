.class  Lcom/google/android/gms/analytics/bi;
.super Ljava/lang/Object;
.field private final a:Ljava/util/Map;
.field private final b:J
.field private final c:Ljava/lang/String;
.field private final d:Ljava/util/List;
.method public constructor <init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/analytics/bi;->a:Ljava/util/Map;
iput-wide p2, p0, Lcom/google/android/gms/analytics/bi;->b:J
iput-object p4, p0, Lcom/google/android/gms/analytics/bi;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/analytics/bi;->d:Ljava/util/List;
return-void
.end method
.method public a()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/bi;->a:Ljava/util/Map;
return-object v0
.end method
.method public b()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/analytics/bi;->b:J
return-wide v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/bi;->c:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/bi;->d:Ljava/util/List;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "PATH: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/google/android/gms/analytics/bi;->c:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/google/android/gms/analytics/bi;->a:Ljava/util/Map;
if-eqz v0, :cond_4b
const-string v0, "  PARAMS: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/google/android/gms/analytics/bi;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_22
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "="
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, ",  "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_22
:cond_4b
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method