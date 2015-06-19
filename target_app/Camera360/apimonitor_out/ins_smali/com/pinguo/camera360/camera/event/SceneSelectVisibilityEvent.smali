.class public Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "SceneSelectVisibilityEvent.java"
.field private mVisibility:I
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V
const/16 v0, 0x8
iput v0, p0, Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;->mVisibility:I
iput p1, p0, Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;->mVisibility:I
return-void
.end method
.method public getVisibility()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;->mVisibility:I
return v0
.end method