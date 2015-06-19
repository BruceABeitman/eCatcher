.class final Lcom/google/android/gms/internal/aq$6;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ar;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/dd;Ljava/util/Map;)V
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "Received log message: "
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, "string"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V
return-void
.end method