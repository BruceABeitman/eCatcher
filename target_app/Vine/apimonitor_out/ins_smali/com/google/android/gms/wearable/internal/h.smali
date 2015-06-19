.class public final Lcom/google/android/gms/wearable/internal/h;
.super Lcom/google/android/gms/common/data/d;
.implements Lcom/google/android/gms/wearable/DataEvent;
.field private final RD:I
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput p3, p0, Lcom/google/android/gms/wearable/internal/h;->RD:I
return-void
.end method
.method public synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/h;->nk()Lcom/google/android/gms/wearable/DataEvent;
move-result-object v0
return-object v0
.end method
.method public getDataItem()Lcom/google/android/gms/wearable/DataItem;
.registers 5
new-instance v0, Lcom/google/android/gms/wearable/internal/o;
iget-object v1, p0, Lcom/google/android/gms/wearable/internal/h;->DD:Lcom/google/android/gms/common/data/DataHolder;
iget v2, p0, Lcom/google/android/gms/wearable/internal/h;->Ez:I
iget v3, p0, Lcom/google/android/gms/wearable/internal/h;->RD:I
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/internal/o;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V
return-object v0
.end method
.method public getType()I
.registers 2
const-string v0, "event_type"
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/h;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public nk()Lcom/google/android/gms/wearable/DataEvent;
.registers 2
new-instance v0, Lcom/google/android/gms/wearable/internal/g;
invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/g;-><init>(Lcom/google/android/gms/wearable/DataEvent;)V
return-object v0
.end method