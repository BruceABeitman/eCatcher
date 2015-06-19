.class public Lcom/pinguo/camera360/login/model/ModifyPassword;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "ModifyPassword.java"
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
new-instance v0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V
return-void
.end method
.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/model/ModifyPassword;->adapte(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public adapte(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;)Ljava/lang/String;
.registers 5
iget v0, p1, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;->status:I
const/16 v1, 0xc8
if-ne v0, v1, :cond_d
iget-object v0, p1, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;->data:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response$Data;
iget-object v0, v0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response$Data;->token:Ljava/lang/String;
return-object v0
:cond_d
new-instance v0, Lcom/pinguo/lib/os/Fault;
iget v1, p1, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;->status:I
iget-object v2, p1, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;->message:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V
throw v0
.end method