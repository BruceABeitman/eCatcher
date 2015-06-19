.class public Lcom/pinguo/camera360/order/OrderPayResultActivity;
.super Lcom/pinguo/camera360/order/PayResultActivity;
.source "OrderPayResultActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/PayResultActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/order/PayResultActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderPayResultActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->startCameraActivity(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03b3

    if-ne v0, v1, :cond_d

    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->startCameraActivity(Landroid/content/Context;)V

    :goto_c
    return-void

    :cond_d
    invoke-super {p0, p1}, Lcom/pinguo/camera360/order/PayResultActivity;->onClick(Landroid/view/View;)V

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/pinguo/camera360/order/PayResultActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/order/OrderPayResultActivity;->mBackToCameraFlag:Z

    return-void
.end method
