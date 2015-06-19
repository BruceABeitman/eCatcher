.class public Lcom/tencent/weibo/sdk/android/api/UserAPI;
.super Lcom/tencent/weibo/sdk/android/api/BaseAPI;
.source "UserAPI.java"
.field private static final SERVER_URL_USERINFO:Ljava/lang/String; = "https://open.t.qq.com/api/user/info"
.field private static final SERVER_URL_USERINFOS:Ljava/lang/String; = "https://open.t.qq.com/api/user/infos"
.field private static final SERVER_URL_USEROTHERINFO:Ljava/lang/String; = "https://open.t.qq.com/api/user/other_info"
.method public constructor <init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
return-void
.end method
.method public getUserInfo(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 14
new-instance v3, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
const-string/jumbo v0, "scope"
const-string/jumbo v1, "all"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "clientip"
invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "oauth_version"
const-string/jumbo v1, "2.a"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "oauth_consumer_key"
const-string/jumbo v1, "CLIENT_ID"
invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "openid"
const-string/jumbo v1, "OPEN_ID"
invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "format"
invoke-virtual {v3, v0, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "https://open.t.qq.com/api/user/info"
const-string/jumbo v6, "GET"
move-object v0, p0
move-object v1, p1
move-object v4, p3
move-object v5, p4
move v7, p5
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/UserAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public getUserInfos(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 16
new-instance v3, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
const-string/jumbo v0, "scope"
const-string/jumbo v1, "all"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "clientip"
invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "oauth_version"
const-string/jumbo v1, "2.a"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "oauth_consumer_key"
const-string/jumbo v1, "CLIENT_ID"
invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "openid"
const-string/jumbo v1, "OPEN_ID"
invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "format"
invoke-virtual {v3, v0, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p3, :cond_52
const-string/jumbo v0, ""
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_52
const-string/jumbo v0, "names"
invoke-virtual {v3, v0, p3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_52
if-eqz p4, :cond_63
const-string/jumbo v0, ""
invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_63
const-string/jumbo v0, "fopenids"
invoke-virtual {v3, v0, p4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_63
const-string/jumbo v2, "https://open.t.qq.com/api/user/infos"
const-string/jumbo v6, "GET"
move-object v0, p0
move-object v1, p1
move-object v4, p5
move-object v5, p6
move v7, p7
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/UserAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public getUserOtherInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 16
new-instance v3, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
const-string/jumbo v0, "scope"
const-string/jumbo v1, "all"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "clientip"
invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "oauth_version"
const-string/jumbo v1, "2.a"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "oauth_consumer_key"
const-string/jumbo v1, "CLIENT_ID"
invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "openid"
const-string/jumbo v1, "OPEN_ID"
invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "format"
invoke-virtual {v3, v0, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p3, :cond_52
const-string/jumbo v0, ""
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_52
const-string/jumbo v0, "name"
invoke-virtual {v3, v0, p3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_52
if-eqz p4, :cond_63
const-string/jumbo v0, ""
invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_63
const-string/jumbo v0, "fopenid"
invoke-virtual {v3, v0, p4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_63
const-string/jumbo v2, "https://open.t.qq.com/api/user/other_info"
const-string/jumbo v6, "GET"
move-object v0, p0
move-object v1, p1
move-object v4, p5
move-object v5, p6
move v7, p7
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/UserAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method