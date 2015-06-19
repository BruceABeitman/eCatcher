.class public Lcom/pinguo/camera360/login/model/EmailCheck;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "EmailCheck.java"
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;
invoke-direct {v0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V
return-void
.end method
.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/model/EmailCheck;->adapte(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public adapte(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;)Ljava/lang/Void;
.registers 5
iget v0, p1, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;->status:I
const/16 v1, 0xc8
if-eq v0, v1, :cond_c
iget v0, p1, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;->status:I
const/16 v1, 0x2919
if-ne v0, v1, :cond_e
:cond_c
const/4 v0, 0x0
return-object v0
:cond_e
new-instance v0, Lcom/pinguo/lib/os/Fault;
iget v1, p1, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;->status:I
iget-object v2, p1, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;->message:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V
throw v0
.end method