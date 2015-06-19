.class public Lcom/pinguo/camera360/order/model/Region;
.super Ljava/lang/Object;
.source "Region.java"
.field private static final LOCAL_CACHE_PATH:Ljava/lang/String; = "/region.json"
.field private static final TAG:Ljava/lang/String;
.field private mData:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/model/Region;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/model/Region;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/order/model/Region;->mData:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/order/model/Region;->TAG:Ljava/lang/String;
return-object v0
.end method
.method public static create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/Region;
.registers 6
const-string/jumbo v1, ""
new-instance v0, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "/region.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_38
:try_start_26
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;
:try_end_29
.catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_33
move-result-object v1
:goto_2a
invoke-static {p0}, Lcom/pinguo/camera360/order/model/Region;->remoteLoad(Landroid/content/Context;)V
:goto_2d
new-instance v3, Lcom/pinguo/camera360/order/model/Region;
invoke-direct {v3, v1}, Lcom/pinguo/camera360/order/model/Region;-><init>(Ljava/lang/String;)V
return-object v3
:catch_33
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_2a
:cond_38
const-string/jumbo v3, "region.json"
invoke-static {p0, v3}, Lcom/pinguo/lib/util/AssetsUtils;->getAssetsFileContentW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {p0}, Lcom/pinguo/camera360/order/model/Region;->remoteLoad(Landroid/content/Context;)V
goto :goto_2d
.end method
.method private static remoteLoad(Landroid/content/Context;)V
.registers 6
const/4 v4, 0x1
new-instance v1, Lcom/pinguo/camera360/order/model/Region$1;
const-string/jumbo v2, "https://bstore.camera360.com/api/region/listV2"
invoke-direct {v1, v4, v2, p0}, Lcom/pinguo/camera360/order/model/Region$1;-><init>(ILjava/lang/String;Landroid/content/Context;)V
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
.method public getData()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/Region;->mData:Ljava/lang/String;
return-object v0
.end method