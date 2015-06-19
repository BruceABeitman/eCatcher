.class  Lcom/glympse/android/lib/eq;
.super Ljava/lang/Object;
.source "InviteLite.java"
.implements Lcom/glympse/android/lite/GInviteLite;
.field private mC:Lcom/glympse/android/api/GInvite;
.method public constructor <init>(Lcom/glympse/android/api/GInvite;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/eq;->mC:Lcom/glympse/android/api/GInvite;
return-void
.end method
.method public getAddress()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/eq;->mC:Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCreatedTime()J
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/eq;->mC:Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCreatedTime()J
move-result-wide v0
return-wide v0
.end method
.method public getLastViewTime()J
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/eq;->mC:Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getLastViewTime()J
move-result-wide v0
return-wide v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/eq;->mC:Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getType()I
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/eq;->mC:Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getType()I
move-result v0
return v0
.end method
.method public getUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/eq;->mC:Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getUrl()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getViewers()I
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/eq;->mC:Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getViewers()I
move-result v0
return v0
.end method