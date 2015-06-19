.class Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$1;
.super Ljava/lang/Object;
.source "CloudSettingsForUploadSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$1;->this$0:Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$1;->this$0:Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;

    #getter for: Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->access$0(Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;)Lcom/pinguo/camera360/ui/CustomCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$1;->this$0:Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;

    #getter for: Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->access$0(Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;)Lcom/pinguo/camera360/ui/CustomCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    :cond_19
    return-void
.end method
