.class  Lcom/google/android/gms/wearable/internal/ah$1;
.super Lcom/google/android/gms/wearable/internal/d;
.field final synthetic alU:Lcom/google/android/gms/wearable/internal/ah;
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ah;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ah$1;->alU:Lcom/google/android/gms/wearable/internal/ah;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/wearable/internal/au;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ah$1;->a(Lcom/google/android/gms/wearable/internal/au;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
.registers 2
invoke-virtual {p1, p0}, Lcom/google/android/gms/wearable/internal/au;->p(Lcom/google/android/gms/common/api/a$d;)V
return-void
.end method
.method protected av(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/ah$b;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/ah$b;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Node;)V
return-object v0
.end method
.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ah$1;->av(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;
move-result-object v0
return-object v0
.end method