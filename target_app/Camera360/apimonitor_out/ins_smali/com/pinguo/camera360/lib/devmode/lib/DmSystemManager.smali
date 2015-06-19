.class public Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
.super Ljava/lang/Object;
.source "DmSystemManager.java"
.implements Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager;
.field public static final TAG:Ljava/lang/String;
.field private static sInstance:Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
.field private mContext:Landroid/content/Context;
.field private mGpsInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
.field private mNetworkInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$NetworkInfo;
.field private mSdCardInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
.field private mSysInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->TAG:Ljava/lang/String;
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->sInstance:Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
.registers 2
const-class v1, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->sInstance:Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
invoke-direct {v0}, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;-><init>()V
sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->sInstance:Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
:cond_e
sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->sInstance:Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public getGpsInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
.registers 6
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mGpsInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
if-nez v3, :cond_b
new-instance v3, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
invoke-direct {v3}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;-><init>()V
iput-object v3, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mGpsInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
:cond_b
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mContext:Landroid/content/Context;
const-string/jumbo v4, "location"
invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/location/LocationManager;
const-string/jumbo v3, "gps"
invoke-static {v1, v3}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v0
const-string/jumbo v3, "network"
invoke-static {v1, v3}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v2
if-nez v0, :cond_28
if-eqz v2, :cond_2d
:cond_28
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mGpsInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
const/4 v4, 0x1
iput-boolean v4, v3, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;->isOpen:Z
:cond_2d
if-eqz v0, :cond_39
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mGpsInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
const-string/jumbo v4, "gps"
iput-object v4, v3, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;->provider:Ljava/lang/String;
:goto_36
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mGpsInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
return-object v3
:cond_39
if-eqz v2, :cond_43
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mGpsInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
const-string/jumbo v4, "network"
iput-object v4, v3, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;->provider:Ljava/lang/String;
goto :goto_36
:cond_43
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mGpsInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
const-string/jumbo v4, "Disable"
iput-object v4, v3, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;->provider:Ljava/lang/String;
goto :goto_36
.end method
.method public getNetworkInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$NetworkInfo;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getRomInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
.registers 12
new-instance v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
invoke-direct {v8}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;-><init>()V
iput-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSysInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
const-string/jumbo v6, "/proc/version"
const/4 v1, 0x0
:try_start_b
new-instance v2, Ljava/io/BufferedReader;
new-instance v8, Ljava/io/InputStreamReader;
new-instance v9, Ljava/io/FileInputStream;
const-string/jumbo v10, "/proc/version"
invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, "UTF-8"
invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
const/16 v9, 0x2000
invoke-direct {v2, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
:try_end_22
.catchall {:try_start_b .. :try_end_22} :catchall_81
.catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_22} :catch_63
.catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_72
:try_start_22
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_36
const-string/jumbo v8, "\\s+"
invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSysInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
const/4 v9, 0x2
aget-object v9, v0, v9
iput-object v9, v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;->kernel:Ljava/lang/String;
:cond_36
:try_end_36
.catchall {:try_start_22 .. :try_end_36} :catchall_93
.catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_36} :catch_99
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_36} :catch_96
if-eqz v2, :cond_91
:try_start_38
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
:try_end_3b
.catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_8d
move-object v1, v2
:goto_3c
:cond_3c
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSysInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
iput-object v9, v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;->releaseVersion:Ljava/lang/String;
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSysInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;
iput-object v9, v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;->model:Ljava/lang/String;
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mContext:Landroid/content/Context;
const-string/jumbo v9, "phone"
invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/telephony/TelephonyManager;
invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
move-result-object v5
if-nez v5, :cond_5c
const-string/jumbo v5, ""
:cond_5c
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSysInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
iput-object v5, v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;->imei:Ljava/lang/String;
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSysInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
return-object v8
:catch_63
move-exception v4
:goto_64
:try_start_64
invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
:try_end_67
.catchall {:try_start_64 .. :try_end_67} :catchall_81
if-eqz v1, :cond_3c
:try_start_69
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:try_end_6c
.catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d
goto :goto_3c
:catch_6d
move-exception v4
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
goto :goto_3c
:catch_72
move-exception v4
:goto_73
:try_start_73
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
:try_end_76
.catchall {:try_start_73 .. :try_end_76} :catchall_81
if-eqz v1, :cond_3c
:try_start_78
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:try_end_7b
.catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c
goto :goto_3c
:catch_7c
move-exception v4
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
goto :goto_3c
:catchall_81
move-exception v8
:goto_82
if-eqz v1, :cond_87
:try_start_84
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:try_end_87
.catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88
:goto_87
:cond_87
throw v8
:catch_88
move-exception v4
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
goto :goto_87
:catch_8d
move-exception v4
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
:cond_91
move-object v1, v2
goto :goto_3c
:catchall_93
move-exception v8
move-object v1, v2
goto :goto_82
:catch_96
move-exception v4
move-object v1, v2
goto :goto_73
:catch_99
move-exception v4
move-object v1, v2
goto :goto_64
.end method
.method public getSdCardInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
.registers 14
const-wide/16 v11, 0x400
new-instance v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
invoke-direct {v8}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;-><init>()V
iput-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSdCardInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSdCardInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v9
const-string/jumbo v10, "mounted"
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
iput-boolean v9, v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;->isMounted:Z
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSdCardInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
iget-boolean v8, v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;->isMounted:Z
if-eqz v8, :cond_4a
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v4
new-instance v5, Landroid/os/StatFs;
invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v8
invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I
move-result v8
int-to-long v2, v8
invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I
move-result v8
int-to-long v6, v8
invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v8
int-to-long v0, v8
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSdCardInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
mul-long v9, v6, v2
div-long/2addr v9, v11
div-long/2addr v9, v11
iput-wide v9, v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;->totalSize:J
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSdCardInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
mul-long v9, v0, v2
div-long/2addr v9, v11
div-long/2addr v9, v11
iput-wide v9, v8, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;->availableSize:J
:cond_4a
iget-object v8, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mSdCardInfo:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
return-object v8
.end method
.method public init(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->mContext:Landroid/content/Context;
return-void
.end method