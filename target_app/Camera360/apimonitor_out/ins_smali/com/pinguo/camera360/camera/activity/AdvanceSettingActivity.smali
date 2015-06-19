.class public Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;
.super Lcom/pinguo/camera360/base/BaseRotateActivity;
.source "AdvanceSettingActivity.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field public static final HOST:Ljava/lang/String; = "https://cloud.camera360.com"
.field private static final REQUEST_CODE_FOR_USERINFO:I = 0x3e8
.field public static final RESULT_CODE_FOR_USERINFO:I = 0x3e9
.field private static final SAVE_FACE_SUCCESS_MSG:I = 0x1
.field private static final TAG:Ljava/lang/String;
.field  mAdvanceTitle:Lcom/pinguo/camera360/ui/TitleView;
.field private mCheckUpdateNewIcon:Landroid/widget/ImageView;
.field private mCloudBackUp:Landroid/widget/RelativeLayout;
.field private mCloudSettingsParent:Landroid/widget/RelativeLayout;
.field private mDiscuzNewIcon:Landroid/widget/ImageView;
.field private mFeedBackLine:Landroid/widget/ImageView;
.field private mHandler:Landroid/os/Handler;
.field private mIsLogoutCometo:Z
.field private mLoginParent:Landroid/widget/RelativeLayout;
.field private mNewIcon:Landroid/widget/ImageView;
.field private mNewIconOfEasy:Landroid/widget/ImageView;
.field private mUserInfoFaceImg:Lcom/pinguo/camera360/lib/ui/RoundImageView;
.field private mUserInfoFaceParent:Landroid/widget/RelativeLayout;
.field private mUserInfoNickNameParent:Landroid/widget/RelativeLayout;
.field private mUserInfoNickNameText:Landroid/widget/TextView;
.field private mUserInfoParent:Landroid/widget/LinearLayout;
.field private mlayFeedBack:Landroid/widget/RelativeLayout;
.field private tvUnreadFeedback:Landroid/widget/TextView;
.field private unreadFeedbackCount:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;-><init>()V
new-instance v0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$1;-><init>(Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mHandler:Landroid/os/Handler;
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mlayFeedBack:Landroid/widget/RelativeLayout;
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mFeedBackLine:Landroid/widget/ImageView;
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mIsLogoutCometo:Z
iput v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->unreadFeedbackCount:I
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->tvUnreadFeedback:Landroid/widget/TextView;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->updateCheckUpdateNewVersionIcon()V
return-void
.end method
.method private updateCheckUpdateNewVersionIcon()V
.registers 5
invoke-static {}, Lcom/pinguo/lib/util/Util;->getVersionCode()I
move-result v1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCheckUpdateNewVersionCode()I
move-result v0
if-ge v1, v0, :cond_15
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mCheckUpdateNewIcon:Landroid/widget/ImageView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_14
return-void
:cond_15
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mCheckUpdateNewIcon:Landroid/widget/ImageView;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_14
.end method
.method public initViews()V
.registers 4
const v2, 0x7f0a00f1
const v0, 0x7f0a00ec
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mAdvanceTitle:Lcom/pinguo/camera360/ui/TitleView;
const v0, 0x7f0a00ee
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mLoginParent:Landroid/widget/RelativeLayout;
const v0, 0x7f0a00f0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoParent:Landroid/widget/LinearLayout;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoFaceParent:Landroid/widget/RelativeLayout;
const v0, 0x7f0a00f4
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RoundImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoFaceImg:Lcom/pinguo/camera360/lib/ui/RoundImageView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoFaceImg:Lcom/pinguo/camera360/lib/ui/RoundImageView;
const v1, 0x7f020157
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setDefaultImage(I)V
const v0, 0x7f0a00f5
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoNickNameParent:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoNickNameParent:Landroid/widget/RelativeLayout;
invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a00fb
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoNickNameText:Landroid/widget/TextView;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoFaceParent:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoFaceParent:Landroid/widget/RelativeLayout;
invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoNickNameParent:Landroid/widget/RelativeLayout;
invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a00fc
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mCloudSettingsParent:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mCloudSettingsParent:Landroid/widget/RelativeLayout;
invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mLoginParent:Landroid/widget/RelativeLayout;
invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a010e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mCloudBackUp:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mCloudBackUp:Landroid/widget/RelativeLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mAdvanceTitle:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f0802d1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mAdvanceTitle:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mAdvanceTitle:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0115
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->tvUnreadFeedback:Landroid/widget/TextView;
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
sget-object v0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onActivityResult arg0 ="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x3e8
if-ne p1, v0, :cond_20
const/16 v0, 0x3e9
if-ne p2, v0, :cond_20
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mIsLogoutCometo:Z
:cond_20
invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onActivityResult(IILandroid/content/Intent;)V
return-void
.end method
.method public onBackClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 21
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I
move-result v15
sparse-switch v15, :sswitch_data_18c
:sswitch_7
:goto_7
:cond_7
const-string v1, " - Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_8
const v15, 0x7f0a00fc
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
new-instance v6, Landroid/content/Intent;
const-class v15, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;
move-object/from16 v0, p0
invoke-direct {v6, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_7
:sswitch_1d
const v15, 0x7f0a00fc
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
new-instance v5, Landroid/content/Intent;
const-class v15, Lcom/pinguo/camera360/cloud/login/PersonalInformation;
move-object/from16 v0, p0
invoke-direct {v5, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/16 v15, 0x3e8
move-object/from16 v0, p0
invoke-virtual {v0, v5, v15}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_7
:sswitch_34
const v15, 0x7f0a00fc
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
goto :goto_7
:sswitch_3b
const v15, 0x7f0a00ee
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
const/4 v15, 0x3
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V
const/16 v15, 0x1b9e
const/16 v16, -0x3e7
move-object/from16 v0, p0
move/from16 v1, v16
invoke-static {v0, v15, v1}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->launchLoginPageAdapte(Landroid/app/Activity;II)V
goto :goto_7
:sswitch_51
const v15, 0x7f0a0102
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
new-instance v4, Landroid/content/Intent;
const-class v15, Lcom/pinguo/camera360/camera/activity/OptionsPicture;
move-object/from16 v0, p0
invoke-direct {v4, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_7
:sswitch_66
const v15, 0x7f0a0104
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
new-instance v7, Landroid/content/Intent;
const-class v15, Lcom/pinguo/camera360/camera/activity/OptionsCamera;
move-object/from16 v0, p0
invoke-direct {v7, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
move-object/from16 v0, p0
invoke-virtual {v0, v7}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_7
:sswitch_7b
const v15, 0x7f0a0106
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
const/4 v15, 0x0
move-object/from16 v0, p0
invoke-static {v0, v15}, Lcom/pinguo/share/bind/BindManager;->startBind(Landroid/app/Activity;Z)V
goto :goto_7
:sswitch_88
const v15, 0x7f0a0112
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
new-instance v3, Landroid/content/Intent;
const-class v15, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;
move-object/from16 v0, p0
invoke-direct {v3, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_7
:sswitch_9e
const v15, 0x7f0a011b
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
new-instance v7, Landroid/content/Intent;
const-class v15, Lcom/pinguo/camera360/camera/activity/OptionsAbout;
move-object/from16 v0, p0
invoke-direct {v7, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
move-object/from16 v0, p0
invoke-virtual {v0, v7}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_7
:sswitch_b4
const v15, 0x7f0a0109
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLayItemClick(I)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v15
invoke-virtual {v15}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFirstClickDiscus()Z
move-result v15
if-eqz v15, :cond_d6
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v15
const/16 v16, 0x0
invoke-virtual/range {v15 .. v16}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFirstClickDiscus(Z)V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mDiscuzNewIcon:Landroid/widget/ImageView;
const/16 v16, 0x8
invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_d6
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v15
invoke-static {v15}, Lorg/pinguo/cloudshare/support/HelperConsole;->loadLocalKey(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
const-string/jumbo v14, "https://cloud.camera360.com/mobile/user/forumSyncLogin"
const-string/jumbo v15, ""
invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v15
if-nez v15, :cond_102
new-instance v15, Ljava/lang/StringBuilder;
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v16, "?localkey="
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
:cond_102
invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v13
new-instance v2, Landroid/content/Intent;
const-string/jumbo v15, "android.intent.action.VIEW"
invoke-direct {v2, v15, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_7
:sswitch_115
invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z
move-result v15
if-nez v15, :cond_7
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v15
invoke-virtual {v15}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v11
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v15
invoke-virtual {v15, v11}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v9
const-string/jumbo v15, "appDownLoad"
new-instance v16, Ljava/lang/StringBuilder;
const-string/jumbo v17, "Storage mount: "
invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v16
invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v15, 0x3e8
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v17
cmp-long v15, v15, v17
if-ltz v15, :cond_177
const-string/jumbo v15, "appDownLoad"
const-string/jumbo v16, "Storage can not used"
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v12, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const v15, 0x7f0800e9
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->getString(I)Ljava/lang/String;
move-result-object v15
const/16 v16, 0x0
move-object/from16 v0, p0
move/from16 v1, v16
invoke-direct {v12, v0, v15, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
const/16 v15, 0x7d0
invoke-virtual {v12, v15}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
goto/16 :goto_7
:cond_177
const v15, 0x7f0a0117
invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingAboutSet(I)V
new-instance v15, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$2;
move-object/from16 v0, p0
move-object/from16 v1, p0
invoke-direct {v15, v0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$2;-><init>(Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;Landroid/app/Activity;)V
invoke-static {v15}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager;->manualUpdate(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
goto/16 :goto_7
nop
:sswitch_data_18c
.sparse-switch
0x7f0a00ec -> :sswitch_7
0x7f0a00ee -> :sswitch_3b
0x7f0a00f1 -> :sswitch_1d
0x7f0a00f5 -> :sswitch_34
0x7f0a00fc -> :sswitch_8
0x7f0a0102 -> :sswitch_51
0x7f0a0104 -> :sswitch_66
0x7f0a0106 -> :sswitch_7b
0x7f0a0109 -> :sswitch_b4
0x7f0a0112 -> :sswitch_88
0x7f0a0117 -> :sswitch_115
0x7f0a011b -> :sswitch_9e
.end sparse-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v4, 0x7f0a010c
const/4 v3, 0x0
const/16 v2, 0x8
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f03002d
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->setContentView(I)V
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingLay()V
const/4 v1, 0x3
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterLayShow(I)V
const v1, 0x7f0a0111
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mNewIcon:Landroid/widget/ImageView;
const v1, 0x7f0a0101
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mNewIconOfEasy:Landroid/widget/ImageView;
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mDiscuzNewIcon:Landroid/widget/ImageView;
invoke-static {}, Lcom/pinguo/lib/util/Util;->canShowFeedBack()Z
move-result v1
if-eqz v1, :cond_5a
const v1, 0x7f0a0112
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mlayFeedBack:Landroid/widget/RelativeLayout;
const v1, 0x7f0a0116
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mFeedBackLine:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mlayFeedBack:Landroid/widget/RelativeLayout;
invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mFeedBackLine:Landroid/widget/ImageView;
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_5a
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
if-eqz v0, :cond_ae
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFirstClickCloudBackup()Z
move-result v1
if-eqz v1, :cond_ae
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mNewIcon:Landroid/widget/ImageView;
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_6b
if-eqz v0, :cond_b4
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFirstClickDiscus()Z
move-result v1
if-eqz v1, :cond_b4
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mDiscuzNewIcon:Landroid/widget/ImageView;
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_78
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->initViews()V
invoke-static {}, Lcom/pinguo/lib/util/Util;->isZhForNow()Z
move-result v1
if-nez v1, :cond_ba
const v1, 0x7f0a0109
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
const v1, 0x7f0a010d
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
const v1, 0x7f0a0108
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:goto_9f
const v1, 0x7f0a011a
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mCheckUpdateNewIcon:Landroid/widget/ImageView;
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->updateCheckUpdateNewVersionIcon()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_ae
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mNewIcon:Landroid/widget/ImageView;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_6b
:cond_b4
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mDiscuzNewIcon:Landroid/widget/ImageView;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_78
:cond_ba
if-eqz v0, :cond_ca
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFirstClickDiscus()Z
move-result v1
if-eqz v1, :cond_ca
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_9f
:cond_ca
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_9f
.end method
.method protected onCreate(Landroid/os/Bundle;Z)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onPause()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getUnreadFeedbackCount()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->unreadFeedbackCount:I
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onResume()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mlayFeedBack:Landroid/widget/RelativeLayout;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mFeedBackLine:Landroid/widget/ImageView;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mlayFeedBack:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mFeedBackLine:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_23
invoke-virtual {p0, p0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->updateViews(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRightBtnClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->finish()V
return-void
.end method
.method protected setOrientationIndicator(IZ)V
.registers 3
return-void
.end method
.method public updateViews(Landroid/content/Context;)V
.registers 9
const/16 v6, 0x8
const/4 v5, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoNickNameParent:Landroid/widget/RelativeLayout;
invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->unreadFeedbackCount:I
if-lez v2, :cond_49
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->tvUnreadFeedback:Landroid/widget/TextView;
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->tvUnreadFeedback:Landroid/widget/TextView;
iget v3, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->unreadFeedbackCount:I
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_1c
sget-object v2, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "mIsLogoutCometo = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v4, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mIsLogoutCometo:Z
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mIsLogoutCometo:Z
if-eqz v2, :cond_4f
iput-boolean v5, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mIsLogoutCometo:Z
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mLoginParent:Landroid/widget/RelativeLayout;
invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mLoginParent:Landroid/widget/RelativeLayout;
invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoParent:Landroid/widget/LinearLayout;
invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
:goto_48
return-void
:cond_49
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->tvUnreadFeedback:Landroid/widget/TextView;
invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_1c
:cond_4f
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v1
sget-object v2, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "userInfo = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-nez v1, :cond_7e
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mLoginParent:Landroid/widget/RelativeLayout;
invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mLoginParent:Landroid/widget/RelativeLayout;
invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoParent:Landroid/widget/LinearLayout;
invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
goto :goto_48
:cond_7e
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mLoginParent:Landroid/widget/RelativeLayout;
invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mLoginParent:Landroid/widget/RelativeLayout;
invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoParent:Landroid/widget/LinearLayout;
invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoFaceImg:Lcom/pinguo/camera360/lib/ui/RoundImageView;
iget-object v3, v1, Lcom/pinguo/camera360/login/model/User$Info;->avatar:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setImageUrl(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->mUserInfoNickNameText:Landroid/widget/TextView;
iget-object v3, v1, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_48
.end method