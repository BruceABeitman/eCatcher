.class public Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiChangeNickname.java"
.field private mNickname:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;->mNickname:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;->mNickname:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;->mNickname:Ljava/lang/String;
if-nez v1, :cond_10
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string/jumbo v2, "nickname\u4e0d\u5408\u6cd5"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, p1, v1}, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
:goto_f
return-void
:cond_10
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/api/user/updateInfo"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname$1;
const/4 v2, 0x1
invoke-direct {v1, p0, v2, v0, p1}, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname$1;-><init>(Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
goto :goto_f
.end method