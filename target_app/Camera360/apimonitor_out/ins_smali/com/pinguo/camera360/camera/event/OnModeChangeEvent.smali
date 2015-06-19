.class public Lcom/pinguo/camera360/camera/event/OnModeChangeEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "OnModeChangeEvent.java"
.field  mModeId:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/event/OnModeChangeEvent;->mModeId:Ljava/lang/String;
iput-object p1, p0, Lcom/pinguo/camera360/camera/event/OnModeChangeEvent;->mModeId:Ljava/lang/String;
return-void
.end method
.method public getModeId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/event/OnModeChangeEvent;->mModeId:Ljava/lang/String;
return-object v0
.end method