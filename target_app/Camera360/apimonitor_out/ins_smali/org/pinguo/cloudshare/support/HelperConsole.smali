.class public Lorg/pinguo/cloudshare/support/HelperConsole;
.super Ljava/lang/Object;
.source "HelperConsole.java"
.field private static final ALBUM_COUNT:Ljava/lang/String; = "album_count"
.field private static final LASTEST_UPLOAD_TIME:Ljava/lang/String; = "lastest_upload_time"
.field private static final LAST_USER_NAME:Ljava/lang/String; = "last_user_name"
.field public static final PICTURE_COUNT:Ljava/lang/String; = "picture_count"
.field public static final PREFERENCE_MOBILE:Ljava/lang/String; = "preference_mobile"
.field public static final PREFERENCE_POWER:Ljava/lang/String; = "preference_power"
.field public static final PREFERENCE_UPLOAD:Ljava/lang/String; = "preference_upload"
.field public static final PREFERENCE_WIFI:Ljava/lang/String; = "preference_wifi"
.field private static final UPLOAD_PIC_SIZE:Ljava/lang/String; = "upload_pic_size"
.field public static final USER_INFORMATION_EXTRA_DATA:Ljava/lang/String; = "user_extradata"
.field public static final USER_INFORMATION_LOCAL_KEY:Ljava/lang/String; = "local_key"
.field private static final USER_INFORMATION_TOKEN:Ljava/lang/String; = "token"
.field private static final USER_INFORMATION_TYPE:Ljava/lang/String; = "type"
.field public static final USER_INFORMATION_USER_EXPIRE:Ljava/lang/String; = "user_expire"
.field public static final USER_INFORMATION_USER_ID:Ljava/lang/String; = "camera_user_id"
.field private static final USER_INFORMATION_USER_ID_STR:Ljava/lang/String; = "user_id_str"
.field public static final USER_INFORMATION_USER_NAME:Ljava/lang/String; = "user_name"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static availableSpace()J
.registers 10
const-wide/16 v4, 0x0
invoke-static {}, Lorg/pinguo/cloudshare/support/HelperConsole;->sdcardAvailable()Z
move-result v6
if-nez v6, :cond_a
move-wide v1, v4
:goto_9
return-wide v1
:cond_a
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v3
new-instance v0, Landroid/os/StatFs;
invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v6
int-to-long v6, v6
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
move-result v8
int-to-long v8, v8
mul-long v1, v6, v8
cmp-long v4, v1, v4
if-gez v4, :cond_28
neg-long v1, v1
:cond_28
const-string/jumbo v4, "Space"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Space : "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public static cleanPreference(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->disableCurrentAutoUpload(Landroid/content/Context;)V
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->disableCurrentWifiInformation(Landroid/content/Context;)V
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->disableCurrentMobileInformation(Landroid/content/Context;)V
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->disableCurrentBattyInformation(Landroid/content/Context;)V
invoke-static {p0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->stopCloudUpload(Landroid/content/Context;)V
return-void
.end method
.method public static disableCurrentAutoUpload(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_AUTO_UPLOAD:Z
const-string/jumbo v0, "preference_upload"
sget-boolean v1, Lorg/pinguo/cloudshare/support/Config;->SET_AUTO_UPLOAD:Z
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method public static disableCurrentBattyInformation(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_BATTY_INFORMATION:Z
const-string/jumbo v0, "preference_power"
sget-boolean v1, Lorg/pinguo/cloudshare/support/Config;->SET_BATTY_INFORMATION:Z
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method public static disableCurrentMobileInformation(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_MOBILE_INFORMATION:Z
const-string/jumbo v0, "preference_mobile"
sget-boolean v1, Lorg/pinguo/cloudshare/support/Config;->SET_MOBILE_INFORMATION:Z
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method public static disableCurrentWifiInformation(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_WIFI_INFORMATION:Z
const-string/jumbo v0, "preference_wifi"
sget-boolean v1, Lorg/pinguo/cloudshare/support/Config;->SET_WIFI_INFORMATION:Z
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method public static enableCurrentAutoUpload(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x1
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_AUTO_UPLOAD:Z
const-string/jumbo v0, "preference_upload"
sget-boolean v1, Lorg/pinguo/cloudshare/support/Config;->SET_AUTO_UPLOAD:Z
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method public static enableCurrentMobileInformation(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x1
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_MOBILE_INFORMATION:Z
const-string/jumbo v0, "preference_mobile"
sget-boolean v1, Lorg/pinguo/cloudshare/support/Config;->SET_MOBILE_INFORMATION:Z
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method public static encryptDESBase64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.registers 12
const/4 v5, 0x0
:try_start_1
invoke-static {p1, p2}, Lorg/pinguo/cloudshare/support/HelperConsole;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_d
invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-eqz v6, :cond_f
:cond_d
move-object v3, v5
:cond_e
:goto_e
return-object v3
:cond_f
const/4 v6, 0x0
const/16 v7, 0x8
invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "UTF-8"
invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
const/4 v6, 0x0
const/16 v7, 0x8
invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "UTF-8"
invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
invoke-static {p0, v0, v2}, Lorg/pinguo/cloudshare/support/HelperConsole$DES;->encryptDES(Ljava/lang/String;[B[B)Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_33
move-object v3, v5
goto :goto_e
:cond_33
const-string/jumbo v6, "\n"
const-string/jumbo v7, ""
invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v3
if-eqz p3, :cond_e
invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
:try_end_42
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_42} :catch_44
move-result-object v3
goto :goto_e
:catch_44
move-exception v1
invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
move-object v3, v5
goto :goto_e
.end method
.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string/jumbo v1, "android_id"
invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getBatteryStatus(Landroid/content/Context;)Z
.registers 8
const/4 v2, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v3
const/4 v4, 0x0
new-instance v5, Landroid/content/IntentFilter;
const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"
invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
move-result-object v0
const-string/jumbo v3, "status"
invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
const/4 v3, 0x2
if-eq v1, v3, :cond_1f
const/4 v3, 0x5
if-ne v1, v3, :cond_20
:cond_1f
:goto_1f
return v2
:cond_20
const/4 v2, 0x0
goto :goto_1f
.end method
.method public static getCRC32ForByte([B)J
.registers 5
const-wide/16 v2, 0x0
if-nez p0, :cond_5
:goto_4
:cond_4
return-wide v2
:cond_5
array-length v1, p0
if-eqz v1, :cond_4
new-instance v0, Ljava/util/zip/CRC32;
invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V
invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V
invoke-virtual {v0, p0}, Ljava/util/zip/CRC32;->update([B)V
invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J
move-result-wide v2
goto :goto_4
.end method
.method public static final declared-synchronized getCRC32forFile(Ljava/lang/String;)J
.registers 11
const-class v9, Lorg/pinguo/cloudshare/support/HelperConsole;
monitor-enter v9
const-wide/16 v5, 0x0
const/16 v8, 0x1000
:try_start_7
new-array v1, v8, [B
:try_end_9
.catchall {:try_start_7 .. :try_end_9} :catchall_3c
:try_start_9
new-instance v3, Ljava/io/File;
invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v8
if-eqz v8, :cond_30
new-instance v0, Ljava/util/zip/CRC32;
invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V
invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V
new-instance v4, Ljava/io/FileInputStream;
invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const/4 v7, 0x0
:goto_22
invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I
move-result v7
const/4 v8, -0x1
if-ne v7, v8, :cond_32
invoke-virtual {v4}, Ljava/io/InputStream;->close()V
invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J
:try_end_2f
.catchall {:try_start_9 .. :try_end_2f} :catchall_3c
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_2f} :catch_37
move-result-wide v5
:goto_30
:cond_30
monitor-exit v9
return-wide v5
:cond_32
const/4 v8, 0x0
:try_start_33
invoke-virtual {v0, v1, v8, v7}, Ljava/util/zip/CRC32;->update([BII)V
:try_end_36
.catchall {:try_start_33 .. :try_end_36} :catchall_3c
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37
goto :goto_22
:catch_37
move-exception v2
:try_start_38
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
:try_end_3b
.catchall {:try_start_38 .. :try_end_3b} :catchall_3c
goto :goto_30
:catchall_3c
move-exception v8
monitor-exit v9
throw v8
.end method
.method public static getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
.registers 5
const-string/jumbo v2, ""
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v0
if-eqz v0, :cond_f
iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
:cond_f
const-string/jumbo v3, ""
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1c
invoke-static {p0}, Lorg/pinguo/cloudshare/support/ToolUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
:cond_1c
return-object v2
.end method
.method public static getCurrentAutoUpload(Landroid/content/Context;)Z
.registers 3
const-string/jumbo v0, "preference_upload"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public static getCurrentBattyEnable(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentBattyInformation(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_e
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getBatteryStatus(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_e
const/4 v0, 0x0
:cond_e
return v0
.end method
.method public static getCurrentBattyInformation(Landroid/content/Context;)Z
.registers 3
const-string/jumbo v0, "preference_power"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public static getCurrentMobileInformation(Landroid/content/Context;)Z
.registers 3
const-string/jumbo v0, "preference_mobile"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public static getCurrentNetEnable(Landroid/content/Context;)Z
.registers 6
const/4 v2, 0x0
const/4 v3, 0x1
invoke-static {p0}, Lcom/pinguo/lib/network/NetworkUtils;->currentNetType(Landroid/content/Context;)I
move-result v0
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentMobileInformation(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_13
const/16 v4, 0x10
if-ne v4, v0, :cond_11
:goto_10
:cond_10
return v2
:cond_11
move v2, v3
goto :goto_10
:cond_13
if-ne v3, v0, :cond_10
move v2, v3
goto :goto_10
.end method
.method public static getCurrentWifiInformation(Landroid/content/Context;)Z
.registers 3
const-string/jumbo v0, "preference_wifi"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public static getDateByTimeToken(J)Ljava/lang/String;
.registers 6
const/4 v1, 0x0
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v2, "yyyy-MM-dd"
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v2, Ljava/util/Date;
invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
.registers 4
const-string/jumbo v2, "phone"
invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/telephony/TelephonyManager;
invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_12
const-string/jumbo v0, ""
:cond_12
return-object v0
.end method
.method public static getOSVersion()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getUploadPicSize(Landroid/content/Context;)I
.registers 3
const-string/jumbo v1, "upload_pic_size"
invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_12
const-string/jumbo v1, ""
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16
:cond_12
const v1, 0x1312d00
:goto_15
return v1
:cond_16
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
goto :goto_15
.end method
.method public static initCurrentStatus(Landroid/content/Context;)V
.registers 2
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentAutoUpload(Landroid/content/Context;)Z
move-result v0
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_AUTO_UPLOAD:Z
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentWifiInformation(Landroid/content/Context;)Z
move-result v0
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_WIFI_INFORMATION:Z
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentMobileInformation(Landroid/content/Context;)Z
move-result v0
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_MOBILE_INFORMATION:Z
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentBattyInformation(Landroid/content/Context;)Z
move-result v0
sput-boolean v0, Lorg/pinguo/cloudshare/support/Config;->SET_BATTY_INFORMATION:Z
return-void
.end method
.method public static isCanUpload(Landroid/content/Context;)Z
.registers 6
const/4 v2, 0x0
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v0
if-nez v0, :cond_c
:goto_b
:cond_b
return v2
:cond_c
iget-object v3, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
const-string/jumbo v4, ""
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_b
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentAutoUpload(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_b
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentNetEnable(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_b
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentBattyEnable(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_b
const/4 v2, 0x1
goto :goto_b
.end method
.method public static isLogin(Landroid/content/Context;)Z
.registers 3
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z
move-result v1
return v1
.end method
.method public static isTimeForUpload(Landroid/content/Context;)Z
.registers 7
const-string/jumbo v2, "lastest_upload_time"
const-wide/16 v3, 0x0
invoke-static {p0, v2, v3, v4}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferences(Landroid/content/Context;Ljava/lang/String;J)J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sub-long/2addr v2, v0
const-wide/32 v4, 0x1b7740
cmp-long v2, v2, v4
if-lez v2, :cond_17
const/4 v2, 0x1
:goto_16
return v2
:cond_17
const/4 v2, 0x0
goto :goto_16
.end method
.method public static loadLocalKey(Landroid/content/Context;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v0
if-eqz v0, :cond_d
iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
:goto_c
return-object v2
:cond_d
const-string/jumbo v2, ""
goto :goto_c
.end method
.method public static md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 16
const/4 v9, 0x0
new-instance v8, Ljava/lang/StringBuffer;
invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V
:try_start_6
const-string/jumbo v10, "MD5"
invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v7
invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V
const-string/jumbo v10, "UTF-8"
invoke-virtual {p0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v10
invoke-virtual {v7, v10}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v1
const-string/jumbo v10, "UTF-8"
invoke-virtual {p1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
const/4 v6, 0x0
:goto_23
array-length v10, v1
:try_end_24
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_24} :catch_4c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_24} :catch_51
if-lt v6, v10, :cond_2b
invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v9
:goto_2a
return-object v9
:try_start_2b
:cond_2b
aget-byte v3, v1, v6
array-length v10, v0
rem-int v10, v6, v10
aget-byte v4, v0, v10
xor-int v10, v3, v4
int-to-byte v2, v10
const-string/jumbo v10, "%02x"
const/4 v11, 0x1
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v13
aput-object v13, v11, v12
invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_49
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_2b .. :try_end_49} :catch_4c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_49} :catch_51
add-int/lit8 v6, v6, 0x1
goto :goto_23
:catch_4c
move-exception v5
invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
goto :goto_2a
:catch_51
move-exception v5
invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_2a
.end method
.method public static password_md5(Ljava/lang/String;)Ljava/lang/String;
.registers 13
const/4 v7, 0x0
const-string/jumbo v6, ""
:try_start_4
const-string/jumbo v8, "MD5"
invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v4
const-string/jumbo v8, "UTF-8"
invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v8
invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
new-instance v5, Ljava/lang/StringBuffer;
invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
const/4 v3, 0x0
:goto_1f
array-length v8, v0
if-lt v3, v8, :cond_43
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v8
const-string/jumbo v9, "UTF-8"
invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v8
invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V
new-instance v5, Ljava/lang/StringBuffer;
invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B
move-result-object v1
const/4 v3, 0x0
:goto_3a
array-length v8, v1
if-lt v3, v8, :cond_5c
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
move-object v7, v6
:goto_42
return-object v7
:cond_43
const-string/jumbo v8, "%02x"
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
aget-byte v11, v0, v3
invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v11
aput-object v11, v9, v10
invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v3, v3, 0x1
goto :goto_1f
:cond_5c
const-string/jumbo v8, "%02x"
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
aget-byte v11, v1, v3
invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v11
aput-object v11, v9, v10
invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_72
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_72} :catch_75
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_72} :catch_7a
add-int/lit8 v3, v3, 0x1
goto :goto_3a
:catch_75
move-exception v2
invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
goto :goto_42
:catch_7a
move-exception v2
invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_42
.end method
.method public static saveUserUploadedAlbum(Landroid/content/Context;I)V
.registers 3
const-string/jumbo v0, "album_count"
invoke-static {p0, v0, p1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;I)V
return-void
.end method
.method public static saveUserUploadedPicture(Landroid/content/Context;I)V
.registers 3
const-string/jumbo v0, "picture_count"
invoke-static {p0, v0, p1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;I)V
return-void
.end method
.method public static sdcardAvailable()Z
.registers 2
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "mounted"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static setNetShowStatus(Ljava/lang/String;Landroid/content/Context;)V
.registers 3
const-string/jumbo v0, "WIFI3G"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
invoke-static {p1}, Lorg/pinguo/cloudshare/support/HelperConsole;->enableCurrentMobileInformation(Landroid/content/Context;)V
:goto_c
return-void
:cond_d
invoke-static {p1}, Lorg/pinguo/cloudshare/support/HelperConsole;->disableCurrentMobileInformation(Landroid/content/Context;)V
goto :goto_c
.end method