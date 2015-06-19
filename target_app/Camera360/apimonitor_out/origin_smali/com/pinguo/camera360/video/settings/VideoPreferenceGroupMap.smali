.class public Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;
.super Ljava/lang/Object;
.source "VideoPreferenceGroupMap.java"


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

    const-class v0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->initVideoQuality()V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->initFlash()V

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

    sget-object v2, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

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

    sget-object v2, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    goto :goto_c
.end method

.method private static initFlash()V
    .registers 10

    const/4 v9, 0x4

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    const-string/jumbo v6, "pref_video_flashmode_key"

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

    sget-object v6, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v7, "pref_video_flashmode_key"

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

.method private static initVideoQuality()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    const-string/jumbo v5, "pref_video_quality_key"

    const v6, 0x7f080210

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "6"

    const v5, 0x7f0d0011

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setDefault(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V

    sget-object v5, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->PREFERENCE_MAP:Ljava/util/Map;

    const-string/jumbo v6, "pref_video_quality_key"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
