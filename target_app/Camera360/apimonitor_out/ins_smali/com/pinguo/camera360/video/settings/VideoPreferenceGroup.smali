.class public Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;
.super Ljava/lang/Object;
.source "VideoPreferenceGroup.java"
.field private static final NOT_FOUND:I = -0x1
.field private static final sInstance:Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;
.field private preferenceMap:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;
invoke-direct {v0}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;-><init>()V
sput-object v0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->sInstance:Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->preferenceMap:Ljava/util/Map;
return-void
.end method
.method public static get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;
.registers 1
sget-object v0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->sInstance:Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;
return-object v0
.end method
.method private getSupportedVideoQuality(I)Ljava/util/ArrayList;
.registers 13
const/4 v6, 0x4
const/4 v10, 0x1
const/4 v9, 0x6
const/4 v8, 0x5
const/4 v4, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
sget-boolean v5, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z
if-eqz v5, :cond_3b
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->upSupport_1080_video()Z
move-result v5
if-nez v5, :cond_21
invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z
move-result v5
if-eqz v5, :cond_21
invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_21
invoke-static {p1, v8}, Landroid/media/CamcorderProfile;->hasProfile(II)Z
move-result v5
if-eqz v5, :cond_2e
invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2e
invoke-static {p1, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z
move-result v5
if-eqz v5, :cond_3b
invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_3b
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v5
if-ne v5, v10, :cond_44
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:cond_44
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->getVideoAdapt()Lcom/pinguo/camera360/video/settings/VideoAdapt;
move-result-object v3
if-eqz v3, :cond_61
invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->getUnSupQuality()[I
move-result-object v2
if-eqz v2, :cond_61
array-length v5, v2
if-lez v5, :cond_61
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_61
array-length v6, v2
move v5, v4
:goto_5f
if-lt v5, v6, :cond_9c
:cond_61
sget-boolean v5, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_I9100:Z
if-eqz v5, :cond_73
invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_73
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v5
if-nez v5, :cond_87
invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_87
if-eqz v3, :cond_9b
invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->getUnSupQuality()[I
move-result-object v2
if-eqz v2, :cond_9b
array-length v5, v2
if-lez v5, :cond_9b
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_9b
array-length v5, v2
:goto_99
if-lt v4, v5, :cond_ac
:cond_9b
return-object v1
:cond_9c
aget v7, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
add-int/lit8 v5, v5, 0x1
goto :goto_5f
:cond_ac
aget v6, v2, v4
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
add-int/lit8 v4, v4, 0x1
goto :goto_99
.end method
.method private static resetIfInvalid(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_f
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueIndex(I)V
:cond_f
return-void
.end method
.method private supportedOptions(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)Z
.registers 5
const/4 v0, 0x0
if-eqz p2, :cond_9
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v1
if-gtz v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
invoke-virtual {p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->filterUnsupported(Ljava/util/List;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;
move-result-object v1
array-length v1, v1
if-lez v1, :cond_9
invoke-static {p1}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->resetIfInvalid(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
const/4 v0, 0x1
goto :goto_9
.end method
.method public findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
return-object v0
.end method
.method protected init(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;I)V
.registers 8
const-string/jumbo v3, "pref_video_quality_key"
invoke-static {v3}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v2
if-eqz v2, :cond_1c
invoke-direct {p0, p2}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->getSupportedVideoQuality(I)Ljava/util/ArrayList;
move-result-object v3
invoke-direct {p0, v2, v3}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->supportedOptions(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)Z
move-result v3
if-eqz v3, :cond_54
iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getKey()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1c
:goto_1c
const-string/jumbo v3, "pref_video_flashmode_key"
invoke-static {v3}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
if-eqz v0, :cond_53
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFlashModes()Ljava/util/List;
move-result-object v1
if-eqz v1, :cond_39
const-string/jumbo v3, "auto"
invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
const-string/jumbo v3, "on"
invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:cond_39
if-eqz v1, :cond_53
const-string/jumbo v3, "torch"
invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_53
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->supportedOptions(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)Z
move-result v3
if-eqz v3, :cond_53
iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getKey()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_53
return-void
:cond_54
iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getKey()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1c
.end method