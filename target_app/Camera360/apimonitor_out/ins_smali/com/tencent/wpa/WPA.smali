.class public Lcom/tencent/wpa/WPA;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method public getWPAUserOnlineState(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.registers 9
const/4 v3, 0x0
if-nez p1, :cond_1c
:try_start_3
new-instance v0, Ljava/lang/Exception;
const-string/jumbo v1, "uin null"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:try_end_c
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_c
:catch_c
move-exception v0
if-eqz p2, :cond_1b
new-instance v0, Lcom/tencent/tauth/UiError;
const/4 v1, -0x5
const-string/jumbo v2, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"
invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {p2, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
:goto_1b
:cond_1b
return-void
:cond_1c
:try_start_1c
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x5
if-ge v0, v1, :cond_2c
new-instance v0, Ljava/lang/Exception;
const-string/jumbo v1, "uin length < 5"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_2c
const/4 v0, 0x0
:goto_2d
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_49
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z
move-result v1
if-nez v1, :cond_46
new-instance v0, Ljava/lang/Exception;
const-string/jumbo v1, "uin not digit"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:try_end_46
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_c
:cond_46
add-int/lit8 v0, v0, 0x1
goto :goto_2d
:cond_49
const-string/jumbo v0, "http://webpresence.qq.com/getonline?Type=1&"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p2}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/wpa/WPA;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/wpa/WPA;->mContext:Landroid/content/Context;
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
goto :goto_1b
.end method
.method public startWPAConversation(Ljava/lang/String;Ljava/lang/String;)I
.registers 10
const/high16 v6, 0x1
const/4 v4, 0x2
const/4 v1, 0x0
const-string/jumbo v0, "mqqwpa://im/chat?chat_type=wpa&uin=%1$s&version=1&src_type=app&attach_content=%2$s"
new-instance v2, Landroid/content/Intent;
const-string/jumbo v0, "android.intent.action.VIEW"
invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_17
const/4 v1, -0x1
:goto_16
return v1
:cond_17
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/4 v3, 0x5
if-ge v0, v3, :cond_20
const/4 v1, -0x3
goto :goto_16
:cond_20
move v0, v1
:goto_21
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-ge v0, v3, :cond_36
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z
move-result v3
if-nez v3, :cond_33
const/4 v1, -0x4
goto :goto_16
:cond_33
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_36
const-string/jumbo v0, ""
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_47
invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v0
:cond_47
const-string/jumbo v3, "mqqwpa://im/chat?chat_type=wpa&uin=%1$s&version=1&src_type=app&attach_content=%2$s"
new-array v4, v4, [Ljava/lang/Object;
aput-object p1, v4, v1
const/4 v5, 0x1
aput-object v0, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
iget-object v0, p0, Lcom/tencent/wpa/WPA;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_72
iget-object v0, p0, Lcom/tencent/wpa/WPA;->mContext:Landroid/content/Context;
invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_16
:cond_72
const-string/jumbo v3, "http://www.myapp.com/forward/a/45592?g_f=990935"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_8c
iget-object v0, p0, Lcom/tencent/wpa/WPA;->mContext:Landroid/content/Context;
invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_16
:cond_8c
const/4 v1, -0x2
goto :goto_16
.end method