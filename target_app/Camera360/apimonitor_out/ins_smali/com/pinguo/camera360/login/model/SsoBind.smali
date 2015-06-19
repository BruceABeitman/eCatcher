.class public Lcom/pinguo/camera360/login/model/SsoBind;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "SsoBind.java"
.field private mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
invoke-direct {v0, p1, p2, p3}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V
iput-object p1, p0, Lcom/pinguo/camera360/login/model/SsoBind;->mContext:Landroid/content/Context;
return-void
.end method
.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/model/SsoBind;->adapte(Lcom/pinguo/camera360/login/i/user/UserInfoResponse;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public adapte(Lcom/pinguo/camera360/login/i/user/UserInfoResponse;)Ljava/lang/Void;
.registers 7
iget v2, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->status:I
const/16 v3, 0xc8
if-ne v2, v3, :cond_1d
iget-object v2, p0, Lcom/pinguo/camera360/login/model/SsoBind;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v0
iget-object v2, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v2, Lcom/pinguo/camera360/login/model/User$Info;
iget-object v2, v2, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
iput-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->save()V
const/4 v2, 0x0
return-object v2
:cond_1d
new-instance v2, Lcom/pinguo/lib/os/Fault;
iget v3, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->status:I
iget-object v4, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->message:Ljava/lang/String;
invoke-direct {v2, v3, v4}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V
throw v2
.end method