.class public final Lcom/google/android/gms/wearable/internal/o;
.super Lcom/google/android/gms/common/data/d;
.implements Lcom/google/android/gms/wearable/DataItem;
.field private final RD:I
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput p3, p0, Lcom/google/android/gms/wearable/internal/o;->RD:I
return-void
.end method
.method public synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/o;->nm()Lcom/google/android/gms/wearable/DataItem;
move-result-object v0
return-object v0
.end method
.method public getAssets()Ljava/util/Map;
.registers 6
new-instance v1, Ljava/util/HashMap;
iget v0, p0, Lcom/google/android/gms/wearable/internal/o;->RD:I
invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V
const/4 v0, 0x0
:goto_8
iget v2, p0, Lcom/google/android/gms/wearable/internal/o;->RD:I
if-ge v0, v2, :cond_27
new-instance v2, Lcom/google/android/gms/wearable/internal/k;
iget-object v3, p0, Lcom/google/android/gms/wearable/internal/o;->DD:Lcom/google/android/gms/common/data/DataHolder;
iget v4, p0, Lcom/google/android/gms/wearable/internal/o;->Ez:I
add-int/2addr v4, v0
invoke-direct {v2, v3, v4}, Lcom/google/android/gms/wearable/internal/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
invoke-virtual {v2}, Lcom/google/android/gms/wearable/internal/k;->getDataItemKey()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_1f
:goto_1c
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1f
invoke-virtual {v2}, Lcom/google/android/gms/wearable/internal/k;->getDataItemKey()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1c
:cond_27
return-object v1
.end method
.method public getData()[B
.registers 2
const-string v0, "data"
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/o;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public getUri()Landroid/net/Uri;
.registers 2
const-string v0, "path"
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/o;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public nm()Lcom/google/android/gms/wearable/DataItem;
.registers 2
new-instance v0, Lcom/google/android/gms/wearable/internal/l;
invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/l;-><init>(Lcom/google/android/gms/wearable/DataItem;)V
return-object v0
.end method
.method public setData([B)Lcom/google/android/gms/wearable/DataItem;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method