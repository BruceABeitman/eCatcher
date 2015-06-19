.class public Lcom/pinguo/camera360/order/event/OrderSwitcherEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "OrderSwitcherEvent.java"


# instance fields
.field private mTurnedOff:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/order/event/OrderSwitcherEvent;->mTurnedOff:Z

    iput-boolean p1, p0, Lcom/pinguo/camera360/order/event/OrderSwitcherEvent;->mTurnedOff:Z

    return-void
.end method


# virtual methods
.method public isTurnedOff()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/order/event/OrderSwitcherEvent;->mTurnedOff:Z

    return v0
.end method
