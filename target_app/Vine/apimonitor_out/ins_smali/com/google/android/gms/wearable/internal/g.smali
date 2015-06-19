.class public Lcom/google/android/gms/wearable/internal/g;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/wearable/DataEvent;
.field private AQ:I
.field private alE:Lcom/google/android/gms/wearable/DataItem;
.method public constructor <init>(Lcom/google/android/gms/wearable/DataEvent;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/wearable/DataEvent;->getType()I
move-result v0
iput v0, p0, Lcom/google/android/gms/wearable/internal/g;->AQ:I
invoke-interface {p1}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/wearable/DataItem;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wearable/DataItem;
iput-object v0, p0, Lcom/google/android/gms/wearable/internal/g;->alE:Lcom/google/android/gms/wearable/DataItem;
return-void
.end method
.method public synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/g;->nk()Lcom/google/android/gms/wearable/DataEvent;
move-result-object v0
return-object v0
.end method
.method public getDataItem()Lcom/google/android/gms/wearable/DataItem;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/g;->alE:Lcom/google/android/gms/wearable/DataItem;
return-object v0
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wearable/internal/g;->AQ:I
return v0
.end method
.method public isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public nk()Lcom/google/android/gms/wearable/DataEvent;
.registers 1
return-object p0
.end method