.class public Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "OnSubEffectSelectEvent.java"
.field private mEffect:Ljava/lang/String;
.field private mFromTag:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;->mEffect:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;->mFromTag:Ljava/lang/String;
return-void
.end method
.method public getEffect()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;->mEffect:Ljava/lang/String;
return-object v0
.end method
.method public getFromTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;->mFromTag:Ljava/lang/String;
return-object v0
.end method