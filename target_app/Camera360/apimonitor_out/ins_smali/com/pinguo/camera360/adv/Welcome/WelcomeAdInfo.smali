.class public Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;
.super Ljava/lang/Object;
.source "WelcomeAdInfo.java"
.field public static final GUID:Ljava/lang/String; = "guid"
.field public static final GUID_VALUE:Ljava/lang/String; = "5a06075c6570bcc4e13502a11b10a27d"
.field public areaList:Ljava/util/ArrayList;
.field public interval:J
.field public version:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->interval:J
return-void
.end method
.method private static dealArea(Lorg/json/JSONArray;Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;)V
.registers 12
const-wide/16 v8, -0x1
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v5
if-lez v5, :cond_12
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v2, 0x0
:goto_e
if-lt v2, v5, :cond_13
iput-object v1, p1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->areaList:Ljava/util/ArrayList;
:cond_12
return-void
:cond_13
invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
const-string/jumbo v6, "5a06075c6570bcc4e13502a11b10a27d"
const-string/jumbo v7, "guid"
invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_2a
:goto_27
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_2a
new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;
invoke-direct {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;-><init>()V
const-string/jumbo v6, "areaId"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iput-object v6, v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->areaId:Ljava/lang/String;
const-string/jumbo v6, "expireTimeStamp"
invoke-virtual {v4, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v6
iput-wide v6, v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->expireTimeStamp:J
const-string/jumbo v6, "opTimeStamp"
invoke-virtual {v4, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v6
iput-wide v6, v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->opTimeStamp:J
const-string/jumbo v6, "status"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v6
iput v6, v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->status:I
const-string/jumbo v6, "showTimes"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v6
iput-wide v6, v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->showTimes:J
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const-string/jumbo v6, "imageList"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
invoke-static {v0, v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->dealImage(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;Lorg/json/JSONArray;)V
goto :goto_27
.end method
.method private static dealImage(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;Lorg/json/JSONArray;)V
.registers 10
const/4 v7, -0x1
const/4 v6, 0x0
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v4
if-lez v4, :cond_12
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_e
if-lt v0, v4, :cond_13
iput-object v2, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->imageInfoList:Ljava/util/ArrayList;
:cond_12
return-void
:cond_13
new-instance v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;
invoke-direct {v1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;-><init>()V
invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
const-string/jumbo v5, "clickUrl"
invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
iput-object v5, v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;->clickUrl:Ljava/lang/String;
const-string/jumbo v5, "imageId"
invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
iput-object v5, v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;->imageId:Ljava/lang/String;
const-string/jumbo v5, "imageUrl"
invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
iput-object v5, v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;->imageUrl:Ljava/lang/String;
const-string/jumbo v5, "index"
invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v5
iput v5, v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;->index:I
const-string/jumbo v5, "interval"
invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v5
iput v5, v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;->interval:I
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_e
.end method
.method public static newInstance(Landroid/content/Context;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;
.registers 2
new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementCache;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/adv/AdvertisementCache;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AdvertisementCache;->getCache()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->newInstance(Ljava/lang/String;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;
move-result-object v0
return-object v0
.end method
.method public static newInstance(Ljava/lang/String;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;
.registers 2
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->newInstance(Lorg/json/JSONObject;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;
move-result-object v0
return-object v0
.end method
.method public static newInstance(Lorg/json/JSONObject;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;
.registers 6
new-instance v2, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;
invoke-direct {v2}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;-><init>()V
const-string/jumbo v3, "data"
invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string/jumbo v3, "area"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const-string/jumbo v3, "interval"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v3
iput-wide v3, v2, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->interval:J
const-string/jumbo v3, "version"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v3
iput-wide v3, v2, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->version:J
invoke-static {v0, v2}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->dealArea(Lorg/json/JSONArray;Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;)V
return-object v2
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "WelcomeAdInfo{interval="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->interval:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", areaList="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->areaList:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", version="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->version:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method