.class public Lcom/pinguo/share/net/ServiceConnection;
.super Ljava/lang/Object;
.source "ServiceConnection.java"
.field private static mSC:Lcom/pinguo/share/net/ServiceConnection;
.field private mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
return-void
.end method
.method public static addSig(Ljava/lang/StringBuilder;)V
.registers 9
const-string/jumbo v6, "?"
invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I
move-result v6
add-int/lit8 v6, v6, 0x1
invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "&"
invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
new-instance v6, Lcom/pinguo/share/net/ServiceConnection$2;
invoke-direct {v6}, Lcom/pinguo/share/net/ServiceConnection$2;-><init>()V
invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_29
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_42
:try_start_2f
const-string/jumbo v6, "&sig="
invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/share/util/MD5;->pinguoMD5(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_41
:try_end_41
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_41} :catch_4c
return-void
:cond_42
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_29
:catch_4c
move-exception v1
invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_41
.end method
.method private generateShareSig(Ljava/util/Map;)Ljava/lang/String;
.registers 8
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_d
:cond_d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_1c
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/share/util/MD5;->pinguoMD5(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
return-object v3
:cond_1c
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/CharSequence;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_d
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v5, "="
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_d
.end method
.method public static getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;
.registers 2
sget-object v0, Lcom/pinguo/share/net/ServiceConnection;->mSC:Lcom/pinguo/share/net/ServiceConnection;
if-nez v0, :cond_b
new-instance v0, Lcom/pinguo/share/net/ServiceConnection;
invoke-direct {v0, p0}, Lcom/pinguo/share/net/ServiceConnection;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/pinguo/share/net/ServiceConnection;->mSC:Lcom/pinguo/share/net/ServiceConnection;
:cond_b
sget-object v0, Lcom/pinguo/share/net/ServiceConnection;->mSC:Lcom/pinguo/share/net/ServiceConnection;
return-object v0
.end method
.method public static setAttention(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 10
new-instance v4, Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "UTF-8"
invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v5
invoke-static {v5}, Lcom/pinguo/share/util/Base64;->encode([B)[B
move-result-object v5
const-string/jumbo v6, "UTF-8"
invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "/v4/focusc360.json"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "encode_site_info="
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "&v="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const/4 v6, 0x0
invoke-static {v6}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/pinguo/share/net/ServiceConnection;->addSig(Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v5, "SetAttention"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "url="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ";param="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/16 v5, 0x7d0
const/16 v6, 0xbb8
invoke-static {v2, v5, v6, v1}, Lcom/pinguo/share/net/NetConnection;->post(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v5, "SetAttention"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "response = "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-object v3
.end method
.method public getAt(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/at.json?"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "v="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&sil="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p3}, Lcom/pinguo/share/util/ShareModuleUtil;->getEncodeSiteInfo(Ljava/util/List;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&lang="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/pinguo/share/net/ServiceConnection;->addSig(Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/share/net/NetConnection;->getForNormal(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getBindObject()Ljava/lang/String;
.registers 6
const-string/jumbo v1, "http://share.camera360.com/dispatcher.json"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "?"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "v="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "&lang="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "&cuid="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/pinguo/share/net/ServiceConnection;->addSig(Ljava/lang/StringBuilder;)V
const-string/jumbo v2, "sync"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "synchronize request = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/share/net/NetConnection;->getForNormal(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public getLocation(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/location.json?o="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&v="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&lang="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&lat="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&lon="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&alt="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&lm="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&cuid="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/pinguo/share/net/ServiceConnection;->addSig(Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/share/net/NetConnection;->getForNormal(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getPhotoWallLinks(Ljava/lang/String;Lcom/pinguo/share/CloudShareInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v3, "pids"
invoke-virtual {p2}, Lcom/pinguo/share/CloudShareInfo;->getPidsJsonString()Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "aids"
new-instance v4, Lorg/json/JSONArray;
invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "title"
invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {v1, p4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
const-string/jumbo v3, "sideCode"
invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "isWallLink"
const-string/jumbo v4, "1"
invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "themeName"
iget-object v4, p2, Lcom/pinguo/share/CloudShareInfo;->themeName:Ljava/lang/String;
invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "localkey"
iget-object v4, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/pinguo/share/ShareAccess;->loadLocalKey(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "app_key"
const-string/jumbo v4, "5dab06e7a53740ea9b78"
invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1, v0}, Lcom/pinguo/share/ShareAccess;->post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "cx"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "getPhotoWallLinks res:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
return-object v2
.end method
.method public getPhotoWallLinks(Ljava/lang/String;Lcom/pinguo/share/CloudShareInfo;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.registers 12
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v4, "pids"
invoke-virtual {p2}, Lcom/pinguo/share/CloudShareInfo;->getPidsJsonString()Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v4, "aids"
new-instance v5, Lorg/json/JSONArray;
invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v4, "title"
invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_7e
const-string/jumbo v4, "sideCode"
invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v4, "isWallLink"
const-string/jumbo v5, "1"
invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v4, "themeName"
iget-object v5, p2, Lcom/pinguo/share/CloudShareInfo;->themeName:Ljava/lang/String;
invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v4, "localkey"
iget-object v5, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v5}, Lcom/pinguo/share/ShareAccess;->loadLocalKey(Landroid/content/Context;)Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v4, "app_key"
const-string/jumbo v5, "5dab06e7a53740ea9b78"
invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1, v0}, Lcom/pinguo/share/ShareAccess;->post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "cx"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "getPhotoWallLinks res:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
return-object v3
:cond_7e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/share/website/WebSiteInfoBean;
iget-object v4, v4, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_2d
.end method
.method public getWebSites()Ljava/lang/String;
.registers 6
const-string/jumbo v1, "http://share.camera360.com/v4/dispatcher.json"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "?"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "v="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "&lang="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "&cuid="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/pinguo/share/net/ServiceConnection;->addSig(Ljava/lang/StringBuilder;)V
const-string/jumbo v2, "requestDispatch"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "request = \n"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/share/net/NetConnection;->getForNormal(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public isBind(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/loginc.json?"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "v="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&sil="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p3}, Lcom/pinguo/share/util/ShareModuleUtil;->getEncodeSiteInfo(Ljava/util/List;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&cuid="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/pinguo/share/net/ServiceConnection;->addSig(Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/share/net/NetConnection;->getForNormal(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public isNeedUpdate(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
.registers 8
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_13
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_22
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/share/net/NetConnection;->getForNormal(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
return-object v2
:cond_22
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v2, "&"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
.end method
.method public loginout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 10
iget-object v3, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/bind/BindSharedPreferences;->getServerDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/ca_loginout.json?site="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&v="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&lang="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&cuid="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&uid="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v1}, Lcom/pinguo/share/net/ServiceConnection;->addSig(Ljava/lang/StringBuilder;)V
const-string/jumbo v3, "JTest1107"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "log out request = "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/share/net/NetConnection;->getForNormal(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method public sharePhotoes(Lcom/pinguo/share/website/WebShareBean;Ljava/lang/String;Landroid/content/Context;Lcom/pinguo/share/website/IShareProcess;Ljava/lang/String;)Ljava/lang/String;
.registers 23
new-instance v4, Ljava/util/TreeMap;
invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getShareType()I
move-result v12
const/4 v13, 0x1
if-ne v12, v13, :cond_40
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getPid()Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_36
const-string/jumbo v12, "0"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getPid()Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_36
const-string/jumbo v12, ""
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getPid()Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_36
const-string/jumbo v12, "pid"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getPid()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_36
const-string/jumbo v12, "crc32"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getCrc32()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_40
const-string/jumbo v12, "cuid"
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v13}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "once"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getOnce()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "timespan"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getTimespan()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "title"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getTitle()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "effect"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getEffect()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "device_name"
sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "client_os_version"
sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "client_lang"
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "client_imei"
invoke-static/range {p3 .. p3}, Lcom/pinguo/share/util/ShareModuleUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "style_id"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getStyle_id()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "version"
invoke-static/range {p3 .. p3}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getCamera_model()Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_be
const-string/jumbo v12, "camera_model"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getCamera_model()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_be
const-string/jumbo v12, "encode_site_info"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getEncode_site_info()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "network_type"
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v13}, Lcom/pinguo/share/util/ShareModuleUtil;->getNetType(Landroid/content/Context;)Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "cnet"
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v13}, Lcom/pinguo/share/util/ShareModuleUtil;->getNetType(Landroid/content/Context;)Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "cdeivce"
sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "cclient"
invoke-static/range {p3 .. p3}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "clang"
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLatitude()Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_11a
const-string/jumbo v12, "latitude"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLatitude()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "clatitude"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLatitude()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_11a
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLongitude()Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_134
const-string/jumbo v12, "longitude"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLongitude()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v12, "clongitude"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLongitude()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_134
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getAltitude()Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_144
const-string/jumbo v12, "altitude"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getAltitude()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_144
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getAddress()Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_154
const-string/jumbo v12, "address"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getAddress()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_154
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLocation()Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_164
const-string/jumbo v12, "location"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLocation()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_164
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLocation_id()Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_174
const-string/jumbo v12, "location_id"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getLocation_id()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_174
const-string/jumbo v13, "at"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getAt()Ljava/lang/String;
move-result-object v12
if-nez v12, :cond_239
const-string/jumbo v12, ""
:goto_180
invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getShareType()I
move-result v12
const/4 v13, 0x2
if-ne v12, v13, :cond_1df
const-string/jumbo v12, "share_version"
const-string/jumbo v13, "v2.3"
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const/4 v7, 0x0
:goto_199
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v12
invoke-virtual {v12}, Lcom/pinguo/share/CloudShareInfo;->getShareItems()Ljava/util/ArrayList;
move-result-object v12
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v12
if-lt v7, v12, :cond_23f
invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I
move-result v12
add-int/lit8 v12, v12, -0x1
invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I
move-result v13
invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
const-string/jumbo v12, "pic_urls"
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v12
invoke-virtual {v12}, Lcom/pinguo/share/CloudShareInfo;->isAudioPhoto()Z
move-result v12
if-eqz v12, :cond_286
:try_start_1c8
const-string/jumbo v13, "cloud_key"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v12
invoke-virtual {v12}, Lcom/pinguo/share/CloudShareInfo;->getShareItems()Ljava/util/ArrayList;
move-result-object v12
const/4 v14, 0x0
invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/pinguo/share/CloudShareInfo$ShareItem;
iget-object v12, v12, Lcom/pinguo/share/CloudShareInfo$ShareItem;->key:Ljava/lang/String;
invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1df
:goto_1df
:try_end_1df
.catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1df} :catch_277
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/share/net/ServiceConnection;->generateShareSig(Ljava/util/Map;)Ljava/lang/String;
move-result-object v11
new-instance v9, Lcom/pinguo/share/net/ProgressMultiPartEntity;
const/4 v12, 0x0
invoke-direct {v9, v12}, Lcom/pinguo/share/net/ProgressMultiPartEntity;-><init>(Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;)V
new-instance v8, Lcom/pinguo/share/net/ServiceConnection$1;
move-object/from16 v0, p0
move-object/from16 v1, p4
invoke-direct {v8, v0, v1, v9}, Lcom/pinguo/share/net/ServiceConnection$1;-><init>(Lcom/pinguo/share/net/ServiceConnection;Lcom/pinguo/share/website/IShareProcess;Lcom/pinguo/share/net/ProgressMultiPartEntity;)V
invoke-virtual {v9, v8}, Lcom/pinguo/share/net/ProgressMultiPartEntity;->setProgressListener(Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;)V
invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v14
:cond_1ff
:goto_1ff
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-nez v12, :cond_290
const-string/jumbo v12, "sig"
new-instance v13, Lorg/apache/http/entity/mime/content/StringBody;
invoke-direct {v13, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v12, v13}, Lcom/pinguo/share/net/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getShareType()I
move-result v12
const/4 v13, 0x1
if-ne v12, v13, :cond_232
const-string/jumbo v12, "pid"
invoke-interface {v4, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_232
const-string/jumbo v12, "media"
new-instance v13, Lorg/apache/http/entity/mime/content/ByteArrayBody;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getMedia()[B
move-result-object v14
const-string/jumbo v15, "photo.jpg"
invoke-direct {v13, v14, v15}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V
invoke-virtual {v9, v12, v13}, Lcom/pinguo/share/net/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
:cond_232
move-object/from16 v0, p2
invoke-static {v0, v9}, Lcom/pinguo/share/net/NetConnection;->uploadFile(Ljava/lang/String;Lorg/apache/http/entity/mime/MultipartEntity;)Ljava/lang/String;
move-result-object v12
return-object v12
:cond_239
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getAt()Ljava/lang/String;
move-result-object v12
goto/16 :goto_180
:cond_23f
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v12
invoke-virtual {v12}, Lcom/pinguo/share/CloudShareInfo;->getShareItems()Ljava/util/ArrayList;
move-result-object v12
invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;
iget-object v12, v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;->key:Ljava/lang/String;
invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, "_"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
iget v13, v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;->h:I
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, "_"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
iget v13, v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;->w:I
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, ","
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v7, v7, 0x1
goto/16 :goto_199
:catch_277
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v12, "share"
const-string/jumbo v13, "cloud share param photos is error"
invoke-static {v12, v13}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_1df
:cond_286
const-string/jumbo v12, "album_url"
move-object/from16 v0, p5
invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_1df
:cond_290
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/util/Map$Entry;
invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v12
check-cast v12, Ljava/lang/CharSequence;
invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v12
if-nez v12, :cond_1ff
const-string/jumbo v12, "title"
invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_2bc
const-string/jumbo v12, "location"
invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_2db
:cond_2bc
invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v12
check-cast v12, Ljava/lang/String;
new-instance v15, Lorg/apache/http/entity/mime/content/StringBody;
invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/lang/String;
const-string/jumbo v16, "utf-8"
invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v15, v13, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
invoke-virtual {v9, v12, v15}, Lcom/pinguo/share/net/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
goto/16 :goto_1ff
:cond_2db
invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v12
check-cast v12, Ljava/lang/String;
new-instance v15, Lorg/apache/http/entity/mime/content/StringBody;
invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/lang/String;
invoke-direct {v15, v13}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v12, v15}, Lcom/pinguo/share/net/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
goto/16 :goto_1ff
.end method
.method public ssoBind(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 13
const/4 v6, 0x2
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/share/net/ServiceConnection;->ssoBind(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public ssoBind(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.registers 11
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/addbinding.json?"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "v="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&site="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&lang="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&value="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
new-instance v2, Ljava/lang/String;
invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-static {v3}, Lcom/pinguo/share/util/Base64;->encode([B)[B
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&f="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&cuid="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p3}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "&source="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/pinguo/share/net/ServiceConnection;->addSig(Ljava/lang/StringBuilder;)V
const-string/jumbo v1, "JTest1107"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "sso bind request = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/share/net/NetConnection;->getForNormal(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public statForWeChat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 10
iget-object v4, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/pinguo/share/util/ShareModuleUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/?"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "deviceid="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "&idtype=imei"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "&platform="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "&usid="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "&cuid="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/share/net/ServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v5}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "&weiboid="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v4, "share"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Stat for wechat url:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x0
:try_start_6c
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const/16 v5, 0x2710
const/16 v6, 0x2710
invoke-static {v4, v5, v6}, Lcom/pinguo/share/net/NetConnection;->get(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "share"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Stat for wechat result:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_8e
:try_end_8e
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6c .. :try_end_8e} :catch_8f
.catch Ljava/net/SocketTimeoutException; {:try_start_6c .. :try_end_8e} :catch_94
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6c .. :try_end_8e} :catch_99
.catch Ljava/io/IOException; {:try_start_6c .. :try_end_8e} :catch_9e
return-object v3
:catch_8f
move-exception v1
invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V
goto :goto_8e
:catch_94
move-exception v1
invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V
goto :goto_8e
:catch_99
move-exception v1
invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
goto :goto_8e
:catch_9e
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_8e
.end method