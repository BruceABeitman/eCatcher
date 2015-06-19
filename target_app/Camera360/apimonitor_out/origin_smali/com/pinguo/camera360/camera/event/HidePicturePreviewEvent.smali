.class public Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "HidePicturePreviewEvent.java"


# instance fields
.field public eventFromCancel:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->eventFromCancel:Z

    return-void
.end method
