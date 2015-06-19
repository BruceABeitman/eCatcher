.class public Lcom/pinguo/camera360/order/event/WXPayResultEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "WXPayResultEvent.java"


# instance fields
.field public errCode:I

.field public extraData:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/order/event/WXPayResultEvent;->errCode:I

    iput-object p2, p0, Lcom/pinguo/camera360/order/event/WXPayResultEvent;->extraData:Ljava/lang/String;

    return-void
.end method
