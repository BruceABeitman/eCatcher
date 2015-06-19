.class  Lcom/google/android/gms/internal/ad$4;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/bd;
.field final synthetic lK:Lcom/google/android/gms/internal/ad;
.method constructor <init>(Lcom/google/android/gms/internal/ad;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ad$4;->lK:Lcom/google/android/gms/internal/ad;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
.registers 5
const-string v0, "pingType"
invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_41
const-string v0, "unloadPing"
const-string v1, "pingType"
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/google/android/gms/internal/ad$4;->lK:Lcom/google/android/gms/internal/ad;
iget-object v1, p0, Lcom/google/android/gms/internal/ad$4;->lK:Lcom/google/android/gms/internal/ad;
invoke-static {v1}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/ad;)Lcom/google/android/gms/internal/af;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ad;->c(Lcom/google/android/gms/internal/af;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unregistered GMSG handlers for: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ad$4;->lK:Lcom/google/android/gms/internal/ad;
invoke-static {v1}, Lcom/google/android/gms/internal/ad;->c(Lcom/google/android/gms/internal/ad;)Lcom/google/android/gms/internal/ab;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/internal/ab;->ap()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
:cond_41
return-void
.end method