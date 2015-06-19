.class public Lcom/pinguo/camera360/cloud/controller/UploadHelperController;
.super Ljava/lang/Object;
.source "UploadHelperController.java"
.field private static final TAG:Ljava/lang/String; = "UploadHelperController"
.field private static mDayCompleteRequestConsole:Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;
.field private static mGetUsedSpaceRequestConsole:Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;
.field private static mMultiDayCompleteRequestConsole:Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;
.field private static mUploadErrorLogRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mMultiDayCompleteRequestConsole:Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;
sput-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mDayCompleteRequestConsole:Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;
sput-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mGetUsedSpaceRequestConsole:Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;
sput-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mUploadErrorLogRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getActiveServer()Z
.registers 5
const/4 v4, 0x0
sget-object v3, Lorg/pinguo/cloudshare/support/Config;->ACTIVE_SERVER_LIST:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-eqz v3, :cond_16
sget-object v3, Lorg/pinguo/cloudshare/support/Config;->ACTIVE_SERVER_LIST:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
const/4 v2, 0x0
:cond_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_18
:cond_16
move v3, v4
:goto_17
return v3
:cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/Map;
const-string/jumbo v3, "enable"
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Boolean;
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_10
const-string/jumbo v3, "address"
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->getUseServerAddress(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
sput-object v3, Lorg/pinguo/cloudshare/support/Config;->ACTIVE_SERVER_ADDRESS:Ljava/lang/String;
const-string/jumbo v3, "enable"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v3, 0x1
goto :goto_17
.end method
.method private static getUseServerAddress(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string/jumbo v2, "^(\\w+:\\/\\/.+?)(?:\\/.*|)$"
invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_17
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
:goto_16
return-object v2
:cond_17
const-string/jumbo v2, "https://cloudapi.camera360.com"
goto :goto_16
.end method
.method public static sendUploadErrorLog(Landroid/content/Context;)V
.registers 11
invoke-static {}, Lcom/pinguo/camera360/cloud/controller/LogController;->sendLog()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_10
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v7
if-nez v7, :cond_11
:cond_10
:goto_10
return-void
:cond_11
new-instance v7, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
const-string/jumbo v8, "https://cloudapi.camera360.com"
const-string/jumbo v9, "/api/server/uploadErrorLog"
invoke-direct {v7, v8, v9, v3}, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sput-object v7, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mUploadErrorLogRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
sget-object v7, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mUploadErrorLogRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
invoke-virtual {v7, p0}, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->setContext(Landroid/content/Context;)V
sget-object v7, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mUploadErrorLogRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
invoke-virtual {v7}, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->sendMethod()Z
move-result v7
if-eqz v7, :cond_10
sget-object v7, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mUploadErrorLogRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
invoke-virtual {v7}, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->getResponse()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
new-instance v1, Lcom/google/gson/stream/JsonReader;
new-instance v7, Ljava/io/StringReader;
invoke-direct {v7, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v7}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
:try_start_3f
invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->beginObject()V
const/4 v4, 0x0
const/4 v5, 0x0
:goto_44
invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z
move-result v7
if-nez v7, :cond_54
invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->endObject()V
invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
:try_end_50
.catchall {:try_start_3f .. :try_end_50} :catchall_8d
.catch Ljava/io/IOException; {:try_start_3f .. :try_end_50} :catch_81
invoke-static {}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteAllErrorLog()V
goto :goto_10
:try_start_54
:cond_54
invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;
move-result-object v5
sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "status"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_74
invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->nextInt()I
move-result v7
invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
goto :goto_44
:cond_74
const-string/jumbo v7, "message"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_89
invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
:try_end_80
.catchall {:try_start_54 .. :try_end_80} :catchall_8d
.catch Ljava/io/IOException; {:try_start_54 .. :try_end_80} :catch_81
goto :goto_44
:catch_81
move-exception v0
:try_start_82
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_85
.catchall {:try_start_82 .. :try_end_85} :catchall_8d
invoke-static {}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteAllErrorLog()V
goto :goto_10
:try_start_89
:cond_89
invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->skipValue()V
:try_end_8c
.catchall {:try_start_89 .. :try_end_8c} :catchall_8d
.catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_81
goto :goto_44
:catchall_8d
move-exception v7
invoke-static {}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteAllErrorLog()V
throw v7
.end method
.method public static stopDayComplete()V
.registers 1
sget-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mDayCompleteRequestConsole:Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;
if-eqz v0, :cond_9
sget-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mDayCompleteRequestConsole:Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->stop()V
:cond_9
return-void
.end method
.method public static stopMultiDayComplete()V
.registers 1
sget-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mMultiDayCompleteRequestConsole:Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;
if-eqz v0, :cond_9
sget-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mMultiDayCompleteRequestConsole:Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->stop()V
:cond_9
return-void
.end method
.method public static stopUploadErrorLog()V
.registers 1
sget-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mUploadErrorLogRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
if-eqz v0, :cond_9
sget-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mUploadErrorLogRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->stop()V
:cond_9
return-void
.end method
.method public static stopUsedSpace()V
.registers 1
sget-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mGetUsedSpaceRequestConsole:Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;
if-eqz v0, :cond_9
sget-object v0, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->mGetUsedSpaceRequestConsole:Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->stop()V
:cond_9
return-void
.end method