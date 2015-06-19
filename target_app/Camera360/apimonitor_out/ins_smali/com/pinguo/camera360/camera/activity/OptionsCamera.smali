.class public Lcom/pinguo/camera360/camera/activity/OptionsCamera;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "OptionsCamera.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field public static final ADJUST_PICTURE:Ljava/lang/String; = "adjust_picture"
.field public static final ADJUST_PREVIEW:Ljava/lang/String; = "adjust_preview"
.field public static final REQUEST_CODE:I = 0xa
.field public static final TAG:Ljava/lang/String;
.field private alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private compatibilityModeType:I
.field private layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;
.field private layOptionsAutoSave:Landroid/view/View;
.field private lpAutoSaveMode:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
.field private lpVolumeKeys:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
.field private mCameraTitleBar:Lcom/pinguo/camera360/ui/TitleView;
.field private previewAdjustBlankView:Landroid/view/View;
.field private previewAdjustLayout:Landroid/view/ViewGroup;
.field private spCompositionLine:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
.field private spFrontMirror:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
.field private spRender:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
.field private spVibrationFeedback:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
.field private swCameraHardwareCompatibleMode:Landroid/widget/CheckBox;
.field private swCompose:Landroid/widget/CheckBox;
.field private swFrontCameraAutoMirror:Landroid/widget/CheckBox;
.field private swKeyVibrationFeedback:Landroid/widget/CheckBox;
.field private swRender:Landroid/widget/CheckBox;
.field private tvAutoSaveSummary:Landroid/widget/TextView;
.field private tvPicEditCompatibility:Landroid/widget/TextView;
.field private tvVolumeKeySummary:Landroid/widget/TextView;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvVolumeKeySummary:Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvAutoSaveSummary:Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCompose:Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swRender:Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swFrontCameraAutoMirror:Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCameraHardwareCompatibleMode:Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swKeyVibrationFeedback:Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvPicEditCompatibility:Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->lpAutoSaveMode:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->lpVolumeKeys:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spCompositionLine:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spFrontMirror:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spVibrationFeedback:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->previewAdjustBlankView:Landroid/view/View;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->previewAdjustLayout:Landroid/view/ViewGroup;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->compatibilityModeType:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/activity/OptionsCamera;IZ)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->adjustPreview(IZ)V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/activity/OptionsCamera;Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->showCompatibilityModeMsgDialog(Ljava/lang/String;II)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->updateCompatibilityModeText()V
return-void
.end method
.method private adjustBack()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getBackCameraId()I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_11
const-string/jumbo v1, "adjust_preview"
invoke-static {p0, v1, v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;I)V
:cond_11
return-void
.end method
.method private adjustFront()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getFrontCameraId()I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_11
const-string/jumbo v1, "adjust_preview"
invoke-static {p0, v1, v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;I)V
:cond_11
return-void
.end method
.method private adjustPreview(IZ)V
.registers 3
if-eqz p2, :cond_12
packed-switch p1, :pswitch_data_1e
:goto_5
return-void
:pswitch_6
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->adjustFront()V
goto :goto_5
:pswitch_a
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->adjustBack()V
goto :goto_5
:pswitch_e
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->setPreviewDefault()V
goto :goto_5
:cond_12
packed-switch p1, :pswitch_data_28
goto :goto_5
:pswitch_16
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->adjustBack()V
goto :goto_5
:pswitch_1a
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->setPreviewDefault()V
goto :goto_5
:pswitch_data_28
.packed-switch 0x0
:pswitch_16
:pswitch_1a
.end packed-switch
:pswitch_data_1e
.packed-switch 0x0
:pswitch_6
:pswitch_a
:pswitch_e
.end packed-switch
.end method
.method private changeAutoSaveEnble(Z)V
.registers 8
const v5, 0x7f0a0496
const v4, 0x7f0a0495
const v3, 0x7f0a0494
const/4 v2, 0x1
const/4 v1, 0x0
if-eqz p1, :cond_32
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V
:goto_31
return-void
:cond_32
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
goto :goto_31
.end method
.method private initData()V
.registers 2
const-string/jumbo v0, "pref_camera_pictureautosavemode_key"
invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findCameraSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->lpAutoSaveMode:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
const-string/jumbo v0, "pref_camera_volumekeys_key"
invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findCameraSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->lpVolumeKeys:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
const-string/jumbo v0, "pref_camera_compositionline_key"
invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findCameraSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spCompositionLine:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
const-string/jumbo v0, "pref_is_enable_render_key"
invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findCameraSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spRender:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
const-string/jumbo v0, "pref_camera_frontmirror_key"
invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findCameraSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spFrontMirror:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
const-string/jumbo v0, "pref_camera_vibrationfeedback_key"
invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findCameraSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spVibrationFeedback:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
return-void
.end method
.method private initListener()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->mCameraTitleBar:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCompose:Landroid/widget/CheckBox;
invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swRender:Landroid/widget/CheckBox;
invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swFrontCameraAutoMirror:Landroid/widget/CheckBox;
invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCameraHardwareCompatibleMode:Landroid/widget/CheckBox;
invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swKeyVibrationFeedback:Landroid/widget/CheckBox;
invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return-void
.end method
.method private initView()V
.registers 4
const v2, 0x7f0a0493
const/16 v1, 0x8
const v0, 0x7f0a048c
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->mCameraTitleBar:Lcom/pinguo/camera360/ui/TitleView;
const v0, 0x7f0a048b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
const v0, 0x7f0a0495
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvAutoSaveSummary:Landroid/widget/TextView;
const v0, 0x7f0a048f
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvVolumeKeySummary:Landroid/widget/TextView;
const v0, 0x7f0a0499
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCompose:Landroid/widget/CheckBox;
const v0, 0x7f0a049e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swFrontCameraAutoMirror:Landroid/widget/CheckBox;
const v0, 0x7f0a04a0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCameraHardwareCompatibleMode:Landroid/widget/CheckBox;
const v0, 0x7f0a04a2
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swKeyVibrationFeedback:Landroid/widget/CheckBox;
const v0, 0x7f0a04ab
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvPicEditCompatibility:Landroid/widget/TextView;
const v0, 0x7f0a0491
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swRender:Landroid/widget/CheckBox;
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD:Z
if-nez v0, :cond_a2
const v0, 0x7f0a0490
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a0492
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a0497
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_a2
const v0, 0x7f0a04a6
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->previewAdjustBlankView:Landroid/view/View;
const v0, 0x7f0a04a7
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->previewAdjustLayout:Landroid/view/ViewGroup;
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NOT_SUPPORT_PREVIEW_ADJUST:Z
if-eqz v0, :cond_c4
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->previewAdjustBlankView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->previewAdjustLayout:Landroid/view/ViewGroup;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
:cond_c4
return-void
.end method
.method private setPreviewDefault()V
.registers 5
const/16 v3, 0x5a
const/4 v2, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontPreviewAdjust(Z)V
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontPreviewAdjustDegree(I)V
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderFrontPreviewAdjustDegree(I)V
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackPreviewAdjust(Z)V
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackPreviewAdjustDegree(I)V
const/4 v1, 0x7
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderBackPreviewAdjustDegree(I)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
return-void
.end method
.method private showCompatibilityModeDialog()V
.registers 7
const/4 v5, 0x1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0d0013
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v1
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v3, 0x7f08021f
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
const/4 v2, 0x2
iget v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->compatibilityModeType:I
const/4 v4, 0x2
if-eq v3, v4, :cond_21
iget v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->compatibilityModeType:I
if-ne v3, v5, :cond_25
:cond_21
iget v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->compatibilityModeType:I
add-int/lit8 v2, v3, -0x1
:cond_25
new-instance v3, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;
invoke-direct {v3, p0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;[Ljava/lang/String;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/Object;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
return-void
.end method
.method private showCompatibilityModeMsgDialog(Ljava/lang/String;II)V
.registers 7
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x3
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
const v1, 0x7f0802c5
new-instance v2, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;
invoke-direct {v2, p0, p3}, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;I)V
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
const v1, 0x7f0802c6
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
return-void
.end method
.method private updateCompatibilityModeText()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPicEditCompatibilityMode()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->compatibilityModeType:I
iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->compatibilityModeType:I
const/4 v1, 0x2
if-eq v0, v1, :cond_14
iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->compatibilityModeType:I
const/4 v1, 0x1
if-ne v0, v1, :cond_1d
:cond_14
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvPicEditCompatibility:Landroid/widget/TextView;
const v1, 0x7f0801e4
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvPicEditCompatibility:Landroid/widget/TextView;
const v1, 0x7f0801e3
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
goto :goto_1c
.end method
.method private updateView()V
.registers 6
const v4, 0x7f0a0497
const/4 v3, 0x0
const/16 v2, 0x8
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->mCameraTitleBar:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f0802d5
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvAutoSaveSummary:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->lpAutoSaveMode:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spRender:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isEnabled()Z
move-result v0
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spRender:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z
move-result v0
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->changeAutoSaveEnble(Z)V
:goto_39
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvVolumeKeySummary:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->lpVolumeKeys:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCompose:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spCompositionLine:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swRender:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spRender:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swFrontCameraAutoMirror:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spFrontMirror:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swKeyVibrationFeedback:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spVibrationFeedback:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
return-void
:cond_71
invoke-direct {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->changeAutoSaveEnble(Z)V
goto :goto_39
:cond_75
const v0, 0x7f0a0490
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a0492
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a0493
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_39
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
const/16 v0, 0xa
if-ne p1, v0, :cond_d
const/4 v0, -0x1
if-ne p2, v0, :cond_11
const v0, 0x7f0802e4
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
:goto_d
:cond_d
invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V
return-void
:cond_11
const v0, 0x7f0802e5
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
goto :goto_d
.end method
.method public onBackClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->finish()V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 9
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I
move-result v3
sparse-switch v3, :sswitch_data_7c
:goto_8
return-void
:sswitch_9
const v3, 0x7f0a0499
invoke-static {v3, p2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spCompositionLine:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v3, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V
goto :goto_8
:sswitch_15
const v3, 0x7f0a049e
invoke-static {v3, p2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spFrontMirror:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v3, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V
goto :goto_8
:sswitch_21
const v3, 0x7f0a04a2
invoke-static {v3, p2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spVibrationFeedback:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v3, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V
goto :goto_8
:sswitch_2d
const v3, 0x7f0a0491
invoke-static {v3, p2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->spRender:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
invoke-virtual {v3, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V
if-eqz p2, :cond_77
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getGPUlevel()I
move-result v0
const/4 v3, 0x2
if-ne v0, v3, :cond_66
new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const v3, 0x7f0802a0
iget v4, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->mOrientationCompensation:I
invoke-direct {v2, p0, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
:goto_52
:cond_52
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionsAutoSave:Landroid/view/View;
invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V
const v3, 0x7f0a0497
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V
const/4 v3, 0x1
invoke-direct {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->changeAutoSaveEnble(Z)V
goto :goto_8
:cond_66
const/4 v3, 0x3
if-ne v0, v3, :cond_52
new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const v3, 0x7f080254
iget v4, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->mOrientationCompensation:I
invoke-direct {v2, p0, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_52
:cond_77
invoke-direct {p0, v5}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->changeAutoSaveEnble(Z)V
goto :goto_8
nop
:sswitch_data_7c
.sparse-switch
0x7f0a0491 -> :sswitch_2d
0x7f0a0499 -> :sswitch_9
0x7f0a049e -> :sswitch_15
0x7f0a04a2 -> :sswitch_21
.end sparse-switch
.end method
.method public onClick(Landroid/view/View;)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsCamera; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v9, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_150
:goto_9
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsCamera; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_a
const v0, 0x7f0a04a3
invoke-static {v0, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
const v0, 0x7f0802e2
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->getString(I)Ljava/lang/String;
move-result-object v1
const v2, 0x7f0802e6
const v3, 0x7f0802e7
new-instance v4, Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)V
new-instance v5, Lcom/pinguo/camera360/camera/activity/OptionsCamera$2;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera$2;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)V
move-object v0, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v9, v9}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
goto :goto_9
:sswitch_39
const v0, 0x7f0a0493
invoke-static {v0, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
const v0, 0x7f080345
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const v0, 0x7f080344
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->lpAutoSaveMode:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-virtual {v0, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->filterUnsupported(Ljava/util/List;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->lpAutoSaveMode:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvAutoSaveSummary:Landroid/widget/TextView;
invoke-static {p0, v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showOptionsItems(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v9, v9}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
goto :goto_9
:sswitch_6d
const v0, 0x7f0a04a7
invoke-static {v0, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
invoke-static {}, Lcom/pinguo/lib/util/DeviceInfo;->isFrontCameraSupported()Z
move-result v6
const/4 v7, 0x0
if-eqz v6, :cond_9f
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0d000f
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v7
:goto_85
const v0, 0x7f0802ac
new-instance v3, Lcom/pinguo/camera360/camera/activity/OptionsCamera$3;
invoke-direct {v3, p0, v6}, Lcom/pinguo/camera360/camera/activity/OptionsCamera$3;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;Z)V
invoke-static {p0, v0, v7, v3}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogItems(Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v9, v9}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
goto/16 :goto_9
:cond_9f
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0d0010
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v7
goto :goto_85
:sswitch_ab
const v0, 0x7f0a048d
invoke-static {v0, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->lpVolumeKeys:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->tvVolumeKeySummary:Landroid/widget/TextView;
invoke-static {p0, v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showOptionsItems(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v9, v9}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
goto/16 :goto_9
:sswitch_c2
const v3, 0x7f0a0490
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swRender:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_e0
move v0, v9
:goto_ce
invoke-static {v3, v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swRender:Landroid/widget/CheckBox;
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swRender:Landroid/widget/CheckBox;
invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z
move-result v3
if-eqz v3, :cond_e2
:goto_db
invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V
goto/16 :goto_9
:cond_e0
move v0, v2
goto :goto_ce
:cond_e2
move v9, v2
goto :goto_db
:sswitch_e4
const v3, 0x7f0a0498
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCompose:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_102
move v0, v9
:goto_f0
invoke-static {v3, v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCompose:Landroid/widget/CheckBox;
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swCompose:Landroid/widget/CheckBox;
invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z
move-result v3
if-eqz v3, :cond_104
:goto_fd
invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V
goto/16 :goto_9
:cond_102
move v0, v2
goto :goto_f0
:cond_104
move v9, v2
goto :goto_fd
:sswitch_106
const v3, 0x7f0a049d
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swFrontCameraAutoMirror:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_124
move v0, v9
:goto_112
invoke-static {v3, v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swFrontCameraAutoMirror:Landroid/widget/CheckBox;
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swFrontCameraAutoMirror:Landroid/widget/CheckBox;
invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z
move-result v3
if-eqz v3, :cond_126
:goto_11f
invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V
goto/16 :goto_9
:cond_124
move v0, v2
goto :goto_112
:cond_126
move v9, v2
goto :goto_11f
:sswitch_128
const v3, 0x7f0a04a1
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swKeyVibrationFeedback:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_146
move v0, v9
:goto_134
invoke-static {v3, v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCameraSet(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swKeyVibrationFeedback:Landroid/widget/CheckBox;
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->swKeyVibrationFeedback:Landroid/widget/CheckBox;
invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z
move-result v3
if-eqz v3, :cond_148
:goto_141
invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V
goto/16 :goto_9
:cond_146
move v0, v2
goto :goto_134
:cond_148
move v9, v2
goto :goto_141
:sswitch_14a
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->showCompatibilityModeDialog()V
goto/16 :goto_9
nop
:sswitch_data_150
.sparse-switch
0x7f0a048d -> :sswitch_ab
0x7f0a0490 -> :sswitch_c2
0x7f0a0493 -> :sswitch_39
0x7f0a0498 -> :sswitch_e4
0x7f0a049d -> :sswitch_106
0x7f0a04a1 -> :sswitch_128
0x7f0a04a3 -> :sswitch_a
0x7f0a04a7 -> :sswitch_6d
0x7f0a04aa -> :sswitch_14a
.end sparse-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsCamera; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f0300d0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->setContentView(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->initView()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsCamera; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;Z)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsCamera; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsCamera; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsCamera; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onPause()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsCamera; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsCamera; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onResume()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initCameraSettingPreference()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->updateCompatibilityModeText()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->initData()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->updateView()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->initListener()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsCamera; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRightBtnClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->finish()V
return-void
.end method
.method protected setOrientationIndicator(IZ)V
.registers 8
const/4 v2, 0x0
const/4 v3, 0x2
new-array v1, v3, [Lcom/pinguo/camera360/lib/ui/Rotatable;
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;
aput-object v3, v1, v2
const/4 v3, 0x1
iget-object v4, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
aput-object v4, v1, v3
array-length v3, v1
:goto_e
if-lt v2, v3, :cond_11
return-void
:cond_11
aget-object v0, v1, v2
if-eqz v0, :cond_18
invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/Rotatable;->setOrientation(IZ)V
:cond_18
add-int/lit8 v2, v2, 0x1
goto :goto_e
.end method