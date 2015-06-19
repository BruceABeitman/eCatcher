.class abstract Lcom/pinguo/camera360/login/model/WebviewLogin;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "WebviewLogin.java"
.method protected constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V
return-void
.end method
.method private startWebView(Ljava/lang/String;Ljava/lang/String;Z)V
.registers 12
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
iget-object v5, p0, Lcom/pinguo/camera360/login/model/WebviewLogin;->mContext:Landroid/content/Context;
invoke-static {v5, v3}, Lcom/pinguo/camera360/login/model/LoginConfig;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
const-string/jumbo v5, "siteCode"
invoke-static {p1}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v5, "source"
const-string/jumbo v6, "mobile"
invoke-static {v6}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v5, "redirect"
const-string/jumbo v6, "1"
invoke-static {v6}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v3}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "sig"
invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, ""
:try_start_3b
invoke-static {p2, v3}, Lcom/pinguo/lib/network/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
:try_end_3e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_3e} :catch_7f
move-result-object v1
:goto_3f
const-string/jumbo v5, "test"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "\u7b2c\u4e09\u65b9\u767b\u5f55\u7684\u5730\u5740:"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Landroid/content/Intent;
iget-object v5, p0, Lcom/pinguo/camera360/login/model/WebviewLogin;->mContext:Landroid/content/Context;
const-class v6, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;
invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v5, "WEB_PATH"
invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v5, "success_url"
const-string/jumbo v6, "/api/third/login/callbackResult"
invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v5, "loginmode"
invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v5, "bind_account"
invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v5, p0, Lcom/pinguo/camera360/login/model/WebviewLogin;->mContext:Landroid/content/Context;
invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
:catch_7f
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_3f
.end method
.method public startWebViewBind(Ljava/lang/String;)V
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/api/third/login/binding"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/camera360/login/model/WebviewLogin;->startWebView(Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
.method public startWebViewLogin(Ljava/lang/String;)V
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/api/third/login/index"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/camera360/login/model/WebviewLogin;->startWebView(Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
.method protected validateQQInstall(Landroid/content/Context;)Z
.registers 8
const/4 v2, 0x0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const-string/jumbo v4, "com.tencent.mobileqq"
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
if-eqz v1, :cond_18
iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
:try_end_12
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_12} :catch_1a
const/16 v4, 0x32
if-lt v3, v4, :cond_17
const/4 v2, 0x1
:cond_17
:goto_17
return v2
:cond_18
const/4 v2, 0x0
goto :goto_17
:catch_1a
move-exception v0
const/4 v2, 0x0
goto :goto_17
.end method