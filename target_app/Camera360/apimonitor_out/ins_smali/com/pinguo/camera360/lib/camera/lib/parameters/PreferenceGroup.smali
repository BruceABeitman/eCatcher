.class public final Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
.super Ljava/lang/Object;
.source "PreferenceGroup.java"
.field private static final NOT_FOUND:I = -0x1
.field private static final instance:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
.field private preferenceMap:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
invoke-direct {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;-><init>()V
sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->instance:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
return-void
.end method
.method private buildExposureCompensation(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 14
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getMaxExposureCompensation()I
move-result v4
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getMinExposureCompensation()I
move-result v6
if-nez v4, :cond_15
if-nez v6, :cond_15
const/4 v10, 0x0
invoke-virtual {p1, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEnable(Z)V
:goto_14
return-void
:cond_15
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCurrExposure()I
move-result v10
invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {p1, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setDefault(Ljava/lang/String;)V
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getExposureCompensationStep()F
move-result v9
int-to-float v10, v4
mul-float/2addr v10, v9
float-to-double v10, v10
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v5, v10
int-to-float v10, v6
mul-float/2addr v10, v9
float-to-double v10, v10
invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D
move-result-wide v10
double-to-int v7, v10
sub-int v10, v5, v7
add-int/lit8 v10, v10, 0x1
new-array v1, v10, [Ljava/lang/String;
sub-int v10, v5, v7
add-int/lit8 v10, v10, 0x1
new-array v2, v10, [Ljava/lang/String;
move v3, v7
:goto_41
if-le v3, v5, :cond_50
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->reverse([Ljava/lang/Object;)V
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->reverse([Ljava/lang/Object;)V
invoke-virtual {p1, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V
goto :goto_14
:cond_50
sget-boolean v10, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_DEVICE:Z
if-eqz v10, :cond_77
sub-int v10, v5, v3
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v11
aput-object v11, v2, v10
:goto_5c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
if-lez v3, :cond_68
const/16 v10, 0x2b
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_68
sub-int v10, v5, v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
aput-object v11, v1, v10
add-int/lit8 v3, v3, 0x1
goto :goto_41
:cond_77
sub-int v10, v5, v3
int-to-float v11, v3
div-float/2addr v11, v9
invoke-static {v11}, Ljava/lang/Math;->round(F)I
move-result v11
invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v11
aput-object v11, v2, v10
goto :goto_5c
.end method
.method private buildIso(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 13
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupportISO()Z
move-result v9
if-nez v9, :cond_f
const/4 v9, 0x0
invoke-virtual {p1, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEnable(Z)V
:goto_e
return-void
:cond_f
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCurrISO()Ljava/lang/String;
move-result-object v9
invoke-virtual {p1, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setDefault(Ljava/lang/String;)V
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getIsoSupported()[Ljava/lang/String;
move-result-object v8
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
new-instance v3, Ljava/util/LinkedList;
invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
const/4 v5, -0x1
const/4 v6, 0x0
:goto_26
array-length v9, v8
if-lt v6, v9, :cond_4b
invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
move-result v9
new-array v9, v9, [Ljava/lang/CharSequence;
invoke-virtual {v2, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ljava/lang/CharSequence;
invoke-virtual {v3}, Ljava/util/LinkedList;->size()I
move-result v9
new-array v9, v9, [Ljava/lang/String;
invoke-virtual {v3, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v4
check-cast v4, [Ljava/lang/String;
invoke-virtual {p1, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V
invoke-virtual {p1, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->resetIfInvalid(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
goto :goto_e
:cond_4b
aget-object v9, v8, v6
sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
if-gez v5, :cond_5e
const-string/jumbo v9, "hjr"
invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v9
if-gtz v9, :cond_69
:cond_5e
if-gez v5, :cond_6d
const-string/jumbo v9, "de"
invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v9
if-lez v9, :cond_6d
:cond_69
move v5, v6
:goto_6a
add-int/lit8 v6, v6, 0x1
goto :goto_26
:cond_6d
const-string/jumbo v9, "iso"
const-string/jumbo v10, ""
invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v9, "-"
const-string/jumbo v10, ""
invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
aget-object v9, v8, v6
invoke-virtual {v3, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_6a
.end method
.method private buildPictureSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)V
.registers 19
invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I
move-result v5
if-gtz v5, :cond_d
const/4 v10, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEnable(Z)V
:goto_c
return-void
:cond_d
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_1b
:cond_1b
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-nez v11, :cond_5e
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v10
new-array v10, v10, [Ljava/lang/String;
invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v9
check-cast v9, [Ljava/lang/String;
const-string/jumbo v10, "Test"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Array = "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p1
invoke-virtual {v0, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v10
new-array v10, v10, [Ljava/lang/String;
invoke-interface {v3, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v10
check-cast v10, [Ljava/lang/String;
move-object/from16 v0, p1
invoke-virtual {v0, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V
goto :goto_c
:cond_5e
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;
const-string/jumbo v11, "Test"
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "info = "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->getPicSize()Landroid/hardware/Camera$Size;
move-result-object v13
iget v13, v13, Landroid/hardware/Camera$Size;->height:I
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, "/"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->getPicSize()Landroid/hardware/Camera$Size;
move-result-object v13
iget v13, v13, Landroid/hardware/Camera$Size;->width:I
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, "/ "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->getIsValid()Z
move-result v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->getIsValid()Z
move-result v11
if-eqz v11, :cond_1b
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->getPictureRatio()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
move-result-object v11
move-object/from16 v0, p0
invoke-direct {v0, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->convertPictureRadioToString(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;)Ljava/lang/String;
move-result-object v7
const-string/jumbo v1, ""
sget-object v11, Lcom/pinguo/lib/util/Util;->PHONE_LOCALE:Ljava/lang/String;
const-string/jumbo v12, "en"
invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_12b
const-string/jumbo v11, "%.1f"
const/4 v12, 0x1
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->getPicPix()I
move-result v14
int-to-float v14, v14
const/high16 v15, 0x42c8
div-float/2addr v14, v15
invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v14
aput-object v14, v12, v13
invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v11, ".0"
invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_eb
const/4 v11, 0x0
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v12
add-int/lit8 v12, v12, -0x2
invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
:cond_eb
:goto_eb
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v11
const v12, 0x7f0802f1
invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v11
const/4 v12, 0x2
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
aput-object v1, v12, v13
const/4 v13, 0x1
aput-object v7, v12, v13
invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->getPicSize()Landroid/hardware/Camera$Size;
move-result-object v8
new-instance v11, Ljava/lang/StringBuilder;
iget v12, v8, Landroid/hardware/Camera$Size;->width:I
invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "x"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
iget v12, v8, Landroid/hardware/Camera$Size;->height:I
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_1b
:cond_12b
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->getPicPix()I
move-result v11
invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
goto :goto_eb
.end method
.method private buildSharpness(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 10
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSharpnessSupported()Z
move-result v6
if-nez v6, :cond_f
const/4 v6, 0x0
invoke-virtual {p1, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEnable(Z)V
:goto_e
return-void
:cond_f
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSharpness()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setDefault(Ljava/lang/String;)V
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedSharpness()[Ljava/lang/String;
move-result-object v5
array-length v6, v5
new-array v1, v6, [Ljava/lang/CharSequence;
array-length v6, v5
new-array v2, v6, [Ljava/lang/String;
const/4 v3, 0x0
:goto_21
array-length v6, v5
if-lt v3, v6, :cond_2e
invoke-virtual {p1, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntries([Ljava/lang/Object;)V
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEntryValues([Ljava/lang/String;)V
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->resetIfInvalid(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
goto :goto_e
:cond_2e
aget-object v6, v5, v3
sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
aput-object v0, v1, v3
aget-object v6, v5, v3
aput-object v6, v2, v3
add-int/lit8 v3, v3, 0x1
goto :goto_21
.end method
.method private buildWhiteBalance(Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;)V
.registers 14
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isWhiteBalanceSupported()Z
move-result v11
if-nez v11, :cond_f
const/4 v11, 0x0
invoke-virtual {p1, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setEnable(Z)V
:goto_e
return-void
:cond_f
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedWhiteBalance()Ljava/util/List;
move-result-object v8
new-instance v10, Ljava/util/HashSet;
invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
const-string/jumbo v11, "auto"
invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-string/jumbo v11, "cloudy-daylight"
invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-string/jumbo v11, "daylight"
invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-string/jumbo v11, "fluorescent"
invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-string/jumbo v11, "incandescent"
invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-string/jumbo v11, "shade"
invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-string/jumbo v11, "twilight"
invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-string/jumbo v11, "warm-fluorescent"
invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntries()[Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntryValues()[Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getIconIds()[I
move-result-object v7
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
new-instance v6, Ljava/util/LinkedList;
invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V
const/4 v4, 0x0
:goto_68
array-length v11, v3
if-lt v4, v11, :cond_9c
invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
move-result v11
new-array v11, v11, [Ljava/lang/Object;
invoke-virtual {v1, v11}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v11
invoke-virtual {p1, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setEntries([Ljava/lang/Object;)V
invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
move-result v11
new-array v11, v11, [Ljava/lang/String;
invoke-virtual {v2, v11}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v11
check-cast v11, [Ljava/lang/String;
invoke-virtual {p1, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setEntryValues([Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/util/LinkedList;->size()I
move-result v11
new-array v5, v11, [I
const/4 v4, 0x0
:goto_8e
invoke-virtual {v6}, Ljava/util/LinkedList;->size()I
move-result v11
if-lt v4, v11, :cond_ba
invoke-virtual {p1, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->setIconIds([I)V
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->resetIfInvalid(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
goto/16 :goto_e
:cond_9c
aget-object v9, v3, v4
invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_b7
aget-object v11, v0, v4
invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
aget-object v11, v3, v4
invoke-virtual {v2, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
aget v11, v7, v4
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
invoke-virtual {v6, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_b7
add-int/lit8 v4, v4, 0x1
goto :goto_68
:cond_ba
invoke-virtual {v6, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/lang/Integer;
invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
move-result v11
aput v11, v5, v4
add-int/lit8 v4, v4, 0x1
goto :goto_8e
.end method
.method private convertPictureRadioToString(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;)Ljava/lang/String;
.registers 3
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_16X9:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
if-ne p1, v0, :cond_8
const-string/jumbo v0, "(16:9)"
:goto_7
return-object v0
:cond_8
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_16X10:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
if-ne p1, v0, :cond_10
const-string/jumbo v0, "(16:10)"
goto :goto_7
:cond_10
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_5X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
if-ne p1, v0, :cond_18
const-string/jumbo v0, "(5:3)"
goto :goto_7
:cond_18
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_3X2:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
if-ne p1, v0, :cond_20
const-string/jumbo v0, "(3:2)"
goto :goto_7
:cond_20
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_1X1:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
if-ne p1, v0, :cond_28
const-string/jumbo v0, "(1:1)"
goto :goto_7
:cond_28
const-string/jumbo v0, ""
goto :goto_7
.end method
.method public static get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
.registers 1
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->instance:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
return-object v0
.end method
.method private reloadValue(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 2
if-eqz p1, :cond_5
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->reloadValue()V
:cond_5
return-void
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
.method private static reverse([Ljava/lang/Object;)V
.registers 7
array-length v2, p0
const/4 v5, 0x2
if-ge v2, v5, :cond_5
:cond_4
return-void
:cond_5
div-int/lit8 v3, v2, 0x2
const/4 v0, 0x0
:goto_8
if-ge v0, v3, :cond_4
add-int/lit8 v5, v2, -0x1
sub-int v1, v5, v0
aget-object v4, p0, v0
aget-object v5, p0, v1
aput-object v5, p0, v0
aput-object v4, p0, v1
add-int/lit8 v0, v0, 0x1
goto :goto_8
.end method
.method private supportedOptions(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)Z
.registers 6
const/4 v0, 0x0
const/4 v1, 0x1
if-eqz p2, :cond_a
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v2
if-gt v2, v1, :cond_b
:cond_a
:goto_a
return v0
:cond_b
invoke-virtual {p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->filterUnsupported(Ljava/util/List;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;
move-result-object v2
array-length v2, v2
if-le v2, v1, :cond_a
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->resetIfInvalid(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
move v0, v1
goto :goto_a
.end method
.method public changeFlashItem(Ljava/lang/String;ZLcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;)Z
.registers 9
if-nez p3, :cond_4
const/4 v2, 0x0
:goto_3
return v2
:cond_4
const-string/jumbo v2, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_63
const/4 v1, 0x0
const-string/jumbo v2, "key_camera_flashmode"
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
if-eqz v0, :cond_54
invoke-virtual {p3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFlashModes()Ljava/util/List;
move-result-object v1
if-eqz v1, :cond_44
const-string/jumbo v2, "PreferenceGroupMap"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "supportFlashModes = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "isEnterMode = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_44
if-eqz p2, :cond_54
if-eqz v1, :cond_54
const-string/jumbo v2, "on"
invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
const-string/jumbo v2, "auto"
invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:cond_54
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->supportedOptions(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)Z
move-result v2
if-eqz v2, :cond_65
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getKey()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_63
:goto_63
const/4 v2, 0x1
goto :goto_3
:cond_65
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getKey()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_63
.end method
.method public findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
return-object v0
.end method
.method protected init(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;)V
.registers 15
const-string/jumbo v10, "key_camera_flashmode"
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v1
if-eqz v1, :cond_1c
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFlashModes()Ljava/util/List;
move-result-object v10
invoke-direct {p0, v1, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->supportedOptions(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)Z
move-result v10
if-eqz v10, :cond_1c
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getKey()Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1c
const-string/jumbo v10, "key_camera_focusmode"
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v2
if-eqz v2, :cond_38
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFocusModes()Ljava/util/List;
move-result-object v10
invoke-direct {p0, v2, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->supportedOptions(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)Z
move-result v10
if-eqz v10, :cond_38
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getKey()Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_38
const-string/jumbo v10, "key_camera_picture_size"
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v5
const-string/jumbo v10, "PreferenceGroup"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "picSizeMode = "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v5, :cond_88
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedPictureSizes()Ljava/util/List;
move-result-object v6
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedPreviewSizes()Ljava/util/List;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->filterPictureSize(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
move-result-object v4
if-eqz v4, :cond_6b
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v10
if-gtz v10, :cond_79
:cond_6b
const/4 v10, 0x0
invoke-virtual {v5, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setEnable(Z)V
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getKey()Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_78
:goto_78
return-void
:cond_79
invoke-direct {p0, v5, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->buildPictureSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)V
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->filterDuplicated()V
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getKey()Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_88
const-string/jumbo v10, "pref_camera_iso_key"
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v3
if-eqz v3, :cond_9d
invoke-direct {p0, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->buildIso(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getKey()Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_9d
const-string/jumbo v10, "key_camera_exposure"
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
if-eqz v0, :cond_b2
invoke-direct {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->buildExposureCompensation(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getKey()Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_b2
const-string/jumbo v10, "key_camera_whitebalance"
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v9
check-cast v9, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
if-eqz v9, :cond_d7
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedWhiteBalance()Ljava/util/List;
move-result-object v10
invoke-direct {p0, v9, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->supportedOptions(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Ljava/util/List;)Z
move-result v10
if-eqz v10, :cond_d7
invoke-direct {p0, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->buildWhiteBalance(Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;)V
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getKey()Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_d7
const-string/jumbo v10, "key_camera_sharpness"
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroupMap;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v8
if-eqz v8, :cond_78
invoke-direct {p0, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->buildSharpness(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getKey()Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_78
.end method
.method public reloadAllValue()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_11
return-void
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-direct {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->reloadValue(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
goto :goto_a
.end method
.method public reloadValue(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->preferenceMap:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->reloadValue(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
return-void
.end method
.method public reloadValue([Ljava/lang/String;)V
.registers 5
array-length v2, p1
const/4 v1, 0x0
:goto_2
if-lt v1, v2, :cond_5
return-void
:cond_5
aget-object v0, p1, v1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->reloadValue(Ljava/lang/String;)V
add-int/lit8 v1, v1, 0x1
goto :goto_2
.end method