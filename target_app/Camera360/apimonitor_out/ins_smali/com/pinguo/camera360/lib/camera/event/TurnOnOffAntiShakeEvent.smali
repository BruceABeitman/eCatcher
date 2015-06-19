.class public Lcom/pinguo/camera360/lib/camera/event/TurnOnOffAntiShakeEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "TurnOnOffAntiShakeEvent.java"
.field private mIsOn:Z
.method public constructor <init>(Z)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffAntiShakeEvent;->mIsOn:Z
return-void
.end method
.method public isAntiShakeOn()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffAntiShakeEvent;->mIsOn:Z
return v0
.end method