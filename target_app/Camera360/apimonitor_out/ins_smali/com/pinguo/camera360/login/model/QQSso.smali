.class public Lcom/pinguo/camera360/login/model/QQSso;
.super Lcom/pinguo/camera360/login/model/Sso;
.source "QQSso.java"
.field private static final SCOPE:Ljava/lang/String; = "all"
.field private mTencent:Lcom/tencent/tauth/Tencent;
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "qzone"
invoke-direct {p0, v0}, Lcom/pinguo/camera360/login/model/Sso;-><init>(Ljava/lang/String;)V
return-void
.end method
.method private checkTencentInstance(Landroid/app/Activity;)Z
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/model/QQSso;->mTencent:Lcom/tencent/tauth/Tencent;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/login/model/QQSso;->appkey:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/login/model/QQSso;->mTencent:Lcom/tencent/tauth/Tencent;
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/login/model/QQSso;->mTencent:Lcom/tencent/tauth/Tencent;
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private init(Landroid/app/Activity;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/model/QQSso;->checkTencentInstance(Landroid/app/Activity;)Z
move-result v0
return v0
.end method
.method public ssoLogin(Landroid/app/Activity;Lcom/pinguo/camera360/login/model/QQSso$IQQSSOLoginCallback;)V
.registers 6
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/model/QQSso;->init(Landroid/app/Activity;)Z
move-result v1
if-nez v1, :cond_f
if-eqz p2, :cond_e
const-string/jumbo v1, "Failed to instance Tencent objs!"
invoke-interface {p2, v1}, Lcom/pinguo/camera360/login/model/QQSso$IQQSSOLoginCallback;->onFailed(Ljava/lang/String;)V
:goto_e
:cond_e
return-void
:cond_f
new-instance v0, Lcom/pinguo/camera360/login/model/QQSso$1;
invoke-direct {v0, p0, p2}, Lcom/pinguo/camera360/login/model/QQSso$1;-><init>(Lcom/pinguo/camera360/login/model/QQSso;Lcom/pinguo/camera360/login/model/QQSso$IQQSSOLoginCallback;)V
iget-object v1, p0, Lcom/pinguo/camera360/login/model/QQSso;->mTencent:Lcom/tencent/tauth/Tencent;
invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z
move-result v1
if-nez v1, :cond_2e
const-string/jumbo v1, "test"
const-string/jumbo v2, "login xxxxxx"
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/pinguo/camera360/login/model/QQSso;->mTencent:Lcom/tencent/tauth/Tencent;
const-string/jumbo v2, "all"
invoke-virtual {v1, p1, v2, v0}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
goto :goto_e
:cond_2e
const-string/jumbo v1, "test"
const-string/jumbo v2, "logout xxxxxx"
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/pinguo/camera360/login/model/QQSso;->mTencent:Lcom/tencent/tauth/Tencent;
invoke-virtual {v1, p1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V
iget-object v1, p0, Lcom/pinguo/camera360/login/model/QQSso;->mTencent:Lcom/tencent/tauth/Tencent;
const-string/jumbo v2, "all"
invoke-virtual {v1, p1, v2, v0}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
goto :goto_e
.end method