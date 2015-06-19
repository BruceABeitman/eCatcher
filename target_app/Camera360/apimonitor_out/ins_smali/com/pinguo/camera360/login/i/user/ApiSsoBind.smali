.class public Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiSsoBind.java"
.field private mSiteCode:Ljava/lang/String;
.field public mTokenData:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V
iput-object p3, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->mTokenData:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->mSiteCode:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->mSiteCode:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/api/third/login/bindingSso"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;
const/4 v2, 0x1
invoke-direct {v1, p0, v2, v0, p1}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;-><init>(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
return-void
.end method