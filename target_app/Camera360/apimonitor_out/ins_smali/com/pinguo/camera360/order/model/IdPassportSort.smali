.class public Lcom/pinguo/camera360/order/model/IdPassportSort;
.super Ljava/lang/Object;
.source "IdPassportSort.java"
.field private static final LOCAL_CACHE_PATH:Ljava/lang/String; = "/passportsort.json"
.field private static final TAG:Ljava/lang/String; = "IdPassportSort"
.field private final mData:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/order/model/IdPassportSort;->mData:Ljava/lang/String;
return-void
.end method
.method public static create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/IdPassportSort;
.registers 6
const-string/jumbo v1, ""
new-instance v0, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "/passportsort.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_35
:try_start_26
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;
:try_end_29
.catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_30
move-result-object v1
:goto_2a
new-instance v3, Lcom/pinguo/camera360/order/model/IdPassportSort;
invoke-direct {v3, v1}, Lcom/pinguo/camera360/order/model/IdPassportSort;-><init>(Ljava/lang/String;)V
return-object v3
:catch_30
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_2a
:cond_35
const-string/jumbo v3, "passportsort.json"
invoke-static {p0, v3}, Lcom/pinguo/lib/util/AssetsUtils;->getAssetsFileContentW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
goto :goto_2a
.end method
.method public getData()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/IdPassportSort;->mData:Ljava/lang/String;
return-object v0
.end method
.method public remoteLoad()V
.registers 6
const/4 v4, 0x1
new-instance v1, Lcom/pinguo/camera360/order/model/IdPassportSort$1;
const-string/jumbo v2, "https://bstore.camera360.com/v1/store/passportList"
invoke-direct {v1, p0, v4, v2}, Lcom/pinguo/camera360/order/model/IdPassportSort$1;-><init>(Lcom/pinguo/camera360/order/model/IdPassportSort;ILjava/lang/String;)V
invoke-static {}, Lcom/pinguo/Camera360Lib/network/HttpRequestQueue;->getInstance()Lcom/android/volley/RequestQueue;
move-result-object v2
invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;
move-result-object v2
invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;->getCacheKey()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
move-result-object v0
if-eqz v0, :cond_21
invoke-virtual {v0}, Lcom/android/volley/Cache$Entry;->isExpired()Z
move-result v2
if-eqz v2, :cond_27
:cond_21
invoke-virtual {v1, v4}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;->setShouldCache(Z)Lcom/android/volley/Request;
invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;->execute()V
:cond_27
return-void
.end method