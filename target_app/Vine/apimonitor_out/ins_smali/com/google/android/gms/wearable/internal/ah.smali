.class public final Lcom/google/android/gms/wearable/internal/ah;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/wearable/NodeApi;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/ah$3;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/ah$3;-><init>(Lcom/google/android/gms/wearable/internal/ah;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public getConnectedNodes(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/wearable/internal/ah$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ah$2;-><init>(Lcom/google/android/gms/wearable/internal/ah;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public getLocalNode(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/wearable/internal/ah$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ah$1;-><init>(Lcom/google/android/gms/wearable/internal/ah;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/ah$4;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/ah$4;-><init>(Lcom/google/android/gms/wearable/internal/ah;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method