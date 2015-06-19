.class public Lcom/google/android/gms/wearable/PutDataRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final WEAR_URI_SCHEME:Ljava/lang/String; = "wear"
.field private static final alk:Ljava/util/Random;
.field private TC:[B
.field private final all:Landroid/os/Bundle;
.field private final mUri:Landroid/net/Uri;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/e;
invoke-direct {v0}, Lcom/google/android/gms/wearable/e;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/PutDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;
new-instance v0, Ljava/security/SecureRandom;
invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/PutDataRequest;->alk:Ljava/util/Random;
return-void
.end method
.method private constructor <init>(ILandroid/net/Uri;)V
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const/4 v1, 0x0
invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(ILandroid/net/Uri;Landroid/os/Bundle;[B)V
return-void
.end method
.method constructor <init>(ILandroid/net/Uri;Landroid/os/Bundle;[B)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->mUri:Landroid/net/Uri;
iput-object p3, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
const-class v1, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iput-object p4, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TC:[B
return-void
.end method
.method public static create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->cx(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->j(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;
move-result-object v0
return-object v0
.end method
.method public static createFromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/PutDataRequest;
.registers 5
invoke-interface {p0}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->j(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/wearable/DataItem;->getAssets()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_14
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/wearable/DataItemAsset;
invoke-interface {v1}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_4b
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Cannot create an asset for a put request without a digest: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_4b
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wearable/DataItemAsset;
invoke-interface {v0}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/wearable/Asset;->createFromRef(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;
move-result-object v0
invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;
goto :goto_14
:cond_63
invoke-interface {p0}, Lcom/google/android/gms/wearable/DataItem;->getData()[B
move-result-object v0
invoke-virtual {v2, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->setData([B)Lcom/google/android/gms/wearable/PutDataRequest;
return-object v2
.end method
.method public static createWithAutoAppendedId(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, "/"
invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_12
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_12
const-string v1, "PN"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/google/android/gms/wearable/PutDataRequest;->alk:Ljava/util/Random;
invoke-virtual {v2}, Ljava/util/Random;->nextLong()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->cx(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
new-instance v1, Lcom/google/android/gms/wearable/PutDataRequest;
const/4 v2, 0x1
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(ILandroid/net/Uri;)V
return-object v1
.end method
.method private static cx(Ljava/lang/String;)Landroid/net/Uri;
.registers 3
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "An empty path was supplied."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const-string v0, "/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "A path must start with a single / ."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
const-string v0, "//"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "A path must start with a single / ."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
new-instance v0, Landroid/net/Uri$Builder;
invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V
const-string v1, "wear"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static j(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;
.registers 3
new-instance v0, Lcom/google/android/gms/wearable/PutDataRequest;
const/4 v1, 0x1
invoke-direct {v0, v1, p0}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(ILandroid/net/Uri;)V
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wearable/Asset;
return-object v0
.end method
.method public getAssets()Ljava/util/Map;
.registers 5
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/wearable/Asset;
invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
:cond_27
invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public getData()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TC:[B
return-object v0
.end method
.method public getUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->mUri:Landroid/net/Uri;
return-object v0
.end method
.method public hasAsset(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public nh()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
return-object v0
.end method
.method public putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;
.registers 4
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-object p0
.end method
.method public removeAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
return-object p0
.end method
.method public setData([B)Lcom/google/android/gms/wearable/PutDataRequest;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TC:[B
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 3
const-string v0, "DataMap"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->toString(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString(Z)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "PutDataRequest["
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "dataSz="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TC:[B
if-nez v0, :cond_63
const-string v0, "null"
:goto_18
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
iget-object v2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
invoke-virtual {v2}, Landroid/os/Bundle;->size()I
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
iget-object v2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->mUri:Landroid/net/Uri;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-nez p1, :cond_6b
const-string v0, "]"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_62
return-object v0
:cond_63
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TC:[B
array-length v0, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_18
:cond_6b
const-string v0, "]\n  assets: "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_7a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_ad
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
iget-object v4, p0, Lcom/google/android/gms/wearable/PutDataRequest;->all:Landroid/os/Bundle;
invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_7a
:cond_ad
const-string v0, "\n  ]"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_62
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/e;->a(Lcom/google/android/gms/wearable/PutDataRequest;Landroid/os/Parcel;I)V
return-void
.end method