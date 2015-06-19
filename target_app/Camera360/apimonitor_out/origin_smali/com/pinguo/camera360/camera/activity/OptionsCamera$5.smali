.class Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;
.super Ljava/lang/Object;
.source "OptionsCamera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/OptionsCamera;->showCompatibilityModeMsgDialog(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

.field private final synthetic val$compatibilityModeType:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

    iput p2, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    :cond_a
    iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCompatibilityMode(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPicEditCompatibilityMode(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

    #calls: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->updateCompatibilityModeText()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$3(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)V

    :cond_1d
    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$1(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V

    return-void
.end method
