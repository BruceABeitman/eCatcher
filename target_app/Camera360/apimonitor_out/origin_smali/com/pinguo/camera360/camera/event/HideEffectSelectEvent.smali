.class public Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "HideEffectSelectEvent.java"


# instance fields
.field private mIsFromCancel:Z

.field private mNeedAnimation:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;->mNeedAnimation:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;->mIsFromCancel:Z

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;->mNeedAnimation:Z

    iput-boolean p2, p0, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;->mIsFromCancel:Z

    return-void
.end method


# virtual methods
.method public isFromCancel()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;->mIsFromCancel:Z

    return v0
.end method

.method public needAnimation()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;->mNeedAnimation:Z

    return v0
.end method
