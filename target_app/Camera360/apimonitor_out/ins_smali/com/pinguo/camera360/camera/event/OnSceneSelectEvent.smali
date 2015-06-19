.class public Lcom/pinguo/camera360/camera/event/OnSceneSelectEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "OnSceneSelectEvent.java"
.field private mSceneTemplate:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
.method public constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/camera/event/OnSceneSelectEvent;->mSceneTemplate:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
return-void
.end method
.method public getSceneTemplate()Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/event/OnSceneSelectEvent;->mSceneTemplate:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
return-object v0
.end method