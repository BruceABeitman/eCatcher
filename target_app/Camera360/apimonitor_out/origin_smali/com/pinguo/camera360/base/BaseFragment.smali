.class public Lcom/pinguo/camera360/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;


# instance fields
.field protected mIsPausing:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseFragment;->mIsPausing:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseFragment;->mIsPausing:Z

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseFragment;->mIsPausing:Z

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseFragment;->mIsPausing:Z

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    return-void
.end method
