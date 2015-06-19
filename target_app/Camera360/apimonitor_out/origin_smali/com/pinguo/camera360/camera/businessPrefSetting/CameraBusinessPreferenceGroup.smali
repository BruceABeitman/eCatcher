.class public final Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;
.super Ljava/lang/Object;
.source "CameraBusinessPreferenceGroup.java"


# static fields
.field private static final CAMERA_SETTING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private static final PICTURE_PREFERENCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->PICTURE_PREFERENCE_MAP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->CAMERA_SETTING_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCameraSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
    .registers 3

    sget-object v1, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->CAMERA_SETTING_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public static findPictureSettingPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
    .registers 3

    sget-object v1, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->PICTURE_PREFERENCE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method private static initBackSavePicture()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v5, "pref_camera_back_save_key"

    const v6, 0x7f08034a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080341

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setDefaultValues([Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->PICTURE_PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_back_save_key"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static initCameraSettingPreference()V
    .registers 0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initVolumeKeyFunction()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initEnableRender()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initPictureSaveWay()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initISO()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initCompositionline()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initMirrorForFrontCamera()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initVibrationFeedback()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initCheckAntiShake()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initRedressOfPreview()V

    return-void
.end method

.method private static initCheckAntiShake()V
    .registers 0

    return-void
.end method

.method private static initCompositionline()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v5, "pref_camera_compositionline_key"

    const v6, 0x7f080347

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080342

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->CAMERA_SETTING_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_compositionline_key"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initEnableRender()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v5, "pref_is_enable_render_key"

    const v6, 0x7f080343

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080342

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->CAMERA_SETTING_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_is_enable_render_key"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initGPS()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v5, "pref_camera_recordlocation_key"

    const v6, 0x7f08033e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080341

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setDefaultValues([Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->PICTURE_PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_recordlocation_key"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initISO()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_iso_key"

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->CAMERA_SETTING_MAP:Ljava/util/Map;

    const-string/jumbo v2, "pref_camera_iso_key"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initMirrorForFrontCamera()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v5, "pref_camera_frontmirror_key"

    const v6, 0x7f08034b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080341

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->CAMERA_SETTING_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_frontmirror_key"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initPictureQuality()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v5, "pref_camera_jpegquality_key"

    const v6, 0x7f080303

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "90"

    const v5, 0x7f0d0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->PICTURE_PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_jpegquality_key"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initPictureSaveWay()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v5, "pref_camera_pictureautosavemode_key"

    const v6, 0x7f0801b4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080344

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d000c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->CAMERA_SETTING_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_pictureautosavemode_key"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static initPictureSettingPreference()V
    .registers 0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initPictureSize()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initPictureQuality()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initSavePictureType()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initBackSavePicture()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initSaveOrgPicture()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initTimeWaterMaker()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initGPS()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->initRedressSavePictureOrientation()V

    return-void
.end method

.method private static initPictureSize()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v1

    const-string/jumbo v2, "key_camera_picture_size"

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->PICTURE_PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v2, "key_camera_picture_size"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initRedressOfPreview()V
    .registers 0

    return-void
.end method

.method private static initRedressSavePictureOrientation()V
    .registers 0

    return-void
.end method

.method private static initSaveOrgPicture()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v5, "pref_camera_saveorg_key"

    const v6, 0x7f08034a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080342

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setDefaultValues([Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->PICTURE_PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_saveorg_key"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initSavePictureType()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v5, "pref_camera_save_type_key"

    const v6, 0x7f08030b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080346

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d0008

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->PICTURE_PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_save_type_key"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initTimeWaterMaker()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v5, "pref_camera_timewatermake_key"

    const v6, 0x7f080349

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080342

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setDefaultValues([Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->PICTURE_PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_timewatermake_key"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initVibrationFeedback()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;

    const-string/jumbo v5, "pref_camera_vibrationfeedback_key"

    const v6, 0x7f08034c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080342

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->CAMERA_SETTING_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_vibrationfeedback_key"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initVolumeKeyFunction()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v5, "pref_camera_volumekeys_key"

    const v6, 0x7f080307

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080348

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d000a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0009

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessPreferenceGroup;->CAMERA_SETTING_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_camera_volumekeys_key"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
