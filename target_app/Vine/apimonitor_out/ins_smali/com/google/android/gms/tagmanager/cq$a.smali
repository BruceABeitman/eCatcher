.class public Lcom/google/android/gms/tagmanager/cq$a;
.super Ljava/lang/Object;
.field private final agU:Ljava/util/Map;
.field private final agV:Lcom/google/android/gms/internal/d$a;
.method private constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/d$a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cq$a;->agU:Ljava/util/Map;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/cq$a;->agV:Lcom/google/android/gms/internal/d$a;
return-void
.end method
.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/d$a;Lcom/google/android/gms/tagmanager/cq$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/cq$a;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/d$a;)V
return-void
.end method
.method public static mi()Lcom/google/android/gms/tagmanager/cq$b;
.registers 2
new-instance v0, Lcom/google/android/gms/tagmanager/cq$b;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/cq$b;-><init>(Lcom/google/android/gms/tagmanager/cq$1;)V
return-object v0
.end method
.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$a;->agU:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public mj()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$a;->agU:Ljava/util/Map;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public mk()Lcom/google/android/gms/internal/d$a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$a;->agV:Lcom/google/android/gms/internal/d$a;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Properties: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cq$a;->mj()Ljava/util/Map;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " pushAfterEvaluate: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cq$a;->agV:Lcom/google/android/gms/internal/d$a;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method