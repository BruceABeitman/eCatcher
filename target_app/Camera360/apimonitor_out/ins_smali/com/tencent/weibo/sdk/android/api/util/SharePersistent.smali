.class public Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;
.super Ljava/lang/Object;
.source "SharePersistent.java"
.field private static final FILE_NAME:Ljava/lang/String; = "ANDROID_SDK"
.field private static instance:Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInstance()Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;
.registers 1
sget-object v0, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->instance:Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;
if-nez v0, :cond_b
new-instance v0, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;
invoke-direct {v0}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;-><init>()V
sput-object v0, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->instance:Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;
:cond_b
sget-object v0, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->instance:Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;
return-object v0
.end method
.method public clear(Landroid/content/Context;Ljava/lang/String;)Z
.registers 6
const-string/jumbo v1, "ANDROID_SDK"
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v1
return v1
.end method
.method public get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 6
const-string/jumbo v1, "ANDROID_SDK"
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, ""
invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getAccount(Landroid/content/Context;)Lcom/tencent/weibo/sdk/android/model/AccountModel;
.registers 7
new-instance v0, Lcom/tencent/weibo/sdk/android/model/AccountModel;
invoke-direct {v0}, Lcom/tencent/weibo/sdk/android/model/AccountModel;-><init>()V
const-string/jumbo v2, "ANDROID_SDK"
const/4 v3, 0x0
invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
const-string/jumbo v2, "ACCESS_TOKEN"
const-string/jumbo v3, ""
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/weibo/sdk/android/model/AccountModel;->setAccessToken(Ljava/lang/String;)V
const-string/jumbo v2, "EXPIRES_IN"
const-wide/16 v3, 0x0
invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
invoke-virtual {v0, v2, v3}, Lcom/tencent/weibo/sdk/android/model/AccountModel;->setExpiresIn(J)V
const-string/jumbo v2, "OPEN_ID"
const-string/jumbo v3, ""
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/weibo/sdk/android/model/AccountModel;->setOpenID(Ljava/lang/String;)V
const-string/jumbo v2, "OPEN_KEY"
const-string/jumbo v3, ""
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/weibo/sdk/android/model/AccountModel;->setOpenKey(Ljava/lang/String;)V
const-string/jumbo v2, "REFRESH_TOKEN"
const-string/jumbo v3, ""
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/weibo/sdk/android/model/AccountModel;->setRefreshToken(Ljava/lang/String;)V
const-string/jumbo v2, "NAME"
const-string/jumbo v3, ""
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/weibo/sdk/android/model/AccountModel;->setName(Ljava/lang/String;)V
const-string/jumbo v2, "NICK"
const-string/jumbo v3, ""
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/weibo/sdk/android/model/AccountModel;->setNike(Ljava/lang/String;)V
return-object v0
.end method
.method public getLong(Landroid/content/Context;Ljava/lang/String;)J
.registers 6
const-string/jumbo v1, "ANDROID_SDK"
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-wide/16 v1, 0x0
invoke-interface {v0, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
return-wide v1
.end method
.method public put(Landroid/content/Context;Ljava/lang/String;J)Z
.registers 9
const-string/jumbo v2, "ANDROID_SDK"
const/4 v3, 0x0
invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v2
return v2
.end method
.method public put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.registers 8
const-string/jumbo v2, "ANDROID_SDK"
const/4 v3, 0x0
invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v2
return v2
.end method