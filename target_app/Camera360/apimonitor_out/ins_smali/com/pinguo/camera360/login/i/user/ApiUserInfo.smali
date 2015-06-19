.class public Lcom/pinguo/camera360/login/i/user/ApiUserInfo;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiUserInfo.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/login/i/user/ApiUserInfo;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/login/i/user/ApiUserInfo;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 9
new-instance v5, Ljava/lang/StringBuilder;
sget-object v6, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "/api/user/info"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iget-object v5, p0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->mContext:Landroid/content/Context;
invoke-static {v5, v1}, Lcom/pinguo/camera360/login/model/LoginConfig;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v5, "sig"
invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_2a
invoke-static {v4, v1}, Lcom/pinguo/lib/network/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v2
new-instance v5, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;
const/4 v6, 0x0
invoke-direct {v5, p0, v6, v2, p1}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;-><init>(Lcom/pinguo/camera360/login/i/user/ApiUserInfo;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
:try_end_37
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2a .. :try_end_37} :catch_38
:goto_37
return-void
:catch_38
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
goto :goto_37
.end method