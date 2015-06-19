.class public Lcom/pinguo/camera360/nearbytransfer/NbtfSendGuideActivity;
.super Landroid/app/Activity;
.source "NbtfSendGuideActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0300bd

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/NbtfSendGuideActivity;->setContentView(I)V

    const v1, 0x7f0a042e

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/NbtfSendGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    new-instance v1, Lcom/pinguo/camera360/nearbytransfer/NbtfSendGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfSendGuideActivity$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/NbtfSendGuideActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    return-void
.end method
