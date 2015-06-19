.class public Lcom/tencent/weibo/sdk/android/api/FriendAPI;
.super Lcom/tencent/weibo/sdk/android/api/BaseAPI;
.source "FriendAPI.java"
.field private static final SERVER_URL_ADD:Ljava/lang/String; = "https://open.t.qq.com/api/friends/add"
.field private static final SERVER_URL_CHECK:Ljava/lang/String; = "https://open.t.qq.com/api/friends/check"
.field private static final SERVER_URL_FANSLIST:Ljava/lang/String; = "https://open.t.qq.com/api/friends/fanslist"
.field private static final SERVER_URL_GetINTIMATEFRIENDS:Ljava/lang/String; = "https://open.t.qq.com/api/friends/get_intimate_friends"
.field private static final SERVER_URL_IDOLLIST:Ljava/lang/String; = "https://open.t.qq.com/api/friends/idollist"
.field private static final SERVER_URL_MUTUALLIST:Ljava/lang/String; = "https://open.t.qq.com/api/friends/mutual_list"
.method public constructor <init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
return-void
.end method
.method public addFriend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
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
const-string/jumbo v0, "fopenids"
invoke-virtual {v3, v0, p4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_63
const-string/jumbo v2, "https://open.t.qq.com/api/friends/add"
const-string/jumbo v6, "POST"
move-object v0, p0
move-object v1, p1
move-object v4, p5
move-object v5, p6
move v7, p7
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public friendCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 17
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
const-string/jumbo v0, "names"
invoke-virtual {v3, v0, p3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "fopenids"
invoke-virtual {v3, v0, p4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "flag"
invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "https://open.t.qq.com/api/friends/check"
const-string/jumbo v6, "GET"
move-object v0, p0
move-object v1, p1
move-object v4, p6
move-object v5, p7
move/from16 v7, p8
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public friendFansList(Landroid/content/Context;Ljava/lang/String;IIIIILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 19
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
const-string/jumbo v0, "reqnum"
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "startindex"
invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "mode"
invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "install"
invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "sex"
invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "https://open.t.qq.com/api/friends/fanslist"
const-string/jumbo v6, "GET"
move-object v0, p0
move-object v1, p1
move-object/from16 v4, p8
move-object/from16 v5, p9
move/from16 v7, p10
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public friendIDolList(Landroid/content/Context;Ljava/lang/String;IIIILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 18
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
const-string/jumbo v0, "reqnum"
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "startindex"
invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "mode"
invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "install"
invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "https://open.t.qq.com/api/friends/idollist"
const-string/jumbo v6, "GET"
move-object v0, p0
move-object v1, p1
move-object v4, p7
move-object/from16 v5, p8
move/from16 v7, p9
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public getIntimateFriends(Landroid/content/Context;Ljava/lang/String;ILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 15
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
const-string/jumbo v0, "reqnum"
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "https://open.t.qq.com/api/friends/get_intimate_friends"
const-string/jumbo v6, "GET"
move-object v0, p0
move-object v1, p1
move-object v4, p4
move-object v5, p5
move v7, p6
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public getMutualList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 19
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
const-string/jumbo v0, "reqnum"
invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "install"
invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "startindex"
invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
if-eqz p3, :cond_70
const-string/jumbo v0, ""
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_70
const-string/jumbo v0, "name"
invoke-virtual {v3, v0, p3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_70
if-eqz p4, :cond_81
const-string/jumbo v0, ""
invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_81
const-string/jumbo v0, "fopenid"
invoke-virtual {v3, v0, p4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_81
const-string/jumbo v2, "https://open.t.qq.com/api/friends/mutual_list"
const-string/jumbo v6, "GET"
move-object v0, p0
move-object v1, p1
move-object/from16 v4, p8
move-object/from16 v5, p9
move/from16 v7, p10
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method