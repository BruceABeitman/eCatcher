.class public Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "EffectSelectVisibilityEvent.java"
.field private mIsFromCancel:Z
.field private mVisibility:I
.method public constructor <init>(IZ)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V
const/16 v0, 0x8
iput v0, p0, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->mVisibility:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->mIsFromCancel:Z
iput p1, p0, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->mVisibility:I
iput-boolean p2, p0, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->mIsFromCancel:Z
return-void
.end method
.method public getVisibility()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->mVisibility:I
return v0
.end method
.method public isFromCancel()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->mIsFromCancel:Z
return v0
.end method