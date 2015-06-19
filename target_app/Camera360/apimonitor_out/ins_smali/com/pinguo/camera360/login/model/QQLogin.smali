.class public Lcom/pinguo/camera360/login/model/QQLogin;
.super Lcom/pinguo/camera360/login/model/WebviewLogin;
.source "QQLogin.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/model/WebviewLogin;-><init>(Landroid/content/Context;)V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/login/model/QQLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/model/QQLogin;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
return-void
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/login/model/LoginConfig;->getInstance()Lcom/pinguo/camera360/login/model/LoginConfig;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/LoginConfig;->getQQSso()Lcom/pinguo/camera360/login/model/QQSso;
move-result-object v2
sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string/jumbo v4, "HTC 802w"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_3b
iget-object v3, p0, Lcom/pinguo/camera360/login/model/QQLogin;->mContext:Landroid/content/Context;
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/login/model/QQLogin;->validateQQInstall(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_3b
if-eqz v2, :cond_3b
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/QQSso;->getAppkey()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_3b
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/QQSso;->getAppsecret()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_3b
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/QQSso;->getAuth()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_42
:cond_3b
const-string/jumbo v3, "qzone"
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/login/model/QQLogin;->startWebViewLogin(Ljava/lang/String;)V
:goto_41
return-void
:cond_42
iget-object v0, p0, Lcom/pinguo/camera360/login/model/QQLogin;->mContext:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/login/model/QQLogin$1;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/login/model/QQLogin$1;-><init>(Lcom/pinguo/camera360/login/model/QQLogin;Lcom/pinguo/lib/os/AsyncResult;)V
invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/login/model/QQSso;->ssoLogin(Landroid/app/Activity;Lcom/pinguo/camera360/login/model/QQSso$IQQSSOLoginCallback;)V
goto :goto_41
.end method
.method public bridge synthetic startWebViewBind(Ljava/lang/String;)V
.registers 2
invoke-super {p0, p1}, Lcom/pinguo/camera360/login/model/WebviewLogin;->startWebViewBind(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic startWebViewLogin(Ljava/lang/String;)V
.registers 2
invoke-super {p0, p1}, Lcom/pinguo/camera360/login/model/WebviewLogin;->startWebViewLogin(Ljava/lang/String;)V
return-void
.end method