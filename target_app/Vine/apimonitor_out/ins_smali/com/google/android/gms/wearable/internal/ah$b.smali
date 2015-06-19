.class public Lcom/google/android/gms/wearable/internal/ah$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;
.field private final alX:Lcom/google/android/gms/wearable/Node;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Node;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ah$b;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ah$b;->alX:Lcom/google/android/gms/wearable/Node;
return-void
.end method
.method public getNode()Lcom/google/android/gms/wearable/Node;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ah$b;->alX:Lcom/google/android/gms/wearable/Node;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ah$b;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method