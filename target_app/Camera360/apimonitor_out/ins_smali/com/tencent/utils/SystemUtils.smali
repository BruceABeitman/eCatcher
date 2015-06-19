.class public Lcom/tencent/utils/SystemUtils;
.super Ljava/lang/Object;
.source "ProGuard"
.field public static final QQ_SHARE_CALLBACK_ACTION:Ljava/lang/String; = "shareToQQ"
.field public static final QQ_VERSION_NAME_4_1_0:Ljava/lang/String; = "4.1.0"
.field public static final QQ_VERSION_NAME_4_2_0:Ljava/lang/String; = "4.2.0"
.field public static final QQ_VERSION_NAME_4_3_0:Ljava/lang/String; = "4.3.0"
.field public static final QQ_VERSION_NAME_4_5_0:Ljava/lang/String; = "4.5.0"
.field public static final QQ_VERSION_NAME_4_6_0:Ljava/lang/String; = "4.6.0"
.field public static final QZONE_SHARE_CALLBACK_ACTION:Ljava/lang/String; = "shareToQzone"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static checkMobileQQ(Landroid/content/Context;)Z
.registers 8
const/4 v6, 0x4
const/4 v1, 0x1
const/4 v0, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const/4 v3, 0x0
:try_start_8
const-string/jumbo v4, "com.tencent.mobileqq"
const/4 v5, 0x0
invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_f
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_f} :catch_37
move-result-object v2
:goto_10
if-eqz v2, :cond_36
iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:try_start_14
const-string/jumbo v3, "MobileQQ verson"
invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v3, "\\."
invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
aget-object v3, v2, v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
const/4 v4, 0x1
aget-object v2, v2, v4
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_46
move-result v2
if-gt v3, v6, :cond_35
if-ne v3, v6, :cond_36
if-lt v2, v1, :cond_36
:cond_35
move v0, v1
:goto_36
:cond_36
return v0
:catch_37
move-exception v2
const-string/jumbo v4, "checkMobileQQ"
const-string/jumbo v5, "error"
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
move-object v2, v3
goto :goto_10
:catch_46
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_36
.end method
.method public static compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I
.registers 3
const-string/jumbo v0, "com.tencent.mobileqq"
invoke-static {p0, v0}, Lcom/tencent/utils/SystemUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lcom/tencent/utils/SystemUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
.registers 10
const/4 v1, 0x1
const/4 v0, 0x0
const/4 v2, -0x1
if-nez p0, :cond_8
if-nez p1, :cond_8
:goto_7
:cond_7
return v0
:cond_8
if-eqz p0, :cond_e
if-nez p1, :cond_e
move v0, v1
goto :goto_7
:cond_e
if-nez p0, :cond_14
if-eqz p1, :cond_14
move v0, v2
goto :goto_7
:cond_14
const-string/jumbo v3, "\\."
invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
const-string/jumbo v3, "\\."
invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
move v3, v0
:goto_23
:try_start_23
array-length v6, v4
if-ge v3, v6, :cond_40
array-length v6, v5
if-ge v3, v6, :cond_40
aget-object v6, v4, v3
invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v6
aget-object v7, v5, v3
invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v7
if-ge v6, v7, :cond_39
move v0, v2
goto :goto_7
:cond_39
if-le v6, v7, :cond_3d
move v0, v1
goto :goto_7
:cond_3d
add-int/lit8 v3, v3, 0x1
goto :goto_23
:cond_40
array-length v4, v4
if-le v4, v3, :cond_45
move v0, v1
goto :goto_7
:cond_45
array-length v1, v5
:try_end_46
.catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_46} :catch_4a
if-le v1, v3, :cond_7
move v0, v2
goto :goto_7
:catch_4a
move-exception v0
invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
goto :goto_7
.end method
.method public static getAndroidSDKVersion()I
.registers 2
const/4 v0, 0x0
:try_start_1
sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
:try_end_a
.catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v1
goto :goto_b
.end method
.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getAppSignatureMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 8
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "OpenUi, getSignValidString"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, ""
:try_start_c
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const/16 v3, 0x40
invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v2
iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
const-string/jumbo v3, "MD5"
invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v3
const/4 v4, 0x0
aget-object v2, v2, v4
invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B
move-result-object v2
invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
move-result-object v2
invoke-static {v2}, Lcom/tencent/utils/Util;->toHexString([B)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "_"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, "_"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ""
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
invoke-static {v0}, Lcom/tencent/utils/Util;->toHexString([B)Ljava/lang/String;
:try_end_70
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_70} :catch_75
move-result-object v0
:try_start_71
invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V
:try_end_74
.catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_86
:goto_74
return-object v0
:catch_75
move-exception v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
:goto_79
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v2, "openSDK_LOG"
const-string/jumbo v3, "OpenUi, getSignValidString error"
invoke-static {v2, v3, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_74
:catch_86
move-exception v1
goto :goto_79
.end method
.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/4 v1, 0x0
:try_start_5
invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:goto_b
:try_end_b
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
const/4 v0, 0x0
goto :goto_b
.end method
.method public static getRealPathFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
.registers 8
const/4 v3, 0x0
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string/jumbo v1, "_data"
aput-object v1, v2, v0
move-object v0, p0
move-object v1, p1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_22
const-string/jumbo v1, "_data"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
:cond_22
return-object v3
.end method
.method public static isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
.registers 4
const/4 v0, 0x0
if-eqz p0, :cond_5
if-nez p1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public static isAppSignatureValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.registers 8
const/4 v0, 0x0
const-string/jumbo v1, "openSDK_LOG"
const-string/jumbo v2, "OpenUi, validateAppSignatureForPackage"
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_start_a
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/16 v2, 0x40
invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_13
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_2f
move-result-object v1
iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
array-length v3, v2
move v1, v0
:goto_18
if-ge v1, v3, :cond_2b
aget-object v4, v2, v1
invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/tencent/utils/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2c
const/4 v0, 0x1
:goto_2b
:cond_2b
return v0
:cond_2c
add-int/lit8 v1, v1, 0x1
goto :goto_18
:catch_2f
move-exception v1
goto :goto_2b
.end method
.method public static isSupportMultiTouch()Z
.registers 10
const/4 v1, 0x1
const/4 v3, 0x0
const-class v0, Landroid/view/MotionEvent;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v5
array-length v6, v5
move v4, v3
move v2, v3
move v0, v3
:goto_c
if-ge v4, v6, :cond_2f
aget-object v7, v5, v4
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v8
const-string/jumbo v9, "getPointerCount"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_1e
move v0, v1
:cond_1e
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "getPointerId"
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_2c
move v2, v1
:cond_2c
add-int/lit8 v4, v4, 0x1
goto :goto_c
:cond_2f
invoke-static {}, Lcom/tencent/utils/SystemUtils;->getAndroidSDKVersion()I
move-result v4
const/4 v5, 0x7
if-ge v4, v5, :cond_3a
if-eqz v0, :cond_3b
if-eqz v2, :cond_3b
:goto_3a
:cond_3a
return v1
:cond_3b
move v1, v3
goto :goto_3a
.end method