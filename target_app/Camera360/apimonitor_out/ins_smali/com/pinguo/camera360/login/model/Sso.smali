.class public Lcom/pinguo/camera360/login/model/Sso;
.super Ljava/lang/Object;
.source "Sso.java"
.field protected appkey:Ljava/lang/String;
.field protected appsecret:Ljava/lang/String;
.field protected auth:Ljava/lang/String;
.field protected redirecturl:Ljava/lang/String;
.field protected site:Ljava/lang/String;
.field protected ssoInfo:Lcom/pinguo/camera360/login/model/Sso$SsoInfo;
.method protected constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->appkey:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->appsecret:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->redirecturl:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->site:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->auth:Ljava/lang/String;
iput-object p1, p0, Lcom/pinguo/camera360/login/model/Sso;->site:Ljava/lang/String;
return-void
.end method
.method public getAppkey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->appkey:Ljava/lang/String;
return-object v0
.end method
.method public getAppsecret()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->appsecret:Ljava/lang/String;
return-object v0
.end method
.method public getAuth()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->auth:Ljava/lang/String;
return-object v0
.end method
.method public getRedirecturl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->redirecturl:Ljava/lang/String;
return-object v0
.end method
.method public getSite()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->site:Ljava/lang/String;
return-object v0
.end method
.method public getSsoInfo()Lcom/pinguo/camera360/login/model/Sso$SsoInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->ssoInfo:Lcom/pinguo/camera360/login/model/Sso$SsoInfo;
return-object v0
.end method
.method public setAppkey(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/model/Sso;->appkey:Ljava/lang/String;
return-void
.end method
.method public setAppsecret(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/model/Sso;->appsecret:Ljava/lang/String;
return-void
.end method
.method public setAuth(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/model/Sso;->auth:Ljava/lang/String;
return-void
.end method
.method public setRedirecturl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/model/Sso;->redirecturl:Ljava/lang/String;
return-void
.end method
.method public setSsoInfo(Lcom/pinguo/camera360/login/model/Sso$SsoInfo;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->ssoInfo:Lcom/pinguo/camera360/login/model/Sso$SsoInfo;
iput-object v0, p0, Lcom/pinguo/camera360/login/model/Sso;->ssoInfo:Lcom/pinguo/camera360/login/model/Sso$SsoInfo;
return-void
.end method