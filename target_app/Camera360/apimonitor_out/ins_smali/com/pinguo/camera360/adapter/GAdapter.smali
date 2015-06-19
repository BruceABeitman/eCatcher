.class public Lcom/pinguo/camera360/adapter/GAdapter;
.super Ljava/lang/Object;
.source "GAdapter.java"
.field private static final BRAND:Ljava/lang/String; = null
.field private static final BRAND_MEIZU:Ljava/lang/String; = "Meizu"
.field private static final BRAND_ZTE:Ljava/lang/String; = "ZTE"
.field private static final HARDWARE:Ljava/lang/String; = null
.field private static final HARDWARE_MT6577:Ljava/lang/String; = "mt6577"
.field private static final HARDWARE_MT6589:Ljava/lang/String; = "mt6589"
.field public static final IS_HM:Z = false
.field public static final IS_HM_NOTE:Z = false
.field private static final IS_HTC_G06:Z = false
.field private static final IS_HTC_G10_BELOW_4:Z = false
.field private static final IS_HTC_G11:Z = false
.field public static final IS_HTC_G11_ALL:Z = false
.field private static final IS_HTC_G12:Z = false
.field private static final IS_HTC_G14:Z = false
.field public static final IS_HTC_G14_403:Z = false
.field private static final IS_HTC_G17:Z = false
.field private static final IS_HTC_G19:Z = false
.field private static final IS_HTC_G21:Z = false
.field public static final IS_HTC_ONE:Z = false
.field private static final IS_HUAWEI_U8860:Z = false
.field public static final IS_HUAWEI_U8950D:Z = false
.field public static final IS_INTEL_X86:Z = false
.field public static final IS_LENOVO_K900:Z = false
.field public static final IS_LG_404:Z = false
.field public static final IS_LT26I:Z = false
.field public static final IS_MEITU_KISS:Z = false
.field public static final IS_MEIZU:Z = false
.field public static final IS_MEIZU_DEVICE:Z = false
.field public static final IS_MEIZU_M032:Z = false
.field private static final IS_MEIZU_M040:Z = false
.field public static final IS_MEIZU_M040_FLYME_32:Z = false
.field public static final IS_MEIZU_M9:Z = false
.field public static IS_MEI_ZU_CAMERA_PERMISSION:Z = false
.field private static final IS_MI_2:Z = false
.field public static final IS_MI_2A:Z = false
.field private static final IS_MI_2S:Z = false
.field public static final IS_MI_3:Z = false
.field private static final IS_MI_ONE:Z = false
.field public static final IS_MI_PAD:Z = false
.field private static final IS_MI_SERIES:Z = false
.field private static final IS_MOTO_DEFY:Z = false
.field public static final IS_MTK:Z = false
.field private static final IS_NEXUS_4:Z = false
.field public static final IS_NEXUS_5:Z = false
.field public static final IS_NOT_SUPPORT_PREVIEW_ADJUST:Z = false
.field public static final IS_NOT_SUPPORT_ZOOM:Z = false
.field public static final IS_OLD_I9100G:Z = false
.field public static final IS_OPPO_X909:Z = false
.field public static final IS_PREVIEW_MOSAICS:Z = false
.field public static final IS_RENDER_ZOOM_INCURRECT:Z = false
.field private static final IS_SAMSUNG_B5330:Z = false
.field public static final IS_SAMSUNG_GALAXY_CAMERA:Z = false
.field public static final IS_SAMSUNG_I9100:Z = false
.field public static final IS_SAMSUNG_S3:Z = false
.field public static final IS_SAMSUNG_S4:Z = false
.field private static final IS_SAMSUNG_S5300:Z = false
.field public static final IS_SAMSUNG_S5360:Z = false
.field public static final IS_SAMSUNG_S5830:Z = false
.field public static final IS_SAMSUNG_SM_T210:Z = false
.field public static final IS_SAMSUNG_ZOOM:Z = false
.field private static final IS_SONY_LT18i:Z = false
.field private static final IS_SONY_X10i:Z = false
.field public static final IS_SYSTEM_BACK_HAVENT_EXIF:Z = false
.field public static final IS_SYSTEM_FRONT_HAS_MIRROR:Z = false
.field public static final IS_SYSTEM_FRONT_HAVENT_EXIF:Z = false
.field public static final IS_SYSTEM_FRONT_NOT_CAMERA_INFO:Z = false
.field public static final IS_UER_START_SMOOTH_ZOOM:Z = false
.field public static final IS_UNSUPPORT_SNAPSHOT:Z = false
.field private static IS_USE_DCIM:Z = false
.field public static IS_X86:Z = false
.field public static IS_XIAO_MI_CAMERA_PERMISSION:Z = false
.field public static final IS_XT912:Z = false
.field public static final IS_ZTE_V889D:Z = false
.field public static final MI_SERIES_ADAPTER:Z = false
.field public static final MODEL:Ljava/lang/String; = null
.field private static final MODEL_HTC_G06:Ljava/lang/String; = "HTC C510e"
.field private static final MODEL_HTC_G10_SIMPLE:Ljava/lang/String; = "Desire HD"
.field private static final MODEL_HTC_G11:Ljava/lang/String; = "HTC Incredible S"
.field private static final MODEL_HTC_G12:Ljava/lang/String; = "HTC Desire S"
.field private static final MODEL_HTC_G14:Ljava/lang/String; = "HTC Sensation"
.field private static final MODEL_HTC_G17:Ljava/lang/String; = "HTC EVO 3D"
.field private static final MODEL_HTC_G19:Ljava/lang/String; = "HTC Raider"
.field private static final MODEL_HTC_G21:Ljava/lang/String; = "HTC Sensation XL"
.field private static final MODEL_HUAWEI_D2:Ljava/lang/String; = "HUAWEI D2-2010"
.field private static final MODEL_LENOVO_K900:Ljava/lang/String; = "Lenovo K900"
.field private static final MODEL_M032:Ljava/lang/String; = "M032"
.field private static final MODEL_M040:Ljava/lang/String; = "M040"
.field private static final MODEL_M9:Ljava/lang/String; = "M9"
.field private static final MODEL_MEITU_KISS:Ljava/lang/String; = "Meitu Kiss"
.field private static final MODEL_ZTE_V889D:Ljava/lang/String; = "ZTE V889D"
.field public static final RECORD_USE_11025:Z
.field public static final RECORD_USE_44100:Z
.field public static final RECORD_USE_8000:Z
.field public static final RELEASE:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 14
sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;
sput-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
sget-object v12, Landroid/os/Build;->BRAND:Ljava/lang/String;
sput-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->BRAND:Ljava/lang/String;
sget-object v12, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
sput-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->HARDWARE:Ljava/lang/String;
sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
sput-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "Lenovo K900"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_LENOVO_K900:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->BRAND:Ljava/lang/String;
const-string/jumbo v13, "Meitu Kiss"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEITU_KISS:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->BRAND:Ljava/lang/String;
const-string/jumbo v13, "ZTE"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_572
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "ZTE V889D"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_572
const/4 v12, 0x1
:goto_3d
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_ZTE_V889D:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->BRAND:Ljava/lang/String;
const-string/jumbo v13, "Meizu"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_DEVICE:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_DEVICE:Z
if-eqz v12, :cond_575
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "M9"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_575
const/4 v12, 0x1
:goto_5a
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M9:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_DEVICE:Z
if-eqz v12, :cond_578
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "M032"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_578
const/4 v12, 0x1
:goto_6c
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M032:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_DEVICE:Z
if-eqz v12, :cond_57b
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "M040"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_57b
const/4 v12, 0x1
:goto_7e
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M040:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M032:Z
if-nez v12, :cond_57e
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M040:Z
if-nez v12, :cond_57e
const/4 v12, 0x0
:goto_89
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU:Z
const-string/jumbo v12, "HTC C510e"
sget-object v13, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_581
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_c2
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_c2
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.5"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_c2
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.4"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_581
:cond_c2
const/4 v12, 0x1
:goto_c3
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G06:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HTC Incredible S"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_584
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_fc
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_fc
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.5"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_fc
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.4"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_584
:cond_fc
const/4 v12, 0x1
:goto_fd
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G11:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HTC Incredible S"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G11_ALL:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "Desire HD"
invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v12
if-eqz v12, :cond_587
sget-boolean v12, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z
if-nez v12, :cond_587
const/4 v12, 0x1
:goto_11a
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G10_BELOW_4:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HTC Desire S"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_58a
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_153
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_153
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.5"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_153
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.4"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_58a
:cond_153
const/4 v12, 0x1
:goto_154
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G12:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HTC Sensation"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_58d
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_18d
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_18d
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.5"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_18d
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.4"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_58d
:cond_18d
const/4 v12, 0x1
:goto_18e
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G14:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HTC Sensation"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_590
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "4.0.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_590
const/4 v12, 0x1
:goto_1a7
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G14_403:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HTC Raider"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_593
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_1e0
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_1e0
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.5"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_1e0
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.4"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_593
:cond_1e0
const/4 v12, 0x1
:goto_1e1
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G19:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HTC Sensation XL"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_596
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_21a
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_21a
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.5"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_21a
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.4"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_596
:cond_21a
const/4 v12, 0x1
:goto_21b
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G21:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HTC EVO 3D"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_599
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_254
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_254
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.5"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_254
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.4"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_599
:cond_254
const/4 v12, 0x1
:goto_255
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G17:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M9:Z
if-nez v12, :cond_59c
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M032:Z
if-nez v12, :cond_59c
const/4 v12, 0x0
:goto_260
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_USE_DCIM:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "MB525"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_59f
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2."
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_59f
const/4 v12, 0x1
:goto_279
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MOTO_DEFY:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->HARDWARE:Ljava/lang/String;
const-string/jumbo v13, "mt6589"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-nez v12, :cond_5a2
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->HARDWARE:Ljava/lang/String;
const-string/jumbo v13, "mt6577"
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-nez v12, :cond_5a2
const/4 v12, 0x0
:goto_292
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MTK:Z
const-string/jumbo v12, "LT26i"
sget-object v13, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_LT26I:Z
const-string/jumbo v12, "MI PAD"
sget-object v13, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_PAD:Z
const-string/jumbo v12, "EK-GC100"
sget-object v13, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_GALAXY_CAMERA:Z
const-string/jumbo v12, "SM-C101"
sget-object v13, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_ZOOM:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "GT-I9500"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S4:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "SGH-I747M"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S3:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "X10i"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SONY_X10i:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "LT18i"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SONY_LT18i:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "GT-B5330"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_B5330:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "GT-S5300"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5300:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "GT-S5360"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5360:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "GT-S5830"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5830:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SONY_X10i:Z
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->RECORD_USE_8000:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_B5330:Z
if-nez v12, :cond_5a5
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5360:Z
if-nez v12, :cond_5a5
const/4 v12, 0x0
:goto_325
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->RECORD_USE_44100:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5300:Z
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->RECORD_USE_11025:Z
sget-boolean v12, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z
if-eqz v12, :cond_5a8
const/4 v12, 0x0
:goto_330
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_PREVIEW_MOSAICS:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "MI-ONE Plus"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_ONE:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "MI 2"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_2:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "MI 2S"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_2S:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "MI 2A"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_2A:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "MI 3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_3:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "2013022"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_5ab
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "2013023"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_5ab
const/4 v12, 0x0
:goto_380
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HM:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HM NOTE 1TD"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HM_NOTE:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "SHW-M250S"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_5ae
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "4.0.3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_5ae
const/4 v12, 0x1
:goto_3a4
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_I9100:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "GT-I9100G"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_5b1
sget-boolean v12, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z
if-nez v12, :cond_5b1
const/4 v12, 0x1
:goto_3b6
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_OLD_I9100G:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "LG-P970"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_5b4
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "4.0.4"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_5b4
const/4 v12, 0x1
:goto_3cf
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_LG_404:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "U8860"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HUAWEI_U8860:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "Nexus 4"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NEXUS_4:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "Nexus 5"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NEXUS_5:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "MI "
invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_SERIES:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HTC 802w"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_ONE:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "XT912"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_5b7
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "2.3.6"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_5b7
const/4 v12, 0x1
:goto_41f
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_XT912:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "mfld_pr3"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_INTEL_X86:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HUAWEI U8950D"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HUAWEI_U8950D:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "SM-T210"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_SM_T210:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "X909"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_OPPO_X909:Z
const/4 v12, 0x0
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_XIAO_MI_CAMERA_PERMISSION:Z
sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;
if-eqz v2, :cond_48e
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v12
const/16 v13, 0x14
if-le v12, v13, :cond_48e
const-string/jumbo v12, "Xiaomi"
invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_48e
const-string/jumbo v12, "JLB"
invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
if-lez v4, :cond_48e
add-int/lit8 v4, v4, 0x3
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const/4 v7, 0x0
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v6
:goto_47a
if-lt v4, v6, :cond_5ba
:try_start_47c
:cond_47c
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v9
const v12, 0x4207999a
cmpl-float v12, v9, v12
if-lez v12, :cond_5d9
const/4 v12, 0x1
:goto_48c
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_XIAO_MI_CAMERA_PERMISSION:Z
:try_end_48e
.catch Ljava/lang/Exception; {:try_start_47c .. :try_end_48e} :catch_5dc
:goto_48e
:cond_48e
const/4 v12, 0x0
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEI_ZU_CAMERA_PERMISSION:Z
sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;
if-eqz v2, :cond_4d6
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v12
const/16 v13, 0x14
if-le v12, v13, :cond_4d6
const-string/jumbo v12, "Meizu"
invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_4d6
const-string/jumbo v12, "Flyme_OS_"
invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
if-lez v4, :cond_4d6
const-string/jumbo v12, "Flyme_OS_"
invoke-virtual {v12}, Ljava/lang/String;->length()I
move-result v12
add-int/2addr v4, v12
move v5, v4
:goto_4b8
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v12
if-lt v4, v12, :cond_5e2
:try_start_4be
:cond_4be
invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v11
const-string/jumbo v12, "\\."
invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v10
const/4 v9, 0x0
const/4 v3, 0x0
:goto_4cb
array-length v12, v10
if-lt v3, v12, :cond_5f6
const v12, 0x4a77c
if-lt v9, v12, :cond_621
const/4 v12, 0x1
:goto_4d4
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEI_ZU_CAMERA_PERMISSION:Z
:goto_4d6
:try_end_4d6
.catch Ljava/lang/Exception; {:try_start_4be .. :try_end_4d6} :catch_624
:cond_4d6
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M9:Z
if-nez v12, :cond_62a
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M032:Z
if-nez v12, :cond_62a
const/4 v12, 0x0
:goto_4df
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_UER_START_SMOOTH_ZOOM:Z
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "HUAWEI D2-2010"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_UNSUPPORT_SNAPSHOT:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_2:Z
if-nez v12, :cond_62d
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_2S:Z
if-nez v12, :cond_62d
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_2A:Z
if-nez v12, :cond_62d
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HUAWEI_U8860:Z
if-nez v12, :cond_62d
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NEXUS_4:Z
if-nez v12, :cond_62d
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_ONE:Z
if-nez v12, :cond_62d
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_OPPO_X909:Z
if-nez v12, :cond_62d
const/4 v12, 0x0
:goto_509
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_RENDER_ZOOM_INCURRECT:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M032:Z
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SYSTEM_FRONT_HAS_MIRROR:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_DEVICE:Z
if-eqz v12, :cond_630
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
const-string/jumbo v13, "M040"
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_630
sget-object v12, Lcom/pinguo/camera360/adapter/GAdapter;->RELEASE:Ljava/lang/String;
const-string/jumbo v13, "4.2.1"
invoke-static {v12, v13}, Lcom/pinguo/camera360/adapter/GAdapter;->compareSoftVersion(Ljava/lang/String;Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_630
const/4 v12, 0x1
:goto_52a
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M040_FLYME_32:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M040:Z
if-nez v12, :cond_633
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M9:Z
if-nez v12, :cond_633
const/4 v12, 0x0
:goto_535
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SYSTEM_BACK_HAVENT_EXIF:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M040:Z
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SYSTEM_FRONT_HAVENT_EXIF:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G11:Z
if-nez v12, :cond_636
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G12:Z
if-nez v12, :cond_636
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G14:Z
if-nez v12, :cond_636
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G06:Z
if-nez v12, :cond_636
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G19:Z
if-nez v12, :cond_636
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G21:Z
if-nez v12, :cond_636
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G17:Z
if-nez v12, :cond_636
const/4 v12, 0x0
:goto_558
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SYSTEM_FRONT_NOT_CAMERA_INFO:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MOTO_DEFY:Z
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NOT_SUPPORT_ZOOM:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MOTO_DEFY:Z
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NOT_SUPPORT_PREVIEW_ADJUST:Z
sget-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_SERIES:Z
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->MI_SERIES_ADAPTER:Z
const-string/jumbo v12, "x86"
sget-object v13, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_X86:Z
return-void
:cond_572
const/4 v12, 0x0
goto/16 :goto_3d
:cond_575
const/4 v12, 0x0
goto/16 :goto_5a
:cond_578
const/4 v12, 0x0
goto/16 :goto_6c
:cond_57b
const/4 v12, 0x0
goto/16 :goto_7e
:cond_57e
const/4 v12, 0x1
goto/16 :goto_89
:cond_581
const/4 v12, 0x0
goto/16 :goto_c3
:cond_584
const/4 v12, 0x0
goto/16 :goto_fd
:cond_587
const/4 v12, 0x0
goto/16 :goto_11a
:cond_58a
const/4 v12, 0x0
goto/16 :goto_154
:cond_58d
const/4 v12, 0x0
goto/16 :goto_18e
:cond_590
const/4 v12, 0x0
goto/16 :goto_1a7
:cond_593
const/4 v12, 0x0
goto/16 :goto_1e1
:cond_596
const/4 v12, 0x0
goto/16 :goto_21b
:cond_599
const/4 v12, 0x0
goto/16 :goto_255
:cond_59c
const/4 v12, 0x1
goto/16 :goto_260
:cond_59f
const/4 v12, 0x0
goto/16 :goto_279
:cond_5a2
const/4 v12, 0x1
goto/16 :goto_292
:cond_5a5
const/4 v12, 0x1
goto/16 :goto_325
:cond_5a8
const/4 v12, 0x1
goto/16 :goto_330
:cond_5ab
const/4 v12, 0x1
goto/16 :goto_380
:cond_5ae
const/4 v12, 0x0
goto/16 :goto_3a4
:cond_5b1
const/4 v12, 0x0
goto/16 :goto_3b6
:cond_5b4
const/4 v12, 0x0
goto/16 :goto_3cf
:cond_5b7
const/4 v12, 0x0
goto/16 :goto_41f
:cond_5ba
invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C
move-result v0
add-int/lit8 v4, v4, 0x1
const/16 v12, 0x30
if-lt v0, v12, :cond_5cd
const/16 v12, 0x39
if-gt v0, v12, :cond_5cd
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_47a
:cond_5cd
const/16 v12, 0x2e
if-ne v0, v12, :cond_47c
if-nez v7, :cond_47c
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v7, 0x1
goto/16 :goto_47a
:cond_5d9
const/4 v12, 0x0
goto/16 :goto_48c
:catch_5dc
move-exception v1
const/4 v12, 0x0
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_XIAO_MI_CAMERA_PERMISSION:Z
goto/16 :goto_48e
:cond_5e2
invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v12, 0x30
if-lt v0, v12, :cond_5ee
const/16 v12, 0x39
if-le v0, v12, :cond_5f2
:cond_5ee
const/16 v12, 0x2e
if-ne v0, v12, :cond_4be
:cond_5f2
add-int/lit8 v4, v4, 0x1
goto/16 :goto_4b8
:cond_5f6
if-nez v3, :cond_607
:try_start_5f8
aget-object v12, v10, v3
invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v12
const v13, 0x186a0
mul-int/2addr v12, v13
add-int/2addr v9, v12
:cond_603
:goto_603
add-int/lit8 v3, v3, 0x1
goto/16 :goto_4cb
:cond_607
const/4 v12, 0x1
if-ne v3, v12, :cond_614
aget-object v12, v10, v3
invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v12
mul-int/lit16 v12, v12, 0x3e8
add-int/2addr v9, v12
goto :goto_603
:cond_614
const/4 v12, 0x2
if-ne v3, v12, :cond_603
aget-object v12, v10, v3
invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_61c
.catch Ljava/lang/Exception; {:try_start_5f8 .. :try_end_61c} :catch_624
move-result v12
mul-int/lit8 v12, v12, 0xa
add-int/2addr v9, v12
goto :goto_603
:cond_621
const/4 v12, 0x0
goto/16 :goto_4d4
:catch_624
move-exception v1
const/4 v12, 0x0
sput-boolean v12, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEI_ZU_CAMERA_PERMISSION:Z
goto/16 :goto_4d6
:cond_62a
const/4 v12, 0x1
goto/16 :goto_4df
:cond_62d
const/4 v12, 0x1
goto/16 :goto_509
:cond_630
const/4 v12, 0x0
goto/16 :goto_52a
:cond_633
const/4 v12, 0x1
goto/16 :goto_535
:cond_636
const/4 v12, 0x1
goto/16 :goto_558
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static canNotUseIDCamera()Z
.registers 1
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->isArmabi()Z
move-result v0
if-nez v0, :cond_10
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SONY_X10i:Z
if-nez v0, :cond_10
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SONY_LT18i:Z
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method
.method public static compareSoftVersion(Ljava/lang/String;Ljava/lang/String;)Z
.registers 12
const/4 v7, 0x0
const/4 v6, 0x1
const-string/jumbo v8, "\\."
invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
const-string/jumbo v8, "\\."
invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v8, v3
array-length v9, v4
if-le v8, v9, :cond_19
array-length v0, v3
:goto_15
const/4 v5, 0x0
:goto_16
if-lt v5, v0, :cond_1b
:goto_18
return v6
:cond_19
array-length v0, v4
goto :goto_15
:cond_1b
array-length v8, v3
if-ne v5, v8, :cond_27
move v2, v7
:goto_1f
array-length v8, v4
if-ne v5, v8, :cond_2e
move v1, v7
:goto_23
if-ge v2, v1, :cond_35
const/4 v6, 0x0
goto :goto_18
:cond_27
aget-object v8, v3, v5
invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
goto :goto_1f
:cond_2e
aget-object v8, v4, v5
invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
goto :goto_23
:cond_35
add-int/lit8 v5, v5, 0x1
goto :goto_16
.end method
.method public static getDefaultSceneRotation()I
.registers 1
const/16 v0, 0x5a
return v0
.end method
.method public static getSystemPhotoPath()Ljava/lang/String;
.registers 3
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;
invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_USE_DCIM:Z
if-eqz v1, :cond_22
:goto_21
return-object v0
:cond_22
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "Camera"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_21
.end method
.method public static isAccelerometerRotation(Landroid/content/Context;)Ljava/lang/Boolean;
.registers 6
const/4 v4, 0x1
const/4 v1, 0x0
:try_start_2
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const-string/jumbo v3, "accelerometer_rotation"
invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
:try_end_c
.catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_c} :catch_14
move-result v1
:goto_d
if-ne v1, v4, :cond_19
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
:goto_13
return-object v2
:catch_14
move-exception v0
invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V
goto :goto_d
:cond_19
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
goto :goto_13
.end method
.method public static isArmabi()Z
.registers 2
sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
const-string/jumbo v1, "armeabi"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static needOppositeVideoRotation()Z
.registers 1
const/4 v0, 0x0
return v0
.end method
.method public static needVideoSizeEqualPreviewSize()Z
.registers 1
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G10_BELOW_4:Z
return v0
.end method
.method public static unSupportStopPreview()Z
.registers 1
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_OLD_I9100G:Z
if-nez v0, :cond_12
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_LG_404:Z
if-nez v0, :cond_12
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_XT912:Z
if-nez v0, :cond_12
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5830:Z
if-nez v0, :cond_12
const/4 v0, 0x0
:goto_11
return v0
:cond_12
const/4 v0, 0x1
goto :goto_11
.end method
.method public static upSupport_1080_video()Z
.registers 1
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_ONE:Z
if-nez v0, :cond_e
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_GALAXY_CAMERA:Z
if-nez v0, :cond_e
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_ZOOM:Z
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
const/4 v0, 0x1
goto :goto_d
.end method