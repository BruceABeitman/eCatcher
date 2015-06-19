.class public Lcom/google/android/gms/wearable/DataEventBuffer;
.super Lcom/google/android/gms/common/data/g;
.implements Lcom/google/android/gms/common/api/Result;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/g;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I
move-result v1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/wearable/DataEventBuffer;->yw:Lcom/google/android/gms/common/api/Status;
return-void
.end method
.method protected synthetic c(II)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataEventBuffer;->m(II)Lcom/google/android/gms/wearable/DataEvent;
move-result-object v0
return-object v0
.end method
.method protected eU()Ljava/lang/String;
.registers 2
const-string v0, "path"
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/DataEventBuffer;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method protected m(II)Lcom/google/android/gms/wearable/DataEvent;
.registers 5
new-instance v0, Lcom/google/android/gms/wearable/internal/h;
iget-object v1, p0, Lcom/google/android/gms/wearable/DataEventBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/wearable/internal/h;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V
return-object v0
.end method