.class public final Lcom/google/android/gms/common/api/Batch$Builder;
.super Ljava/lang/Object;
.field private DB:Ljava/util/List;
.field private DC:Landroid/os/Looper;
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DB:Ljava/util/List;
invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DC:Landroid/os/Looper;
return-void
.end method
.method public add(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/common/api/BatchResultToken;
.registers 4
new-instance v0, Lcom/google/android/gms/common/api/BatchResultToken;
iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DB:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/BatchResultToken;-><init>(I)V
iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DB:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method public build()Lcom/google/android/gms/common/api/Batch;
.registers 5
new-instance v0, Lcom/google/android/gms/common/api/Batch;
iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DB:Ljava/util/List;
iget-object v2, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DC:Landroid/os/Looper;
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Landroid/os/Looper;Lcom/google/android/gms/common/api/Batch$1;)V
return-object v0
.end method