.class public Lcom/tencent/weibo/sdk/android/api/WeiboAPI;
.super Lcom/tencent/weibo/sdk/android/api/BaseAPI;
.source "WeiboAPI.java"
.field private static final SERVER_URL_ADD:Ljava/lang/String; = "https://open.t.qq.com/api/t/add_multi"
.field private static final SERVER_URL_ADDPIC:Ljava/lang/String; = "https://open.t.qq.com/api/t/add_pic"
.field private static final SERVER_URL_ADDPICURL:Ljava/lang/String; = "https://open.t.qq.com/api/t/add_pic_url"
.field private static final SERVER_URL_ADDWEIBO:Ljava/lang/String; = "https://open.t.qq.com/api/t/add"
.field private static final SERVER_URL_RLIST:Ljava/lang/String; = "https://open.t.qq.com/api/t/re_list"
.field private static final SERVER_URL_VIDEO:Ljava/lang/String; = "https://open.t.qq.com/api/t/getvideoinfo"
.method public constructor <init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
return-void
.end method
.method public addPic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DDLandroid/graphics/Bitmap;IILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 24
new-instance v4, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
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
const-string/jumbo v1, "scope"
const-string/jumbo v2, "all"
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "format"
invoke-virtual {v4, v1, p3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p2, :cond_42
const-string/jumbo v1, ""
invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_45
:cond_42
const-string/jumbo p2, "#\u5206\u4eab\u56fe\u7247#"
:cond_45
const-string/jumbo v1, "content"
invoke-virtual {v4, v1, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "clientip"
invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v1, 0x0
cmpl-double v1, p4, v1
if-eqz v1, :cond_65
const-string/jumbo v1, "longitude"
invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
:cond_65
const-wide/16 v1, 0x0
cmpl-double v1, p6, v1
if-eqz v1, :cond_75
const-string/jumbo v1, "latitude"
invoke-static/range {p6 .. p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
:cond_75
const-string/jumbo v1, "syncflag"
invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "compatibleflag"
invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
move-object/from16 v0, p8
invoke-virtual {v4, v0}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->setBitmap(Landroid/graphics/Bitmap;)V
new-instance v9, Ljava/io/ByteArrayOutputStream;
invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v2, 0x64
move-object/from16 v0, p8
invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
const-string/jumbo v1, "pic"
invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;[B)V
const-string/jumbo v3, "https://open.t.qq.com/api/t/add_pic"
const-string/jumbo v7, "POST"
move-object v1, p0
move-object v2, p1
move-object/from16 v5, p11
move-object/from16 v6, p12
move/from16 v8, p13
invoke-virtual/range {v1 .. v8}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public addPicUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;IILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 23
new-instance v4, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
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
const-string/jumbo v1, "scope"
const-string/jumbo v2, "all"
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "format"
invoke-virtual {v4, v1, p3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "content"
invoke-virtual {v4, v1, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "clientip"
invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v1, 0x0
cmpl-double v1, p4, v1
if-eqz v1, :cond_57
const-string/jumbo v1, "longitude"
invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
:cond_57
const-wide/16 v1, 0x0
cmpl-double v1, p6, v1
if-eqz v1, :cond_67
const-string/jumbo v1, "latitude"
invoke-static/range {p6 .. p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
:cond_67
const-string/jumbo v1, "syncflag"
invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "compatibleflag"
invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "pic_url"
move-object/from16 v0, p8
invoke-virtual {v4, v1, v0}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "https://open.t.qq.com/api/t/add_pic_url"
const-string/jumbo v7, "POST"
move-object v1, p0
move-object v2, p1
move-object/from16 v5, p11
move-object/from16 v6, p12
move/from16 v8, p13
invoke-virtual/range {v1 .. v8}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public addWeibo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DDIILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 21
new-instance v3, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
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
const-string/jumbo v0, "scope"
const-string/jumbo v1, "all"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "format"
invoke-virtual {v3, v0, p3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "content"
invoke-virtual {v3, v0, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "clientip"
invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v0, 0x0
cmpl-double v0, p4, v0
if-eqz v0, :cond_57
const-string/jumbo v0, "longitude"
invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
:cond_57
const-wide/16 v0, 0x0
cmpl-double v0, p6, v0
if-eqz v0, :cond_67
const-string/jumbo v0, "latitude"
invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
:cond_67
const-string/jumbo v0, "syncflag"
invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v0, "compatibleflag"
invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "https://open.t.qq.com/api/t/add"
const-string/jumbo v6, "POST"
move-object v0, p0
move-object v1, p1
move-object/from16 v4, p10
move-object/from16 v5, p11
move/from16 v7, p12
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public getVideoInfo(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
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
const-string/jumbo v1, "json"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "video_url"
invoke-virtual {v3, v0, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "https://open.t.qq.com/api/t/getvideoinfo"
const-string/jumbo v6, "POST"
move-object v0, p0
move-object v1, p1
move-object v4, p3
move-object v5, p4
move v7, p5
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public reAddWeibo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 19
new-instance v3, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
const-string/jumbo v0, "scope"
const-string/jumbo v1, "all"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "content"
invoke-virtual {v3, v0, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "pic_url"
invoke-virtual {v3, v0, p3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "video_url"
invoke-virtual {v3, v0, p4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "music_url"
invoke-virtual {v3, v0, p5}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "music_title"
invoke-virtual {v3, v0, p6}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "music_author"
invoke-virtual {v3, v0, p7}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
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
const-string/jumbo v0, "pageflag"
const-string/jumbo v1, "0"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "type"
const-string/jumbo v1, "0"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "format"
const-string/jumbo v1, "json"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "reqnum"
const-string/jumbo v1, "30"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "pagetime"
const-string/jumbo v1, "0"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "contenttype"
const-string/jumbo v1, "0"
invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "https://open.t.qq.com/api/t/add_multi"
const-string/jumbo v6, "POST"
move-object v0, p0
move-object v1, p1
move-object/from16 v4, p8
move-object/from16 v5, p9
move/from16 v7, p10
invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method
.method public reList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
.registers 21
new-instance v4, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
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
const-string/jumbo v1, "scope"
const-string/jumbo v2, "all"
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "clientip"
invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "format"
invoke-virtual {v4, v1, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "flag"
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "rootid"
invoke-virtual {v4, v1, p4}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "pageflag"
invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "pagetime"
invoke-virtual {v4, v1, p6}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "reqnum"
invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v4, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "twitterid"
move-object/from16 v0, p8
invoke-virtual {v4, v1, v0}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "https://open.t.qq.com/api/t/re_list"
const-string/jumbo v7, "GET"
move-object v1, p0
move-object v2, p1
move-object/from16 v5, p9
move-object/from16 v6, p10
move/from16 v8, p11
invoke-virtual/range {v1 .. v8}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
return-void
.end method