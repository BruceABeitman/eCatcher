.class public Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "ChangeParentEffectEvent.java"
.field private mEffect:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;->mEffect:Ljava/lang/String;
return-void
.end method
.method public getEffect()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;->mEffect:Ljava/lang/String;
return-object v0
.end method