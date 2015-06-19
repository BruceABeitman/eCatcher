.class public Lcom/pinguo/camera360/order/OrderDetailPayResultActivity;
.super Lcom/pinguo/camera360/order/PayResultActivity;
.source "OrderDetailPayResultActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/PayResultActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/pinguo/camera360/order/PayResultActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailPayResultActivity;->mBackToCamera:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
