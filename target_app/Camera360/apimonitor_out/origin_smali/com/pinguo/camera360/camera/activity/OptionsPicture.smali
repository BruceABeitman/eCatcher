.class public Lcom/pinguo/camera360/camera/activity/OptionsPicture;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "OptionsPicture.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# static fields
.field public static final ADJUST_PICTURE:Ljava/lang/String; = "adjust_picture"

.field public static final REQUEST_EXT_SAVE_PATH:I = 0xb

.field public static final REQUEST_SAVE_PATH:I = 0xa

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

.field private layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;

.field private lpJpegQuality:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

.field private lpPicSaveType:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

.field private lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

.field private mMaxSize:I

.field private mPictureTitleBar:Lcom/pinguo/camera360/ui/TitleView;

.field private spIsBackSavePic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

.field private spIsSaveOrgPic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

.field private spRecordLocation:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

.field private spTimeWatermark:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

.field private swOptionsBackSavePicture:Landroid/widget/CheckBox;

.field private swOptionsRecordLocation:Landroid/widget/CheckBox;

.field private swOptionsSaveOrg:Landroid/widget/CheckBox;

.field private swOptionsWaterMake:Landroid/widget/CheckBox;

.field private toast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

.field private tvOptionsJpegQualitySummary:Landroid/widget/TextView;

.field private tvOptionsPictureSizeSummary:Landroid/widget/TextView;

.field private tvOptionsSavePathSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsPictureSizeSummary:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsJpegQualitySummary:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsSavePathSummary:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsWaterMake:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsRecordLocation:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsSaveOrg:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsBackSavePicture:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpJpegQuality:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPicSaveType:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spTimeWatermark:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spRecordLocation:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsSaveOrgPic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsBackSavePic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsPictureSizeSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->buildPictureSizeSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/activity/OptionsPicture;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->selectPicRedress(IZ)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsSavePathSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPicSaveType:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/camera/activity/OptionsPicture;Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->toast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->toast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    return-object v0
.end method

.method private buildPictureSizeSummary()Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v2, p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->caculateSize(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mMaxSize:I

    if-le v0, v2, :cond_4e

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080240

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mMaxSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private caculateSize(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string/jumbo v4, "x"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int v4, v3, v1

    div-int/lit16 v0, v4, 0x2710

    invoke-static {}, Lcom/pinguo/lib/util/Util;->isZhForNow()Z

    move-result v4

    if-nez v4, :cond_3

    div-int/lit8 v0, v0, 0x64

    goto :goto_3
.end method

.method private getSavePathSupported()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "default"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "phone"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;

    move-result-object v1

    sget-boolean v2, Lcom/pinguo/lib/ApiHelper;->AFTER_KITKAT:Z

    if-nez v2, :cond_32

    invoke-virtual {v1}, Lcom/pinguo/lib/util/UtilStorage;->isHasExternalSdCard()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string/jumbo v2, "sdcard"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    return-object v0
.end method

.method private initData()V
    .registers 15

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v11

    const-string/jumbo v12, "key_max_texture_size"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v11, 0x0

    iput v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mMaxSize:I

    const/16 v11, 0x3e8

    if-le v6, v11, :cond_21

    mul-int v11, v6, v6

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x4

    div-int/lit16 v11, v11, 0x2710

    div-int/lit8 v11, v11, 0x64

    mul-int/lit8 v11, v11, 0x64

    iput v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mMaxSize:I

    :cond_21
    sget-boolean v11, Lcom/pinguo/camera360/adapter/GAdapter;->IS_LT26I:Z

    if-eqz v11, :cond_29

    const/16 v11, 0x3e8

    iput v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mMaxSize:I

    :cond_29
    invoke-static {}, Lcom/pinguo/lib/util/Util;->isZhForNow()Z

    move-result v11

    if-nez v11, :cond_35

    iget v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mMaxSize:I

    div-int/lit8 v11, v11, 0x64

    iput v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mMaxSize:I

    :cond_35
    const-string/jumbo v11, "pref_camera_save_type_key"

    invoke-static {v11}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findPictureSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPicSaveType:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPicSaveType:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->getSavePathSupported()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->filterUnsupported(Ljava/util/List;)V

    const-string/jumbo v11, "key_camera_picture_size"

    invoke-static {v11}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findPictureSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    if-nez v11, :cond_d6

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "camera_pref_backup_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v11, "BACK_UP_PICTURE_SIZE_ENABLE"

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d6

    const-string/jumbo v11, "BACK_UP_PICTURE_SIZE_TITLE"

    const-string/jumbo v12, ""

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v12, "key_camera_picture_size"

    invoke-direct {v11, v12, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v11, "BACK_UP_PICTURE_SIZE_ENTRY"

    const-string/jumbo v12, ""

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v11, v1

    if-eqz v11, :cond_a8

    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v11, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V

    :cond_a8
    const-string/jumbo v11, "BACK_UP_PICTURE_SIZE_ENTRY_VALUE"

    const-string/jumbo v12, ""

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v11, v2

    if-eqz v11, :cond_c1

    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v11, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V

    :cond_c1
    const-string/jumbo v11, "BACK_UP_PICTURE_SIZE_VALUE"

    const-string/jumbo v12, ""

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17e

    :try_start_d1
    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v11, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d6} :catch_175

    :cond_d6
    :goto_d6
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v11

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getBackCameraId()I

    move-result v12

    if-ne v11, v12, :cond_186

    const/4 v4, 0x1

    :goto_e9
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0802ea

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "("

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_103

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_103
    if-eqz v4, :cond_189

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v12, 0x7f080316

    invoke-virtual {p0, v12}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_11d
    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    if-eqz v11, :cond_129

    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_1a3

    :cond_129
    const v11, 0x7f0a04b1

    invoke-virtual {p0, v11}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_137

    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_137
    :goto_137
    const-string/jumbo v11, "pref_camera_jpegquality_key"

    invoke-static {v11}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findPictureSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpJpegQuality:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v11, "pref_camera_timewatermake_key"

    invoke-static {v11}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findPictureSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v11

    check-cast v11, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iput-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spTimeWatermark:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v11, "pref_camera_recordlocation_key"

    invoke-static {v11}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findPictureSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v11

    check-cast v11, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iput-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spRecordLocation:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v11, "pref_camera_saveorg_key"

    invoke-static {v11}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findPictureSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v11

    check-cast v11, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iput-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsSaveOrgPic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v11, "pref_camera_back_save_key"

    invoke-static {v11}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->findPictureSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v11

    check-cast v11, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iput-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsBackSavePic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mPictureTitleBar:Lcom/pinguo/camera360/ui/TitleView;

    const v12, 0x7f0802d3

    invoke-virtual {v11, v12}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    return-void

    :catch_175
    move-exception v0

    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEnable(Z)V

    goto/16 :goto_d6

    :cond_17e
    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEnable(Z)V

    goto/16 :goto_d6

    :cond_186
    const/4 v4, 0x0

    goto/16 :goto_e9

    :cond_189
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v12, 0x7f080317

    invoke-virtual {p0, v12}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_11d

    :cond_1a3
    iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v11, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setTitle(Ljava/lang/String;)V

    goto :goto_137
.end method

.method private initListener()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsWaterMake:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsRecordLocation:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsSaveOrg:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsBackSavePicture:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mPictureTitleBar:Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a04af

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    const v0, 0x7f0a04b3

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsPictureSizeSummary:Landroid/widget/TextView;

    const v0, 0x7f0a04b6

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsJpegQualitySummary:Landroid/widget/TextView;

    const v0, 0x7f0a04b9

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsSavePathSummary:Landroid/widget/TextView;

    const v0, 0x7f0a04c6

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsWaterMake:Landroid/widget/CheckBox;

    const v0, 0x7f0a04c8

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsRecordLocation:Landroid/widget/CheckBox;

    const v0, 0x7f0a04c2

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsSaveOrg:Landroid/widget/CheckBox;

    const v0, 0x7f0a04bf

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsBackSavePicture:Landroid/widget/CheckBox;

    const v0, 0x7f0a04b0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mPictureTitleBar:Lcom/pinguo/camera360/ui/TitleView;

    return-void
.end method

.method private redressBack()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getBackCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const-string/jumbo v1, "adjust_picture"

    invoke-static {p0, v1, v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method private redressFront()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getFrontCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const-string/jumbo v1, "adjust_picture"

    invoke-static {p0, v1, v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method private selectPicRedress(IZ)V
    .registers 3

    if-eqz p2, :cond_12

    packed-switch p1, :pswitch_data_1e

    :goto_5
    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->redressFront()V

    goto :goto_5

    :pswitch_a
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->redressBack()V

    goto :goto_5

    :pswitch_e
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->setDefault()V

    goto :goto_5

    :cond_12
    packed-switch p1, :pswitch_data_28

    goto :goto_5

    :pswitch_16
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->redressBack()V

    goto :goto_5

    :pswitch_1a
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->setDefault()V

    goto :goto_5

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1a
    .end packed-switch
.end method

.method private setDefault()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedress(Z)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedressDegree(I)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedressMirror(Z)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackRedress(Z)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackRedressDegree(I)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V

    return-void
.end method

.method private updateView()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsSavePathSummary:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsPictureSizeSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->buildPictureSizeSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsJpegQualitySummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpJpegQuality:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsWaterMake:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spTimeWatermark:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsRecordLocation:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spRecordLocation:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsSaveOrg:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsSaveOrgPic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsBackSavePicture:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsBackSavePic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const v0, 0x7f0300d4

    if-ne p2, v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPicSaveType:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPicSaveType:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "select_which"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueIndex(I)V

    :cond_19
    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsJpegQualitySummary:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsSavePathSummary:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_40

    :goto_7
    sget-object v0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid operation!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    :sswitch_10
    const v0, 0x7f0a04c6

    invoke-static {v0, p2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spTimeWatermark:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V

    goto :goto_f

    :sswitch_1c
    const v0, 0x7f0a04c8

    invoke-static {v0, p2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spRecordLocation:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V

    goto :goto_f

    :sswitch_28
    const v0, 0x7f0a04c2

    invoke-static {v0, p2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsSaveOrgPic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V

    goto :goto_f

    :sswitch_34
    const v0, 0x7f0a04bf

    invoke-static {v0, p2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsBackSavePic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V

    goto :goto_7

    :sswitch_data_40
    .sparse-switch
        0x7f0a04bf -> :sswitch_34
        0x7f0a04c2 -> :sswitch_28
        0x7f0a04c6 -> :sswitch_10
        0x7f0a04c8 -> :sswitch_1c
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_1c4

    :goto_9
    return-void

    :sswitch_a
    const v5, 0x7f0a04b1

    invoke-static {v5, v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isFirstShowPictureSize()Z

    move-result v2

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->caculateSize(Ljava/lang/String;)I

    move-result v4

    if-eqz v2, :cond_5f

    iget v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mMaxSize:I

    if-le v4, v5, :cond_5f

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsPictureSizeSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08023f

    new-array v7, v7, [Ljava/lang/Object;

    iget v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->mMaxSize:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v6

    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;

    invoke-direct {v9, p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)V

    invoke-static {p0, v5, v8, v7, v9}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showOptionsItemsWithDesc(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFirstShowPictureSize(Z)V

    :goto_59
    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v5, v6, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    goto :goto_9

    :cond_5f
    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iget-object v7, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsPictureSizeSummary:Landroid/widget/TextView;

    new-instance v8, Lcom/pinguo/camera360/camera/activity/OptionsPicture$2;

    invoke-direct {v8, p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture$2;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)V

    invoke-static {p0, v5, v7, v8}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showOptionsItems(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    goto :goto_59

    :sswitch_6f
    const v5, 0x7f0a04b4

    invoke-static {v5, v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpJpegQuality:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iget-object v7, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsJpegQualitySummary:Landroid/widget/TextView;

    invoke-static {p0, v5, v7}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showOptionsItems(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v5, v6, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    goto :goto_9

    :sswitch_85
    const v5, 0x7f0a04c9

    invoke-static {v5, v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setClickPictureAdjustIcon(Z)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V

    invoke-static {}, Lcom/pinguo/lib/util/DeviceInfo;->isFrontCameraSupported()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_c5

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0d000d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    :goto_ab
    const v5, 0x7f0802b6

    new-instance v8, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;

    invoke-direct {v8, p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsPicture;Z)V

    invoke-static {p0, v5, v3, v8}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogItems(Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v5, v6, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    goto/16 :goto_9

    :cond_c5
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0d000e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_ab

    :sswitch_d1
    const v5, 0x7f0a04b7

    invoke-static {v5, v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPicSaveType:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    new-instance v8, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;

    invoke-direct {v8, p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)V

    invoke-static {p0, v5, v8}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showSingleChoiceItems(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v5, v6, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    goto/16 :goto_9

    :sswitch_f0
    const v8, 0x7f0a04bc

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsBackSavePic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v5

    if-eqz v5, :cond_11c

    move v5, v6

    :goto_fc
    invoke-static {v8, v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsBackSavePic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsBackSavePic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v5

    if-eqz v5, :cond_11e

    move v5, v6

    :goto_10a
    invoke-virtual {v8, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsBackSavePicture:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsBackSavePicture:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_120

    :goto_117
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_9

    :cond_11c
    move v5, v7

    goto :goto_fc

    :cond_11e
    move v5, v7

    goto :goto_10a

    :cond_120
    move v6, v7

    goto :goto_117

    :sswitch_122
    const v8, 0x7f0a04c0

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsSaveOrgPic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v5

    if-eqz v5, :cond_14e

    move v5, v6

    :goto_12e
    invoke-static {v8, v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsSaveOrgPic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spIsSaveOrgPic:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v5

    if-eqz v5, :cond_150

    move v5, v6

    :goto_13c
    invoke-virtual {v8, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsSaveOrg:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsSaveOrg:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_152

    :goto_149
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_9

    :cond_14e
    move v5, v7

    goto :goto_12e

    :cond_150
    move v5, v7

    goto :goto_13c

    :cond_152
    move v6, v7

    goto :goto_149

    :sswitch_154
    const v8, 0x7f0a04c3

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spTimeWatermark:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v5

    if-eqz v5, :cond_180

    move v5, v6

    :goto_160
    invoke-static {v8, v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spTimeWatermark:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spTimeWatermark:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v5

    if-eqz v5, :cond_182

    move v5, v6

    :goto_16e
    invoke-virtual {v8, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsWaterMake:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsWaterMake:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_184

    :goto_17b
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_9

    :cond_180
    move v5, v7

    goto :goto_160

    :cond_182
    move v5, v7

    goto :goto_16e

    :cond_184
    move v6, v7

    goto :goto_17b

    :sswitch_186
    const v8, 0x7f0a04c7

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spRecordLocation:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v5

    if-eqz v5, :cond_1b2

    move v5, v6

    :goto_192
    invoke-static {v8, v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPictureSet(IZ)V

    iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spRecordLocation:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->spRecordLocation:Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->isOn()Z

    move-result v5

    if-eqz v5, :cond_1b4

    move v5, v6

    :goto_1a0
    invoke-virtual {v8, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setOn(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsRecordLocation:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->swOptionsRecordLocation:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1b6

    :goto_1ad
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_9

    :cond_1b2
    move v5, v7

    goto :goto_192

    :cond_1b4
    move v5, v7

    goto :goto_1a0

    :cond_1b6
    move v6, v7

    goto :goto_1ad

    :sswitch_1b8
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :sswitch_data_1c4
    .sparse-switch
        0x7f0a04b1 -> :sswitch_a
        0x7f0a04b4 -> :sswitch_6f
        0x7f0a04b7 -> :sswitch_d1
        0x7f0a04ba -> :sswitch_1b8
        0x7f0a04bc -> :sswitch_f0
        0x7f0a04c0 -> :sswitch_122
        0x7f0a04c3 -> :sswitch_154
        0x7f0a04c7 -> :sswitch_186
        0x7f0a04c9 -> :sswitch_85
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300d3

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->initView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .registers 3

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onResume()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initPictureSettingPreference()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->initData()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->updateView()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->initListener()V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->finish()V

    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v1, v3, [Lcom/pinguo/camera360/lib/ui/Rotatable;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->toast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    aput-object v4, v1, v3

    array-length v3, v1

    :goto_13
    if-lt v2, v3, :cond_16

    return-void

    :cond_16
    aget-object v0, v1, v2

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/Rotatable;->setOrientation(IZ)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method
