.class public Lcom/tencent/weibo/sdk/android/api/LbsAPI;
.super Lcom/tencent/weibo/sdk/android/api/BaseAPI;
.source "LbsAPI.java"
.field private static final SERVER_URL_GetAROUNDNEW:Ljava/lang/String; = "https://open.t.qq.com/api/lbs/get_around_new"
.field private static final SERVER_URL_GetAROUNDPEOPLE:Ljava/lang/String; = "https://open.t.qq.com/api/lbs/get_around_people"
.method public constructor <init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
return-void
.end method
.method public getAroundNew(Landroid/content/Context;Ljava/lang/String;DDLjava/lang/String;ILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 20
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
const-string/jumbo v0, "longitude"
invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "latitude"
invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "pageinfo"
invoke-virtual {v3, v0, p7}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "pagesize"
invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "https://open.t.qq.com/api/lbs/get_around_new"
const-string/jumbo v6, "POST"
move-object v0, p0
move-object v1, p1
move-object/from16 v4, p9
move-object/from16 v5, p10
move/from16 v7, p11
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/LbsAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public getAroundPeople(Landroid/content/Context;Ljava/lang/String;DDLjava/lang/String;IILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 21
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
const-string/jumbo v0, "longitude"
invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "latitude"
invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "pageinfo"
invoke-virtual {v3, v0, p7}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "pagesize"
invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "gender"
invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "https://open.t.qq.com/api/lbs/get_around_people"
const-string/jumbo v6, "POST"
move-object v0, p0
move-object v1, p1
move-object/from16 v4, p10
move-object/from16 v5, p11
move/from16 v7, p12
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/LbsAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method