.class public Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;
.super Ljava/lang/Object;
.source "RealtimeSubscribeCommand.java"
.field public auth:Ljava/lang/String;
.field public sequence:Ljava/lang/String;
.field public topic:Ljava/lang/String;
.method public constructor <init>(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getTopic()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->topic:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getSequence()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->sequence:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getAuthToken()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->auth:Ljava/lang/String;
return-void
.end method