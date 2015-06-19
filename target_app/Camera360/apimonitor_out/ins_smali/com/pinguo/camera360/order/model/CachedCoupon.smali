.class public Lcom/pinguo/camera360/order/model/CachedCoupon;
.super Ljava/lang/Object;
.source "CachedCoupon.java"
.field private static final LOCAL_CACHE_PATH:Ljava/lang/String; = "/coupon.json"
.field private static final TAG:Ljava/lang/String;
.field private mContext:Landroid/content/Context;
.field public mInfo:Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/model/CachedCoupon;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/model/CachedCoupon;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/order/model/CachedCoupon$Info;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/order/model/CachedCoupon;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/pinguo/camera360/order/model/CachedCoupon;->mInfo:Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
return-void
.end method
.method public static create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/CachedCoupon;
.registers 7
new-instance v0, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "/coupon.json"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_44
:try_start_23
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/google/gson/Gson;
invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V
const-class v5, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
new-instance v4, Lcom/pinguo/camera360/order/model/CachedCoupon;
invoke-direct {v4, p0, v1}, Lcom/pinguo/camera360/order/model/CachedCoupon;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/order/model/CachedCoupon$Info;)V
:goto_39
:try_end_39
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_39} :catch_3a
.catch Lcom/google/gson/JsonSyntaxException; {:try_start_23 .. :try_end_39} :catch_4f
return-object v4
:catch_3a
move-exception v2
sget-object v4, Lcom/pinguo/camera360/order/model/CachedCoupon;->TAG:Ljava/lang/String;
invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_44
:cond_44
new-instance v4, Lcom/pinguo/camera360/order/model/CachedCoupon;
new-instance v5, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
invoke-direct {v5}, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;-><init>()V
invoke-direct {v4, p0, v5}, Lcom/pinguo/camera360/order/model/CachedCoupon;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/order/model/CachedCoupon$Info;)V
goto :goto_39
:catch_4f
move-exception v2
sget-object v4, Lcom/pinguo/camera360/order/model/CachedCoupon;->TAG:Ljava/lang/String;
invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_44
.end method
.method public delete()V
.registers 4
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/order/model/CachedCoupon;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/coupon.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->delete()Z
return-void
.end method
.method public existed()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/CachedCoupon;->mInfo:Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/order/model/CachedCoupon;->mInfo:Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
iget-object v0, v0, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;->data:Lcom/pinguo/camera360/order/model/Coupon$Info;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/order/model/CachedCoupon;->mInfo:Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
iget-object v0, v0, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;->data:Lcom/pinguo/camera360/order/model/Coupon$Info;
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Coupon$Info;->coupon:Ljava/lang/String;
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public save()V
.registers 6
:try_start_0
new-instance v3, Lcom/google/gson/Gson;
invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V
iget-object v4, p0, Lcom/pinguo/camera360/order/model/CachedCoupon;->mInfo:Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/order/model/CachedCoupon;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/coupon.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-static {v3, v2}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
:goto_30
:try_end_30
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31
return-void
:catch_31
move-exception v0
sget-object v3, Lcom/pinguo/camera360/order/model/CachedCoupon;->TAG:Ljava/lang/String;
invoke-static {v3, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_30
.end method