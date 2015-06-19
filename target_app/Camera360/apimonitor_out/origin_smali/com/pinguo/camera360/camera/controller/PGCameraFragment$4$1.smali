.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "adjust_preview"

    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
