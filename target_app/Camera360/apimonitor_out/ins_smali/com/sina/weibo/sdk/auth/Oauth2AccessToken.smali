.class public Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
.super Ljava/lang/Object;
.source "Oauth2AccessToken.java"
.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"
.field private static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"
.field private static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"
.field private static final KEY_UID:Ljava/lang/String; = "uid"
.field private mAccessToken:Ljava/lang/String;
.field private mExpiresTime:J
.field private mRefreshToken:Ljava/lang/String;
.field private mUid:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mUid:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mRefreshToken:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v2, ""
iput-object v2, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mUid:Ljava/lang/String;
const-string/jumbo v2, ""
iput-object v2, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;
const-string/jumbo v2, ""
iput-object v2, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mRefreshToken:Ljava/lang/String;
const-wide/16 v2, 0x0
iput-wide v2, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
if-eqz p1, :cond_4e
const-string/jumbo v2, "{"
invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_4e
:try_start_21
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "uid"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setUid(Ljava/lang/String;)V
const-string/jumbo v2, "access_token"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setToken(Ljava/lang/String;)V
const-string/jumbo v2, "expires_in"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setExpiresIn(Ljava/lang/String;)V
const-string/jumbo v2, "refresh_token"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setRefreshToken(Ljava/lang/String;)V
:cond_4e
:try_end_4e
.catch Lorg/json/JSONException; {:try_start_21 .. :try_end_4e} :catch_4f
:goto_4e
return-void
:catch_4f
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_4e
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mUid:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mRefreshToken:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
if-eqz p2, :cond_2c
iget-wide v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
const-wide/16 v4, 0x3e8
mul-long/2addr v2, v4
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
:cond_2c
return-void
.end method
.method private static getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-eqz p0, :cond_b
invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_9
:goto_8
return-object v0
:cond_9
move-object v0, p2
goto :goto_8
:cond_b
move-object v0, p2
goto :goto_8
.end method
.method public static parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
.registers 4
if-eqz p0, :cond_3c
new-instance v0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
invoke-direct {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;-><init>()V
const-string/jumbo v1, "uid"
const-string/jumbo v2, ""
invoke-static {p0, v1, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setUid(Ljava/lang/String;)V
const-string/jumbo v1, "access_token"
const-string/jumbo v2, ""
invoke-static {p0, v1, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setToken(Ljava/lang/String;)V
const-string/jumbo v1, "expires_in"
const-string/jumbo v2, ""
invoke-static {p0, v1, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setExpiresIn(Ljava/lang/String;)V
const-string/jumbo v1, "refresh_token"
const-string/jumbo v2, ""
invoke-static {p0, v1, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setRefreshToken(Ljava/lang/String;)V
:goto_3b
return-object v0
:cond_3c
const/4 v0, 0x0
goto :goto_3b
.end method
.method public static parseAccessToken(Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
.registers 5
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_46
const-string/jumbo v3, "{"
invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ltz v3, :cond_46
:try_start_f
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v2, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
invoke-direct {v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;-><init>()V
const-string/jumbo v3, "uid"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setUid(Ljava/lang/String;)V
const-string/jumbo v3, "access_token"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setToken(Ljava/lang/String;)V
const-string/jumbo v3, "expires_in"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setExpiresIn(Ljava/lang/String;)V
const-string/jumbo v3, "refresh_token"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setRefreshToken(Ljava/lang/String;)V
:goto_41
:try_end_41
.catch Lorg/json/JSONException; {:try_start_f .. :try_end_41} :catch_42
return-object v2
:catch_42
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
:cond_46
const/4 v2, 0x0
goto :goto_41
.end method
.method public getExpiresTime()J
.registers 3
iget-wide v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
return-wide v0
.end method
.method public getRefreshToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mRefreshToken:Ljava/lang/String;
return-object v0
.end method
.method public getToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;
return-object v0
.end method
.method public getUid()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mUid:Ljava/lang/String;
return-object v0
.end method
.method public isSessionValid()Z
.registers 5
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1c
iget-wide v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_1c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
cmp-long v0, v0, v2
if-gez v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public setExpiresIn(Ljava/lang/String;)V
.registers 8
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1e
const-string/jumbo v0, "0"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
const-wide/16 v4, 0x3e8
mul-long/2addr v2, v4
add-long/2addr v0, v2
invoke-virtual {p0, v0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setExpiresTime(J)V
:cond_1e
return-void
.end method
.method public setExpiresTime(J)V
.registers 3
iput-wide p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
return-void
.end method
.method public setRefreshToken(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mRefreshToken:Ljava/lang/String;
return-void
.end method
.method public setToken(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;
return-void
.end method
.method public setUid(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mUid:Ljava/lang/String;
return-void
.end method
.method public toBundle()Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v1, "uid"
iget-object v2, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mUid:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "access_token"
iget-object v2, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "refresh_token"
iget-object v2, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mRefreshToken:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "expires_in"
iget-wide v2, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "uid: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mUid:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "access_token"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "refresh_token"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mRefreshToken:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "expires_in"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J
invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method