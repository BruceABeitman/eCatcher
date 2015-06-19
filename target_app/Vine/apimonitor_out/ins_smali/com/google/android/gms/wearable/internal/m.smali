.class public Lcom/google/android/gms/wearable/internal/m;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/wearable/DataItem;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private TC:[B
.field private final alH:Ljava/util/Map;
.field private final mUri:Landroid/net/Uri;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/internal/n;
invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/n;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/internal/m;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILandroid/net/Uri;Landroid/os/Bundle;[B)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/internal/m;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/m;->mUri:Landroid/net/Uri;
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const-class v0, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;
invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1d
:cond_33
iput-object v2, p0, Lcom/google/android/gms/wearable/internal/m;->alH:Ljava/util/Map;
iput-object p4, p0, Lcom/google/android/gms/wearable/internal/m;->TC:[B
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/m;->nn()Lcom/google/android/gms/wearable/internal/m;
move-result-object v0
return-object v0
.end method
.method public getAssets()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->alH:Ljava/util/Map;
return-object v0
.end method
.method public getData()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->TC:[B
return-object v0
.end method
.method public getUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->mUri:Landroid/net/Uri;
return-object v0
.end method
.method public isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public m([B)Lcom/google/android/gms/wearable/internal/m;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/m;->TC:[B
return-object p0
.end method
.method public nh()Landroid/os/Bundle;
.registers 6
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-class v0, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->alH:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
new-instance v4, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wearable/DataItemAsset;
invoke-direct {v4, v0}, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;-><init>(Lcom/google/android/gms/wearable/DataItemAsset;)V
invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto :goto_18
:cond_39
return-object v2
.end method
.method public nn()Lcom/google/android/gms/wearable/internal/m;
.registers 1
return-object p0
.end method
.method public synthetic setData([B)Lcom/google/android/gms/wearable/DataItem;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/m;->m([B)Lcom/google/android/gms/wearable/internal/m;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
const-string v0, "DataItem"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/m;->toString(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString(Z)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "DataItemParcelable["
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, "@"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ",dataSz="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->TC:[B
if-nez v0, :cond_73
const-string v0, "null"
:goto_28
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ", numAssets="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/wearable/internal/m;->alH:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->size()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ", uri="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/wearable/internal/m;->mUri:Landroid/net/Uri;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-nez p1, :cond_7b
const-string v0, "]"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_72
return-object v0
:cond_73
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->TC:[B
array-length v0, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_28
:cond_7b
const-string v0, "]\n  assets: "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->alH:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_bd
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "\n    "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/wearable/internal/m;->alH:Ljava/util/Map;
invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_8a
:cond_bd
const-string v0, "\n  ]"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_72
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/n;->a(Lcom/google/android/gms/wearable/internal/m;Landroid/os/Parcel;I)V
return-void
.end method