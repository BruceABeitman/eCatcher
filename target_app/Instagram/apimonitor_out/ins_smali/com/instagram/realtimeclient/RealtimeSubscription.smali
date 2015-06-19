.class public Lcom/instagram/realtimeclient/RealtimeSubscription;
.super Ljava/lang/Object;
.source "RealtimeSubscription.java"
.field private mAuthToken:Ljava/lang/String;
.field private mSequence:Ljava/lang/String;
.field private mTopic:Ljava/lang/String;
.field private mURL:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getAuthToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mAuthToken:Ljava/lang/String;
return-object v0
.end method
.method public getSequence()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mSequence:Ljava/lang/String;
return-object v0
.end method
.method public getTopic()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mTopic:Ljava/lang/String;
return-object v0
.end method
.method public getURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mURL:Ljava/lang/String;
return-object v0
.end method
.method public isValid()Z
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mURL:Ljava/lang/String;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mTopic:Ljava/lang/String;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mSequence:Ljava/lang/String;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mAuthToken:Ljava/lang/String;
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public setAuthToken(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mAuthToken:Ljava/lang/String;
return-void
.end method
.method public setSequence(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mSequence:Ljava/lang/String;
return-void
.end method
.method public setTopic(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mTopic:Ljava/lang/String;
return-void
.end method
.method public setURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mURL:Ljava/lang/String;
return-void
.end method
.method public updateSequence(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mSequence:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/instagram/realtimeclient/RealtimePatchEvent;->compareSequences(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_a
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mSequence:Ljava/lang/String;
:cond_a
return-void
.end method
.method public updateWithSubscription(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
.registers 4
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mTopic:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getTopic()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getURL()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mURL:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getAuthToken()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscription;->mAuthToken:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getSequence()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;->updateSequence(Ljava/lang/String;)V
:cond_1f
return-void
.end method