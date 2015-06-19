.class public Lcom/pinguo/camera360/order/event/WXTimelineResultEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "WXTimelineResultEvent.java"


# instance fields
.field public code:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/order/event/WXTimelineResultEvent;->code:I

    return-void
.end method
