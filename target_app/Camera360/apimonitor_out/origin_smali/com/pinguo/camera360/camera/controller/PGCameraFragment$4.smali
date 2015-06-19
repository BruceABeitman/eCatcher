.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15

    const v11, 0x7f0802c0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdjustPreviewOriIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setClickPreviewAdjustIcon(Z)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, "("

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, ")"

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;

    const v1, 0x666666

    const/16 v2, 0xb

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;-><init>(IIIIII)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v7, 0x7f0802c1

    const v8, 0x7f0802c2

    new-instance v9, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1;

    invoke-direct {v9, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;)V

    new-instance v10, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$2;

    invoke-direct {v10, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$2;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;)V

    move v6, v11

    move-object v11, v0

    invoke-static/range {v5 .. v11}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    return-void
.end method
