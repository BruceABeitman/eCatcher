.class public Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;
.super Landroid/app/Activity;
.source "CloudSettingsForUploadSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudSettingsForUploadSetting"


# instance fields
.field private mAdvanceCloudSettingTitle:Lcom/pinguo/camera360/ui/TitleView;

.field private mCloudSettingsForUploadAutoUpload:Landroid/widget/CheckBox;

.field private mCloudSettingsForUploadChargeSyn:Landroid/widget/CheckBox;

.field private mCloudSettingsForUploadChargeSynParent:Landroid/widget/RelativeLayout;

.field private mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

.field private mCloudSettingsForUploadOnlyWifiUploadParent:Landroid/widget/RelativeLayout;

.field private mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

.field private mCloudSettingsForUploadWifiAnd3gUploadParent:Landroid/widget/RelativeLayout;

.field private mLineOne:Landroid/widget/ImageView;

.field private mLineTwo:Landroid/widget/ImageView;

.field private mNegativeButton:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButton:Landroid/content/DialogInterface$OnClickListener;

.field private mSettingsPrompt:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

.field private mSyncSettingTitle:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$1;-><init>(Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mPositiveButton:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$2;-><init>(Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mNegativeButton:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;)Lcom/pinguo/camera360/ui/CustomCheckBox;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    return-object v0
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mAdvanceCloudSettingTitle:Lcom/pinguo/camera360/ui/TitleView;

    const v0, 0x7f0a017f

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadAutoUpload:Landroid/widget/CheckBox;

    const v0, 0x7f0a0182

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/CustomCheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/CustomCheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSyn:Landroid/widget/CheckBox;

    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSynParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0180

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineOne:Landroid/widget/ImageView;

    const v0, 0x7f0a0183

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineTwo:Landroid/widget/ImageView;

    const v0, 0x7f0a0181

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUploadParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUploadParent:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadAutoUpload:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSyn:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSyncSettingTitle:Landroid/view/View;

    return-void
.end method

.method private showDialogForSettingsPrompt()V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSettingsPrompt:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSettingsPrompt:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    const v1, 0x7f080271

    const v2, 0x7f080327

    const v3, 0x7f0802cd

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mNegativeButton:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mPositiveButton:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSettingsPrompt:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSettingsPrompt:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSettingsPrompt:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    goto :goto_c
.end method

.method private updateCloudSettingParameters()V
    .registers 8

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferencesForUploadSetting(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v5, "valve"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v5, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadAutoUpload:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_23

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->addNewFlagInMyCenter(I)V

    :cond_23
    iget-object v5, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v5}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4a

    const-string/jumbo v1, "WIFI3G"

    :goto_2e
    iget-object v5, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSyn:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v5, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadAutoUpload:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {p0, v1, v2, v4}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferencesForUploadSetting(Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->updateViewState()V

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->isCanUpload(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->startCloudUpload()V

    :goto_49
    return-void

    :cond_4a
    const-string/jumbo v1, ""

    goto :goto_2e

    :cond_4e
    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->stopCloudUpload()V

    goto :goto_49
.end method

.method private updateViewState()V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mAdvanceCloudSettingTitle:Lcom/pinguo/camera360/ui/TitleView;

    const v5, 0x7f08026c

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mAdvanceCloudSettingTitle:Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v4, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferencesForUploadSetting(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v4, "threeg"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v4, "onlyCharging"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v4, "valve"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b5

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadAutoUpload:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_50
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineOne:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5d
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6a
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineTwo:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_77

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineTwo:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_77
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSynParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_84

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSynParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_84
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSyncSettingTitle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_91

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSyncSettingTitle:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_91
    :goto_91
    if-eqz v2, :cond_109

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v4}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_a0

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v4, v8}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    :cond_a0
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v4}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_ad

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v4, v7}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    :cond_ad
    :goto_ad
    if-eqz v1, :cond_124

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSyn:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_b4
    return-void

    :cond_b5
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadAutoUpload:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_c7

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_c7
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_d4

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineOne:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d4
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_e1

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUploadParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_e1
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineTwo:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_ee

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mLineTwo:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_ee
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSynParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_fb

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSynParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_fb
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSyncSettingTitle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_91

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mSyncSettingTitle:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_91

    :cond_109
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v4}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_116

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v4, v7}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    :cond_116
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v4}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_ad

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v4, v8}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    goto :goto_ad

    :cond_124
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSyn:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_b4
.end method


# virtual methods
.method public onBackClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    const v1, 0x7f0a017f

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    :cond_c
    :goto_c
    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->updateCloudSettingParameters()V

    return-void

    :sswitch_10
    if-nez p2, :cond_16

    invoke-static {v1, v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCloudSet(IZ)V

    goto :goto_c

    :cond_16
    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCloudSet(IZ)V

    goto :goto_c

    :sswitch_1a
    if-eqz p2, :cond_2a

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    goto :goto_c

    :cond_2a
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    :cond_37
    const v1, 0x7f0a0182

    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCloudSet(IZ)V

    goto :goto_c

    :sswitch_3e
    if-eqz p2, :cond_4e

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    goto :goto_c

    :cond_4e
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    :cond_5b
    const v1, 0x7f0a0185

    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCloudSet(IZ)V

    goto :goto_c

    :sswitch_62
    const v1, 0x7f0a0188

    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCloudSet(IZ)V

    goto :goto_c

    nop

    :sswitch_data_6a
    .sparse-switch
        0x7f0a017f -> :sswitch_10
        0x7f0a0182 -> :sswitch_1a
        0x7f0a0185 -> :sswitch_3e
        0x7f0a0188 -> :sswitch_62
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    :cond_9
    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    const v1, 0x7f0a0185

    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCloudSet(IZ)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->showDialogForSettingsPrompt()V

    goto :goto_9

    :pswitch_1c
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v3}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    :cond_29
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadOnlyWifiUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/CustomCheckBox;->setChecked(Z)V

    const v1, 0x7f0a0182

    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCloudSet(IZ)V

    :cond_3c
    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->updateCloudSettingParameters()V

    goto :goto_9

    :pswitch_40
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadWifiAnd3gUpload:Lcom/pinguo/camera360/ui/CustomCheckBox;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/CustomCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->showDialogForSettingsPrompt()V

    goto :goto_9

    :pswitch_4c
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadAutoUpload:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadAutoUpload:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5a

    :goto_56
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    :cond_5a
    move v1, v2

    goto :goto_56

    :pswitch_5c
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSyn:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->mCloudSettingsForUploadChargeSyn:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6a

    :goto_66
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    :cond_6a
    move v1, v2

    goto :goto_66

    :pswitch_data_6c
    .packed-switch 0x7f0a017e
        :pswitch_4c
        :pswitch_9
        :pswitch_9
        :pswitch_1c
        :pswitch_9
        :pswitch_9
        :pswitch_40
        :pswitch_a
        :pswitch_9
        :pswitch_5c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->updateViewState()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;->finish()V

    return-void
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public startCloudUpload()V
    .registers 1

    invoke-static {p0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startCloudUpload(Landroid/content/Context;)V

    return-void
.end method

.method public stopCloudUpload()V
    .registers 1

    invoke-static {p0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->stopCloudUpload(Landroid/content/Context;)V

    return-void
.end method
