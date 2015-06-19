.class public Lcom/google/android/gms/wearable/internal/ah$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;
.field private final alW:Ljava/util/List;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ah$a;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ah$a;->alW:Ljava/util/List;
return-void
.end method
.method public getNodes()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ah$a;->alW:Ljava/util/List;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ah$a;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method