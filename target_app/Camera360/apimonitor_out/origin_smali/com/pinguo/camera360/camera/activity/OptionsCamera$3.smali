.class Lcom/pinguo/camera360/camera/activity/OptionsCamera$3;
.super Ljava/lang/Object;
.source "OptionsCamera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/OptionsCamera;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

.field private final synthetic val$adjustHaveFront:Z


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;Z)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$3;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

    iput-boolean p2, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$3;->val$adjustHaveFront:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setClickPreviewAdjustIcon(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$3;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$3;->val$adjustHaveFront:Z

    #calls: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->adjustPreview(IZ)V
    invoke-static {v0, p2, v1}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsCamera;IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$3;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$1(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V

    return-void
.end method
