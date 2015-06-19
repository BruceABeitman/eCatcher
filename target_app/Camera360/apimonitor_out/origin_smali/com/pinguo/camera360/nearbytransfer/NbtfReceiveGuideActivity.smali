.class public Lcom/pinguo/camera360/nearbytransfer/NbtfReceiveGuideActivity;
.super Landroid/app/Activity;
.source "NbtfReceiveGuideActivity.java"


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

    const v1, 0x7f0300bc

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/NbtfReceiveGuideActivity;->setContentView(I)V

    const v1, 0x7f0a042e

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/NbtfReceiveGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    new-instance v1, Lcom/pinguo/camera360/nearbytransfer/NbtfReceiveGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfReceiveGuideActivity$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/NbtfReceiveGuideActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    return-void
.end method
