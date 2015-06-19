.class Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$IntentViewHolder;
.super Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
.source "IntentPGCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;Landroid/view/View;)V
    .registers 10

    const v6, 0x3e3851ec

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$IntentViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;Landroid/view/View;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$IntentViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setEnabled(Z)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$IntentViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setEnabled(Z)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$IntentViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getThumbNailBtn()Lcom/pinguo/camera360/camera/view/ThumbnailView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setEnabled(Z)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->getForegroundView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    invoke-static {v2, v6}, Lcom/pinguo/lib/util/ViewUtils;->setViewAlpha(Landroid/view/View;F)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->getBackgroundView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/pinguo/lib/util/ViewUtils;->setViewAlpha(Landroid/view/View;F)V

    return-void
.end method
