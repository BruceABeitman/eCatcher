.class public Lcom/pinguo/camera360/login/model/GetUserInfo;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "GetUserInfo.java"
.field private mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
new-instance v0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;-><init>(Landroid/content/Context;)V
invoke-direct {p0, v0}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V
iput-object p1, p0, Lcom/pinguo/camera360/login/model/GetUserInfo;->mContext:Landroid/content/Context;
return-void
.end method
.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/model/GetUserInfo;->adapte(Lcom/pinguo/camera360/login/i/user/UserInfoResponse;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public adapte(Lcom/pinguo/camera360/login/i/user/UserInfoResponse;)Ljava/lang/Void;
.registers 8
iget v3, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->status:I
const/16 v4, 0xc8
if-ne v3, v4, :cond_37
iget-object v3, p0, Lcom/pinguo/camera360/login/model/GetUserInfo;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z
move-result v3
if-nez v3, :cond_1b
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string/jumbo v4, "\u7528\u6237\u4e0d\u5408\u6cd5"
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_1b
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v0
iget-object v1, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v1, Lcom/pinguo/camera360/login/model/User$Info;
iget-object v3, v0, Lcom/pinguo/camera360/login/model/User$Info;->loginmode:Ljava/lang/String;
iput-object v3, v1, Lcom/pinguo/camera360/login/model/User$Info;->loginmode:Ljava/lang/String;
iget-object v3, v0, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
iput-object v3, v1, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
new-instance v2, Lcom/pinguo/camera360/login/model/User;
iget-object v3, p0, Lcom/pinguo/camera360/login/model/GetUserInfo;->mContext:Landroid/content/Context;
invoke-direct {v2, v3, v1}, Lcom/pinguo/camera360/login/model/User;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/login/model/User$Info;)V
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->save()V
const/4 v3, 0x0
return-object v3
:cond_37
new-instance v3, Lcom/pinguo/lib/os/Fault;
iget v4, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->status:I
iget-object v5, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->message:Ljava/lang/String;
invoke-direct {v3, v4, v5}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V
throw v3
.end method