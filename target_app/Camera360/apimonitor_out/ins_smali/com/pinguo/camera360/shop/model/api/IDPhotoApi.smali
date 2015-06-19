.class public Lcom/pinguo/camera360/shop/model/api/IDPhotoApi;
.super Ljava/lang/Object;
.source "IDPhotoApi.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getPassportListUrl()Ljava/lang/String;
.registers 5
const-string/jumbo v3, "https://bstore.camera360.com/v1/store/passportList"
invoke-static {v3}, Lcom/pinguo/camera360/shop/model/api/IDPhotoApi;->getUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v3, "platform"
const-string/jumbo v4, "android"
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "locale"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v4
invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "version"
const-string/jumbo v4, "0"
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_2c
invoke-static {v2, v1}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
:try_end_2f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_2f} :catch_31
move-result-object v2
:goto_30
return-object v2
:catch_31
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_30
.end method
.method private static getUrl(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "http://store.camera360.com/"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method