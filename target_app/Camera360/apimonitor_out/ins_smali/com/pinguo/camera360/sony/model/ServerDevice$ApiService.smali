.class public Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;
.super Ljava/lang/Object;
.source "ServerDevice.java"
.field private mActionListUrl:Ljava/lang/String;
.field private mName:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mName:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mActionListUrl:Ljava/lang/String;
return-void
.end method
.method public getActionListUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mActionListUrl:Ljava/lang/String;
return-object v0
.end method
.method public getEndpointUrl()Ljava/lang/String;
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mActionListUrl:Ljava/lang/String;
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mName:Ljava/lang/String;
if-nez v1, :cond_b
:cond_9
const/4 v0, 0x0
:goto_a
return-object v0
:cond_b
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mActionListUrl:Ljava/lang/String;
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2c
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mActionListUrl:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
:cond_2c
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mActionListUrl:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mName:Ljava/lang/String;
return-object v0
.end method
.method public setActionListUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mActionListUrl:Ljava/lang/String;
return-void
.end method
.method public setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->mName:Ljava/lang/String;
return-void
.end method