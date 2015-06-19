.class public final Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;
.super Ljava/lang/Object;
.source "PreferenceGroupMap.java"


# static fields
.field private static final PREFERENCE_MAP:Ljava/util/Map;
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

    const-class v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->initFlash()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->initFocus()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->initPicSize()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->initISO()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->initExposure()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->initSharpness()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->initWhiteBalance()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
    .registers 5

    const/4 v3, 0x0

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    if-nez v1, :cond_d

    move-object v2, v3

    :goto_c
    return-object v2

    :cond_d
    :try_start_d
    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_d .. :try_end_13} :catch_14

    goto :goto_c

    :catch_14
    move-exception v0

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    goto :goto_c
.end method

.method private static initExposure()V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v1, "key_camera_exposure"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08024a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v2, "key_camera_exposure"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initFlash()V
    .registers 10

    const/4 v9, 0x4

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    const-string/jumbo v6, "key_camera_flashmode"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080319

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "off"

    const v6, 0x7f0d0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    const v7, 0x7f08031a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const v7, 0x7f08031b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x2

    const v7, 0x7f08031c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const v7, 0x7f08031d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    new-array v4, v9, [I

    fill-array-data v4, :array_6a

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setEntries([Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setIconIds([I)V

    sget-object v6, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v7, "key_camera_flashmode"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_6a
    .array-data 0x4
        0xcet 0x1t 0x2t 0x7ft
        0xd6t 0x1t 0x2t 0x7ft
        0xd2t 0x1t 0x2t 0x7ft
        0xdat 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private static initFocus()V
    .registers 10

    const/4 v9, 0x3

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    const-string/jumbo v6, "key_camera_focusmode"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f08031e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "auto"

    const v6, 0x7f0d0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    const v7, 0x7f08031f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const v7, 0x7f080320

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x2

    const v7, 0x7f080321

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    new-array v4, v9, [I

    fill-array-data v4, :array_60

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setEntries([Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setIconIds([I)V

    sget-object v6, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v7, "key_camera_focusmode"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_60
    .array-data 0x4
        0xat 0x4t 0x2t 0x7ft
        0xct 0x4t 0x2t 0x7ft
        0xbt 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method private static initISO()V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v1, "pref_camera_iso_key"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v2, "pref_camera_iso_key"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initPicSize()V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v1, "key_camera_picture_size"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080302

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v2, "key_camera_picture_size"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initSharpness()V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v1, "key_camera_sharpness"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v2, "key_camera_sharpness"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initWhiteBalance()V
    .registers 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v0, "auto"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v6, "auto"

    aput-object v6, v2, v9

    const-string/jumbo v6, "cloudy-daylight"

    aput-object v6, v2, v10

    const-string/jumbo v6, "daylight"

    aput-object v6, v2, v11

    const-string/jumbo v6, "fluorescent"

    aput-object v6, v2, v12

    const/4 v6, 0x4

    const-string/jumbo v7, "incandescent"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "shade"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "twilight"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "warm-fluorescent"

    aput-object v7, v2, v6

    new-array v1, v8, [Ljava/lang/String;

    const v6, 0x7f0801f2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v9

    const v6, 0x7f0801f9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v10

    const v6, 0x7f0801f3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v11

    const v6, 0x7f0801f4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v12

    const/4 v6, 0x4

    const v7, 0x7f0801f5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const v7, 0x7f0801f6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const v7, 0x7f0801f7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x7

    const v7, 0x7f0801f8

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    new-array v3, v8, [I

    fill-array-data v3, :array_b6

    new-instance v5, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    const-string/jumbo v6, "key_camera_whitebalance"

    const v7, 0x7f0801f1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setEntries([Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setIconIds([I)V

    sget-object v6, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v7, "key_camera_whitebalance"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_b6
    .array-data 0x4
        0xe8t 0x1t 0x2t 0x7ft
        0xe9t 0x1t 0x2t 0x7ft
        0xeat 0x1t 0x2t 0x7ft
        0xebt 0x1t 0x2t 0x7ft
        0xect 0x1t 0x2t 0x7ft
        0xedt 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
    .end array-data
.end method
