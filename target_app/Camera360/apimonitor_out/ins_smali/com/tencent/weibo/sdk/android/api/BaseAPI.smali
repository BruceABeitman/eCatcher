.class public abstract Lcom/tencent/weibo/sdk/android/api/BaseAPI;
.super Ljava/lang/Object;
.source "BaseAPI.java"
.field public static final API_SERVER:Ljava/lang/String; = "https://open.t.qq.com/api"
.field public static final HTTPMETHOD_GET:Ljava/lang/String; = "GET"
.field public static final HTTPMETHOD_POST:Ljava/lang/String; = "POST"
.field public static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"
.field public static final REQUEST_METHOD_POST:Ljava/lang/String; = "POST"
.field private callback:Lcom/tencent/weibo/sdk/android/network/HttpCallback;
.field private mAccessToken:Ljava/lang/String;
.field private mAccount:Lcom/tencent/weibo/sdk/android/model/AccountModel;
.field private mContext:Landroid/content/Context;
.field private mParams:Lcom/tencent/weibo/sdk/android/network/ReqParam;
.field private mRequestMethod:Ljava/lang/String;
.field private mRequestUrl:Ljava/lang/String;
.field private mResultType:I
.field private mmCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;
.field private mmTargetClass:Ljava/lang/Class;
.field private weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
.method public constructor <init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;
invoke-direct {v0, p0}, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;-><init>(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->callback:Lcom/tencent/weibo/sdk/android/network/HttpCallback;
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mAccount:Lcom/tencent/weibo/sdk/android/model/AccountModel;
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mAccount:Lcom/tencent/weibo/sdk/android/model/AccountModel;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mAccount:Lcom/tencent/weibo/sdk/android/model/AccountModel;
invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/model/AccountModel;->getAccessToken()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mAccessToken:Ljava/lang/String;
:cond_18
return-void
.end method
.method static synthetic access$0(Lcom/tencent/weibo/sdk/android/api/BaseAPI;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mAccessToken:Ljava/lang/String;
return-void
.end method
.method static synthetic access$1(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$10(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
return-object v0
.end method
.method static synthetic access$2(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mRequestUrl:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Lcom/tencent/weibo/sdk/android/network/HttpCallback;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mmCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;
return-object v0
.end method
.method static synthetic access$4(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mmTargetClass:Ljava/lang/Class;
return-object v0
.end method
.method static synthetic access$5(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mRequestMethod:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$6(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)I
.registers 2
iget v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mResultType:I
return v0
.end method
.method static synthetic access$7(Lcom/tencent/weibo/sdk/android/api/BaseAPI;Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
return-void
.end method
.method static synthetic access$8(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Lcom/tencent/weibo/sdk/android/network/ReqParam;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mParams:Lcom/tencent/weibo/sdk/android/network/ReqParam;
return-object v0
.end method
.method static synthetic access$9(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mAccessToken:Ljava/lang/String;
return-object v0
.end method
.method private refreshToken(Landroid/content/Context;)Lcom/tencent/weibo/sdk/android/network/ReqParam;
.registers 8
new-instance v1, Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V
const-string/jumbo v4, "CLIENT_ID"
invoke-static {p1, v4}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v4, "REFRESH_TOKEN"
invoke-static {p1, v4}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v4, "client_id"
invoke-virtual {v1, v4, v0}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "grant_type"
const-string/jumbo v5, "refresh_token"
invoke-virtual {v1, v4, v5}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "refresh_token"
invoke-virtual {v1, v4, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v4
double-to-int v4, v4
mul-int/lit16 v4, v4, 0x3e8
add-int/lit8 v3, v4, 0x6f
const-string/jumbo v4, "state"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v1, v4, v5}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
return-object v1
.end method
.method public isAuthorizeExpired(Landroid/content/Context;)Z
.registers 11
const/4 v3, 0x0
const-string/jumbo v5, "AUTHORIZETIME"
invoke-static {p1, v5}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "===== : "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
const-string/jumbo v5, "EXPIRES_IN"
invoke-static {p1, v5}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "====== : "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
const-wide/16 v7, 0x3e8
div-long v1, v5, v7
if-eqz v4, :cond_5b
if-eqz v0, :cond_5b
invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v5
invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
move-result-wide v7
add-long/2addr v5, v7
cmp-long v5, v5, v1
if-gez v5, :cond_5b
const/4 v3, 0x1
:cond_5b
return v3
.end method
.method protected startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V
.registers 19
invoke-virtual {p0, p1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->isAuthorizeExpired(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_43
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mRequestUrl:Ljava/lang/String;
iput-object p3, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mParams:Lcom/tencent/weibo/sdk/android/network/ReqParam;
iput-object p4, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mmCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;
move-object/from16 v0, p5
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mmTargetClass:Ljava/lang/Class;
move-object/from16 v0, p6
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mRequestMethod:Ljava/lang/String;
move/from16 v0, p7
iput v0, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mResultType:I
const-string/jumbo v3, "https://open.t.qq.com/cgi-bin/oauth2/access_token"
new-instance v1, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
iget-object v4, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->callback:Lcom/tencent/weibo/sdk/android/network/HttpCallback;
const/4 v5, 0x0
const-string/jumbo v6, "GET"
const/4 v2, 0x4
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
move-object v2, p1
invoke-direct/range {v1 .. v7}, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)V
iput-object v1, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
invoke-direct {p0, p1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->refreshToken(Landroid/content/Context;)Lcom/tencent/weibo/sdk/android/network/ReqParam;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->setParam(Lcom/tencent/weibo/sdk/android/network/ReqParam;)V
invoke-static {}, Lcom/tencent/weibo/sdk/android/network/HttpService;->getInstance()Lcom/tencent/weibo/sdk/android/network/HttpService;
move-result-object v1
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
invoke-virtual {v1, v2}, Lcom/tencent/weibo/sdk/android/network/HttpService;->addImmediateReq(Lcom/tencent/weibo/sdk/android/network/HttpReq;)V
:goto_42
return-void
:cond_43
new-instance v4, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
move-object v5, p1
move-object v6, p2
move-object v7, p4
move-object/from16 v8, p5
move-object/from16 v9, p6
invoke-direct/range {v4 .. v10}, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)V
iput-object v4, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
const-string/jumbo v1, "access_token"
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mAccessToken:Ljava/lang/String;
invoke-virtual {p3, v1, v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
invoke-virtual {v1, p3}, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->setParam(Lcom/tencent/weibo/sdk/android/network/ReqParam;)V
invoke-static {}, Lcom/tencent/weibo/sdk/android/network/HttpService;->getInstance()Lcom/tencent/weibo/sdk/android/network/HttpService;
move-result-object v1
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
invoke-virtual {v1, v2}, Lcom/tencent/weibo/sdk/android/network/HttpService;->addImmediateReq(Lcom/tencent/weibo/sdk/android/network/HttpReq;)V
goto :goto_42
.end method