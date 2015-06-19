.class public Lcom/pinguo/camera360/order/model/OrderAddress;
.super Ljava/lang/Object;
.source "OrderAddress.java"
.field private static final LOCAL_CONSIGNEE_PATH:Ljava/lang/String; = "/consignee.json"
.field private static final TAG:Ljava/lang/String;
.field public address:Ljava/lang/String;
.field public area:Ljava/lang/String;
.field public city:Ljava/lang/String;
.field public country:Ljava/lang/String;
.field public mobile:Ljava/lang/String;
.field public name:Ljava/lang/String;
.field public province:Ljava/lang/String;
.field public telephone:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/model/OrderAddress;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->name:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->mobile:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->telephone:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->country:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;
return-void
.end method
.method public static create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/OrderAddress;
.registers 8
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "/consignee.json"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v1, ""
:try_start_1b
new-instance v5, Ljava/io/File;
invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v5}, Lcom/pinguo/lib/util/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;
:try_end_23
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_23} :catch_39
move-result-object v1
:goto_24
new-instance v4, Lcom/google/gson/Gson;
invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V
const-class v5, Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/order/model/OrderAddress;
if-nez v0, :cond_38
new-instance v0, Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-direct {v0}, Lcom/pinguo/camera360/order/model/OrderAddress;-><init>()V
:cond_38
return-object v0
:catch_39
move-exception v2
sget-object v5, Lcom/pinguo/camera360/order/model/OrderAddress;->TAG:Ljava/lang/String;
invoke-static {v5, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_24
.end method
.method public getDistrict()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->isDirectControlCity(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1e
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1d
return-object v0
:cond_1e
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1d
.end method
.method public isAvailable()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->name:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->mobile:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x0
:goto_21
return v0
:cond_22
const/4 v0, 0x1
goto :goto_21
.end method
.method public save(Landroid/content/Context;)V
.registers 7
new-instance v2, Lcom/google/gson/Gson;
invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "/consignee.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v3, Ljava/io/File;
invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v3, v0}, Lcom/pinguo/lib/util/FileUtils;->writeFileContent(Ljava/io/File;Ljava/lang/String;)V
return-void
.end method