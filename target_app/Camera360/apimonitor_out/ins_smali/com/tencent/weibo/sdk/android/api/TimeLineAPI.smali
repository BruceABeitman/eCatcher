.class public Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;
.super Lcom/tencent/weibo/sdk/android/api/BaseAPI;
.source "TimeLineAPI.java"
.field private static final SERVER_URL_HOMETIMELINE:Ljava/lang/String; = "https://open.t.qq.com/api/statuses/home_timeline"
.field private static final SERVER_URL_HTTIMELINE:Ljava/lang/String; = "https://open.t.qq.com/api/statuses/ht_timeline_ext"
.field private static final SERVER_URL_USERTIMELINE:Ljava/lang/String; = "https://open.t.qq.com/api/statuses/user_timeline"
.method public constructor <init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
return-void
.end method
.method public getHTTimeLine(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 24
new-instance v4, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
const-string/jumbo v1, "scope"
const-string/jumbo v2, "all"
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "clientip"
invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "oauth_version"
const-string/jumbo v2, "2.a"
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "oauth_consumer_key"
const-string/jumbo v2, "CLIENT_ID"
invoke-static {p1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "openid"
const-string/jumbo v2, "OPEN_ID"
invoke-static {p1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "format"
invoke-virtual {v4, v1, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "pageflag"
invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "reqnum"
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "tweetid"
invoke-virtual {v4, v1, p4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "time"
invoke-virtual {v4, v1, p5}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "flag"
invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
if-eqz p8, :cond_80
const-string/jumbo v1, ""
move-object/from16 v0, p8
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_80
const-string/jumbo v1, "httext"
move-object/from16 v0, p8
invoke-virtual {v4, v1, v0}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_80
if-eqz p9, :cond_a0
const-string/jumbo v1, ""
move-object/from16 v0, p9
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_a0
const-string/jumbo v1, "0"
move-object/from16 v0, p9
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_a0
const-string/jumbo v1, "htid"
move-object/from16 v0, p9
invoke-virtual {v4, v1, v0}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_a0
const-string/jumbo v1, "type"
invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "contenttype"
invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v3, "https://open.t.qq.com/api/statuses/ht_timeline_ext"
const-string/jumbo v7, "GET"
move-object v1, p0
move-object v2, p1
move-object/from16 v5, p12
move-object/from16 v6, p13
move/from16 v8, p14
invoke-virtual/range {v1 .. v8}, Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public getHomeTimeLine(Landroid/content/Context;IIIIILjava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
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
invoke-virtual {v3, v0, p7}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "pageflag"
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "type"
invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "reqnum"
invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "pagetime"
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "contenttype"
invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "https://open.t.qq.com/api/statuses/home_timeline"
const-string/jumbo v6, "GET"
move-object v0, p0
move-object v1, p1
move-object/from16 v4, p8
move-object/from16 v5, p9
move/from16 v7, p10
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public getUserTimeLine(Landroid/content/Context;IIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 23
new-instance v4, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
const-string/jumbo v1, "scope"
const-string/jumbo v2, "all"
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "clientip"
invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "oauth_version"
const-string/jumbo v2, "2.a"
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "oauth_consumer_key"
const-string/jumbo v2, "CLIENT_ID"
invoke-static {p1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "openid"
const-string/jumbo v2, "OPEN_ID"
invoke-static {p1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "format"
move-object/from16 v0, p10
invoke-virtual {v4, v1, v0}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "pageflag"
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "pagetime"
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "reqnum"
invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "lastid"
invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
if-eqz p6, :cond_7c
const-string/jumbo v1, ""
invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_7c
const-string/jumbo v1, "name"
invoke-virtual {v4, v1, p6}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_7c
if-eqz p7, :cond_91
const-string/jumbo v1, ""
move-object/from16 v0, p7
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_91
const-string/jumbo v1, "fopenid"
move-object/from16 v0, p7
invoke-virtual {v4, v1, v0}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
:cond_91
const-string/jumbo v1, "type"
invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "contenttype"
invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v3, "https://open.t.qq.com/api/statuses/user_timeline"
const-string/jumbo v7, "GET"
move-object v1, p0
move-object v2, p1
move-object/from16 v5, p11
move-object/from16 v6, p12
move/from16 v8, p13
invoke-virtual/range {v1 .. v8}, Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method