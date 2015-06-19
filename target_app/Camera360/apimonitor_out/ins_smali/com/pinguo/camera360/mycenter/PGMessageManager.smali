.class public Lcom/pinguo/camera360/mycenter/PGMessageManager;
.super Ljava/lang/Object;
.source "PGMessageManager.java"
.field private static final APP_ID:Ljava/lang/String; = "9b71356f2c48eda0"
.field private static final KEY_DELETED_MSG:Ljava/lang/String; = "deleted_msg"
.field private static final KEY_MSG:Ljava/lang/String; = "msg_json"
.field private static final KEY_NEW_MSG_COUNT:Ljava/lang/String; = "new_msg_count"
.field private static final KEY_NEW_ORDER_CHANGE_COUNT:Ljava/lang/String; = "new_order_change_count"
.field private static final KEY_NOT_AVAILABLE_MSG:Ljava/lang/String; = "not_available_msg_json"
.field private static final KEY_ORDER_STATE_CHANGED_LIST:Ljava/lang/String; = "oder_state_chaged_list"
.field private static final KEY_VERSION:Ljava/lang/String; = "msg_version"
.field private static final PREFERENCE_NAME:Ljava/lang/String; = "msg_center"
.field private static final SIG_SECRET_KEY:Ljava/lang/String; = "1Qqf0PEkShxcfjFwaUjpe3aoZGKblONw"
.field private static final TAG:Ljava/lang/String;
.field private static sInstance:Lcom/pinguo/camera360/mycenter/PGMessageManager;
.field private mContext:Landroid/content/Context;
.field private mEditor:Landroid/content/SharedPreferences$Editor;
.field private mGson:Lcom/google/gson/Gson;
.field private mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
.field private mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.field private mPreferences:Landroid/content/SharedPreferences;
.field private mUserEditor:Landroid/content/SharedPreferences$Editor;
.field private mUserPreferences:Landroid/content/SharedPreferences;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/mycenter/PGMessageManager;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/gson/Gson;
invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/google/gson/Gson;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/mycenter/PGMessageManager;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->putMsgJson2Pref(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/mycenter/PGMessageManager;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->putVersion2Pref(I)V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/mycenter/PGMessageManager;Lcom/pinguo/Camera360Lib/network/HttpStringRequest;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkUserPreference()Z
move-result v0
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences$Editor;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences$Editor;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Ljava/util/List;
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getDeletedMsgListFromPref()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Ljava/util/List;
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getMsgListFromPref()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method private checkPreference()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
if-nez v0, :cond_b
:cond_8
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->initPreference()V
:cond_b
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
if-eqz v0, :cond_15
const/4 v0, 0x1
:goto_14
return v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method private checkUserPreference()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
if-nez v0, :cond_b
:cond_8
invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->initUserPreference()V
:cond_b
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
if-eqz v0, :cond_15
const/4 v0, 0x1
:goto_14
return v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method private delLocalExpiredMsg()V
.registers 9
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getDeletedMsgListFromPref()Ljava/util/List;
move-result-object v0
:try_start_4
invoke-interface {v0}, Ljava/util/List;->size()I
:try_end_7
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_39
move-result v3
add-int/lit8 v2, v3, -0x1
:goto_a
if-gez v2, :cond_20
:goto_c
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v5, "deleted_msg"
iget-object v6, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
:cond_20
:try_start_20
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/mycenter/PGMessage;
iget-wide v4, v4, Lcom/pinguo/camera360/mycenter/PGMessage;->expireTime:J
const-wide/16 v6, 0x3e8
mul-long/2addr v4, v6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
cmp-long v4, v4, v6
if-gtz v4, :cond_36
invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
:cond_36
:try_end_36
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_36} :catch_39
add-int/lit8 v2, v2, -0x1
goto :goto_a
:catch_39
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_c
.end method
.method private getDeletedMsgListFromPref()Ljava/util/List;
.registers 6
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v2
if-nez v2, :cond_c
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:goto_b
return-object v1
:cond_c
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
const-string/jumbo v3, "deleted_msg"
const-string/jumbo v4, ""
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_24
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
goto :goto_b
:cond_24
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
new-instance v3, Lcom/pinguo/camera360/mycenter/PGMessageManager$4;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager$4;-><init>(Lcom/pinguo/camera360/mycenter/PGMessageManager;)V
invoke-virtual {v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager$4;->getType()Ljava/lang/reflect/Type;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
goto :goto_b
.end method
.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
.registers 2
const-class v1, Lcom/pinguo/camera360/mycenter/PGMessageManager;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->sInstance:Lcom/pinguo/camera360/mycenter/PGMessageManager;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/mycenter/PGMessageManager;
invoke-direct {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;-><init>()V
sput-object v0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->sInstance:Lcom/pinguo/camera360/mycenter/PGMessageManager;
:cond_e
sget-object v0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->sInstance:Lcom/pinguo/camera360/mycenter/PGMessageManager;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method private getMsgListFromPref()Ljava/util/List;
.registers 6
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v2
if-nez v2, :cond_c
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:goto_b
return-object v1
:cond_c
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
const-string/jumbo v3, "msg_json"
const-string/jumbo v4, ""
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_24
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
goto :goto_b
:cond_24
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
new-instance v3, Lcom/pinguo/camera360/mycenter/PGMessageManager$2;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager$2;-><init>(Lcom/pinguo/camera360/mycenter/PGMessageManager;)V
invoke-virtual {v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager$2;->getType()Ljava/lang/reflect/Type;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
goto :goto_b
.end method
.method private getUnavailableMsgListFromPref()Ljava/util/List;
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v2
if-nez v2, :cond_8
:cond_7
:goto_7
return-object v1
:cond_8
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
const-string/jumbo v3, "not_available_msg_json"
const-string/jumbo v4, ""
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_7
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
new-instance v3, Lcom/pinguo/camera360/mycenter/PGMessageManager$3;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager$3;-><init>(Lcom/pinguo/camera360/mycenter/PGMessageManager;)V
invoke-virtual {v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager$3;->getType()Ljava/lang/reflect/Type;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
goto :goto_7
.end method
.method private initPreference()V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mContext:Landroid/content/Context;
if-nez v1, :cond_d
sget-object v1, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
const-string/jumbo v2, "initPreference context is null"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_c
return-void
:cond_d
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mContext:Landroid/content/Context;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "msg_center"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
goto :goto_c
.end method
.method public static isItemAvailable(Ljava/lang/String;)Z
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/shop/activity/Interaction;->isValid(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private putMsgJson2Pref(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v1, "msg_json"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_6
.end method
.method private putVersion2Pref(I)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v1, "msg_version"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_6
.end method
.method private request(Ljava/util/HashMap;)V
.registers 8
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
if-eqz v3, :cond_c
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
invoke-virtual {v3}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;->cancel()V
const/4 v3, 0x0
iput-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
:cond_c
:try_start_c
sget-object v3, LvStudio/Android/Camera360/RemoteConstants;->MSG_CENTER_URL:Ljava/lang/String;
invoke-static {v3, p1}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "url = "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_27
.catch Ljava/io/IOException; {:try_start_c .. :try_end_27} :catch_32
new-instance v1, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;-><init>(Lcom/pinguo/camera360/mycenter/PGMessageManager;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;->execute()V
iput-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
:goto_31
return-void
:catch_32
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_31
.end method
.method public clearNewMessageFlag()V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v1, "new_msg_count"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_6
.end method
.method public decNewMessageCount(I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v2
if-nez v2, :cond_8
:goto_7
return-void
:cond_8
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
const-string/jumbo v3, "new_msg_count"
invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v2
sub-int v0, v2, p1
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v3, "new_msg_count"
if-ltz v0, :cond_23
:goto_1a
invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_7
:cond_23
move v0, v1
goto :goto_1a
.end method
.method public delMsg(Lcom/pinguo/camera360/mycenter/PGMessage;)V
.registers 6
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v1
if-nez v1, :cond_7
:goto_6
return-void
:cond_7
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getDeletedMsgListFromPref()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "deleted_msg"
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_6
.end method
.method public delMsg(Ljava/util/List;)V
.registers 6
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v1
if-nez v1, :cond_7
:goto_6
return-void
:cond_7
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getDeletedMsgListFromPref()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "deleted_msg"
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_6
.end method
.method public getMsgList()Ljava/util/List;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->refreshLocalMsg()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getNewMessageCount()I
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v1
if-nez v1, :cond_8
:goto_7
return v0
:cond_8
invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->refreshLocalMsg()Ljava/util/List;
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
const-string/jumbo v2, "new_msg_count"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
goto :goto_7
.end method
.method public getNewOrderCount()I
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkUserPreference()Z
move-result v1
if-nez v1, :cond_10
sget-object v1, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
const-string/jumbo v2, "checkUserPreference return false"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return v0
:cond_10
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
const-string/jumbo v2, "new_order_change_count"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
goto :goto_f
.end method
.method public getStateChangedOrderList()Ljava/util/List;
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkUserPreference()Z
move-result v2
if-nez v2, :cond_10
sget-object v2, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
const-string/jumbo v3, "checkUserPreference return false"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
:cond_f
return-object v1
:cond_10
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
const-string/jumbo v3, "oder_state_chaged_list"
const-string/jumbo v4, ""
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_f
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
new-instance v3, Lcom/pinguo/camera360/mycenter/PGMessageManager$5;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager$5;-><init>(Lcom/pinguo/camera360/mycenter/PGMessageManager;)V
invoke-virtual {v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager$5;->getType()Ljava/lang/reflect/Type;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
goto :goto_f
.end method
.method public initUserPreference()V
.registers 8
const/4 v6, 0x0
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mContext:Landroid/content/Context;
if-nez v4, :cond_e
sget-object v4, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
const-string/jumbo v5, "initUserPreference context is null"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v3
if-eqz v3, :cond_53
iget-object v1, v3, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_41
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "msg_center"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
goto :goto_d
:cond_41
const-string/jumbo v4, "msg_center"
invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
goto :goto_d
:cond_53
const-string/jumbo v4, "msg_center"
invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserPreferences:Landroid/content/SharedPreferences;
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
goto :goto_d
.end method
.method public refreshLocalMsg()Ljava/util/List;
.registers 11
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getMsgListFromPref()Ljava/util/List;
move-result-object v2
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
:try_start_9
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_d
:goto_d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
:try_end_10
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_45
move-result v6
if-nez v6, :cond_2e
:goto_13
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->updateUnreadMsg(Ljava/util/List;)V
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->delLocalExpiredMsg()V
invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->updateLocalMsgs(Ljava/util/List;)V
const/4 v4, 0x0
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_24
:cond_24
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_52
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->setNewMessageCount(I)V
return-object v3
:try_start_2e
:cond_2e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/mycenter/PGMessage;
iget-wide v6, v1, Lcom/pinguo/camera360/mycenter/PGMessage;->expireTime:J
const-wide/16 v8, 0x3e8
mul-long/2addr v6, v8
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
cmp-long v6, v6, v8
if-lez v6, :cond_d
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_44
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_44} :catch_45
goto :goto_d
:catch_45
move-exception v0
sget-object v5, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
const-string/jumbo v6, "\u5254\u9664\u8fc7\u671f\u6570\u636eerror"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_13
:cond_52
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/mycenter/PGMessage;
iget-boolean v6, v1, Lcom/pinguo/camera360/mycenter/PGMessage;->hasReaded:Z
if-nez v6, :cond_24
add-int/lit8 v4, v4, 0x1
goto :goto_24
.end method
.method public saveStateChangedOrderList(Ljava/util/List;)V
.registers 5
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkUserPreference()Z
move-result v0
if-nez v0, :cond_f
sget-object v0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "checkUserPreference return false"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_e
:goto_e
return-void
:cond_f
if-eqz p1, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v1, "new_order_change_count"
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v1, "oder_state_chaged_list"
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_e
.end method
.method public setContext(Landroid/content/Context;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mContext:Landroid/content/Context;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
sget-object v0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "setContext invoked"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mContext:Landroid/content/Context;
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->initPreference()V
invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->initUserPreference()V
goto :goto_4
.end method
.method public setNewMessageCount(I)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkPreference()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v1, "new_msg_count"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_6
.end method
.method public setOnUpdateMsgResult(Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
return-void
.end method
.method public update(Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;)V
.registers 6
if-eqz p1, :cond_4
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
:cond_4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mContext:Landroid/content/Context;
invoke-static {v2, v0}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
const-string/jumbo v2, "appId"
const-string/jumbo v3, "9b71356f2c48eda0"
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "1Qqf0PEkShxcfjFwaUjpe3aoZGKblONw"
invoke-static {v0, v2}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_2a
const-string/jumbo v2, "sig"
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2a
invoke-direct {p0, v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->request(Ljava/util/HashMap;)V
sget-object v2, Lcom/pinguo/camera360/mycenter/PGMessageManager;->TAG:Ljava/lang/String;
const-string/jumbo v3, "update"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public updateLocalMsgs(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->putMsgJson2Pref(Ljava/lang/String;)V
return-void
.end method
.method public updateUnreadMsg(Ljava/util/List;)V
.registers 11
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getUnavailableMsgListFromPref()Ljava/util/List;
move-result-object v3
if-eqz v3, :cond_c
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
if-gtz v4, :cond_d
:cond_c
:goto_c
return-void
:cond_d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:try_start_12
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_16
:goto_16
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
:try_end_19
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_7a
move-result v5
if-nez v5, :cond_5b
:goto_1c
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
if-lez v4, :cond_c
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v4
const/4 v5, 0x1
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->addNewFlagInMyCenter(I)V
invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-interface {v3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v5, "not_available_msg_json"
iget-object v6, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-virtual {v6, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
const-string/jumbo v5, "new_msg_count"
iget-object v6, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
const-string/jumbo v7, "new_msg_count"
const/4 v8, 0x0
invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v6
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v7
add-int/2addr v6, v7
invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_c
:cond_5b
:try_start_5b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/mycenter/PGMessage;
iget-object v5, v2, Lcom/pinguo/camera360/mycenter/PGMessage;->logic:Ljava/lang/String;
invoke-static {v5}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->isItemAvailable(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_16
iget-wide v5, v2, Lcom/pinguo/camera360/mycenter/PGMessage;->expireTime:J
const-wide/16 v7, 0x3e8
mul-long/2addr v5, v7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
cmp-long v5, v5, v7
if-lez v5, :cond_16
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_79
.catch Ljava/lang/Exception; {:try_start_5b .. :try_end_79} :catch_7a
goto :goto_16
:catch_7a
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_1c
.end method