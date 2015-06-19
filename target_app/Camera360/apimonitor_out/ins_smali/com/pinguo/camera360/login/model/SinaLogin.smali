.class public Lcom/pinguo/camera360/login/model/SinaLogin;
.super Lcom/pinguo/camera360/login/model/WebviewLogin;
.source "SinaLogin.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/model/WebviewLogin;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/login/model/LoginConfig;->getInstance()Lcom/pinguo/camera360/login/model/LoginConfig;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/LoginConfig;->getSinaSso()Lcom/pinguo/camera360/login/model/SinaSso;
move-result-object v2
if-eqz v2, :cond_32
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/SinaSso;->getAppkey()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_32
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/SinaSso;->getAppsecret()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_32
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/SinaSso;->getRedirecturl()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_32
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/SinaSso;->getAuth()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_39
:cond_32
const-string/jumbo v3, "sina"
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/login/model/SinaLogin;->startWebViewLogin(Ljava/lang/String;)V
:goto_38
return-void
:cond_39
iget-object v0, p0, Lcom/pinguo/camera360/login/model/SinaLogin;->mContext:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/login/model/SinaLogin$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/login/model/SinaLogin$1;-><init>(Lcom/pinguo/camera360/login/model/SinaLogin;)V
invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/login/model/SinaSso;->bindRemoteSSOService(Landroid/app/Activity;Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;)V
goto :goto_38
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