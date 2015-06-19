.class  Lcom/google/android/gms/wearable/internal/ah$2;
.super Lcom/google/android/gms/wearable/internal/d;
.field final synthetic alU:Lcom/google/android/gms/wearable/internal/ah;
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ah;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ah$2;->alU:Lcom/google/android/gms/wearable/internal/ah;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/wearable/internal/au;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ah$2;->a(Lcom/google/android/gms/wearable/internal/au;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
.registers 2
invoke-virtual {p1, p0}, Lcom/google/android/gms/wearable/internal/au;->q(Lcom/google/android/gms/common/api/a$d;)V
return-void
.end method
.method protected aw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/ah$a;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/ah$a;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V
return-object v0
.end method
.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ah$2;->aw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;
move-result-object v0
return-object v0
.end method