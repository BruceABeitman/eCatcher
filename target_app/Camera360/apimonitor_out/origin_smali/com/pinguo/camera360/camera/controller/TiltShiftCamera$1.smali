.class Lcom/pinguo/camera360/camera/controller/TiltShiftCamera$1;
.super Ljava/lang/Object;
.source "TiltShiftCamera.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->access$0(Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->access$1(Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTiltShitTipsOn(Z)V

    return v1
.end method
